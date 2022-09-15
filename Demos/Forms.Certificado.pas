unit Forms.Certificado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.IOUtils,
  NuvemFiscalClient, NuvemFiscalDtos, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  OpenApiRest;

type
  TfmCertificado = class(TForm)
    PageControl1: TPageControl;
    tsCertificado: TTabSheet;
    btFechar: TButton;
    btAtualizarCertiicado: TButton;
    pnCertificado: TPanel;
    lbThumbprint: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label1: TLabel;
    edThumbprint: TEdit;
    edNumeroSerial: TEdit;
    edCNPJ: TEdit;
    edDataEmissao: TEdit;
    edDataValidade: TEdit;
    edRazaoSocial: TEdit;
    edEmissor: TEdit;
    mmSubject: TMemo;
    OpenDialog1: TOpenDialog;
    procedure btAtualizarCertiicadoClick(Sender: TObject);
  private
    Client: INuvemFiscalClient;
    Cnpj: string;
    procedure AtualizarCertificado(const Arquivo, Senha: string);
    procedure CarregarCertificado;
    procedure MostrarDadosCertificado(Certificado: TEmpresaCertificado);
  public
    class procedure Editar(Client: INuvemFiscalClient; const Cnpj: string);
  end;

implementation

{$R *.dfm}

{ TfmCertificado }

procedure TfmCertificado.AtualizarCertificado(const Arquivo, Senha: string);
var
  Body: TEmpresaPedidoCadastroCertificado;
  Certificado: TEmpresaCertificado;
begin
  Body := TEmpresaPedidoCadastroCertificado.Create;
  try
    Body.certificado := TFile.ReadAllBytes(Arquivo);
    Body.password := Senha;
    Certificado := Client.Empresa.CadastrarCertificadoEmpresa(Body, Cnpj);
    try
      MostrarDadosCertificado(Certificado);
    finally
      Certificado.Free;
    end;
  finally
    Body.Free;
  end;
end;

procedure TfmCertificado.btAtualizarCertiicadoClick(Sender: TObject);
var
  Senha: string;
begin
  if OpenDialog1.Execute then
    if InputQuery('Senha', #12'Senha do certificado:', Senha) then
      AtualizarCertificado(OpenDialog1.FileName, Senha);
end;

procedure TfmCertificado.CarregarCertificado;
var
  Certificado: TEmpresaCertificado;
begin
  try
    Certificado := Client.Empresa.ConsultarCertificadoEmpresa(Cnpj);
    try
      MostrarDadosCertificado(Certificado);
    finally
      Certificado.Free;
    end;
  except
    on E: EOpenApiClientException do
      if E.Response.StatusCode <> 404 then
        raise;
  end;
end;

class procedure TfmCertificado.Editar(Client: INuvemFiscalClient; const Cnpj: string);
var
  Form: TfmCertificado;
begin
  Form := TfmCertificado.Create(nil);
  try
    Form.Client := Client;
    Form.Cnpj := Cnpj;
    Form.CarregarCertificado;
    Form.ShowModal;
  finally
    Form.Free;
  end;
end;

procedure TfmCertificado.MostrarDadosCertificado(Certificado: TEmpresaCertificado);
begin
  edEmissor.Text := Certificado.issuer_name;
  edDataEmissao.Text := DateToStr(Certificado.not_valid_before);
  edDataValidade.Text := DateToStr(Certificado.not_valid_after);
  edThumbprint.Text := Certificado.thumbprint;
  edNumeroSerial.Text := Certificado.serial_number;
  edCNPJ.Text := Certificado.cpf_cnpj;
  edRazaoSocial.Text := Certificado.nome_razao_social;
  mmSubject.Lines.Text := Certificado.subject_name;
end;

end.
