const N = 10;

var 
  a: array [1..N] of integer;

begin
  for var i:=1 to N do
    a[i] := Random(100);
  writeln('Элементы массива a: ');
  for var i:=1 to N do
    write(a[i],' ');
  writeln;  

  for var i:=n downto 2 do
  for var j:=1 to i-1 do
    if a[j+1]<a[j] then
      Swap(a[j+1],a[j]);
  
  writeln('После сортировки пузырьком: ');
  for var i:=1 to N do
    write(a[i],' ');
  writeln;  
end.