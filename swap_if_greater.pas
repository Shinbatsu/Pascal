var 
  x,y: integer;
  v: integer;
begin
  write('Введите x,y: ');
  readln(x,y);
  if x>y then
  begin
    v := x;
    x := y;
    y := v
  end;
  writeln('Результат упорядочения по возрастанию: ',x,' ',y);
end.