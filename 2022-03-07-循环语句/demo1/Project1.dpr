program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;


{100之和}
procedure ForDemo();
var
    i: Integer;

begin

    {for循环标准写法}
    for i := 0 to 10 do begin
        Writeln(i);
    end;

    Writeln('-------------', i);

    for i := 10 downto 1 do begin
        Writeln(i);
    end;
    Writeln('-------------', i);
end;

var
    i: Integer;


begin
    {while True do begin

        for i := 0 to 10 do begin
            Writeln(i);
            if i = 3 then begin
                Writeln('跳出for循环');
                Break
            end;
        end;
        Break;

    end;}

    for i := 0 to 10 do begin

        if i = 3 then begin
            Writeln('跳出for循环');
            Continue;
        end;
        Writeln(i);
    end;

    Readln;
end.

