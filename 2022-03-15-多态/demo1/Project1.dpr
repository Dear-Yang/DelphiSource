program Project1;

{$APPTYPE CONSOLE}

{$R *.res}


{*------------------------------------------------------------------------------

  多态：
        封装、继承、多态
        一类事物以多种形态存在，例如：动物类-狗类、猫类的关系

        前提：
          两个类具备继承（派生）和实现这两种关系的一种

        体现：
            父类接收或指向其子类对象

  作用：
      提高代码重复性，方便我们对代码进行解耦 （类和类之间不要出现直接的依赖关系）
      耦合：


-------------------------------------------------------------------------------}

uses
    System.SysUtils,
    Unit1 in 'Unit1.pas';

 //向上转型：把子类对象的类型转换成父类的数据类型
procedure ShowAnimalRun(Aniaml: TAnimal);
var
    Dog: TDog;
begin
  //运行时的数据类型
    Aniaml.Run;
    if Assigned(Dog) then begin
        Writeln('是空值');
    end;
    //向下转型，把父类对象的类型转换成子类的数据类型
    //Writeln(Aniaml.ClassName);

    if Aniaml.ClassName = 'TDog' then begin

        //强制类型转换
        Dog := TDog(Aniaml);
        Dog.LookDoor;
    end;

    //判断一个对象是否和一个类型兼容
    if Aniaml is TDog then begin
        Dog := Aniaml as TDog;

        Dog.LookDoor;
    end;
    Writeln('可以转换成狗');

end;

//var
//    Aniaml: TAnimal;
//    ColorDog: IColor;



begin
    //Aniaml := TCat.Create;    //父类指向子类的一个过程
    //ColorDog := tdog.Create;  //接口不能直接调用对象，但可以调用实现对象
    //Aniaml.Run;
    ShowAnimalRun(TDog.Create);
    Readln;
end.

