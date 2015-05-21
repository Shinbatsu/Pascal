const N = 10;

var 
  a: array [1..N] of integer;
  K: integer;
  IsFound: boolean;

begin
  for var i:=1 to N do
    a[i] := Random(100);
  writeln('Элементы массива a: ');
  for var i:=1 to N do
    write(a[i],' ');
  writeln;  

  for var i:=1 to N-1 do
  begin
    var min := a[i]; 
    var ind := i;
    for var j:=i+1 to N do
      if a[j]<min then
      begin
        min := a[j];
        ind := j;
      end;
    a[ind] := a[i];
    a[i] := min;
  end;

  writeln('После сортировки выбором: ');
  for var i:=1 to N do
    write(a[i],' ');
  writeln;  
end.