function DigitName(n: integer): string;
begin
  case n of
  0: Result := 'ноль';
  1: Result := 'один';
  2: Result := 'два';
  3: Result := 'три';
  4: Result := 'четыре';
  5: Result := 'пять';
  6: Result := 'шесть';
  7: Result := 'семь';
  8: Result := 'восемь';
  9: Result := 'девять';
  end;
end;

begin
  writeln(DigitName(3));
  writeln(DigitName(5));
  writeln(DigitName(7));
end.