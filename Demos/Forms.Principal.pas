unit Forms.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, NuvemFiscalClient, NuvemFiscalDTOs;

type
  TForm1 = class(TForm)
    edToken: TEdit;
    Label1: TLabel;
    edCnpj: TEdit;
    Label2: TLabel;
    btConsultarCnpj: TButton;
    Memo1: TMemo;
    Label3: TLabel;
    edCep: TEdit;
    btConsultarCep: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btConsultarCnpjClick(Sender: TObject);
    procedure edTokenChange(Sender: TObject);
    procedure btConsultarCepClick(Sender: TObject);
  private
    Client: INuvemFiscalClient;
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
    Memo1.Lines.Add(Format('%s %s %s - %s', [Endereco.TipoLogradouro, Endereco.Logradouro,
      Endereco.Complemento, Endereco.Bairro]));
    Memo1.Lines.Add(Format('%s - %s - %s', [Endereco.Cep, Endereco.Municipio, Endereco.Uf]));
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
    Memo1.Lines.Add(Empresa.RazaoSocial);

    Endereco := Empresa.Endereco;
    Memo1.Lines.Add(Format('%s %s, %s %s - %s', [Endereco.TipoLogradouro, Endereco.Logradouro,
      Endereco.Numero, Endereco.Complemento, Endereco.Bairro]));
    Memo1.Lines.Add(Format('%s - %s - %s', [Endereco.Cep, Endereco.Municipio.Descricao, Endereco.Uf]));

    for Socio in Empresa.Socios do
      Memo1.Lines.Add(Format('%s (%s)', [Socio.Nome, Socio.CpfCnpj]));
  finally
    Empresa.Free;
  end;
end;

procedure TForm1.edTokenChange(Sender: TObject);
begin
  Client.Config.AccessToken := edToken.Text;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Client := TNuvemFiscalClient.Create;
end;

end.
