begin
  var N := ReadlnInteger('Введите целое (>1): ');

  var IsPrime := True;
  for var i:=2 to Round(Sqrt(N)) do 
    if N mod i = 0 then
    begin
      IsPrime := False;
      break;
    end;
  
  if IsPrime then
    Writeln('Число ',N,' простое')
  else Writeln('Число ',N,' составное');  
end.