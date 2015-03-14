begin
  var size := 3;
  
  for var i := size div 2 to size do
  begin
    Write('':(size-i));
    Write('':(size-i));
    
    for var j := 1 to i+size do
      Write('*');
    
    Write('':(size-i+1)*2);
    
    for var j := 1 to i+size do
      Write('*');
    
    Writeln();
  end;
  
  for var i := size*2 downto 1 do
  begin
    Write('':(size*2-i+1));
    for var j := 1 to 2*i+1 do
      Write('*');
    Writeln();
  end;
end.