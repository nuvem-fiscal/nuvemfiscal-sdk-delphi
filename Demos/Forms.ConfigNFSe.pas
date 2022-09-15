unit Forms.ConfigNFSe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  NuvemFiscalClient, NuvemFiscalDtos, OpenApiRest, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfmConfigNFSe = class(TForm)
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
  fmConfigNFSe: TfmConfigNFSe;

implementation

{$R *.dfm}

{ TfmConfigNFSe }

procedure TfmConfigNFSe.AtualizarConfig;
var
  Config: TEmpresaConfigNFSe;
begin
  Config := TEmpresaConfigNFSe.Create;
  try
    case cbAmbiente.ItemIndex of
      0: Config.ambiente := 'homologacao';
      1: Config.ambiente := 'producao';
    end;
    Config.rps := TEmpresaConfigRps.Create;
    Config.rps.numero := StrToInt(edNumeroRPS.Text);
    Config.rps.serie := edSerieRps.Text;
    Config.rps.lote := StrToInt(edLoteRPS.Text);
    Client.Empresa.AlterarConfigNfse(Config, Cnpj).Free;
  finally
    Config.Free;
  end;
end;

procedure TfmConfigNFSe.btOkClick(Sender: TObject);
begin
  AtualizarConfig;
  ModalResult := mrOk;
end;

procedure TfmConfigNFSe.CarregarConfig;
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

class procedure TfmConfigNFSe.Editar(Client: INuvemFiscalClient; const Cnpj: string);
var
  Form: TfmConfigNFSe;
begin
  Form := TfmConfigNFSe.Create(nil);
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

procedure TfmConfigNFSe.MostrarDadosConfig(Config: TEmpresaConfigNfse);
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
end;

end.
