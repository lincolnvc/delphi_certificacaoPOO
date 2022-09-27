unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.ScrollBox, FMX.Memo;

type

  TConfiguracao = record
    Host : String;
    Path : String;
    Usuario : String;
    Senha : String;
  end;


  TMeuObjeto = class

  end;

  TGarrafa = class
    Cor : String;
    Modelo : String;
    Tampa : String;
    procedure ArmazenarLiquido(Liquido : String);
  end;


  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    procedure ExibeMemo(Configuracao: TConfiguracao);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

{ TGarrafa }

procedure TGarrafa.ArmazenarLiquido(Liquido: String);
begin
 //teste;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  MinhaGarrafa : TGarrafa;
begin
  MinhaGarrafa := nil;

  if Assigned(MinhaGarrafa) then
    ShowMessage('Estou Instanciado')
  else
    MinhaGarrafa := TGarrafa.Create;

  try
    MinhaGarrafa.Modelo := 'Vidro';
    MinhaGarrafa.Cor := 'Vermelha';
  finally
    FreeAndNil(MinhaGarrafa);
  end;



end;


procedure TForm1.Button2Click(Sender: TObject);
var
  Configuracao : TConfiguracao;
begin
  Configuracao.Host := 'rtete';
  Configuracao.Path := 'etete';
  Configuracao.Usuario := 'teste';
  Configuracao.Senha := 'teste';
  ExibeMemo(Configuracao);
end;

procedure TForm1.ExibeMemo(Configuracao: TConfiguracao);
begin
  Memo1.Lines.Add(Configuracao.Host);
  Memo1.Lines.Add(Configuracao.Path);
  Memo1.Lines.Add(Configuracao.Usuario);
  Memo1.Lines.Add(Configuracao.Senha);
end;

end.
