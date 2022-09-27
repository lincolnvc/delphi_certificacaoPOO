unit Classe.Pessoa;

interface

uses
  System.Classes, Interfaces;

type
  TPessoa = class
  private
    ttt : String;
  protected
    hhh : String;
  public
    Nome: String;
    Telefone: String;
    Endereco: String;
    Cidade: String;
    UF: String;
    Conexao : IConexao;
    constructor Create(aConexao : IConexao); virtual;
    procedure Cadastrar;
    procedure CriarFinanceiro;
    function GetHHH : String;
    function Tipo : String; virtual; abstract;
  end;

  TMyComp = class(TComponent)
    constructor Create(AOwner: TComponent); override;
  end;



implementation

uses
  System.SysUtils;

{ TCliente }

procedure TPessoa.Cadastrar;
var
  Lista : TStringList;
begin
  Lista := TStringList.Create;
  try
    Lista.Add('Nome:' + Nome);
    Lista.Add('Telefone:' + Telefone);
    Lista.Add('Endereço:' + Endereco);
    Lista.Add('Cidade:' + Cidade);
    Lista.Add('UF:' + UF);
    Lista.SaveToFile(Nome + '_Cliente.txt');
    Conexao.Gravar;
  finally
    Lista.Free;
  end;
end;

constructor TPessoa.Create(aConexao : IConexao);
begin
  Conexao := aConexao;
  UF := 'RJ';
end;

procedure TPessoa.CriarFinanceiro;
var
  Lista : TStringList;
begin
  Lista := TStringList.Create;
  try
    Lista.Add('Nome:' + Nome);
    Lista.SaveToFile(Nome + '_Financeiro.txt');
  finally
    Lista.Free;
  end;
end;

function TPessoa.GetHHH: String;
begin
  Result := hhh;// FormatCurr('#,##0.00', hhh);
end;

{ TMyComp }

constructor TMyComp.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

end;

end.
