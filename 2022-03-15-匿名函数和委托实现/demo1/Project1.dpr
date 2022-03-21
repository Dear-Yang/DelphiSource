program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

{*------------------------------------------------------------------------------
  1.匿名函数
          定义格式：
          TFun = reference to function(const num:Integer) :Integer;
                                      //const:只读不能改
-------------------------------------------------------------------------------}

uses
    System.SysUtils;

type
    {声明一个函数类型}
    TFunDemo = function(Age: Integer): Integer;

    {定义一个匿名函数}
    TFun = reference to function(num: Integer): Integer;

function Demo1(Age: Integer): Integer;
begin
    Writeln(Age);
    Result := Age;
end;


//把函数当作一个对象传递
function Demo2(num1, num2: Integer; fun: TFun): Integer;
begin
    Result := fun(num1 + num2);
end;

var
    fun1: TFunDemo;
    fun2: TFun;
    NumResult: Integer;


begin

//    fun2 := Demo1;
//    fun1();
//    fun2(10);
//    fun2 :=
//        function(num: Integer): Integer
//        begin
//            result := num;
//        end;
    //fun2(10);
    NumResult := Demo2(10, 20,
        function(num: Integer): Integer
        begin
            result := num;
        end);

    Writeln(NumResult);

    Readln;

end.

