program Abstracao;

uses
  System.StartUpCopy,
  FMX.Forms,
  Aula4 in 'Aula4.pas' {Form1},
  Cliente in 'Cliente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
