unit Unit1;

interface

type
    {接口定义}   {可实现一类多接口}
    IUsb = interface
    {Ctrl+Shift+G}
        ['{2A90AE73-DBE9-4086-B436-4FA1DAC74FF1}']
        procedure read();
    end;

    IUsb2 = interface
        // procedure write();
    end;




    {定义类 TInterfacedObject}
    TComputer = class(TInterfacedObject)
    end;

    TLaptop = class(TComputer, IUsb2,IUsb)
        procedure read();
    end;

implementation

{ TLaptop }

procedure TLaptop.read;
begin

end;

end.

