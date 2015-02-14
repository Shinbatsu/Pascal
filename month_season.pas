var 
  Month: integer;
  Season: string;
begin
  write('Введите номер месяца: ');
  readln(Month);
  if (Month=1) or (Month=2) or (Month=12) then
    Season := 'Зима'
  else if (Month=3) or (Month=4) or (Month=5) then
    Season := 'Весна'
  else if (Month=6) or (Month=7) or (Month=8) then
    Season := 'Лето'
  else Season := 'Осень';
  writeln('Это ',Season)
end.