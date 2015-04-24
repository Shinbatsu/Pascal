const 
  Sz = 100;
var 
  a: array [1..Sz] of integer;
  N: integer;   
begin
  N := 20;
  for var i:=1 to N do
    a[i] := Random(100);
  writeln('Элементы массива: ');
  for var i:=1 to N do
    write(a[i],' ');
  writeln;  
    
  for var i:=1 to N div 2 do
    Swap(a[i],a[N-i+1]);
    
  writeln('После инвертирования: ');
  for var i:=1 to N do
    write(a[i],' ');
end.