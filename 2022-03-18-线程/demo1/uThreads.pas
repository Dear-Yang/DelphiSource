unit uThreads;

interface

uses
    System.SysUtils,System.Classes;

type
    Twork = class(TThread)
    private    { Private declarations }
    protected
        procedure Execute; override;
    public
        procedure Operation;
    end;

implementation

//�ֲ�����
uses
    Unit1;

{ Twork }

procedure Twork.Execute;
begin
    Operation();
end;

procedure Twork.Operation;
var
    Num: Integer;
begin
    for Num := 1 to 10000000 do begin
        Form1.Label1.Caption := Num.ToString;
        //�߳�����100����
        TThread.Sleep(600);
    end;
end;

end.

