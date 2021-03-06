program Project2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;

{声明动态数组}
type
    StringArray = array of string;

var
    NameArray: StringArray;
    AddressArray: StringArray;
    DataArray: StringArray;
    DataArray1: StringArray;

    Indexs: Integer;
    Name: string;

{动态数组初始化}
procedure InitArray();
begin
    // 设置长度
    SetLength(NameArray, 20);

    NameArray := StringArray.Create('小明', '小红');
    NameArray := ['小明', '小红', '小刚', '小芳'];
    Writeln(Length(NameArray), ',', Low(NameArray), ',', High(NameArray));

end;


{遍历元素组}
procedure ListArray();
begin
    NameArray := ['小明', '小红', '小刚', '小芳'];
    for Indexs := Low(NameArray) to High(NameArray) do begin
        Writeln(NameArray[Indexs]);
    end;
end;


{遍历数组2}
procedure ListArray2();
begin
    NameArray := ['小明', '小红', '小刚', '小芳'];
    for Name in NameArray do begin
        Writeln(Name);
    end;

end;

begin
    NameArray := StringArray.Create('小明', '小红');
    AddressArray := StringArray.Create('北京', '上海');
    DataArray := StringArray.Create('北京1', '上海1');

    {Concat 连接数组}
    DataArray := Concat(NameArray, AddressArray);

    {Copy 复制数组:含头不含尾}
    DataArray1 := Copy(DataArray, Low(DataArray), Length(DataArray));

    {insert 插入}
    AddressArray := StringArray.Create('11', '22');  // 等待插入的数据
    Insert(AddressArray, DataArray1, 100);
    Writeln(Length(DataArray1));

    {delete 删除}
    Delete(DataArray1, Length(DataArray1) - 2, Length(DataArray1));

    for Name in DataArray1 do begin
        Writeln(Name);
    end;
    Readln;
end.

