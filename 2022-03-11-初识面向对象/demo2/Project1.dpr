program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

{*------------------------------------------------------------------------------
1、创建类
      类的成员组成：
                    属性、成员变量、字段
                    功能 ：方法、函数、过程、历程

2、创建类的对象

3、对象的生命周期
      一个对象从创建到消亡的过程为该对象的生命周期。

      （1）对象的创建
              a.构建方法 : constructor
                    在内存中申请一个内存空间，从而实现对象的创建；
                    初始化类成员 。

      （2）对象的销毁    destructor
              a. free;
              b. Destroy；
              c. freeAndNil;
              d. nil 空值；

      （3）self:表示苯类对象
              为了解决命名冲突；

4、Delphi中单元的概念

-------------------------------------------------------------------------------}

uses
    System.SysUtils;

type
    TUser = class
        {字段 }
        FName: string;

         {构造方法}
        constructor Aaa(Name: string); overload;  //overload 重载
        constructor Aaa(); overload;
        {声明、定义}
        procedure SetName(Name: string);
        {销毁对象的方法}
        destructor Destroy(); override;   // 覆盖、重写
    end;

{ TUser }
{构造方法}
constructor TUser.Aaa(Name: string);
begin
    // 初始化
    FName := Name;
end;

constructor TUser.Aaa();
begin

end;

 {销毁对象的方法实现}
destructor TUser.Destroy;
begin
  {调用父类销毁对象的方法}
    Writeln('调用父类销毁对象的方法');
    inherited;
end;

procedure TUser.SetName(Name: string);
begin
    FName := Name;
end;

var
    User: TUser;


begin
    {通过类的构造方法，创建一个类的对象}
    // User := nil;
    //User := TUser.Create;
    User := TUser.Aaa();
    //设置字段
    // User.FName := '小明';

    Writeln(User.FName);

    // 销毁对象：模板方法设计模式
    // User.Free();
    // Writeln(User.FName);

    FreeAndNil(User);

    Readln;
end.

