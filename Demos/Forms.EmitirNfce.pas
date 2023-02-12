unit Forms.EmitirNfce;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  NuvemFiscalClient, NuvemFiscalDtos, OpenApiRest, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfmEmitirNfce = class(TForm)
    PageControl1: TPageControl;
    tsDados: TTabSheet;
    pnCertificado: TPanel;
    Label11: TLabel;
    cbAmbiente: TComboBox;
    btCancelar: TButton;
    btOk: TButton;
    GroupBox2: TGroupBox;
    Label42: TLabel;
    edCProd: TEdit;
    Label41: TLabel;
    edXProd: TEdit;
    tsLog: TTabSheet;
    memoLog: TMemo;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    edEmitenteCpfCnpj: TEdit;
    edEmitenteCodigoUf: TEdit;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label6: TLabel;
    edSerie: TEdit;
    edNumeroNota: TEdit;
    edCodigoMunicipioFatoGerador: TEdit;
    Label2: TLabel;
    edCEAN: TEdit;
    Label5: TLabel;
    Label7: TLabel;
    edNCM: TEdit;
    Label8: TLabel;
    edCFOP: TEdit;
    edVProd: TEdit;
    Label9: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btOkClick(Sender: TObject);
  private
    Client: INuvemFiscalClient;
    procedure EmitirNfce;
  public
    class procedure Emitir(Client: INuvemFiscalClient; Ambiente: string = '');
  end;

var
  fmEmitirNfce: TfmEmitirNfce;

implementation

uses
  System.DateUtils;

{$R *.dfm}

procedure TfmEmitirNfce.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

{ TfmEmitirNfce }

procedure TfmEmitirNfce.btOkClick(Sender: TObject);
begin
  try
    EmitirNfce;
    ModalResult := mrOk;
  except
    ModalResult := mrNone;
    raise;
  end;
end;

class procedure TfmEmitirNfce.Emitir(Client: INuvemFiscalClient; Ambiente: string = '');
var
  Form: TfmEmitirNfce;
begin
  Form := TfmEmitirNfce.Create(nil);
  try
    Form.cbAmbiente.ItemIndex := Form.cbAmbiente.Items.IndexOf(Ambiente);
    Form.Client := Client;
    Form.ShowModal;
  finally
    Form.Free;
  end;
end;

procedure TfmEmitirNfce.EmitirNfce;
var
  PedidoEmissao: TNfePedidoEmissao;
  InfNFe: TNfeSefazInfNFe;
  Det: TNfeSefazDet;
  Nfce: TDfe;
begin
  PedidoEmissao := TNfePedidoEmissao.Create;
  try
    PedidoEmissao.ambiente := cbAmbiente.Text;
    PedidoEmissao.infNFe := TNfeSefazInfNFe.Create;

    InfNFe := PedidoEmissao.infNFe;
    InfNFe.versao := '4.00';
    InfNFe.ide := TNfeSefazIde.Create;
    if edEmitenteCodigoUf.Text <> '' then
      InfNFe.ide.cUF := StrToInt(edEmitenteCodigoUf.Text);
    InfNFe.ide.natOp := '5102';
    InfNFe.ide.&mod := 65;
    InfNFe.ide.serie := StrToInt(edSerie.Text);
    InfNFe.ide.nNF := StrToInt(edNumeroNota.Text);;
    InfNFe.ide.dhEmi := Now;
    InfNFe.ide.tpNF := 1;
    InfNFe.ide.idDest := 1;
    InfNFe.ide.cMunFG := edCodigoMunicipioFatoGerador.Text;
    InfNFe.ide.tpImp := 4;
    InfNFe.ide.tpEmis := 1;
    InfNFe.ide.finNFe := 1;
    InfNFe.ide.indFinal := 1;
    InfNFe.ide.indPres := 1;
    InfNFe.ide.procEmi := 0;
    InfNFe.ide.verProc := 'nf-sdk-delphi';

    InfNFe.emit := TNfeSefazEmit.Create;
    if Length(edEmitenteCpfCnpj.Text) = 14 then
      InfNFe.emit.CNPJ := edEmitenteCpfCnpj.Text
    else if Length(edEmitenteCpfCnpj.Text) = 11 then
      InfNFe.emit.CPF := edEmitenteCpfCnpj.Text
    else
      raise Exception.Create('CPF ou CNPJ do emitente inválido');

    Det := TNfeSefazDet.Create;
    InfNFe.det.Add(det);

    Det.nItem := 1;
    Det.prod := TNfeSefazProd.Create;
    Det.prod.cProd := edCProd.Text;
    Det.prod.cEAN := edCEAN.Text;
    Det.prod.xProd := edXProd.Text;
    Det.prod.NCM := edNCM.Text;
    Det.prod.CFOP := edCFOP.Text;
    Det.prod.uCom := 'UN';
    Det.prod.qCom := 1;
    Det.prod.vUnCom := StrToFloat(edVProd.Text);
    Det.prod.vProd := Det.prod.vUnCom;
    Det.prod.cEANTrib := Det.prod.cEAN;
    Det.prod.uTrib := Det.prod.uCom;
    Det.prod.qTrib := Det.prod.qCom;
    Det.prod.vUnTrib := Det.prod.vProd;
    Det.prod.indTot := 1;

    Det.imposto := TNfeSefazImposto.Create;
    Det.imposto.ICMS := TNfeSefazICMS.Create;
    Det.imposto.ICMS.ICMSSN102 := TNfeSefazICMSSN102.Create;
    Det.imposto.ICMS.ICMSSN102.orig := 0;
    Det.imposto.ICMS.ICMSSN102.CSOSN := '102';

    InfNFe.total := TNfeSefazTotal.Create;
    InfNFe.total.ICMSTot := TNfeSefazICMSTot.Create;
    InfNFe.total.ICMSTot.vProd := Det.prod.vProd;
    InfNFe.total.ICMSTot.vNF := Det.prod.vProd;

    InfNFe.transp := TNfeSefazTransp.Create;
    InfNFe.transp.modFrete := 9;

    InfNFe.pag := TNfeSefazPag.Create;
    InfNFe.pag.detPag.Add(TNfeSefazDetPag.Create);
    InfNFe.pag.detPag[0].tPag := '03';
    InfNFe.pag.detPag[0].vPag := Det.prod.vProd;
    InfNFe.pag.detPag[0].card := TNfeSefazCard.Create;
    InfNFe.pag.detPag[0].card.tpIntegra := 2;

    try
      Nfce := Client.Nfce.EmitirNfce(PedidoEmissao);
      try
        ShowMessage(Format('Nota %s', [Nfce.id]));
      finally
        Nfce.Free;
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
