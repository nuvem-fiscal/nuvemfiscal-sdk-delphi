program NuvemFiscalDemo;

uses
  Vcl.Forms,
  Forms.Principal in 'Forms.Principal.pas' {Form1},
  NuvemFiscalJson in '..\Source\NuvemFiscalJson.pas',
  OpenApiHttp in '..\Source\OpenApiHttp.pas',
  OpenApiJson in '..\Source\OpenApiJson.pas',
  OpenApiRest in '..\Source\OpenApiRest.pas',
  NuvemFiscalClient in '..\Source\NuvemFiscalClient.pas',
  NuvemFiscalDtos in '..\Source\NuvemFiscalDtos.pas',
  OpenApiUtils in '..\Source\OpenApiUtils.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
