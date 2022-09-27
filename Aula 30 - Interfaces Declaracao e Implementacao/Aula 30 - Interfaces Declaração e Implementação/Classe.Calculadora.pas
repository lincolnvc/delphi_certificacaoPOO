unit Classe.Calculadora;

interface

type


  iCalculadora = interface
    ['{655C8757-9943-4A39-840C-D2DBC0B7039A}']
    function Operacao(Num1, Num2 : double) : double;
  end;

  TSoma = class(TInterfacedObject, iCalculadora)
    function Operacao(Num1, Num2 : double) : double;
    function SomarDireto(Num1, Num2 : double) : double;
  end;

  TSubtrair =  class(TInterfacedObject, iCalculadora)
    function Operacao(Num1, Num2 : double) : double;
  end;

  TMultiplicar =  class(TInterfacedObject, iCalculadora)
    function Operacao(Num1, Num2 : double) : double;
  end;

  TDividir =  class(TInterfacedObject, iCalculadora)
    function Operacao(Num1, Num2 : double) : double;
  end;

implementation

uses
  System.SysUtils;

{ TSoma }

function TSoma.Operacao(Num1, Num2: double): double;
begin
  Result := Num1 + Num2;
end;

function TSoma.SomarDireto(Num1, Num2: double): double;
begin
  Result := Num1 + Num2;
end;

{ TSubtrair }

function TSubtrair.Operacao(Num1, Num2: double): double;
begin
  Result := Num1 - Num2;
end;

{ TDividir }

function TDividir.Operacao(Num1, Num2: double): double;
begin
  if Num2 <= 0 then
    raise Exception.Create('Valor nao pode ser divido por zero');
  Result := Num1 / Num2;
end;

{ TMultiplicar }

function TMultiplicar.Operacao(Num1, Num2: double): double;
begin
  Result := Num1 * Num2;
end;

end.
