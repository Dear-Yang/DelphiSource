program Project3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
{*------------------------------------------------------------------------------
  定义一个过程：比较分数
-------------------------------------------------------------------------------}

//声明一个过程
procedure ComparingFraction();

//过程的具体实现
var
  Fraction:Integer;
begin
   Writeln('请输入需要判断的分数：');
  Readln(Fraction);

  if Fraction >= 60 then
  begin
    Writeln('合格');
  end
  else
  begin
    Writeln('不合格');
  end;
end;


{*------------------------------------------------------------------------------

  @param Month 需要判断的月份
-------------------------------------------------------------------------------}
procedure JudgmentSeasonIf(Month:Integer);

begin

    if not ((Month>0) and (Month<13)) then
    begin
      Writeln('该月份无法判断');
      Exit
    end;

    if (Month>=3) and (Month<=5) then
    begin
      Writeln('春季');
      Exit
    end;

    if (Month>=6) and (Month<=8) then
    begin
      Writeln('夏季');
      Exit
    end;

    if (Month>=9)and (Month<=11) then
    begin
      Writeln('秋季');
      Exit
    end;

    if (Month=12) or ((Month>0) and (Month<3)) then
    begin
      Writeln('冬季');
    end;

  {
  end

  else
  begin
    Writeln('该月份无法判断');
  end;
   }

end;



{*------------------------------------------------------------------------------

  @param Month 需要判断的月份
-------------------------------------------------------------------------------}
procedure JudgmentSeasonCase(Month:Integer);
begin
    case Month of
        3:
            begin
                Writeln('春季');
            end;
        4:
            begin
                Writeln('春季');
            end;
        5:
            begin
                Writeln('春季');
            end;
        6:
            begin
                Writeln('夏季');
            end;
        7:
            begin
                Writeln('夏季');
            end;
        8:
            begin
                Writeln('夏季');
            end;
        9:
            begin
                Writeln('秋季');
            end;
        10:
            begin
                Writeln('秋季');
            end;
        11:
            begin
                Writeln('秋季');
            end;
        12:
            begin
                Writeln('冬季');
            end;
        1:
            begin
                Writeln('冬季');
            end;
        2:
            begin
                Writeln('冬季');
            end;

    else
        Writeln('非法月份');
    end;

end;


{*------------------------------------------------------------------------------


  @param Height
  @param Money
  @param IsCool
-------------------------------------------------------------------------------}
procedure MarryCondtions(Height:Integer; Money:Double; IsCool:Boolean);

begin
    if (Height>180) and  (Money>=10000000) and IsCool then
    begin
      Writeln('一定要结');
      Exit
    end;

   if (Height>180) or  (Money>=10000000) or IsCool then
   begin
     Writeln('结，比上不足，比下有余');
     Exit
   end;

    if not((Height>180) and  (Money>=10000000) and IsCool) then
    begin
      Writeln('一定要结');
      Exit
    end;



end;

begin
    MarryCondtions(185,20000000,True);

    Readln;
end.
