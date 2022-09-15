unit Forms.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, NuvemFiscalClient, NuvemFiscalDTOs,
  OpenApiRest, Vcl.ComCtrls, Vcl.ExtCtrls,
  Forms.Empresa, Forms.Certificado, Forms.Nfse, Forms.ConfigNFSe;

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
    procedure btVerDetalhesNfseClick(Sender: TObject);
  private
    Client: INuvemFiscalClient;
    TokenProvider: IClientCredencialsTokenProvider;
    TokenData: ITokenData;
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

procedure TfmMain.btListaNfsesClick(Sender: TObject);

  function GetValorTotal(Nota: TNfse): double;
  begin
    Result := 0;
    for var Servico in Nota.declaracao_prestacao_servico.servicos do
      Result := Result + Servico.valores.valor_servicos;
  end;

var
  Notas: TNfseListagem;
  Nota: TNfse;
  Item: TListItem;
begin
  Notas := Client.Nfse.ListarNfse(30, 0, edNfseCnpj.Text, '', '');
  try
    lvNfses.Clear;
    for Nota in Notas.data do
    begin
      Item := lvNfses.Items.Add;
      Item.Caption := Nota.id;
      Item.SubItems.Add(Nota.numero);
      Item.SubItems.Add(Nota.declaracao_prestacao_servico.rps.identificacao_rps.numero);
      Item.SubItems.Add(Nota.status);
      Item.SubItems.Add(FormatDateTime('dd/mm/yyyy HH:nn:ss', Nota.data_emissao));
      Item.SubItems.Add(FormatFloat('"R$" #,0.00', GetValorTotal(Nota)));
    end;
  finally
    Notas.Free;
  end;
end;

procedure TfmMain.btVerDetalhesNfseClick(Sender: TObject);
var
  Nfse: TNfse;
begin
  Nfse := Client.Nfse.ConsultarNfse(NfseSelecionada);
  try
    TfmNfse.VerDetalhes(Nfse);
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
