unit Principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, Conexao.MySQL, Conexao.SQLServer, Classe.Pessoa,
  Classe.Fornecedor, Classe.Cliente, FMX.ListBox;

type
  TForm1 = class(TForm)
    Button2: TButton;
    Button1: TButton;
    ComboBox1: TComboBox;
    Button3: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
var
  Cliente : TCliente;
begin
  Cliente := TCliente.Create(TConexaoMySQL.Create);
  try
    Cliente.Nome := 'Fulano';
    Cliente.Telefone := '276317263';
    Cliente.Endereco := 'Rua do Teste de Software';
    Cliente.Cidade := 'Niteroi';
    Cliente.Saldo := 1000;
    Cliente.Cadastrar;
    Cliente.CriarFinanceiro;
  finally
    Cliente.Free;
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Fornecedor : TFornecedor;
begin
  Fornecedor := TFornecedor.Create(TConexaoMySQL.Create);
  try
    Fornecedor.Nome := 'Fulano';
    Fornecedor.Telefone := '276317263';
    Fornecedor.Endereco := 'Rua do Teste de Software';
    Fornecedor.Cidade := 'Niteroi';
    Fornecedor.RazaoSocial := 'Thulio Bittencourt Treinamentos';
    Fornecedor.Cadastrar;
    Fornecedor.CriarFinanceiro;
  finally
    Fornecedor.Free;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Pessoa : TPessoa;
begin
  case ComboBox1.ItemIndex of
    0 : Pessoa := TCliente.Create(nil);
    1 : Pessoa := TFornecedor.Create(nil);
    2 : Pessoa := TPessoa.Create(nil);
  end;
  try
    ShowMessage(Pessoa.Tipo);
  finally
    Pessoa.Free;
  end;
end;

end.
