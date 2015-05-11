const N = 20;

var 
  a: array [1..N] of integer;
  K,Count: integer;

begin
  for var i:=1 to N do
    a[i] := Random(10);
  writeln('Элементы массива a: ');
  for var i:=1 to N do
    write(a[i],' ');
  writeln;  

  K := Random(10);

  Count := 0;
  for var i:=1 to N do
    if a[i] = K then 
      Count += 1;
  
  writeln('Количество элементов, равных ',K,': ',Count);  
end.