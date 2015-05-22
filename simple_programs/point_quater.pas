var 
  x,y: integer; 
  Quater: integer;
begin
  write('Введите координаты точки: ');
  readln(x,y);
  if x>0 then
    if y>0 then
      Quater := 1
    else Quater := 4
  else 
    if y>0 then
      Quater := 2
    else Quater := 3;
  writeln('Номер четверти = ',Quater);
end.