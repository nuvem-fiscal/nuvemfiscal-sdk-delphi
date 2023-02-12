unit Forms.ConfigNfce;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  NuvemFiscalClient, NuvemFiscalDtos, OpenApiRest, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfmConfigNfce = class(TForm)
    PageControl1: TPageControl;
    tsDados: TTabSheet;
    pnCertificado: TPanel;
    Label6: TLabel;
    Label11: TLabel;
    edCSC: TEdit;
    cbAmbiente: TComboBox;
    Label2: TLabel;
    edIdCSC: TEdit;
    btCancelar: TButton;
    btOk: TButton;
    Label13: TLabel;
    cbCRT: TComboBox;
    procedure btOkClick(Sender: TObject);
  private
    Client: INuvemFiscalClient;
    Cnpj: string;
    procedure AtualizarConfig;
    procedure CarregarConfig;
    procedure MostrarDadosConfig(Config: TEmpresaConfigNfce);
  public
    class procedure Editar(Client: INuvemFiscalClient; const Cnpj: string);
  end;

var
  fmConfigNfce: TfmConfigNfce;

implementation

{$R *.dfm}

{ TfmConfigNfce }

procedure TfmConfigNfce.AtualizarConfig;
var
  Config: TEmpresaConfigNfce;
begin
  Config := TEmpresaConfigNfce.Create;
  try
    case cbAmbiente.ItemIndex of
      0: Config.ambiente := 'homologacao';
      1: Config.ambiente := 'producao';
    end;
    if cbCRT.ItemIndex >= 0 then
      Config.CRT := cbCRT.ItemIndex + 1;
    Config.sefaz := TEmpresaConfigNfceSefaz.Create;
    if edIdCSC.Text <> '' then
      Config.sefaz.id_csc := StrToInt(edIdCSC.Text);
    Config.sefaz.csc := edCSC.Text;
    Client.Empresa.AlterarConfigNfce(Config, Cnpj).Free;
  finally
    Config.Free;
  end;
end;

procedure TfmConfigNfce.btOkClick(Sender: TObject);
begin
  AtualizarConfig;
  ModalResult := mrOk;
end;

procedure TfmConfigNfce.CarregarConfig;
var
  Config: TEmpresaConfigNfce;
begin
  try
    Config := Client.Empresa.ConsultarConfigNfce(Cnpj);
    try
      MostrarDadosConfig(Config);
    finally
      Config.Free;
    end;
  except
    on E: EOpenApiClientException do
      if E.Response.StatusCode <> 404 then
        raise;
  end;
end;

class procedure TfmConfigNfce.Editar(Client: INuvemFiscalClient; const Cnpj: string);
var
  Form: TfmConfigNfce;
begin
  Form := TfmConfigNfce.Create(nil);
  try
    Form.Caption := Format('Configuração NFS-e - %s', [Cnpj]);
    Form.Client := Client;
    Form.Cnpj := Cnpj;
    Form.CarregarConfig;
    Form.ShowModal;
  finally
    Form.Free;
  end;
end;

procedure TfmConfigNfce.MostrarDadosConfig(Config: TEmpresaConfigNfce);
begin
  if Config.ambiente = 'producao' then
    cbAmbiente.ItemIndex := 1
  else
  if Config.ambiente = 'homologacao' then
    cbAmbiente.ItemIndex := 0;
  if Config.CRTHasValue then
    cbCRT.ItemIndex := Config.CRT - 1;
  if Config.sefaz <> nil then
  begin
    edIdCSC.Text := IntToStr(Config.sefaz.id_csc);
    edCSC.Text := Config.sefaz.csc;
  end;
end;

end.
