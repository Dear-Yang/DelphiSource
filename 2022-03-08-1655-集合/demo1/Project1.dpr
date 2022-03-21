program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.TypInfo,
    System.SysUtils;

{基类型，最标准的定义方式}
{type:让用户可以自定义类型}
type
    TMySet = set of Char;

    TMySet1 = set of'a'..'z';

    Int = Integer;

type
      {定义一个枚举}
    TColors = (RED, GREEN, BLUE);

type
    TsetColors = set of TColors;
    // TsetColors1=set of RED..BLUE;

var
    {相当于简写}
    TMySet2: set of 1..2;
    Myset: TMySet;
    Index1: Int;
    sc: TsetColors;


procedure ListSet();
begin
 {遍历集合元素：无序的/// ord转数字 ///}
    for Index1 := Ord(Low(TColors)) to Ord(High(TColors)) do begin
        Writeln(GetEnumName(TypeInfo(TColors), Index1));
    end;

end;

begin
    Myset := ['z', 'x'];
    Readln;

end.

