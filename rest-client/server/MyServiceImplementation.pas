unit MyServiceImplementation;

interface

uses
  XData.Server.Module,
  XData.Service.Common,
  MyService,
  System.Generics.Collections;

type
  [ServiceImplementation]
  TMyService = class(TInterfacedObject, IMyService)
  private
    function Sum(A, B: double): double;
    function EchoString(Value: string): string;
    function GetCustomers: TList<TCustomer>;
  end;

implementation

function TMyService.GetCustomers: TList<TCustomer>;
begin
  Result := TList<TCustomer>.Create;
  Result.Add(TCustomer.Create('Wagner', 'Landgraf'));
  Result.Add(TCustomer.Create('John', 'Doe'));

  Result[0].Country := TCountry.Create;
  Result[0].Country.Name := 'Brazil';
  Result[0].PhoneNumbers.Add(TPhoneNumber.Create('+55 12 34567890'));
  Result[0].PhoneNumbers.Add(TPhoneNumber.Create('+55 77 34567890'));
  Result[0].PhoneNumbers.Add(TPhoneNumber.Create('+55 55 34567890'));

  Result[1].Country := TCountry.Create;
  Result[1].Country.Name := 'USA';
  Result[1].PhoneNumbers.Add(TPhoneNumber.Create('+1 12 34567890'));
  Result[1].PhoneNumbers.Add(TPhoneNumber.Create('+1 77 34567890'));
  Result[1].PhoneNumbers.Add(TPhoneNumber.Create('+1 55 34567890'));
end;

function TMyService.Sum(A, B: double): double;
begin
  Result := A + B;
end;

function TMyService.EchoString(Value: string): string;
begin
  Result := Value;
end;

initialization
  RegisterServiceType(TMyService);

end.
