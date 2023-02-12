unit Forms.ConfigNfse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  NuvemFiscalClient, NuvemFiscalDtos, OpenApiRest, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfmConfigNfse = class(TForm)
    PageControl1: TPageControl;
    tsDados: TTabSheet;
    pnCertificado: TPanel;
    Label6: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    edSerieRPS: TEdit;
    edLoteRPS: TEdit;
    cbAmbiente: TComboBox;
    Label2: TLabel;
    edNumeroRPS: TEdit;
    btCancelar: TButton;
    btOk: TButton;
    Label12: TLabel;
    cbSimplesNacional: TComboBox;
    Label13: TLabel;
    cbRegimeEspecial: TComboBox;
    chkIncentivoFiscal: TCheckBox;
    procedure btOkClick(Sender: TObject);
  private
    Client: INuvemFiscalClient;
    Cnpj: string;
    procedure AtualizarConfig;
    procedure CarregarConfig;
    procedure MostrarDadosConfig(Config: TEmpresaConfigNfse);
  public
    class procedure Editar(Client: INuvemFiscalClient; const Cnpj: string);
  end;

var
  fmConfigNfse: TfmConfigNfse;

implementation

{$R *.dfm}

{ TfmConfigNfse }

procedure TfmConfigNfse.AtualizarConfig;
var
  Config: TEmpresaConfigNfse;
begin
  Config := TEmpresaConfigNfse.Create;
  try
    case cbAmbiente.ItemIndex of
      0: Config.ambiente := 'homologacao';
      1: Config.ambiente := 'producao';
    end;
    Config.rps := TEmpresaConfigRps.Create;
    Config.rps.numero := StrToInt(edNumeroRPS.Text);
    Config.rps.serie := edSerieRps.Text;
    Config.rps.lote := StrToInt(edLoteRPS.Text);
    Config.regTrib := TEmpresaConfigNfseRegTrib.Create;
    if cbSimplesNacional.ItemIndex >= 0 then
      Config.regTrib.opSimpNac := cbSimplesNacional.ItemIndex + 1;
    if cbRegimeEspecial.ItemIndex >= 0 then
      Config.regTrib.regEspTrib := cbRegimeEspecial.ItemIndex;
    Config.incentivo_fiscal := chkIncentivoFiscal.Checked;
    Client.Empresa.AlterarConfigNfse(Config, Cnpj).Free;
  finally
    Config.Free;
  end;
end;

procedure TfmConfigNfse.btOkClick(Sender: TObject);
begin
  AtualizarConfig;
  ModalResult := mrOk;
end;

procedure TfmConfigNfse.CarregarConfig;
var
  Config: TEmpresaConfigNfse;
begin
  try
    Config := Client.Empresa.ConsultarConfigNfse(Cnpj);
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

class procedure TfmConfigNfse.Editar(Client: INuvemFiscalClient; const Cnpj: string);
var
  Form: TfmConfigNfse;
begin
  Form := TfmConfigNfse.Create(nil);
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

procedure TfmConfigNfse.MostrarDadosConfig(Config: TEmpresaConfigNfse);
begin
  if Config.ambiente = 'producao' then
    cbAmbiente.ItemIndex := 1
  else
  if Config.ambiente = 'homologacao' then
    cbAmbiente.ItemIndex := 0;
  if Config.rps <> nil then
  begin
    edNumeroRPS.Text := IntToStr(Config.rps.numero);
    edSerieRPS.Text := Config.rps.serie;
    edLoteRPS.Text := IntToStr(Config.rps.lote);
  end;
  if Config.regTrib <> nil then
  begin
    if Config.regTrib.opSimpNacHasValue then
      cbSimplesNacional.ItemIndex := Config.regTrib.opSimpNac - 1
    else
      cbSimplesNacional.ItemIndex := -1;

    if Config.regTrib.regEspTribHasValue then
      cbRegimeEspecial.ItemIndex := Config.regTrib.regEspTrib
    else
      cbRegimeEspecial.ItemIndex := -1;
  end;
  chkIncentivoFiscal.Checked := Config.incentivo_fiscal;
end;

end.
