program Project2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
var
    i: Integer;
begin
  //case标准写法
  i := 4;
  case i of
    1:
      begin
        Writeln('第一语言:java');
      end;
    2:
      begin
        Writeln('第一语言:Python');
      end
  else
      begin
         Writeln('第一语言:go');
      end;
  end;

  Readln;
end.
