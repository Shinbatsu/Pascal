procedure RectSP(a,b: real; var S,P:real);
begin
  S := a * b;
  P := a + b;
end;

var 
  x,y: real; // Стороны прямоугольника
  S: real;   // Площадь прямоугольника
  P: real;   // Периметр прямоугольника 

begin
  write('Введите стороны прямоугольника: ');
  readln(x,y);
  RectSP(x,y,S,P);
  writeln('Площадь равна ',S);
  writeln('Периметр равен ',P);
end.