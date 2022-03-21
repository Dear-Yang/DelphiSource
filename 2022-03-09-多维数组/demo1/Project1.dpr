program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;

{声明一个动态的二维数组}
type
    TStringDynamicArray = array of array of string;

{声明一个静态的二维数组}
    TStringStaticArray = array[0..1] of array[0..2] of string;

var
    DynamicArray: TStringDynamicArray;
    StaticNameArray:TStringStaticArray;

var
    Indexs: Integer;
    I: Integer;

{初始化动态二维数组}
procedure InitArray();
begin
    DynamicArray := [['张三', '王五', '赵六'], ['小明', '小红', '小刚']];

    for Indexs := Low(DynamicArray) to High(DynamicArray) do begin
        for I := Low(DynamicArray[Indexs]) to High(DynamicArray[Indexs]) do begin
            Writeln(DynamicArray[Indexs][I]);
        end;

    end;

end;

begin
    StaticNameArray[0][0] := '春暖花开';
    Readln;
end.

