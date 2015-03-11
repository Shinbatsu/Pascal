var i,x: integer;
begin
// С помощью for и промежуточной переменной
  x := 1;
  for i := 1 to 5 do
  begin
    write(x,' ');
    x := x + 2;
  end;
  writeln;
  
// С помощью for без промежуточной переменной
  for i := 1 to 5 do
    write(2*i-1,' ');
  writeln;
  
// С помощью while
  x := 1;
  while x<10 do
  begin
    write(x,' ');
    x := x + 2;
  end;
  writeln;
  
// С помощью repeat
  x := 1;
  repeat
    write(x,' ');
    x := x + 2;
  until x>=10;
end.