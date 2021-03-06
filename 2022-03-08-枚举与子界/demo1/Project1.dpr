program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

{
  常量：
      一开始定义好的一些值，以后在程序运行中不允许改变，如：圆周率
      const
          Yuanzhoulv:Double = 3.1415;
          常量定义方式，可不定义类型声明，编译器会根据具体值来决定常量的类型；
          Yuanzhoulv2 = 3;

  枚举：  常量集
      type
        枚举名=（标识符1，标识符2...）

}

uses
    System.TypInfo,
    System.SysUtils;

const
    Yuanzhoulv: Double = 3.1415;
  {常量定义方式，可不定义类型声明，编译器会根据具体值来决定常量的类型；}
    Yuanzhoulv2 = 3;


type
  {正常情况下枚举类型的索引从0开始}
    EColors = (RED, GREEN, BLUE);

    EWeek = (SUN = 1, MON = 2, TUE = 3, WED = 4, THU = 5, FRI = 6, SAT = 7);

var
  {声明一个枚举类型的变量}
    Color: EColors;
    Week: EWeek;
    Eindex: Integer;
    Ename: string;
    Evalue: Integer;

{*------------------------------------------------------------------------------
    获取枚举中单个元素
-------------------------------------------------------------------------------}
procedure Demo1();
begin
    Color := EColors.RED;
    Week := EWeek.SUN;
  //ord 转义
    Writeln(ord(Color), ',', Ord(Week));
end;


{*------------------------------------------------------------------------------
      使用循环遍历挨个获取枚举元素
-------------------------------------------------------------------------------}
procedure Demo2();
begin
    Eindex := 0;                                                      
    {遍历枚举}
    for Color := Low(EColors) to High(EColors) do begin

        //Writeln(GetEnumName(TypeInfo(EColors), Eindex));
        Ename := GetEnumName(TypeInfo(EColors), Eindex);
        Evalue := GetEnumValue(TypeInfo(EColors), Ename);
        Writeln(Ename, ',', Evalue);
        
        //Writeln(GetEnumValue(TypeInfo(EColors), 'RED'));
        // Writeln(Ord(EColors.RED));
        // Eindex := Eindex + 1;
        // 遍历加1
        Inc(Eindex);

    end;
end;

begin
    Demo2;
    Readln;

end.

