program XDataClient;

uses
  Vcl.Forms,
  Forms.Main in 'Forms.Main.pas' {Form7},
  MyService in '..\common\MyService.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
