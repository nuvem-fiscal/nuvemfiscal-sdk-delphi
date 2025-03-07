unit Forms.EmitirNfse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  NuvemFiscalClient, NuvemFiscalDtos, OpenApiRest, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfmEmitirNfse = class(TForm)
    PageControl1: TPageControl;
    tsDados: TTabSheet;
    pnCertificado: TPanel;
    Label11: TLabel;
    cbAmbiente: TComboBox;
    Label2: TLabel;
    edPrestadorCpfCnpj: TEdit;
    btCancelar: TButton;
    btOk: TButton;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    edTomadorCpfCnpj: TEdit;
    edTomadorNomeRazaoSocial: TEdit;
    Label10: TLabel;
    GroupBox2: TGroupBox;
    Label42: TLabel;
    edServicoItemListaServico: TEdit;
    Label41: TLabel;
    edServicoDiscriminacao: TEdit;
    Label44: TLabel;
    edServicoValorUnitario: TEdit;
    tsLog: TTabSheet;
    memoLog: TMemo;
    Label1: TLabel;
    edTomadorCodigoMunicipio: TEdit;
    Label3: TLabel;
    edTomadorCep: TEdit;
    Label4: TLabel;
    edServicoCodigoTributacaoMunicipal: TEdit;
    Label6: TLabel;
    edServicoCnae: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btOkClick(Sender: TObject);
  private
    Client: INuvemFiscalClient;
    procedure EmitirNfse;
  public
    class procedure Emitir(Client: INuvemFiscalClient; Ambiente: string = '');
  end;

var
  fmEmitirNfse: TfmEmitirNfse;

implementation

uses
  System.DateUtils;

{$R *.dfm}

procedure TfmEmitirNfse.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

{ TfmEmitirNfse }

procedure TfmEmitirNfse.btOkClick(Sender: TObject);
begin
  try
    EmitirNfse;
    ModalResult := mrOk;
  except
    ModalResult := mrNone;
    raise;
  end;
end;

class procedure TfmEmitirNfse.Emitir(Client: INuvemFiscalClient; Ambiente: string = '');
var
  Form: TfmEmitirNfse;
begin
  Form := TfmEmitirNfse.Create(nil);
  try
    Form.cbAmbiente.ItemIndex := Form.cbAmbiente.Items.IndexOf(Ambiente);
    Form.Client := Client;
    Form.ShowModal;
  finally
    Form.Free;
  end;
end;

procedure TfmEmitirNfse.EmitirNfse;
var
  PedidoEmissao: TNfseDpsPedidoEmissao;
  InfDPS: TInfDPS;
  Nfse: TNfse;
begin
  PedidoEmissao := TNfseDpsPedidoEmissao.Create;
  try
    PedidoEmissao.ambiente := cbAmbiente.Text;
    PedidoEmissao.infDPS := TInfDPS.Create;

    InfDPS := PedidoEmissao.infDPS;
    InfDPS.dhEmi := Now;
    InfDPS.dCompet := DateOf(Now);
    InfDPS.prest := TInfoPrestador.Create;

    if Length(edPrestadorCpfCnpj.Text) = 14 then
      InfDPS.prest.CNPJ := edPrestadorCpfCnpj.Text
    else if Length(edPrestadorCpfCnpj.Text) = 11 then
      InfDPS.prest.CPF := edPrestadorCpfCnpj.Text
    else
      raise Exception.Create('CPF ou CNPJ inválido');

    if (edTomadorCpfCnpj.Text <> '') or (edTomadorNomeRazaoSocial.Text <> '') then
    begin
      InfDPS.toma := TInfoTomador.Create;
      if Length(edTomadorCpfCnpj.Text) = 14 then
        InfDPS.toma.CNPJ := edTomadorCpfCnpj.Text
      else if Length(edTomadorCpfCnpj.Text) = 11 then
        InfDPS.toma.CPF := edTomadorCpfCnpj.Text;
      InfDPS.toma.xNome := edTomadorNomeRazaoSocial.Text;
      InfDPS.toma.&end := TEndereco.Create;
      InfDPS.toma.&end.endNac := TEnderNac.Create;
      InfDPS.toma.&end.endNac.cMun := edTomadorCodigoMunicipio.Text;
      InfDPS.toma.&end.endNac.CEP := edTomadorCep.Text;
    end;

    InfDPS.serv := TServ.Create;
    InfDPS.serv.cServ := TCServ.Create;
    InfDPS.serv.cServ.cTribNac := edServicoItemListaServico.Text;
    InfDPS.serv.cServ.cTribMun := edServicoCodigoTributacaoMunicipal.Text;
    InfDPS.serv.cServ.CNAE := edServicoCnae.Text;
    InfDPS.serv.cServ.xDescServ := edServicoDiscriminacao.Text;

    InfDPS.valores := TInfoValores.Create;
    InfDPS.valores.vServPrest := TVServPrest.Create;
    InfDPS.valores.vServPrest.vServ := StrToFloat(edServicoValorUnitario.Text);

    InfDPS.valores.trib := TInfoTributacao.Create;
    InfDPS.valores.trib.tribMun := TTribMunicipal.Create;

    // 1 - Operação tributável
    // 2 - Exportação de serviço
    // 3 - Não Incidência
    // 4 - Imunidade
    InfDPS.valores.trib.tribMun.tribISSQN := 1;

    try
      Nfse := Client.Nfse.EmitirNfseDps(PedidoEmissao);
      try
        ShowMessage(Format('Nota %s em processamento.', [Nfse.id]));
      finally
        Nfse.Free;
      end;
    except
      on E: EOpenApiClientException do
      begin
        memoLog.Lines.Clear;
        memoLog.Lines.Add(E.ClassName);
        memoLog.Lines.Add(Format('HTTP Status Code: %d', [E.Response.StatusCode]));
        memoLog.Lines.Add(E.Response.ContentAsString);
        PageControl1.ActivePage := tsLog;
        raise;
      end;
    end;
  finally
    PedidoEmissao.Free;
  end;
end;

end.
