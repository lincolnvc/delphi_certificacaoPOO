unit Classe.Calculadora;

interface

uses
  Controls, System.Generics.Collections;

type
  iOperacoes = interface
    ['{655C8757-9943-4A39-840C-D2DBC0B7039A}']
    function Operacao(Num1, Num2: double): double; overload;
    function Operacao(Num1, Num2: String) : String; overload;
  end;

  iCalculadora = interface
    procedure Add(Value : String); overload;
    procedure Add(Value : Currency); overload;
    procedure Add(Value : Integer); overload;
    function Soma: iOperacoes;
    function Subtrair: iOperacoes;
    function Dividir: iOperacoes;
    function Multiplicar: iOperacoes;
  end;


  TCaptionHelper = record helper for TCaption
    function ToCurrency : Currency;
  end;

  TStrHelper = record helper for String
    function ToCurrency : Currency;
  end;


  TSoma = class(TInterfacedObject, iOperacoes)
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iOperacoes;
    function Operacao(Num1, Num2: double): double; overload;
    function Operacao(Num1, Num2: String) : String; overload;
  end;

  TSubtrair = class(TInterfacedObject, iOperacoes)
    constructor Create;
    destructor Destroy; override;
    class function New: iOperacoes;
    function Operacao(Num1, Num2: double): double; overload;
    function Operacao(Num1, Num2: String) : String; overload;
  end;

  TMultiplicar = class(TInterfacedObject, iOperacoes)
    constructor Create;
    destructor Destroy; override;
    class function New: iOperacoes;
    function Operacao(Num1, Num2: double): double; overload;
    function Operacao(Num1, Num2: String) : String; overload;
  end;

  TDividir = class(TInterfacedObject, iOperacoes)
    constructor Create;
    destructor Destroy; override;
    class function New: iOperacoes;
    function Operacao(Num1, Num2: double): double; overload;
    function Operacao(Num1, Num2: String) : String; overload;
  end;

  TCalculadora = class(TInterfacedObject, iCalculadora)
  private
    FLista : TList<double>;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iCalculadora;
    procedure Add(Value : String); overload;
    procedure Add(Value : Currency); overload;
    procedure Add(Value : Integer); overload;
    function Soma: iOperacoes;
    function Subtrair: iOperacoes;
    function Dividir: iOperacoes;
    function Multiplicar: iOperacoes;
  end;

implementation

uses
  System.SysUtils;

{ TSoma }

constructor TSoma.Create;
begin

end;

destructor TSoma.Destroy;
begin

  inherited;
end;

class function TSoma.New: iOperacoes;
begin
  Result := Self.Create;
end;


function TSoma.Operacao(Num1, Num2: String): String;
begin
   Result := (Num1.ToCurrency + Num2.ToCurrency).ToString;
end;

function TSoma.Operacao(Num1, Num2: double): double;
begin
  Result := Num1 + Num2;
end;

{ TSubtrair }

constructor TSubtrair.Create;
begin

end;

destructor TSubtrair.Destroy;
begin

  inherited;
end;

class function TSubtrair.New: iOperacoes;
begin
  Result := Self.Create;
end;

function TSubtrair.Operacao(Num1, Num2: String): String;
begin
  Result := (Num1.ToCurrency - Num2.ToCurrency).ToString;
end;

function TSubtrair.Operacao(Num1, Num2: double): double;
begin
  Result := Num1 - Num2;
end;

{ TDividir }

constructor TDividir.Create;
begin

end;

destructor TDividir.Destroy;
begin

  inherited;
end;

class function TDividir.New: iOperacoes;
begin
  Result := Self.Create;
end;

function TDividir.Operacao(Num1, Num2: String): String;
begin
  Result := (Num1.ToCurrency / Num2.ToCurrency).ToString;
end;

function TDividir.Operacao(Num1, Num2: double): double;
begin
  if Num2 <= 0 then
    raise Exception.Create('Valor nao pode ser divido por zero');
  Result := Num1 / Num2;
end;

{ TMultiplicar }

constructor TMultiplicar.Create;
begin

end;

destructor TMultiplicar.Destroy;
begin

  inherited;
end;

class function TMultiplicar.New: iOperacoes;
begin
  Result := Self.Create;
end;

function TMultiplicar.Operacao(Num1, Num2: String): String;
begin
  Result := (Num1.ToCurrency * Num2.ToCurrency).ToString;
end;

function TMultiplicar.Operacao(Num1, Num2: double): double;
begin
  Result := Num1 * Num2;
end;

{ TCalculadora }

procedure TCalculadora.Add(Value: String);
begin
  FLista.Add(Value.ToCurrency);
end;

procedure TCalculadora.Add(Value: Currency);
begin
  FLista.Add(Value);
end;

procedure TCalculadora.Add(Value: Integer);
begin
  FLista.Add(Value.ToDouble);
end;

constructor TCalculadora.Create;
begin
  FLista := TList<Double>.Create;
end;

destructor TCalculadora.Destroy;
begin
  FLista.Free;
  inherited;
end;

function TCalculadora.Dividir: iOperacoes;
begin
  Result := TDividir.New;
end;

function TCalculadora.Multiplicar: iOperacoes;
begin
  Result := TMultiplicar.New;
end;

class function TCalculadora.New: iCalculadora;
begin
  Result := Self.Create;
end;

function TCalculadora.Soma: iOperacoes;
begin
  Result := TSoma.Create;
end;

function TCalculadora.Subtrair: iOperacoes;
begin
  Result := TSubtrair.Create;
end;

{ TCaptionHelper }

function TCaptionHelper.ToCurrency: Currency;
begin
  Result := StrToCurr(Self);
end;

{ TStrHelper }

function TStrHelper.ToCurrency: Currency;
begin
  Result := StrToCurr(Self);
end;

end.
