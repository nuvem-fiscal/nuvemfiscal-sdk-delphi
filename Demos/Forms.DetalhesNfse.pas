unit Forms.DetalhesNfse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,

  OpenApiRest, NuvemFiscalClient, NuvemFiscalDTOs;

type
  TfmDetalhesNfse = class(TForm)
    PageControl1: TPageControl;
    tsDadosGerais: TTabSheet;
    Panel1: TPanel;
    btOk: TButton;
    lbId: TLabel;
    edId: TEdit;
    Label15: TLabel;
    edDataEmissao: TEdit;
    Label16: TLabel;
    edNumeroNota: TEdit;
    edCodigoVerificacao: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    edSituacao: TEdit;
    Label19: TLabel;
    edLinkUrl: TEdit;
    Label20: TLabel;
    edAmbiente: TEdit;
    Label21: TLabel;
    edReferencia: TEdit;
    tsMensagens: TTabSheet;
    memoMensagens: TMemo;
    gbCancelamento: TGroupBox;
    Label46: TLabel;
    edCancelamentoSituacao: TEdit;
    Label47: TLabel;
    edCancelamentoDataHora: TEdit;
    Label48: TLabel;
    memoCancelamentoMensagens: TMemo;
    tsXml: TTabSheet;
    memXml: TMemo;
    btBaixarXml: TButton;
    btBaixarXmlDps: TButton;
    procedure btBaixarXmlClick(Sender: TObject);
    procedure btBaixarXmlDpsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btOkClick(Sender: TObject);
  private
    FNfse: TNfse;
    FService: INfseService;
  public
    class procedure Visualizar(ANfse: TNfse; AService: INfseService);
    procedure SetNfse(Nfse: TNfse);
  end;

implementation

{$R *.dfm}

procedure TfmDetalhesNfse.btBaixarXmlClick(Sender: TObject);
var
  Xml: string;
begin
  memXml.Clear;
  Xml := TEncoding.UTF8.GetString(FService.BaixarXmlNfse(FNfse.id));
  memXml.Lines.Add(Xml);
end;

procedure TfmDetalhesNfse.btBaixarXmlDpsClick(Sender: TObject);
var
  Xml: string;
begin
  memXml.Clear;
  Xml := TEncoding.UTF8.GetString(FService.BaixarXmlDps(FNfse.id));
  memXml.Lines.Add(Xml);
end;

{ TfmDetalhesNfse }

procedure TfmDetalhesNfse.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

procedure TfmDetalhesNfse.btOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

class procedure TfmDetalhesNfse.Visualizar(ANfse: TNfse; AService: INfseService);
var
  Form: TfmDetalhesNfse;
begin
  Form := TfmDetalhesNfse.Create(nil);
  try
    Form.SetNfse(ANfse);
    Form.FService := AService;
    Form.ShowModal;
  finally
    Form.Free;
  end;
end;

procedure TfmDetalhesNfse.SetNfse(Nfse: TNfse);
begin
  FNfse := Nfse;

  edId.Text := Nfse.id;
  if Nfse.data_emissaoHasValue and (Nfse.data_emissao > 0) then
    edDataEmissao.Text := FormatDateTime('dd/mm/yyyy HH:nn:ss', Nfse.data_emissao);
  edSituacao.Text := Nfse.status;
  edNumeroNota.Text := Nfse.numero;
  edAmbiente.Text := Nfse.ambiente;
  edReferencia.Text := Nfse.referencia;
  edCodigoVerificacao.Text := Nfse.codigo_verificacao;
  edLinkUrl.Text := Nfse.link_url;

  if Nfse.mensagens.Count > 0 then
  begin
    for var I := 0 to Nfse.mensagens.Count - 1 do
    begin
      var mensagem := Nfse.mensagens[I];

      memoMensagens.Lines.Add(Format('Mensagem %d', [I]));
      memoMensagens.Lines.Add(Format('-------------', []));
      if mensagem.codigoHasValue then
        memoMensagens.Lines.Add(Format('Código: %s', [mensagem.codigo]));
      if mensagem.descricaoHasValue then
        memoMensagens.Lines.Add(Format('Descrição: %s', [mensagem.descricao]));
      if mensagem.correcaoHasValue then
        memoMensagens.Lines.Add(Format('Correção: %s', [mensagem.correcao]));
      memoMensagens.Lines.Add('');
    end;
  end;

  gbCancelamento.Visible := Nfse.cancelamento <> nil;
  if Nfse.cancelamento <> nil then
  begin
    edCancelamentoSituacao.Text := Nfse.cancelamento.status;
    if Nfse.cancelamento.data_horaHasValue then
      edCancelamentoDataHora.Text := FormatDateTime('dd/mm/yyyy HH:nn:ss',
        Nfse.cancelamento.data_hora);

    if Nfse.cancelamento.mensagens.Count > 0 then
    begin
      for var I := 0 to Nfse.cancelamento.mensagens.Count - 1 do
      begin
        var mensagem := Nfse.cancelamento.mensagens[I];

        memoCancelamentoMensagens.Lines.Add(Format('Mensagem %d', [I]));
        memoCancelamentoMensagens.Lines.Add(Format('-------------', []));
        if mensagem.codigoHasValue then
          memoCancelamentoMensagens.Lines.Add(Format('Código: %s', [mensagem.codigo]));
        if mensagem.descricaoHasValue then
          memoCancelamentoMensagens.Lines.Add(Format('Descrição: %s', [mensagem.descricao]));
        if mensagem.correcaoHasValue then
          memoCancelamentoMensagens.Lines.Add(Format('Correção: %s', [mensagem.correcao]));
        memoCancelamentoMensagens.Lines.Add('');
      end;
    end;
  end;
end;

end.
