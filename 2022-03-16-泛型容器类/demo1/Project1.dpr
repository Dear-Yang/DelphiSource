program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils,
    System.Generics.Collections;

{*------------------------------------------------------------------------------
  delphi2010语法手册

  1. 泛型：
      广泛的数据类型

  2. 作用：
      （1）避免在程序中的数据类型强制转换
      （2）在容器中使用数据类型更灵活

  3. 使用
    <T>

  4.泛型的使用场景
      泛型容器


-------------------------------------------------------------------------------}

type
    TStringArr = array of string;

    TNumberArr = array of Integer;

    TArrayss<T> = array of T;



    Tstudent<T> = class
    end;

var
    StringArr: TStringArr;
    NumberArr: TNumberArr;
    Arrayss: TArrayss<Integer>;


var
    I: Integer;
    Ss:TArray<string>;

begin
    StringArr := ['aa', 'bb'];
    NumberArr := [11, 22, 33];
    Arrayss := [55, 22, 44];
    for I := Low(Arrayss) to High(Arrayss) do
        writeln(Arrayss[I]);

    Tstudent<string>.Create;

    readln;

end.

