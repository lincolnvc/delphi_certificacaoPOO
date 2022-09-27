unit Calculadora.Soma;

interface

uses Calculadora.Interfaces, Calculadora.Helpers, System.SysUtils,
  Calculadora.Operacoes, System.Generics.Collections;

type
  TSoma = class sealed(TOperacoes)
  public
    constructor Create(var Value: TList<double>);
    destructor Destroy; override;
    class function New(var Value: TList<double>): iOperacoes;
    function Executar: String; override;
  end;

implementation

{ TSoma }

constructor TSoma.Create(var Value: TList<double>);
begin
  FLista := Value;
end;

destructor TSoma.Destroy;
begin

  inherited;
end;

function TSoma.Executar: String;
var
  I: Integer;
begin
  Result := FLista[0].ToString;
  for I := 1 to FLista.Count - 1 do
    Result := (Result.ToDouble + FLista[I]).ToString;
  inherited;
end;

class function TSoma.New(var Value: TList<double>): iOperacoes;
begin
  Result := Self.Create(Value);
end;

end.
