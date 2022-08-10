unit Forms.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, NuvemFiscalClient, NuvemFiscalDTOs,
  OpenApiRest, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
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
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    edCnpj: TEdit;
    btConsultarCnpj: TButton;
    mmLog: TMemo;
    edCep: TEdit;
    btConsultarCep: TButton;
    TabSheet2: TTabSheet;
    procedure FormCreate(Sender: TObject);
    procedure btConsultarCnpjClick(Sender: TObject);
    procedure btConsultarCepClick(Sender: TObject);
    procedure btTokenClick(Sender: TObject);
  private
    Client: INuvemFiscalClient;
    TokenProvider: IClientCredencialsTokenProvider;
    TokenData: ITokenData;
    procedure Log(const Msg: string);
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btConsultarCepClick(Sender: TObject);
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

procedure TForm1.btConsultarCnpjClick(Sender: TObject);
var
  Empresa: TCnpjEmpresa;
  Endereco: TCnpjEndereco;
  Socio: TCnpjSocio;
begin
  Empresa := Client.Cnpj.ConsultarCnpj(edCnpj.Text);
  try
    Log(Empresa.razao_social);

    Endereco := Empresa.Endereco;
    Log(Format('%s %s, %s %s - %s', [Endereco.tipo_logradouro, Endereco.logradouro, Endereco.numero, Endereco.complemento, Endereco.bairro]));
    Log(Format('%s - %s - %s', [Endereco.cep, Endereco.municipio.descricao, Endereco.uf]));

    if Empresa.socios.Count > 0 then
    begin
      Log('Sócios:');
      for Socio in Empresa.socios do
        Log(Format('  %s (%s)', [Socio.nome, Socio.cpf_cnpj]));
    end;
    Log('');
  finally
    Empresa.Free;
  end;
end;

procedure TForm1.btTokenClick(Sender: TObject);
begin
  TokenProvider.ClientId := edClientId.Text;
  TokenProvider.ClientSecret := edClientSecret.Text;
  TokenProvider.Scope := 'cep cnpj';
  TokenData := TokenProvider.RetrieveToken;
  edToken.Text := TokenData.AccessToken;
  edExpiracao.Text := DateTimeToStr(TokenData.ExpirationTime);
  Client.Config.AccessToken := edToken.Text;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Client := TNuvemFiscalClient.Create;
  TokenProvider := TClientCredentialsTokenProvider.Create;
  TokenProvider.TokenEndpoint := 'https://auth.nuvemfiscal.com.br/oauth/token';
end;

procedure TForm1.Log(const Msg: string);
begin
  mmLog.Lines.Add(Msg);
end;

end.
