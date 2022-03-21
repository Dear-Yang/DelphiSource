program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

{*------------------------------------------------------------------------------
  异常

-------------------------------------------------------------------------------}

uses
    System.SysUtils;

type
    EMathException = class(Exception)
    end;

procedure MyDivFun(Num1, Num2: Integer);
begin
    if (Num2 = 0) then begin
          //抛出一个异常
        raise EMathException.Create('除数不能为0');   // Result:=Exception.Create('除数不能为0');exit
        Writeln('**********');
    end;

end;

begin

    try
        try
            MyDivFun(10, 0);
        except
            on E: Exception do begin
                Writeln(E.UnitName,E.ClassName,E.Message);
            end;

            on E: Exception do begin
                Writeln(E.Message);
            end;

        end;

    finally

      //释放资源
      Writeln('释放资源');
    end;

    Readln;
end.

