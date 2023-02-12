program NuvemFiscalDemo;

uses
  Vcl.Forms,
  Forms.Principal in 'Forms.Principal.pas' {fmMain},
  NuvemFiscalJson in '..\Source\NuvemFiscalJson.pas',
  OpenApiHttp in '..\Source\OpenApiHttp.pas',
  OpenApiJson in '..\Source\OpenApiJson.pas',
  OpenApiRest in '..\Source\OpenApiRest.pas',
  NuvemFiscalClient in '..\Source\NuvemFiscalClient.pas',
  NuvemFiscalDtos in '..\Source\NuvemFiscalDtos.pas',
  OpenApiUtils in '..\Source\OpenApiUtils.pas',
  Forms.Empresa in 'Forms.Empresa.pas' {fmEmpresa},
  Forms.Certificado in 'Forms.Certificado.pas' {fmCertificado},
  Forms.DetalhesNfse in 'Forms.DetalhesNfse.pas' {fmDetalhesNfse},
  Forms.ConfigNFSe in 'Forms.ConfigNFSe.pas' {fmConfigNfse},
  Forms.EmitirNfse in 'Forms.EmitirNfse.pas' {fmEmitirNfse},
  Forms.ConfigNfce in 'Forms.ConfigNfce.pas' {fmConfigNfce},
  Forms.DetalhesNfce in 'Forms.DetalhesNfce.pas' {fmDetalhesNfce},
  Forms.EmitirNfce in 'Forms.EmitirNfce.pas' {fmEmitirNfce};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmMain, fmMain);
  Application.Run;
end.
