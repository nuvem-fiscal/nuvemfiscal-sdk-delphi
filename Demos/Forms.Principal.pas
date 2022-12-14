unit Forms.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, System.UITypes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, NuvemFiscalClient, NuvemFiscalDTOs,
  OpenApiRest, Vcl.ComCtrls, Vcl.ExtCtrls,
  Forms.Empresa,
  Forms.Certificado,
  Forms.ConfigNfse,
  Forms.DetalhesNfse,
  Forms.EmitirNfse;

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
    cbAmbiente: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btConsultarCnpjClick(Sender: TObject);
    procedure btConsultarCepClick(Sender: TObject);
    procedure btTokenClick(Sender: TObject);
    procedure btCriarEmpresaClick(Sender: TObject);
    procedure btAtualizarEmpresasClick(Sender: TObject);
    procedure btAlterarEmpresaClick(Sender: TObject);
    procedure btCancelarNfseClick(Sender: TObject);
    procedure btCertificadoClick(Sender: TObject);
    procedure btListaNfsesClick(Sender: TObject);
    procedure btConfigNFSeClick(Sender: TObject);
    procedure btEmitirNfseClick(Sender: TObject);
    procedure btVerDetalhesNfseClick(Sender: TObject);
    procedure btListarNfseClick(Sender: TObject);
  private
    Client: INuvemFiscalClient;
    TokenProvider: IClientCredencialsTokenProvider;
    TokenData: ITokenData;
    function AmbienteNfse: string;
    procedure Log(const Msg: string);
    function CnpjSelecionado: string;
    function NfseSelecionada: string;
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

function TfmMain.AmbienteNfse: string;
begin
  if cbAmbiente.ItemIndex = -1 then
    cbAmbiente.ItemIndex := 0;
  Result := cbAmbiente.Text;
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
  Empresas := Client.Empresa.ListarEmpresas(30, 0, '');
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

procedure TfmMain.btCancelarNfseClick(Sender: TObject);
var
  Cancelamento: TNfseCancelamento;
begin
  if NfseSelecionada = '' then Exit;

  if MessageDlg('Tem certeza que deseja cancelar a nota ' + NfseSelecionada, mtConfirmation, [mbOk, mbCancel], 0, mbCancel) <> mrOk then
    Exit;

  Cancelamento := Client.Nfse.CancelarNfse(NfseSelecionada);
  try
    ShowMessage(Format('Pedido de cancelamento %s em processamento.',
      [Cancelamento.id]));
  finally
    Cancelamento.Free;
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

procedure TfmMain.btEmitirNfseClick(Sender: TObject);
begin
  TfmEmitirNfse.Emitir(Client, AmbienteNfse);
end;

procedure TfmMain.btListaNfsesClick(Sender: TObject);
var
  Notas: TNfseListagem;
  Nota: TNfse;
  Item: TListItem;
begin
  Notas := Client.Nfse.ListarNfse(30, 0, edNfseCnpj.Text, '', AmbienteNfse);
  try
    lvNfses.Clear;
    for Nota in Notas.data do
    begin
      Item := lvNfses.Items.Add;
      Item.Caption := Nota.id;
      Item.SubItems.Add(Nota.numero);
      Item.SubItems.Add(Nota.declaracao_prestacao_servico.rps.identificacao_rps.numero);
      Item.SubItems.Add(Nota.status);
      if Nota.data_emissaoHasValue then
        Item.SubItems.Add(FormatDateTime('dd/mm/yyyy HH:nn:ss', Nota.data_emissao))
      else
        Item.SubItems.Add('');
      Item.SubItems.Add(Nota.declaracao_prestacao_servico.tomador.nome_razao_social);
      Item.SubItems.Add(FormatFloat('"R$" #,0.00', TfmDetalhesNfse.GetValorTotal(Nota)));
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

procedure TfmMain.btVerDetalhesNfseClick(Sender: TObject);
var
  Nfse: TNfse;
begin
  Nfse := Client.Nfse.ConsultarNfse(NfseSelecionada);
  try
    TfmDetalhesNfse.Visualizar(Nfse);
  finally
    Nfse.Free;
  end;
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  edClientId.Text := GetEnvironmentVariable('NUVEMFISCAL_CLIENTID');
  edClientSecret.Text := GetEnvironmentVariable('NUVEMFISCAL_CLIENTSECRET');

  Client := TNuvemFiscalClient.Create;
  TokenProvider := TClientCredentialsTokenProvider.Create;
  TokenProvider.TokenEndpoint := 'https://auth.nuvemfiscal.com.br/oauth/token';
end;

procedure TfmMain.Log(const Msg: string);
begin
  mmLog.Lines.Add(Msg);
end;

function TfmMain.NfseSelecionada: string;
begin
  if lvNfses.Selected <> nil then
    Result := lvNfses.Selected.Caption
  else
    Result := '';
end;

end.
