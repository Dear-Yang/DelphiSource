unit Unit1;

interface

uses
    uThreads, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
    Vcl.StdCtrls;

type
    TForm1 = class(TForm)
        Button1: TButton;
        Label1: TLabel;
        Button2: TButton;
        GroupBox1: TGroupBox;
        Label2: TLabel;
        btnStart: TButton;
        btnSuspend: TButton;
        btnContinue: TButton;
        procedure Button1Click(Sender: TObject);
        procedure Button2Click(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    private    { Private declarations }
    public    { Public declarations }
    end;

var
    Form1: TForm1;


implementation

{$R *.dfm}

procedure Work();
var
    Num: Integer;
begin
    for Num := 1 to 10000000 do begin
        Form1.Label1.Caption := Num.ToString;
        //�߳�����100����
        TThread.Sleep(600);
    end;
end;

procedure TForm1.btnStartClick(Sender: TObject);
var
    Work: Twork;
begin
    //True: ��ʾ�̴߳���������������ִ�л����ȹ���
    Work := Twork.Create(True);
    Work.Start;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
    //�����߳�
//    TThread.CreateAnonymousThread(work).Start;

    TThread.CreateAnonymousThread(
        procedure
        var
            Num: Integer;
        begin
            for Num := 1 to 60000000 do begin
                Form1.Label1.Caption := Num.ToString;
                //�߳�����100����
                TThread.Sleep(60);
            end;
        end).Start;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    Label1.Caption := '0';
end;

end.

