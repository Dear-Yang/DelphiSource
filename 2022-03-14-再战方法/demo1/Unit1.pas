unit Unit1;

interface

type
    TAnimal = class
    public
        procedure Talk();

        {虚拟方法}
        function Run(): Integer; virtual;    //dynamic;

        {类方法}
        class procedure Eat();

        {构造方法}
        constructor create1();

        {抽象方法：规范，一般指规定}
        procedure Sleep();virtual;abstract;
    end;

    TDog = class(TAnimal)  {父调用}
    public
        function Run(): Integer;  {父类重写}
        procedure Sleep();
    end;

implementation

{ TPesion }

constructor TAnimal.create1;
begin
   Writeln('构造方法执行了');
end;

class procedure TAnimal.Eat;
begin
    Writeln('Eat');
end;

function TAnimal.Run: Integer;
begin
{一般情况下，父类的虚拟方法会有一个空实现，为子类覆盖用}

end;

procedure TAnimal.Talk;
begin
    Writeln('Talk');
end;

{ TUser }

function TDog.Run: Integer;
begin
    Writeln('用四条腿跑');
end;

procedure TDog.Sleep;
begin

end;

end.

