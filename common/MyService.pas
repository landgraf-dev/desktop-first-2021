unit MyService;

interface

uses
  XData.Service.Common,
  System.Generics.Collections;

type
  TCountry = class
  private
    FName: string;
  public
    property Name: string read FName write FName;
  end;

  TPhoneNumber = class
  private
    FNumber: string;
  public
    constructor Create(const ANumber: string);
    property Number: string read FNumber write FNumber;
  end;

  TCustomer = class
  private
    FFirstName: string;
    FLastName: string;
    FCountry: TCountry;
    FPhoneNumbers: TList<TPhoneNumber>;
  public
    constructor Create; overload;
    constructor Create(const AFirstName, ALastName: string); overload;
    destructor Destroy; override;
    property FirstName: string read FFirstName write FFirstName;
    property LastName: string read FLastName write FLastName;
    property Country: TCountry read FCountry write FCountry;
    property PhoneNumbers: TList<TPhoneNumber> read FPhoneNumbers;
  end;

  [ServiceContract]
  IMyService = interface(IInvokable)
    ['{FF151B3B-962B-424F-86C9-866377969F04}']

    /// <summary>
    ///   Adds two numbers and return the value.
    /// </summary>
    /// <param name="A">
    ///   First number to be added.
    /// </param>
    /// <param name="B">
    ///   Second number to be added.
    /// </param>
    /// <remarks>
    ///     <item>
    ///       This operation adds one number to another. It's very simple,
    ///       you can't get it wrong.
    ///     </item>
    /// </remarks>
    [HttpGet] function Sum(A, B: double): double;
    function EchoString(Value: string): string;

    function GetCustomers: TList<TCustomer>;
  end;

implementation

{ TCustomer }

constructor TCustomer.Create(const AFirstName, ALastName: string);
begin
  Create;
  FFirstName := AFirstName;
  FLastName := ALastName;
end;

constructor TCustomer.Create;
begin
  inherited Create;
  FPhoneNumbers := TList<TPhoneNumber>.Create;
end;

destructor TCustomer.Destroy;
begin
  FPhoneNumbers.Free;
  inherited;
end;

{ TPhoneNumber }

constructor TPhoneNumber.Create(const ANumber: string);
begin
  FNumber := ANumber;
end;

initialization
  RegisterServiceType(TypeInfo(IMyService));

end.
