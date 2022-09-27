unit Cliente;

interface

type
  TCliente = class
    Nome : String;
    Telefone : String;
    Endereco : String;
    Cidade : String;
    UF : String;
    constructor Create;
  end;

implementation

{ TCliente }

constructor TCliente.Create;
begin
  UF := 'RJ';
end;

end.
