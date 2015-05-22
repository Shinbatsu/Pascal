function IsSimple(N: integer): boolean;
begin
  Result := True;
  for var i:=2 to round(sqrt(N)) do 
    if N mod i = 0 then
    begin
      Result := False;
      exit;
    end;
end;

begin
  writeln(IsSimple(13));
  writeln(IsSimple(4));
  writeln(IsSimple(7));
end.