unit dServerContainer;

interface

uses
  System.SysUtils, System.Classes, XData.Server.Module, Sparkle.HttpServer.Module, Sparkle.HttpServer.Context,
  Sparkle.Comp.Server, XData.Comp.Server,
  XData.Aurelius.ModelBuilder;

type
  TDataModule1 = class(TDataModule)
    XDataServer1: TXDataServer;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  TXDataModelBuilder.LoadXmlDoc(XDataServer1.Model);
end;

end.
