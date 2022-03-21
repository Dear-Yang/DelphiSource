program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;

{
数组
    按照一定编号存放一堆类型相同的容器
  定义
      array[indexType1, ..., indexTypen] of baseType;
      1.数组使用前需要生命长度（下标、元素总数）
}

type
    MyArray = array[0..4] of Char;

var
    NameMarry: MyArray;
    Indexs: Integer;
    Elem: Char;

{var
    arrayss: array[0..4] of Integer;
 }

{数组元素遍历}
procedure ListArray();
begin
    NameMarry[0] := 'a';
    NameMarry[1] := 'w';
    NameMarry[2] := 'r';
    NameMarry[3] := 'd';
    NameMarry[4] := 'u';
    // Writeln(Low(NameMarry),',',High(NameMarry));
    for Indexs := Low(NameMarry) to High(NameMarry) do begin
        Writeln(NameMarry[Indexs]);
    end;

end;

begin
    NameMarry[0] := 'a';
    NameMarry[1] := 'w';
    NameMarry[2] := 'r';
    NameMarry[3] := 'd';
    NameMarry[4] := 'u';

    Writeln(Length(NameMarry));

    for Elem in NameMarry do begin
        Writeln(Elem);
    end;

    Readln;
end.

