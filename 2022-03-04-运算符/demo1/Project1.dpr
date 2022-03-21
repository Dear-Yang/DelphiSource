program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
{
 1.变量
    编程中最小的存储单元（空间），它的空间大小由他在声明时的数据类型决定

    1）声明：
       var 变量名：数据类型；

    2）初始化：给变量的第一次赋值
      赋值： 赋值:= 变量的值；

  2.运算符
      算数运算符： + - * /（不会整除）  div(整除)  mod(求模,求余数)
      比较运算符
      布尔运算符

  3.表达式

}

var
    Age: Integer;
var
    Name:string = '小黑';

begin
    //初始化
    Age := 0;

    //写出到控制台指定内容
    Writeln(6/4);
    Writeln(6 div 3);
    Writeln(6 mod 4);
    //布尔运算符
    Writeln(not (1 <> 2));
    //优先级
    //and; 有一个false,全false
    Writeln((1<2)and (2<3));
    //or;  有一个true,全true
    Writeln((1>2)or (2<3));
    //xor; 相同为fals;不同为true
    Writeln((1<2)xor (2>3));
    Writeln('结果是：',1+2);


    //从控制台读入一行内容
    Readln;

end.
