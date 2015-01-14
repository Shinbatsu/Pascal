var 
  x,y: real;
  v: real;
begin
  write('Введите x,y: ');
  readln(x,y);
  v := x;
  x := y;
  y := v;
  writeln('Новые значения x,y: ',x,' ',y);
end.