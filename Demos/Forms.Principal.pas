unit Forms.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, System.UITypes,
  System.IOUtils, ShellApi,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, NuvemFiscalClient, NuvemFiscalDTOs,
  OpenApiRest, Vcl.ComCtrls, Vcl.ExtCtrls,
  Forms.Empresa,
  Forms.Certificado,
  Forms.ConfigNfse,
  Forms.ConfigNfce,
  Forms.DetalhesNfse,
  Forms.DetalhesNfce,
  Forms.EmitirNfse,
  Forms.EmitirNfce;

type
  TfmMain = class(TForm)
    edClientId: TEdit;
    Label1: TLabel;
    edClientSecret: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    edToken: TEdit;
    btToken: TButton;
    Label6: TLabel;
    edExpiracao: TEdit;
    PageControl1: TPageControl;
    tsConsultas: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    edCnpj: TEdit;
    btConsultarCnpj: TButton;
    mmLog: TMemo;
    edCep: TEdit;
    btConsultarCep: TButton;
    tsEmpresas: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    lvEmpresas: TListView;
    btAtualizarEmpresas: TButton;
    btCriarEmpresa: TButton;
    btAlterarEmpresa: TButton;
    btCertificado: TButton;
    tsNfse: TTabSheet;
    btConfigNFSe: TButton;
    Panel4: TPanel;
    btEmitirNfse: TButton;
    Panel3: TPanel;
    lvNfses: TListView;
    Panel5: TPanel;
    btListaNfses: TButton;
    edNfseCnpj: TEdit;
    Label7: TLabel;
    btCancelarNfse: TButton;
    btVerDetalhesNfse: TButton;
    btListarNfse: TButton;
    cbNfseAmbiente: TComboBox;
    Button1: TButton;
    Button2: TButton;
    tsNfce: TTabSheet;
    Panel6: TPanel;
    btEmitirNfce: TButton;
    btCancelarNfce: TButton;
    btVerDetalhesNfce: TButton;
    Panel7: TPanel;
    lvNfces: TListView;
    Panel8: TPanel;
    Label8: TLabel;
    btListaNfces: TButton;
    edNfceCnpj: TEdit;
    cbNfceAmbiente: TComboBox;
    cbAPI: TComboBox;
    Label9: TLabel;
    btDownloadXmlNfce: TButton;
    btDownloadPdfNfce: TButton;
    btConsultarStatusSefaz: TButton;
    btListarCotas: TButton;
    btInutilizarNumeracaoNfce: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btConsultarCnpjClick(Sender: TObject);
    procedure btConsultarCepClick(Sender: TObject);
    procedure btTokenClick(Sender: TObject);
    procedure btCriarEmpresaClick(Sender: TObject);
    procedure btAtualizarEmpresasClick(Sender: TObject);
    procedure btAlterarEmpresaClick(Sender: TObject);
    procedure btCancelarNfceClick(Sender: TObject);
    procedure btCancelarNfseClick(Sender: TObject);
    procedure btCertificadoClick(Sender: TObject);
    procedure btListaNfsesClick(Sender: TObject);
    procedure btConfigNFSeClick(Sender: TObject);
    procedure btConsultarStatusSefazClick(Sender: TObject);
    procedure btDownloadPdfNfceClick(Sender: TObject);
    procedure btDownloadXmlNfceClick(Sender: TObject);
    procedure btEmitirNfceClick(Sender: TObject);
    procedure btEmitirNfseClick(Sender: TObject);
    procedure btInutilizarNumeracaoNfceClick(Sender: TObject);
    procedure btListaNfcesClick(Sender: TObject);
    procedure btVerDetalhesNfseClick(Sender: TObject);
    procedure btListarNfseClick(Sender: TObject);
    procedure btVerDetalhesNfceClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btListarCotasClick(Sender: TObject);
    procedure cbAPIChange(Sender: TObject);
    procedure lvEmpresasDblClick(Sender: TObject);
    procedure lvNfcesDblClick(Sender: TObject);
    procedure lvNfsesDblClick(Sender: TObject);
  private
    Client: INuvemFiscalClient;
    TokenProvider: IClientCredencialsTokenProvider;
    TokenData: ITokenData;
    function BaseUrl: string;
    function AmbienteNfse: string;
    function AmbienteNfce: string;
    procedure Log(const Msg: string);
    function CnpjSelecionado: string;
    function NfseSelecionada: string;
    function NfceSelecionada: string;
  public
  end;

var
  fmMain: TfmMain;

implementation

{$R *.dfm}

procedure TfmMain.btCertificadoClick(Sender: TObject);
begin
  if CnpjSelecionado <> '' then
    TfmCertificado.Editar(Client, CnpjSelecionado);
end;

procedure TfmMain.btConfigNFSeClick(Sender: TObject);
begin
  if CnpjSelecionado <> '' then
    TfmConfigNFSe.Editar(Client, CnpjSelecionado);
end;

procedure TfmMain.btConsultarCepClick(Sender: TObject);
var
  Endereco: TCepEndereco;
begin
  Endereco := Client.Cep.ConsultarCep(edCep.Text);
  try
    Log(Format('%s %s %s - %s', [Endereco.tipo_logradouro, Endereco.logradouro, Endereco.complemento, Endereco.bairro]));
    Log(Format('%s - %s - %s', [Endereco.cep, Endereco.municipio, Endereco.uf]));
    Log('');
  finally
    Endereco.Free;
  end;
end;

procedure TfmMain.btConsultarCnpjClick(Sender: TObject);
var
  Empresa: TCnpjEmpresa;
  Endereco: TCnpjEndereco;
begin
  Empresa := Client.Cnpj.ConsultarCnpj(edCnpj.Text);
  try
    Log(Empresa.razao_social);

    Endereco := Empresa.Endereco;
    Log(Format('%s %s, %s %s - %s', [Endereco.tipo_logradouro, Endereco.logradouro, Endereco.numero, Endereco.complemento, Endereco.bairro]));
    Log(Format('%s - %s - %s', [Endereco.cep, Endereco.municipio.descricao, Endereco.uf]));
    Log('');
  finally
    Empresa.Free;
  end;
end;

procedure TfmMain.btTokenClick(Sender: TObject);
begin
  TokenProvider.ClientId := edClientId.Text;
  TokenProvider.ClientSecret := edClientSecret.Text;
  TokenProvider.Scope := 'cep cnpj empresa nfse';
  TokenData := TokenProvider.RetrieveToken;
  edToken.Text := TokenData.AccessToken;
  edExpiracao.Text := DateTimeToStr(TokenData.ExpirationTime);
  Client.Config.AccessToken := edToken.Text;
end;

function TfmMain.CnpjSelecionado: string;
begin
  if lvEmpresas.Selected <> nil then
    Result := lvEmpresas.Selected.Caption
  else
    Result := '';
end;

function TfmMain.AmbienteNfce: string;
begin
  if cbNfceAmbiente.ItemIndex = -1 then
    cbNfceAmbiente.ItemIndex := 0;
  Result := cbNfceAmbiente.Text;
end;

function TfmMain.AmbienteNfse: string;
begin
  if cbNfseAmbiente.ItemIndex = -1 then
    cbNfseAmbiente.ItemIndex := 0;
  Result := cbNfseAmbiente.Text;
end;

function TfmMain.BaseUrl: string;
begin
  if cbAPI.ItemIndex = 1 then
    Result := 'https://api.nuvemfiscal.com.br/'
  else
    Result := 'https://api.sandbox.nuvemfiscal.com.br/';
end;

procedure TfmMain.btAlterarEmpresaClick(Sender: TObject);
var
  Empresa: TEmpresa;
begin
  Empresa := Client.Empresa.ConsultarEmpresa(CnpjSelecionado);
  try
    TfmEmpresa.Editar(Empresa,
      procedure
      begin
        Client.Empresa.AtualizarEmpresa(Empresa, Empresa.cpf_cnpj).Free;
      end);
  finally
    Empresa.Free;
  end;
end;

procedure TfmMain.btAtualizarEmpresasClick(Sender: TObject);
var
  Empresas: TEmpresaListagem;
  Empresa: TEmpresa;
  Item: TListItem;
begin
  Empresas := Client.Empresa.ListarEmpresas(30, 0, False, '');
  try
    lvEmpresas.Clear;
    for Empresa in Empresas.data do
    begin
      Item := lvEmpresas.Items.Add;
      Item.Caption := Empresa.cpf_cnpj;
      Item.SubItems.Add(Empresa.nome_razao_social);
    end;
  finally
    Empresas.Free;
  end;
end;

procedure TfmMain.btCancelarNfceClick(Sender: TObject);
var
  Cancelamento: TDfeCancelamento;
  PedidoCancelamento: TNfePedidoCancelamento;
  Pdf: TBytes;
  Xml: TBytes;
begin
  if NfceSelecionada = '' then Exit;

  if MessageDlg('Tem certeza que deseja cancelar a nota ' + NfceSelecionada, mtConfirmation, [mbOk, mbCancel], 0, mbCancel) <> mrOk then
    Exit;

  PedidoCancelamento := TNfePedidoCancelamento.Create;
  try
    PedidoCancelamento.justificativa := 'Nota fiscal emitida com erro de preenchimento';

    Cancelamento := Client.Nfce.CancelarNfce(PedidoCancelamento, NfceSelecionada);
    try
      ShowMessage(Format('Status do cancelamento: %s' + sLineBreak + '%d: %s',
        [Cancelamento.status, Cancelamento.codigo_status, Cancelamento.motivo_status]));

      if Cancelamento.status = 'registrado' then
      begin
        Xml := Client.Nfce.BaixarXmlCancelamentoNfce(NfceSelecionada);
        Pdf := Client.Nfce.BaixarPdfCancelamentoNfce(NfceSelecionada);

        TFile.WriteAllBytes('cancelamento-nfce.xml', Xml);
        TFile.WriteAllBytes('cancelamento-nfce.pdf', Pdf);

        ShellExecute(Application.Handle, 'open', PChar('cancelamento-nfce.xml'), nil, nil, SW_SHOW);
        ShellExecute(Application.Handle, 'open', PChar('cancelamento-nfce.pdf'), nil, nil, SW_SHOW);
      end;
    finally
      Cancelamento.Free;
    end;
  finally
    PedidoCancelamento.Free;
  end;
end;

procedure TfmMain.btCancelarNfseClick(Sender: TObject);
var
  Cancelamento: TNfseCancelamento;
  PedidoCancelamento: TNfsePedidoCancelamento;
begin
  if NfseSelecionada = '' then Exit;

  if MessageDlg('Tem certeza que deseja cancelar a nota ' + NfseSelecionada, mtConfirmation, [mbOk, mbCancel], 0, mbCancel) <> mrOk then
    Exit;

  PedidoCancelamento := TNfsePedidoCancelamento.Create;
  try
    PedidoCancelamento.codigo := '01';
    PedidoCancelamento.motivo := 'Nota fiscal emitida com erro de preenchimento';

    Cancelamento := Client.Nfse.CancelarNfse(PedidoCancelamento, NfseSelecionada);
    try
      ShowMessage(Format('Pedido de cancelamento %s em processamento.',
        [Cancelamento.id]));
    finally
      Cancelamento.Free;
    end;
  finally
    PedidoCancelamento.Free;
  end;
end;

procedure TfmMain.btConsultarStatusSefazClick(Sender: TObject);
var
  Status: TDfeSefazStatus;
begin
  Status := Client.Nfce.ConsultarStatusSefazNfce(edNfceCnpj.Text);
  try
    ShowMessage(Format(
      'Autorizador: %s' + sLineBreak +
      'Código: %d' + sLineBreak +
      'Motivo: %s',
      [Status.autorizador, Status.codigo_status, Status.motivo_status]));
  finally
    Status.Free;
  end;
end;

procedure TfmMain.btCriarEmpresaClick(Sender: TObject);
var
  Empresa: TEmpresa;
begin
  Empresa := TEmpresa.Create;
  try
    TfmEmpresa.Editar(Empresa,
      procedure
      begin
        Client.Empresa.CriarEmpresa(Empresa).Free;
      end);
  finally
    Empresa.Free;
  end;
end;

procedure TfmMain.btDownloadPdfNfceClick(Sender: TObject);
var
  Nfce: TDfe;
  Pdf: TBytes;
begin
  if NfceSelecionada = '' then Exit;

  Pdf := Client.Nfce.BaixarPdfNfce(NfceSelecionada, False,
    Format('Impresso em %s||Nuvem Fiscal', [DateTimeToStr(Now)]),
    False, False);
  TFile.WriteAllBytes('danfce.pdf', Pdf);
  ShellExecute(Application.Handle, 'open', PChar('danfce.pdf'), nil, nil, SW_SHOW);
end;

procedure TfmMain.btDownloadXmlNfceClick(Sender: TObject);
var
  Nfce: TDfe;
  Xml: TBytes;
  XmlString: string;
begin
  if NfceSelecionada = '' then Exit;

  Xml := Client.Nfce.BaixarXmlNfce(NfceSelecionada);
  TFile.WriteAllBytes('nfce.xml', Xml);
  ShellExecute(Application.Handle, 'open', PChar('nfce.xml'), nil, nil, SW_SHOW);
end;

procedure TfmMain.btEmitirNfceClick(Sender: TObject);
begin
  TfmEmitirNfce.Emitir(Client, AmbienteNfce);
end;

procedure TfmMain.btEmitirNfseClick(Sender: TObject);
begin
  TfmEmitirNfse.Emitir(Client, AmbienteNfse);
end;

procedure TfmMain.btInutilizarNumeracaoNfceClick(Sender: TObject);
var
  Ano: string;
  Serie: string;
  NumeroInicial: string;
  NumeroFinal: string;
  Justificativa: string;
  PedidoInutilizacao: TDfePedidoInutilizacao;
  Inutilizacao: TDfeInutilizacao;
  Pdf: TBytes;
  Xml: TBytes;
begin
  Ano := '';
  if not(InputQuery('Inutilização ', 'Ano',    Ano)) then
    Exit;
  Serie := '';
  if not(InputQuery('Inutilização ', 'Serie',  Serie)) then
    Exit;
  NumeroInicial := '';
  if not(InputQuery('Inutilização ', 'Número Inicial', NumeroInicial)) then
    Exit;
  NumeroFinal := '';
  if not(InputQuery('Inutilização ', 'Número Final', NumeroFinal)) then
    Exit;
  Justificativa := '';
  if not(InputQuery('Inutilização ', 'Justificativa', Justificativa)) then
    Exit;

  PedidoInutilizacao := TDfePedidoInutilizacao.Create;
  try
    PedidoInutilizacao.ambiente := AmbienteNfce;
    PedidoInutilizacao.cnpj := edNfceCnpj.Text;
    PedidoInutilizacao.ano := StrToInt(Ano);
    PedidoInutilizacao.serie := StrToInt(Serie);
    PedidoInutilizacao.numero_inicial := StrToInt(NumeroInicial);
    PedidoInutilizacao.numero_final := StrToInt(NumeroFinal);
    PedidoInutilizacao.justificativa := Justificativa;

    Inutilizacao := Client.Nfce.InutilizarNumeracaoNfce(PedidoInutilizacao);
    try
      ShowMessage(Format('Status: %s' + sLineBreak +
        'Código: %d' + sLineBreak +
        'Motivo: %s',
        [Inutilizacao.status, Inutilizacao.codigo_status, Inutilizacao.motivo_status]));

      if Inutilizacao.status = 'registrado' then
      begin
        Xml := Client.Nfce.BaixarXmlInutilizacaoNfce(Inutilizacao.id);
        Pdf := Client.Nfce.BaixarPdfInutilizacaoNfce(Inutilizacao.id);

        TFile.WriteAllBytes('inutilizacao-nfce.xml', Xml);
        TFile.WriteAllBytes('inutilizacao-nfce.pdf', Pdf);

        ShellExecute(Application.Handle, 'open', PChar('inutilizacao-nfce.xml'), nil, nil, SW_SHOW);
        ShellExecute(Application.Handle, 'open', PChar('inutilizacao-nfce.pdf'), nil, nil, SW_SHOW);
      end;
    finally
      Inutilizacao.Free;
    end;
  finally
    PedidoInutilizacao.Free;
  end;
end;

procedure TfmMain.btListaNfcesClick(Sender: TObject);
var
  Notas: TDfeListagem;
  Nota: TDfe;
  Item: TListItem;
begin
  Notas := Client.Nfce.ListarNfce(30, 0, False, edNfceCnpj.Text, '',
    AmbienteNfce, '', '');
  try
    lvNfces.Clear;
    for Nota in Notas.data do
    begin
      Item := lvNfces.Items.Add;
      Item.Caption := Nota.id;
      Item.SubItems.Add(IntToStr(Nota.numero));
      Item.SubItems.Add(IntToStr(Nota.serie));
      Item.SubItems.Add(Nota.status);
      if Nota.data_emissaoHasValue then
        Item.SubItems.Add(FormatDateTime('dd/mm/yyyy HH:nn:ss', Nota.data_emissao))
      else
        Item.SubItems.Add('');
      Item.SubItems.Add(Nota.chave);
      Item.SubItems.Add(FormatFloat('"R$" #,0.00', Nota.valor_total));
    end;
  finally
    Notas.Free;
  end;
end;

procedure TfmMain.btListaNfsesClick(Sender: TObject);
var
  Notas: TNfseListagem;
  Nota: TNfse;
  Item: TListItem;
begin
  Notas := Client.Nfse.ListarNfse(30, 0, False, edNfseCnpj.Text, '',
    AmbienteNfse, '', '');
  try
    lvNfses.Clear;
    for Nota in Notas.data do
    begin
      Item := lvNfses.Items.Add;
      Item.Caption := Nota.id;
      Item.SubItems.Add(Nota.numero);
      Item.SubItems.Add(Nota.DPS.nDPS);
      Item.SubItems.Add(Nota.status);
      if Nota.data_emissaoHasValue then
        Item.SubItems.Add(FormatDateTime('dd/mm/yyyy HH:nn:ss', Nota.data_emissao))
      else
        Item.SubItems.Add('');
    end;
  finally
    Notas.Free;
  end;
end;

procedure TfmMain.btListarNfseClick(Sender: TObject);
begin
  if CnpjSelecionado = '' then Exit;

  edNfseCnpj.Text := CnpjSelecionado;
  PageControl1.ActivePage := tsNfse;
  btListaNfsesClick(nil);
end;

procedure TfmMain.btVerDetalhesNfceClick(Sender: TObject);
var
  Nfce: TDfe;
begin
  Nfce := Client.Nfce.ConsultarNfce(NfceSelecionada);
  try
    TfmDetalhesNfce.Visualizar(Nfce);
  finally
    Nfce.Free;
  end;
end;

procedure TfmMain.btVerDetalhesNfseClick(Sender: TObject);
var
  Nfse: TNfse;
begin
  Nfse := Client.Nfse.ConsultarNfse(NfseSelecionada);
  try
    TfmDetalhesNfse.Visualizar(Nfse, Client.Nfse);
  finally
    Nfse.Free;
  end;
end;

procedure TfmMain.Button1Click(Sender: TObject);
begin
  if CnpjSelecionado <> '' then
    TfmConfigNFCe.Editar(Client, CnpjSelecionado);
end;

procedure TfmMain.Button2Click(Sender: TObject);
begin
  if CnpjSelecionado = '' then Exit;

  edNfceCnpj.Text := CnpjSelecionado;
  PageControl1.ActivePage := tsNfce;
  btListaNfcesClick(nil);
end;

procedure TfmMain.btListarCotasClick(Sender: TObject);
var
  Listagem: TContaCotaListagem;
  I: integer;
  Cotas: string;
begin
  Listagem := Client.Conta.ListarCotasConta;
  try
    Cotas := '';
    for I := 0 to Listagem.data.Count - 1 do
    begin
      Cotas := Format(
        '%s' + sLineBreak +
        'Cota: %s, Consumo: %d, Limite: %d',
        [Cotas, Listagem.data[I].nome, Listagem.data[I].consumo, Listagem.data[I].limite]);

    end;
  finally
    Listagem.Free;
  end;
end;

procedure TfmMain.cbAPIChange(Sender: TObject);
begin
  Client.Config.BaseUrl := BaseUrl;
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  edClientId.Text := GetEnvironmentVariable('NUVEMFISCAL_CLIENTID');
  edClientSecret.Text := GetEnvironmentVariable('NUVEMFISCAL_CLIENTSECRET');

  Client := TNuvemFiscalClient.Create;
  Client.Config.BaseUrl := BaseUrl;
  TokenProvider := TClientCredentialsTokenProvider.Create;
  TokenProvider.TokenEndpoint := 'https://auth.nuvemfiscal.com.br/oauth/token';
end;

procedure TfmMain.Log(const Msg: string);
begin
  mmLog.Lines.Add(Msg);
end;

procedure TfmMain.lvEmpresasDblClick(Sender: TObject);
begin
  if (lvEmpresas.Items.Count > 0) and btAlterarEmpresa.Enabled then
    btAlterarEmpresa.Click;
end;

procedure TfmMain.lvNfcesDblClick(Sender: TObject);
begin
  if (lvNfces.Items.Count > 0) and btVerDetalhesNfce.Enabled then
    btVerDetalhesNfce.Click;
end;

procedure TfmMain.lvNfsesDblClick(Sender: TObject);
begin
  if (lvNfses.Items.Count > 0) and btVerDetalhesNfse.Enabled then
    btVerDetalhesNfse.Click;
end;

function TfmMain.NfceSelecionada: string;
begin
  if lvNfces.Selected <> nil then
    Result := lvNfces.Selected.Caption
  else
    Result := '';
end;

function TfmMain.NfseSelecionada: string;
begin
  if lvNfses.Selected <> nil then
    Result := lvNfses.Selected.Caption
  else
    Result := '';
end;

end.
