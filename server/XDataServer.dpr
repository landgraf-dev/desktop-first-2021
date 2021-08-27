program XDataServer;

uses
  Sparkle.App,
  Vcl.Forms,
  dServerContainer in 'dServerContainer.pas' {DataModule1: TDataModule},
  MyService in '..\common\MyService.pas',
  MyServiceImplementation in 'MyServiceImplementation.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
