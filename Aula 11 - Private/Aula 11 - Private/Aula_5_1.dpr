program Aula_5_1;

uses
  System.StartUpCopy,
  FMX.Forms,
  Cliente in 'Cliente.pas',
  Aula5 in 'Aula5.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
