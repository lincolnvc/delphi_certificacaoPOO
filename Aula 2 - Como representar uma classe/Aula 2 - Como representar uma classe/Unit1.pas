unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs;

type

  TGarrafa = class
    Cor : String;
    Modelo : String;
    Tampa : String;
    procedure ArmazenarLiquido(Liquido : String);
  end;


  TForm1 = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TLivro = class
  public
    Titulo: String;
    Autor: String;
    function Paginacao(Pagina: Integer): String;
  end;

  TAutor = class
  public
    Livro: TLivro;
  end;

  TGibi = class(TLivro)
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

function TLivro.Paginacao(Pagina: Integer): String;
begin
end;

{ TGarrafa }

procedure TGarrafa.ArmazenarLiquido(Liquido: String);
begin
 //
end;

end.
