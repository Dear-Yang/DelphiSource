program Project2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
var
    i: Integer;
begin
  //case��׼д��
  i := 4;
  case i of
    1:
      begin
        Writeln('��һ����:java');
      end;
    2:
      begin
        Writeln('��һ����:Python');
      end
  else
      begin
         Writeln('��һ����:go');
      end;
  end;

  Readln;
end.
