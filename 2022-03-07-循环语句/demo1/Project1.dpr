program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;


{100֮��}
procedure ForDemo();
var
    i: Integer;

begin

    {forѭ����׼д��}
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
                Writeln('����forѭ��');
                Break
            end;
        end;
        Break;

    end;}

    for i := 0 to 10 do begin

        if i = 3 then begin
            Writeln('����forѭ��');
            Continue;
        end;
        Writeln(i);
    end;

    Readln;
end.

