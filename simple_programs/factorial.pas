var 
  n,fact: integer;
  i: integer;
begin
  write('Введите n (n<=13): ');
  readln(n);
  fact := 1;
  for i := 2 to n do
    fact := fact * i;
  writeln(n,'! = ',fact);
end.