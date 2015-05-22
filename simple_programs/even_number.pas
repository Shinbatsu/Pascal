var x: integer;
begin
  write('Введите x: ');
  readln(x);
  if x mod 2 = 0 then
    writeln('Это четное число')
  else writeln('Это нечетное число');
end.