unit Forms.DetalhesNfce;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  NuvemFiscalDTOs;

type
  TfmDetalhesNfce = class(TForm)
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
    edValorTotal: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    edSituacao: TEdit;
    Label19: TLabel;
    edChaveAcesso: TEdit;
    Label20: TLabel;
    edAmbiente: TEdit;
    Label21: TLabel;
    edReferencia: TEdit;
    gbAutorizacao: TGroupBox;
    Label46: TLabel;
    edAutorizacaoSituacao: TEdit;
    Label47: TLabel;
    edAutorizacaoDataHora: TEdit;
    Label48: TLabel;
    memoAutorizacaoInfo: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure btOkClick(Sender: TObject);
  private
    FNfce: TDfe;
  public
    class procedure Visualizar(ANfce: TDfe);
    procedure SetNfce(Nfce: TDfe);
  end;

implementation

{$R *.dfm}

{ TfmDetalhesNfce }

procedure TfmDetalhesNfce.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

procedure TfmDetalhesNfce.btOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

class procedure TfmDetalhesNfce.Visualizar(ANfce: TDfe);
var
  Form: TfmDetalhesNfce;
begin
  Form := TfmDetalhesNfce.Create(nil);
  try
    Form.SetNfce(ANfce);
    Form.ShowModal;
  finally
    Form.Free;
  end;
end;

procedure TfmDetalhesNfce.SetNfce(Nfce: TDfe);
begin
  FNfce := Nfce;

  edId.Text := Nfce.id;
  if Nfce.data_emissaoHasValue and (Nfce.data_emissao > 0) then
    edDataEmissao.Text := FormatDateTime('dd/mm/yyyy HH:nn:ss', Nfce.data_emissao);
  edSituacao.Text := Nfce.status;
  edNumeroNota.Text := IntToStr(Nfce.numero);
  edAmbiente.Text := Nfce.ambiente;
  edReferencia.Text := Nfce.referencia;
  edValorTotal.Text := FormatFloat('#,0.00', Nfce.valor_total);
  edChaveAcesso.Text := Nfce.chave;

  gbAutorizacao.Visible := Nfce.autorizacao <> nil;
  if Nfce.autorizacao <> nil then
  begin
    edAutorizacaoSituacao.Text := Nfce.autorizacao.status;
    if Nfce.autorizacao.data_eventoHasValue then
      edAutorizacaoDataHora.Text := FormatDateTime('dd/mm/yyyy HH:nn:ss',
        Nfce.autorizacao.data_evento);

    memoAutorizacaoInfo.Lines.Add(Format('Código Status: %d', [Nfce.autorizacao.codigo_status]));
    memoAutorizacaoInfo.Lines.Add(Format('Motivo Status: %s', [Nfce.autorizacao.motivo_status]));
    if Nfce.autorizacao.digest_value <> '' then
      memoAutorizacaoInfo.Lines.Add(Format('Digest Value: %s', [Nfce.autorizacao.digest_value]));
  end;
end;

end.
