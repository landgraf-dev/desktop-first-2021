unit Forms.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MyService,
  XData.Client, Vcl.StdCtrls,
  System.Generics.Collections, Data.DB, Aurelius.Bind.BaseDataset, Aurelius.Bind.Dataset, Vcl.Grids, Vcl.DBGrids;

type
  TForm7 = class(TForm)
    Button1: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    AureliusDataset1: TAureliusDataset;
    Button2: TButton;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    AureliusDataset2: TAureliusDataset;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    Client: TXDataClient;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
var
  MyService: IMyService;
  Customers: TList<TCustomer>;
begin
  MyService := Client.Service<IMyService>;
  Customers := MyService.GetCustomers;
  AureliusDataset1.Close;
  AureliusDataset2.Close;
  AureliusDataset1.IncludeUnmappedObjects := True;
  AureliusDataset1.SetSourceList(Customers, True);
  AureliusDataset1.Open;

  AureliusDataset2.DatasetField := TDatasetField(
    AureliusDataset1.FieldByName('PhoneNumbers'));
  AureliusDataset2.Open;
end;

procedure TForm7.Button2Click(Sender: TObject);
var
  Customer: TCustomer;
begin
  Customer := AureliusDataset1.Current<TCustomer>;
  ShowMessage(Customer.FirstName);
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
  Client := TXDataClient.Create;
  Client.Uri := 'http://localhost:2001/tms/xdata';
end;

procedure TForm7.FormDestroy(Sender: TObject);
begin
  Client.Free;
end;

end.
