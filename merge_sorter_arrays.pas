const 
  aN = 10;  
  bN = 6;     
  cN = aN + bN;

var 
  a: array [1..aN+1] of integer := (1,5,12,15,47,89,98,112,171,180,0); 
  b: array [1..bN+1] of integer := (13,44,58,71,73,111,0);
  c: array [1..cN] of integer;
  ai,bi,ci: integer;
begin
  writeln('Элементы массива a: ');
  for var i:=1 to aN do
    write(a[i],' ');
  writeln;  
  writeln('Элементы массива b: ');
  for var i:=1 to bN do
    write(b[i],' ');
  writeln;  

  a[aN+1] := integer.MaxValue; 
  b[bN+1] := integer.MaxValue;
  
  ci := 1;
  ai := 1;
  bi := 1;
  
  for ci:=1 to cN do
    if a[ai]<b[bi] then
    begin
      c[ci] := a[ai];
      ai += 1;
    end
    else 
    begin
      c[ci] := b[bi];
      bi += 1;
    end;
    
  writeln('Результат слияния: ');
  for var i:=1 to cN do
    write(c[i],' ');
end.