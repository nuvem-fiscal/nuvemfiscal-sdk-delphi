unit Forms.DetalhesNfse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  NuvemFiscalDTOs;

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
    Label39: TLabel;
    edValorTotal: TEdit;
    tsMensagens: TTabSheet;
    memoMensagens: TMemo;
    gbCancelamento: TGroupBox;
    Label46: TLabel;
    edCancelamentoSituacao: TEdit;
    Label47: TLabel;
    edCancelamentoDataHora: TEdit;
    Label48: TLabel;
    memoCancelamentoMensagens: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure btOkClick(Sender: TObject);
  private
    FNfse: TNfse;
  public
    class function GetValorTotal(Nfse: TNfse): double;
  public
    class procedure Visualizar(ANfse: TNfse);
    procedure SetNfse(Nfse: TNfse);
  end;

implementation

{$R *.dfm}

{ TfmDetalhesNfse }

procedure TfmDetalhesNfse.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

class function TfmDetalhesNfse.GetValorTotal(Nfse: TNfse): double;
begin
  Result := 0;
  for var servico in Nfse.declaracao_prestacao_servico.servicos do
    Result := Result + servico.valores.valor_servicos;
end;

procedure TfmDetalhesNfse.btOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

class procedure TfmDetalhesNfse.Visualizar(ANfse: TNfse);
var
  Form: TfmDetalhesNfse;
begin
  Form := TfmDetalhesNfse.Create(nil);
  try
    Form.SetNfse(ANfse);
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
  edValorTotal.Text := FormatFloat('"R$" #,0.00', GetValorTotal(FNfse));
  edLinkUrl.Text := Nfse.link_url;

  if Nfse.mensagens.Count > 0 then
  begin
    for var I := 0 to Nfse.mensagens.Count - 1 do
    begin
      var mensagem := Nfse.mensagens[I];

      memoMensagens.Lines.Add(Format('Mensagem %d', [I]));
      memoMensagens.Lines.Add(Format('-------------', []));
      if mensagem.codigoHasValue then
        memoMensagens.Lines.Add(Format('C�digo: %s', [mensagem.codigo]));
      if mensagem.descricaoHasValue then
        memoMensagens.Lines.Add(Format('Descri��o: %s', [mensagem.descricao]));
      if mensagem.correcaoHasValue then
        memoMensagens.Lines.Add(Format('Corre��o: %s', [mensagem.correcao]));
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
          memoCancelamentoMensagens.Lines.Add(Format('C�digo: %s', [mensagem.codigo]));
        if mensagem.descricaoHasValue then
          memoCancelamentoMensagens.Lines.Add(Format('Descri��o: %s', [mensagem.descricao]));
        if mensagem.correcaoHasValue then
          memoCancelamentoMensagens.Lines.Add(Format('Corre��o: %s', [mensagem.correcao]));
        memoCancelamentoMensagens.Lines.Add('');
      end;
    end;
  end;
end;

end.
