unit Classe.Carro;

interface

type
  TCarro = class
    type
      TRoda = class
      public
        Tipo : String;
        Tamanho : String;
      end;
    private
      Marca : String;
      Modelo : String;
      Roda : TRoda;
    public
      procedure MontarCarro;
  end;

implementation

{ TCarro }

procedure TCarro.MontarCarro;
begin
  Marca := 'BMW';
  Modelo := 'i320';
  Roda.Tipo := 'Liga Leve';
  Roda.Tamanho := 15;
end;

end.
