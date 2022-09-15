unit Forms.Empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  NuvemFiscalDTOs;

type
  TfmEmpresa = class(TForm)
    PageControl1: TPageControl;
    tsEndereco: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    edCEP: TEdit;
    Label2: TLabel;
    edLogradouro: TEdit;
    Label3: TLabel;
    edNumero: TEdit;
    Label4: TLabel;
    edCidade: TEdit;
    Label7: TLabel;
    edUF: TEdit;
    Label8: TLabel;
    edCodigoIBGE: TEdit;
    btBuscaCEP: TButton;
    Label5: TLabel;
    edCNPJ: TEdit;
    Label6: TLabel;
    edInscrEstadual: TEdit;
    edInscrMunicipal: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    edRazaoSocial: TEdit;
    Label11: TLabel;
    edEmail: TEdit;
    Label12: TLabel;
    cbRegimeTributacao: TComboBox;
    Label13: TLabel;
    cbRegimeEspecial: TComboBox;
    chSimplesNacional: TCheckBox;
    Label14: TLabel;
    edBairro: TEdit;
    btCancelar: TButton;
    btOk: TButton;
    procedure btOkClick(Sender: TObject);
  private
    GravaProc: TProc;
    procedure AtualizarEmpresa(Empresa: TEmpresa);
  public
    class procedure Editar(Empresa: TEmpresa; GravaProc: TProc);
    procedure SetEmpresa(Empresa: TEmpresa);
  end;

implementation

{$R *.dfm}

{ TfmEmpresa }

procedure TfmEmpresa.AtualizarEmpresa(Empresa: TEmpresa);
begin
  Empresa.cpf_cnpj := edCNPJ.Text;
  Empresa.nome_razao_social := edRazaoSocial.Text;
  Empresa.email := edEmail.Text;
  Empresa.inscricao_estadual := edInscrEstadual.Text;
  Empresa.inscricao_municipal := edInscrMunicipal.Text;
  Empresa.regime_tributacao := cbRegimeTributacao.ItemIndex;
  Empresa.regime_especial_tributacao := cbRegimeEspecial.ItemIndex;
  Empresa.optante_simples_nacional := chSimplesNacional.Checked;
  if Empresa.endereco <> nil then
  begin
    Empresa.endereco.cep := edCEP.Text;
    Empresa.endereco.logradouro := edLogradouro.Text;
    Empresa.endereco.numero := edNumero.Text;
    Empresa.endereco.bairro := edBairro.Text;
    Empresa.endereco.cidade := edCidade.Text;
    Empresa.endereco.uf := edUF.Text;
    Empresa.endereco.codigo_municipio := edCodigoIBGE.Text;
  end;
end;

procedure TfmEmpresa.btOkClick(Sender: TObject);
begin
  GravaProc();
  ModalResult := mrOk;
end;

class procedure TfmEmpresa.Editar(Empresa: TEmpresa; GravaProc: TProc);
var
  Form: TfmEmpresa;
begin
  Form := TfmEmpresa.Create(nil);
  try
    Form.GravaProc := GravaProc;
    Form.SetEmpresa(Empresa);
    Form.ShowModal;
  finally
    Form.Free;
  end;
end;

procedure TfmEmpresa.SetEmpresa(Empresa: TEmpresa);
begin
  edCNPJ.Text := Empresa.cpf_cnpj;
  edRazaoSocial.Text := Empresa.nome_razao_social;
  edEmail.Text := Empresa.email;
  edInscrEstadual.Text := Empresa.inscricao_estadual;
  edInscrMunicipal.Text := Empresa.inscricao_municipal;
  if Empresa.regime_tributacao < cbRegimeTributacao.Items.Count then
    cbRegimeTributacao.ItemIndex := Empresa.regime_tributacao;
  if Empresa.regime_especial_tributacao < cbRegimeEspecial.Items.Count then
    cbRegimeEspecial.ItemIndex := Empresa.regime_especial_tributacao;
  chSimplesNacional.Checked := Empresa.optante_simples_nacional;
  if Empresa.endereco <> nil then
  begin
    edCEP.Text := Empresa.endereco.cep;
    edLogradouro.Text := Empresa.endereco.logradouro;
    edNumero.Text := Empresa.endereco.numero;
    edBairro.Text := Empresa.endereco.bairro;
    edCidade.Text := Empresa.endereco.cidade;
    edUF.Text := Empresa.endereco.uf;
    edCodigoIBGE.Text := Empresa.endereco.codigo_municipio;
  end;
end;

end.
