unit Forms.EmitirNfse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
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
  PedidoEmissao: TNfsePedidoEmissao;
  Servico: TRpsDadosServico;
  Nfse: TNfse;
begin
  PedidoEmissao := TNfsePedidoEmissao.Create;
  try
    PedidoEmissao.ambiente := cbAmbiente.Text;
    PedidoEmissao.rps := TRpsPedidoEmissao.Create;
    PedidoEmissao.rps.prestador := TRpsIdentificacaoPrestador.Create;
    PedidoEmissao.rps.prestador.cpf_cnpj := edPrestadorCpfCnpj.Text;

    PedidoEmissao.rps.tomador := TRpsDadosTomador.Create;
    if edTomadorCpfCnpj.Text <> '' then
      PedidoEmissao.rps.tomador.cpf_cnpj := edTomadorCpfCnpj.Text;
    PedidoEmissao.rps.tomador.nome_razao_social := edTomadorNomeRazaoSocial.Text;

    PedidoEmissao.rps.servicos := TRpsDadosServicoList.Create;

    Servico := TRpsDadosServico.Create;
    PedidoEmissao.rps.servicos.Add(Servico);
    Servico.item_lista_servico := edServicoItemListaServico.Text;
    Servico.discriminacao := edServicoDiscriminacao.Text;

    Servico.valores := TRpsServicoValores.Create;
    Servico.valores.valor_unitario := StrToFloat(edServicoValorUnitario.Text);

    try
      Nfse := Client.Nfse.EmitirNfse(PedidoEmissao);
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
