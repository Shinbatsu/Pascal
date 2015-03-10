var 
  Symbol: char;
begin
  write('Введите символ: ');
  readln(Symbol);
  case Symbol of
    'a'..'z': writeln('Это маленькая английская буква');
    'A'..'Z': writeln('Это большая английская буква');
    '0'..'9': writeln('Это цифра');
  end;
end.