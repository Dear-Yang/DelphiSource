program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;

{
����
    ����һ����Ŵ��һ��������ͬ������
  ����
      array[indexType1, ..., indexTypen] of baseType;
      1.����ʹ��ǰ��Ҫ�������ȣ��±ꡢԪ��������
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

{����Ԫ�ر���}
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

