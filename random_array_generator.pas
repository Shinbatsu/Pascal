const Sz = 100; // Размер массива

var 
  a: array [1..Sz] of integer;
  N: integer; // Количество элементов в массиве
  i: integer;
  
begin
  N := 20;
  for i:=1 to N do
    a[i] := Random(100);
  writeln('Элементы массива: ');
  for i:=1 to N do
    write(a[i],' ');
end.