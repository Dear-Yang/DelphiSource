program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

{*------------------------------------------------------------------------------
  �쳣

-------------------------------------------------------------------------------}

uses
    System.SysUtils;

type
    EMathException = class(Exception)
    end;

procedure MyDivFun(Num1, Num2: Integer);
begin
    if (Num2 = 0) then begin
          //�׳�һ���쳣
        raise EMathException.Create('��������Ϊ0');   // Result:=Exception.Create('��������Ϊ0');exit
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

      //�ͷ���Դ
      Writeln('�ͷ���Դ');
    end;

    Readln;
end.

