var 
  r1,r2: integer; // значения на верхних гранях кубиков
begin
  r1 := Random(6)+1;
  r2 := Random(6)+1;
  writeln('Очки, выыпавшие на кубиках: ',r1,' ',r2);
  writeln('Сумма очков равна ',r1+r2);
end.