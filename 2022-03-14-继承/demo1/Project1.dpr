program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

{*------------------------------------------------------------------------------
  派生（继承）
          派生：类和类之间的关系； 继承：对象与对象之间的关系。
  特点:
          1.提高代码的重复
          2.产生派生关系之后，就具备了多态的特性
          3.Delphi中是单继承，但可以是多层继承

  继承中的构造方法
          1.  定义

  重写

  继承中的访问权限





-------------------------------------------------------------------------------}
uses
    System.SysUtils,
    uExtends in 'uExtends.pas';

var
    Dog: TDog;


begin
    Dog := TDog.Create();
    //dog.Tizhong := 100;
    //Writeln(Dog.Tizhong);
    dog.GetName;
    Readln;
end.

