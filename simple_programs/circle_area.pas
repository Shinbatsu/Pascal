const Pi = 3.1415;

begin
  var r := ReadReal('Введите радиус круга: ');
  var S := Pi*r*r;
  Println('Площадь круга равна ',S);
end.