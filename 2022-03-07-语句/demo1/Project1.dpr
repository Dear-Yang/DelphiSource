program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
{*------------------------------------------------------------------------------
  1.表达式
      运算符和合法标识符组成的序列
      划分： 根据运算结果的类型

  2.语句 ：
      关键字和操作指令组成
      划分
          选择语句
              if

              case

          循环语句
-------------------------------------------------------------------------------}
begin
  //if语句格式

  //1.标准格式
  if 1<2 then
  begin
    //当判断条件成立时，执行的代码
    Writeln('第一语言');
  end;

  //2.简写方式：前提只需要执行一行代码
  if 1<2 then
      Writeln('第一语言');

  if True then
  begin
     Writeln('第一语言');
  end;


  //如果否则
  if True then
  begin
    Writeln('第一语言:java');
  end
  else
  begin
    Writeln('第一语言:Python');
  end;


  //简写
  if True then
      Writeln('第一语言:java')
  else
      Writeln('第一语言：Python');


  Readln;
end.
