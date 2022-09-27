unit Calculadora.Interfaces;

interface

type
  iOperacoes = interface
    ['{655C8757-9943-4A39-840C-D2DBC0B7039A}']
    function Executar : String;
  end;

  iCalculadora = interface
    function Add(Value : String) : iCalculadora; overload;
    function Add(Value : Integer) : iCalculadora; overload;
    function Add(Value : Currency) : iCalculadora; overload;
    function Soma: iOperacoes;
    function Subtrair: iOperacoes;
    function Dividir: iOperacoes;
    function Multiplicar: iOperacoes;
  end;

implementation

end.
