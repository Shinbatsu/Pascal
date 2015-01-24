var 
  x,y: integer;
  min: integer;
begin
  write('Введите x и y: ');
  readln(x,y);
  if x<y then
    min := x
  else min := y;
  writeln('Минимум = ',min);
end.