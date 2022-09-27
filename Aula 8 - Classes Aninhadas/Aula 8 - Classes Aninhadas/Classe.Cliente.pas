unit Classe.Cliente;

interface

uses Classe.Pessoa, Interfaces;

type
  TCliente = class(TPessoa)
    type
      TEndereco = class
        Rua : String;
      end;
    public
    Saldo : Currency;
    Endereco : TEndereco;
  end;

implementation

{ TCliente }

end.
