unit Calculadora.Multiplicar;

interface

uses Calculadora.Helpers, Calculadora.Interfaces, System.SysUtils,
  Calculadora.Operacoes, System.Generics.Collections;

type
  TMultiplicar = class sealed(TOperacoes)
    constructor Create(var Value: TList<double>);
    destructor Destroy; override;
    class function New(var Value: TList<double>): iOperacoes;
    function Executar: String; override;
  end;

implementation

{ TMultiplicar }

constructor TMultiplicar.Create(var Value: TList<double>);
begin
  FLista := Value;
end;

destructor TMultiplicar.Destroy;
begin

  inherited;
end;

function TMultiplicar.Executar: String;
var
  I: Integer;
begin
  Result := FLista[0].ToString;
  for I := 1 to FLista.Count - 1 do
    Result := (Result.ToDouble * FLista[I]).ToString;
  inherited;
end;

class function TMultiplicar.New(var Value: TList<double>): iOperacoes;
begin
  Result := Self.Create(Value);
end;

end.
