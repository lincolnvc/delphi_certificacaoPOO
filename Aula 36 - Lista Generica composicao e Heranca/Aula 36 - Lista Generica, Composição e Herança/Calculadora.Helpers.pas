unit Calculadora.Helpers;

interface

uses
  Controls;

type
  TCaptionHelper = record helper for TCaption
    function ToCurrency : Currency;
  end;

  TStrHelper = record helper for String
    function ToCurrency : Currency;
  end;

implementation

uses
  System.SysUtils;

{ TCaptionHelper }

function TCaptionHelper.ToCurrency: Currency;
begin
  Result := StrToCurr(Self);
end;

{ TStrHelper }

function TStrHelper.ToCurrency: Currency;
begin
  Result := StrToCurr(Self);
end;

end.
