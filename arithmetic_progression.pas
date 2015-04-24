const 
  Sz = 100;
  a0 = 5; // Первый элемент арифметической прогрессии
  d = 3;  // Разность арифметической прогрессии

var 
  a: array [1..Sz] of integer;
  N: integer; // Количество элементов в массиве
  
begin
  N := 20;
  a[1] := a0;
  for var i:=2 to N do
    a[i] := a[i-1] + d;
  writeln('Арифметическая прогрессия: ');
  for var i:=1 to N do
    write(a[i],' ');
end.