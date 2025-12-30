uses GraphABC;

procedure Koch(x1, y1, x2, y2, depth: integer);
var
  x3, y3, x4, y4, x5, y5: real;
  angle: real;
begin
  if depth = 0 then
  begin
    Line(Round(x1), Round(y1), Round(x2), Round(y2));
  end
  else
  begin

    x3 := x1 + (x2 - x1) / 3;
    y3 := y1 + (y2 - y1) / 3;
    
    x4 := x2 - (x2 - x1) / 3;
    y4 := y2 - (y2 - y1) / 3;

    angle := Pi / 3;
    x5 := x3 + (x4 - x3) * Cos(angle) + (y4 - y3) * Sin(angle);
    y5 := y3 - (x4 - x3) * Sin(angle) + (y4 - y3) * Cos(angle);
    
    Koch(Round(x1), Round(y1), Round(x3), Round(y3), depth - 1);
    Koch(Round(x3), Round(y3), Round(x5), Round(y5), depth - 1);
    Koch(Round(x5), Round(y5), Round(x4), Round(y4), depth - 1);
    Koch(Round(x4), Round(y4), Round(x2), Round(y2), depth - 1);
  end;
end;

procedure DrawSnowflake(x, y, size, depth: integer);
var
  i: integer;
  angle: real;
  x1, y1, x2, y2: integer;
  ClearWindow(clWhite);
  SetPenColor(clBlue);
  SetPenWidth(2);
  
  for i := 0 to 5 do
  begin
    angle := i * Pi / 3;
    x1 := x + Round(size * Cos(angle));
    y1 := y + Round(size * Sin(angle));
    x2 := x + Round(size * Cos(angle + Pi));
    y2 := y + Round(size * Sin(angle + Pi));
    
    Koch(x1, y1, x2, y2, depth);
  end;

  SetBrushColor(clLightBlue);
  Circle(x, y, 10);
end;

var
  depth: integer;
begin

  SetWindowSize(800, 600);
  SetWindowTitle('Рекурсивная снежинка Коха');
  

  depth := 4;
  
  DrawSnowflake(400, 300, 200, depth);
  
  SetFontColor(clBlue);
  SetFontSize(12);
