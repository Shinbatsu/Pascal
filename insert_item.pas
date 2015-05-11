const 
  N = 10;
  Elem = 666;

var 
  a: array [1..N+1] of integer;
  K: integer;

begin
  for var i:=1 to N do
    a[i] := Random(100);
  writeln('Элементы массива a: ');
  for var i:=1 to N do
    write(a[i],' ');
  writeln;  

  K := Random(1,N);

  for var i:=N downto K do
    a[i+1] := a[i];
  a[K] := 666;  
  
  writeln('После вставки элемента ',Elem,' в позицию ',K,':');
  for var i:=1 to N+1 do
    write(a[i],' ');
  writeln;  
end.