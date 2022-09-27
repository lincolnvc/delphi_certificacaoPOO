program Acoplamento;

uses
  System.StartUpCopy,
  FMX.Forms,
  Cliente in 'Cliente.pas',
  Aula7 in 'Aula7.pas' {Form1},
  Conexao.SQLServer in 'Conexao.SQLServer.pas',
  Conexao.MySQL in 'Conexao.MySQL.pas',
  Interfaces in 'Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
