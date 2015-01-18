var x,y: real;
begin
  write('Введите x,y: ');
  readln(x,y);
  var v: real;
  v := x;
  x := y;
  y := v;
  writeln('Новые значения x,y: ',x,' ',y);
end.