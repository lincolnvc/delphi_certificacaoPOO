program Aula_20;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form1},
  Classe.Calculadora in 'Classe.Calculadora.pas',
  Calculadora.Interfaces in 'Calculadora.Interfaces.pas',
  Calculadora.Helpers in 'Calculadora.Helpers.pas',
  Calculadora.Soma in 'Calculadora.Soma.pas',
  Calculadora.Subtrair in 'Calculadora.Subtrair.pas',
  Calculadora.Multiplicar in 'Calculadora.Multiplicar.pas',
  Calculadora.Dividir in 'Calculadora.Dividir.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
