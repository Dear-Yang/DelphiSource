unit Unit1;

interface

type
    IColor = interface
    end;

    TAnimal = class(TInterfacedObject)
    public
        procedure Run(); virtual; abstract;
    end;
    //
    TDog = class(TAnimal, IColor)
    public

        procedure Run(); override; //参数与返回值要与父类相同
        procedure LookDoor();
    end;
    //
    TCat = class(TAnimal)
    public
        procedure Run(); override;
        procedure CathMouse();

    end;

implementation

{ TDog }

procedure TDog.LookDoor;
begin
     Writeln('狗看门');
end;

procedure TDog.Run;
begin
    Writeln('狗在跑');
end;

{ TCat }

procedure TCat.CathMouse;
begin
     Writeln('猫抓老鼠');
end;

procedure TCat.Run;
begin
    Writeln('猫在跑');
end;

end.

