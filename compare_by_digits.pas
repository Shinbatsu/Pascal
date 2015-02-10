var x: integer;
begin
  write('Введите двузначное число: ');
  readln(x);
  var c1 := x div 10;
  var c2 := x mod 10;
  if c1=c2 then
    writeln('Цифры числа совпадают')
  else writeln('Цифры числа не совпадают');
end.