program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;

{*------------------------------------------------------------------------------
  1.指针：
      一个存储了内存地址的变量

  2.指针作用：
      效率高

  3.指针使用
      类型指针
            具有明确的数据类型

      无类型指针
            没有数据类型，可以指向任何地址

      @   获取地址
      ^   定义指针


-------------------------------------------------------------------------------}

type
    {声明一个函数类型的指针}
    TFuncationParameter = function(const value: Integer): string;

//函数
function One(const value: Integer): string;
begin
    Result := IntToStr(value);
end;

{函数指针的真正使用}
function DynamicFunction(f: TFuncationParameter; const value: Integer): string;
begin
    Result := f(value);
end;

var
    {整数型变量}
    i: Integer;


var
    {定义一个证书类型的指针}
    PInt: ^Integer;

    //利用系统封装好的类型指针
    pint2: PInteger;
    //无类型指针
    Void: Pointer;


begin
    i := 100;            {整数转16进制字符串}
    Writeln(Integer(@i).ToHexString);
    // 004258A4
    PInt := Pointer($004258A4);
    Writeln(PInt^);

    //初始化，分配内存空间
    New(pint2);
    pint2^ := 100;
    Writeln(Integer(@pint2).ToHexString);
    //释放
    Dispose(pint2);
     //通过这种方式能够分配一个指定大小的空间给指针
    GetMem(Void, 1024);
    //释放
    FreeMem(Void);

    //PInt := @i;
    //i := 100;

    DynamicFunction(One,100);
    Readln;
end.

