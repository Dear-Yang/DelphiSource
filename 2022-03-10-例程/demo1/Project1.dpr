program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;

{
例程：
    将某一个功能的代码片进行封装
    1.具体:
        （1）过程    （2）函数
        过程和函数区别在于有无返回值

    2.作用：
        （1）解决命名冲突问题
        （2）提高代码重复利用率
        （3）提高代码可维护性

    3.使用：
        （1）定义
        // 过程
        procedure Demo1();
        begin
        end;

        // 函数
        function Demo2(): Integer;
        begin

        end;

        （）
}

{传值}
procedure Add(A: Integer; B: Integer);
begin
    Writeln(A, B);
    A := 101;
end;

{传递参数个数不固定}
// const 常量：只可以获取值，无法改变值
procedure Demo1(const Number: array of Integer);
begin

end;

{*------------------------------------------------------------------------------
  函数的定义

  @return
-------------------------------------------------------------------------------}
function Demo2(var A: Integer; B: Integer): Integer;
begin
    Writeln(A, B);
    A := 101;
    Result := 0;
end;


{设置参数默认值}
procedure Demo3(a: Integer; b: Integer = 100);
begin
    Writeln(a, ',', b);
end;

var
    x: Integer;
    y: Integer;


const
    //Age = 100;
    Age: Integer = 100; //常量声明赋值




begin
    x := 300;
    y := 3;

    Demo2(x, y);
    Writeln('------', x);

    Add(x, y);
    Writeln('***********', x);
    Readln;

end.

