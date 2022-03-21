program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

{*------------------------------------------------------------------------------
  1.单元
        作用：
            （1）方便代码维护
            （2）代码分门别户整理

  2.属性
        （1）访问的可见性   （访问权限修饰符）
            private：私有
            public: 公共
            Protected: 受保护的，若某个字段或某个方法被该关键字修饰，那麽该字段只能在其子类中访问
            Published:

-------------------------------------------------------------------------------}

uses
    System.SysUtils,
    uToolsa1 in 'uToolsa1.pas',
    Unit1 in 'Unit1.pas';

var
    Person: TPerson;


begin
    Person := TPerson.Create;
    Writeln(Person.Name);
    Person.Age := 18;
    Writeln(Person.Age);
    readln;
end.

