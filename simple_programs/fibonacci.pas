const n = 25;

var 
  a,b,c: integer;
  i: integer;  
  
begin
  a := 1;
  b := 1;
  write(a,' ',b,' ');
  for i := 3 to n do
  begin
    c := a + b;
    write(c,' ');
    a := b;
    b := c;
  end;
end.