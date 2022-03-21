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

        procedure Run(); override; //�����뷵��ֵҪ�븸����ͬ
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
     Writeln('������');
end;

procedure TDog.Run;
begin
    Writeln('������');
end;

{ TCat }

procedure TCat.CathMouse;
begin
     Writeln('èץ����');
end;

procedure TCat.Run;
begin
    Writeln('è����');
end;

end.

