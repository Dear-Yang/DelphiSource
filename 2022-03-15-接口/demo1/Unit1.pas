unit Unit1;

interface

type
    {�ӿڶ���}   {��ʵ��һ���ӿ�}
    IUsb = interface
    {Ctrl+Shift+G}
        ['{2A90AE73-DBE9-4086-B436-4FA1DAC74FF1}']
        procedure read();
    end;

    IUsb2 = interface
        // procedure write();
    end;




    {������ TInterfacedObject}
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

