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
    tsTomador: TTabSheet;
    Label5: TLabel;
    edTomadorCpfCnpj: TEdit;
    edTomadorNomeRazaoSocial: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    edTomadorEmail: TEdit;
    Label9: TLabel;
    edTomadorInscrMunicipal: TEdit;
    Label1: TLabel;
    edTomadorCEP: TEdit;
    Label2: TLabel;
    edTomadorLogradouro: TEdit;
    Label3: TLabel;
    edTomadorNumero: TEdit;
    Label14: TLabel;
    edTomadorBairro: TEdit;
    Label4: TLabel;
    edTomadorCidade: TEdit;
    Label7: TLabel;
    edTomadorUF: TEdit;
    Label8: TLabel;
    edTomadorCodigoIBGE: TEdit;
    Label6: TLabel;
    edTomadorFone: TEdit;
    tsPrestador: TTabSheet;
    Label12: TLabel;
    edPrestadorCpfCnpj: TEdit;
    edPrestadorNomeRazaoSocial: TEdit;
    Label13: TLabel;
    Label22: TLabel;
    edPrestadorEmail: TEdit;
    Label23: TLabel;
    edPrestadorInscrMunicipal: TEdit;
    Label24: TLabel;
    edPrestadorCEP: TEdit;
    Label25: TLabel;
    edPrestadorLogradouro: TEdit;
    Label26: TLabel;
    edPrestadorNumero: TEdit;
    Label27: TLabel;
    edPrestadorBairro: TEdit;
    Label28: TLabel;
    edPrestadorCidade: TEdit;
    Label29: TLabel;
    edPrestadorUF: TEdit;
    Label30: TLabel;
    edPrestadorCodigoIBGE: TEdit;
    Label31: TLabel;
    edPrestadorFone: TEdit;
    tsIntermediario: TTabSheet;
    tsObra: TTabSheet;
    Label32: TLabel;
    edIntermediarioCpfCnpj: TEdit;
    Label33: TLabel;
    edIntermediarioNomeRazaoSocial: TEdit;
    Label34: TLabel;
    edIntermediarioInscricaoMunicipal: TEdit;
    Label35: TLabel;
    edCodigoObra: TEdit;
    Label36: TLabel;
    edART: TEdit;
    Label37: TLabel;
    cbRegimeTributacao: TComboBox;
    Label38: TLabel;
    cbRegimeEspecial: TComboBox;
    chSimplesNacional: TCheckBox;
    tsServico: TTabSheet;
    Label39: TLabel;
    edValorTotal: TEdit;
    cbServico: TComboBox;
    Label40: TLabel;
    Label41: TLabel;
    edServicoDiscriminacao: TEdit;
    Label42: TLabel;
    edServicoItemListaServico: TEdit;
    Label43: TLabel;
    edServicoQuantidade: TEdit;
    edServicoValorUnitario: TEdit;
    Label44: TLabel;
    edServicoValorTotal: TEdit;
    Label45: TLabel;
    tsMensagens: TTabSheet;
    memoMensagens: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure cbServicoChange(Sender: TObject);
  private
    FNfse: TNfse;
  public
    class function GetValorTotal(Nfse: TNfse): double;
    procedure SetServico(servico: TRpsDadosServico);
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

procedure TfmDetalhesNfse.cbServicoChange(Sender: TObject);
begin
  var servico := TRpsDadosServico(cbServico.Items.Objects[cbServico.ItemIndex]);
  SetServico(servico);
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
  edDataEmissao.Text := FormatDateTime('dd/mm/yyyy HH:nn:ss', Nfse.data_emissao);
  edSituacao.Text := Nfse.status;
  edNumeroNota.Text := Nfse.numero;
  edAmbiente.Text := Nfse.ambiente;
  edReferencia.Text := Nfse.referencia;
  edCodigoVerificacao.Text := Nfse.codigo_verificacao;
  edValorTotal.Text := FormatFloat('"R$" #,0.00', GetValorTotal(FNfse));
  edLinkUrl.Text := Nfse.link_url;

  if Nfse.declaracao_prestacao_servico.prestador <> nil then
  begin
    var prestador := Nfse.declaracao_prestacao_servico.prestador;
    edPrestadorCpfCnpj.Text := prestador.cpf_cnpj;
    edPrestadorNomeRazaoSocial.Text := prestador.nome_razao_social;
    edPrestadorEmail.Text := prestador.email;
    edPrestadorFone.Text := prestador.fone;
    edPrestadorInscrMunicipal.Text := prestador.inscricao_municipal;

    if prestador.regime_tributacao < cbRegimeTributacao.Items.Count then
      cbRegimeTributacao.ItemIndex := prestador.regime_tributacao;
    if prestador.regime_especial_tributacao < cbRegimeEspecial.Items.Count then
      cbRegimeEspecial.ItemIndex := prestador.regime_especial_tributacao;
    chSimplesNacional.Checked := prestador.optante_simples_nacional;

    cbRegimeTributacao.Enabled := False;
    cbRegimeEspecial.Enabled := False;
    chSimplesNacional.Enabled := False;

    if prestador.endereco <> nil then
    begin
      edPrestadorCEP.Text := prestador.endereco.cep;
      edPrestadorLogradouro.Text := prestador.endereco.logradouro;
      edPrestadorNumero.Text := prestador.endereco.numero;
      edPrestadorBairro.Text := prestador.endereco.bairro;
      edPrestadorCidade.Text := prestador.endereco.cidade;
      edPrestadorUF.Text := prestador.endereco.uf;
      edPrestadorCodigoIBGE.Text := prestador.endereco.codigo_municipio;
    end;
  end;

  if Nfse.declaracao_prestacao_servico.tomador <> nil then
  begin
    var tomador := Nfse.declaracao_prestacao_servico.tomador;
    edTomadorCpfCnpj.Text := tomador.cpf_cnpj;
    edTomadorNomeRazaoSocial.Text := tomador.nome_razao_social;
    edTomadorEmail.Text := tomador.email;
    edTomadorFone.Text := tomador.fone;
    edTomadorInscrMunicipal.Text := tomador.inscricao_municipal;
    if tomador.endereco <> nil then
    begin
      edTomadorCEP.Text := tomador.endereco.cep;
      edTomadorLogradouro.Text := tomador.endereco.logradouro;
      edTomadorNumero.Text := tomador.endereco.numero;
      edTomadorBairro.Text := tomador.endereco.bairro;
      edTomadorCidade.Text := tomador.endereco.cidade;
      edTomadorUF.Text := tomador.endereco.uf;
      edTomadorCodigoIBGE.Text := tomador.endereco.codigo_municipio;
    end;
  end;

  if Nfse.declaracao_prestacao_servico.intermediario <> nil then
  begin
    var intermediario := Nfse.declaracao_prestacao_servico.intermediario;
    edIntermediarioCpfCnpj.Text := intermediario.cpf_cnpj;
    edIntermediarioNomeRazaoSocial.Text := intermediario.nome_razao_social;
    edIntermediarioInscricaoMunicipal.Text := intermediario.inscricao_municipal;
  end;

  if Nfse.declaracao_prestacao_servico.construcao_civil <> nil then
  begin
    var construcao_civil := Nfse.declaracao_prestacao_servico.construcao_civil;
    edCodigoObra.Text := construcao_civil.codigo_obra;
    edART.Text := construcao_civil.art;
  end;

  if Nfse.declaracao_prestacao_servico.servicos.Count > 0 then
  begin
    cbServico.Items.Clear;
    for var I := 0 to Nfse.declaracao_prestacao_servico.servicos.Count - 1 do
    begin
      var servico := Nfse.declaracao_prestacao_servico.servicos[I];
      cbServico.Items.AddObject(Format('%d: %s', [I, servico.discriminacao]), servico);
    end;
    cbServico.ItemIndex := 0;
    SetServico(Nfse.declaracao_prestacao_servico.servicos.First);
  end;

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
end;

procedure TfmDetalhesNfse.SetServico(servico: TRpsDadosServico);
begin
  edServicoItemListaServico.Text := servico.item_lista_servico;
  edServicoDiscriminacao.Text := servico.discriminacao;
  edServicoQuantidade.Text := FormatFloat('#,0.##', servico.quantidade);
  edServicoValorUnitario.Text := FormatFloat('"R$" #,0.00', servico.valores.valor_unitario);
  edServicoValorTotal.Text := FormatFloat('"R$" #,0.00', servico.valores.valor_servicos);
end;

end.
