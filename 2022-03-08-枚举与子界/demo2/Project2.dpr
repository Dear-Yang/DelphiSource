program Project2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;

{
子界：防止越界
1）上界和下届必须是有序的数据类型 整数、字符、枚举
2）子界的上界大于或等于下届
}

{定义格式}

type

    // Ecolors = (RED, GREEN, BLUE);


       //子界
    // TSubBoundChar = 'a'..'z';

    // TSubBoundEcolors = Ecolors.RED..Ecolors.BLUE;




     //枚举:季节
    ESeason = (SPRING, SUMMER, AUTUMN, WINTER);
    //子界：12个月

    TSubBoundMonths = 1..12;

var
    Season: ESeason;
    Months: TSubBoundMonths;
    UserYear: Integer;
    UserMonth: Integer;
    {闰年为True,平年为False}
    IsLeapYear: Boolean;


begin
    // Writeln(Low(TSubBoundNumebr));

    Writeln('请输入一个年份：');
    Readln(UserYear);
    Writeln('请输入一个月份：');
    Readln(UserMonth);

    // 默认为平年
    IsLeapYear := False;
    if UserYear mod 4 = 0 then begin
        if UserYear mod 100 = 0 then begin
            if UserYear mod 400 = 0 then begin
                // Writeln(UserYear, '年是闰年');
                IsLeapYear := True;
            end;

        end
        else begin
            IsLeapYear := True;
            // Writeln(UserYear, '年是闰年');
        end;
    end;

    if IsLeapYear then begin
        write(UserYear, '年是闰年！');
    end
    else begin
        write(UserYear, '年是平年！');
    end;
  
  
    

    // 季节
    if (UserMonth >= Low(Months)) and (UserMonth <= High(Months)) then begin
        if (UserMonth >= 1) and (UserMonth <= 3) then begin
            write('当前是春季，', UserMonth, '月份的天数是：');
            case UserMonth of
                1:
                    begin
                        write(31, '天');
                    end;
                2:
                    begin
                        if IsLeapYear then begin
                            write(29, '天');
                        end
                        else begin
                            write(28, '天');
                        end;

                    end;
                3:
                    begin
                        write(31, '天');
                    end;

            end;

        end
        else begin
            if (UserMonth >= 4) and (UserMonth <= 6) then begin
                write('当前是夏季，', UserMonth, '月份的天数是：');
                case UserMonth of
                    4:
                        begin
                            write(30, '天');
                        end;
                    5:
                        begin
                            write(31, '天')

                        end;
                    6:
                        begin
                            write(30, '天');
                        end;

                end;
            end
            else if (UserMonth >= 7) and (UserMonth <= 9) then begin
                write('当前是秋季，', UserMonth, '月份的天数是：');
                case UserMonth of
                    7:
                        begin
                            write(31, '天');
                        end;
                    8:
                        begin
                            write(31, '天')

                        end;
                    9:
                        begin
                            write(30, '天');
                        end;

                end;
            end
            else if (UserMonth >= 10) and (UserMonth <= 12) then begin
                write('当前是冬季，', UserMonth, '月份的天数是：');
                case UserMonth of
                    10:
                        begin
                            write(31, '天');
                        end;
                    11:
                        begin
                            write(30, '天')

                        end;
                    12:
                        begin
                            write(31, '天');
                        end;

                end;
            end;

        end;

    end
    else begin
        Writeln('对不起，您输入月份错误！');
    end;

    Readln;
end.

