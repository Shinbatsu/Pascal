var 
  a,b,c: real;
  x1,x2,D: real;
begin
  writeln('Введите коэффициенты a,b,c квадратного уравнения a*x*x+b*x+c=0: ');
  readln(a,b,c);
  D := b*b - 4*a*c;
  if D<0 then
    writeln('Корней нет')
  else if D=0 then
  begin
    x1 := -b/2/a;
    writeln('Корни совпадют: x1=x2=',x1);
  end
  else
  begin
    x1 := (-b-sqrt(D))/2/a;
    x2 := (-b+sqrt(D))/2/a;
    writeln('Корни: x1=',x1:0:3,' x2=',x2:0:3);
  end;
end.