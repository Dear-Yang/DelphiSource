program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;

{����һ����̬�Ķ�ά����}
type
    TStringDynamicArray = array of array of string;

{����һ����̬�Ķ�ά����}
    TStringStaticArray = array[0..1] of array[0..2] of string;

var
    DynamicArray: TStringDynamicArray;
    StaticNameArray:TStringStaticArray;

var
    Indexs: Integer;
    I: Integer;

{��ʼ����̬��ά����}
procedure InitArray();
begin
    DynamicArray := [['����', '����', '����'], ['С��', 'С��', 'С��']];

    for Indexs := Low(DynamicArray) to High(DynamicArray) do begin
        for I := Low(DynamicArray[Indexs]) to High(DynamicArray[Indexs]) do begin
            Writeln(DynamicArray[Indexs][I]);
        end;

    end;

end;

begin
    StaticNameArray[0][0] := '��ů����';
    Readln;
end.

