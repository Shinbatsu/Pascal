program LinearFunctionGraphGUI;

uses
  Graph, Crt;

var
  gd, gm: Integer;
  m, b: Real;
  x: Integer;
  y: Real;
  px, py: Integer;

const
  X_SCALE = 20;
  Y_SCALE = 20;
  X_OFFSET = 320;
  Y_OFFSET = 240;

procedure DrawAxes;
begin
  // X-axis
  Line(0, Y_OFFSET, GetMaxX, Y_OFFSET);
  // Y-axis
  Line(X_OFFSET, 0, X_OFFSET, GetMaxY);
end;

begin
  write('Введите коэффициент наклона (m): ');
  readln(m);
  write('Введите точку пересечения с осью Y (b): ');
  readln(b);

  gd := Detect;
  InitGraph(gd, gm, '');

  if GraphResult <> grOk then
  begin
    writeln('Графический драйвер не найден.');
    halt(1);
  end;

  SetColor(White);
  DrawAxes;

  SetColor(Green);
  for x := -X_OFFSET to X_OFFSET do
  begin
    y := m * (x / X_SCALE) + b;
    px := X_OFFSET + x;
    py := Y_OFFSET - Round(y * Y_SCALE);

    if (px >= 0) and (px <= GetMaxX) and (py >= 0) and (py <= GetMaxY) then
      PutPixel(px, py, Green);
  end;

  OutTextXY(10, 10, 'Нажмите любую клавишу...');
  readln;
  CloseGraph;
end.
