unit ArabicShaper;

interface

// xTranslatorが呼び出している2つの関数を定義します
function Shape(const Str: string): string;
function deshape(const Str: string): string;

implementation

// 受け取った文字列をそのまま返す（パススルー）処理です
function Shape(const Str: string): string;
begin
  Result := Str;
end;

function deshape(const Str: string): string;
begin
  Result := Str;
end;

end.