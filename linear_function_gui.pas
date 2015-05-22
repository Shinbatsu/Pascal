program LinearFunctionGraphGUI;

uses
  Graph, Crt, SysUtils;

var
  gd, gm: Integer;
  m, b: Real;
  x: Integer;
  y: Real;
  prev_px, prev_py, px, py: Integer;
  ch: Char;
  firstPoint: Boolean;

const
  X_SCALE = 20;
  Y_SCALE = 20;
  X_OFFSET = 320;
  Y_OFFSET = 240;

procedure DrawGrid;
var
  i: Integer;
begin
  SetColor(LightGray);

  for i := 0 to GetMaxX div X_SCALE do
    Line(i * X_SCALE, 0, i * X_SCALE, GetMaxY);

  for i := 0 to GetMaxY div Y_SCALE do
    Line(0, i * Y_SCALE, GetMaxX, i * Y_SCALE);
end;

procedure DrawAxes;
begin
  SetColor(White);

  Line(0, Y_OFFSET, GetMaxX, Y_OFFSET);

  Line(X_OFFSET, 0, X_OFFSET, GetMaxY);
end;

procedure DrawFunction(m, b: Real);
begin
  SetColor(Green);
  firstPoint := True;

  for x := -X_OFFSET to X_OFFSET do
  begin
    y := m * (x / X_SCALE) + b;
    px := X_OFFSET + x;
    py := Y_OFFSET - Round(y * Y_SCALE);

    if (px >= 0) and (px <= GetMaxX) and (py >= 0) and (py <= GetMaxY) then
    begin
      if firstPoint then
        firstPoint := False
      else
        Line(prev_px, prev_py, px, py);
      prev_px := px;
      prev_py := py;
    end;
  end;
end;

procedure DisplayEquation(m, b: Real);
var
  eq: String;
begin
  SetColor(White);
  eq := Format('y = %.2fx + %.2f', [m, b]);
  OutTextXY(10, 10, eq);
end;

begin
  gd := Detect;
  InitGraph(gd, gm, '');

  if GraphResult <> grOk then
  begin
    writeln('Графический драйвер не найден.');
    halt(1);
  end;

  repeat
    ClearDevice;

    write('Введите коэффициент наклона (m): ');
    readln(m);
    write('Введите точку пересечения с осью Y (b): ');
    readln(b);

    DrawGrid;
    DrawAxes;
    DrawFunction(m, b);
    DisplayEquation(m, b);

    OutTextXY(10, GetMaxY - 20, 'Esc - выход');
    ch := ReadKey;
  until ch = #27;

  CloseGraph;
end.
