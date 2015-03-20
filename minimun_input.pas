const n = 10;

var  
  min: integer;
  x: integer;
  i: integer;
  
begin
  writeln('Введите ',n,' значений: ');
  read(x);  
  min := x;  
  for i := 2 to n do
  begin
    read(x);
    if x<min then
      min := x;
  end;
  writeln('Минимальное значение = ',min);
end.