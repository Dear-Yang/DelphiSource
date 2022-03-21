unit Unit1;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
    Vcl.StdCtrls;

type
    TForm1 = class(TForm)
        Button1: TButton;
        ButtonMsg: TButton;
        procedure Button1Click(Sender: TObject);
        procedure ButtonMsgClick(Sender: TObject);
    private    { Private declarations }
    public    { Public declarations }
                                                        {消息编号，消息类型}
        procedure ShowMyMsg(var msg: TMessage); message WM_USER + 1;
    end;

var
    Form1: TForm1;


implementation

{$R *.dfm}

procedure TForm1.ButtonMsgClick(Sender: TObject);
begin
    //发送消息 {消息句柄值唯一}
    SendMessage(Self.Handle, WM_USER + 1, 100, Integer(PChar('你好')));
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
    ShowMessage('HelloWorld');
    Application.MessageBox('HelloWorld', PWideChar('温馨提示'), 3);
end;


{消息处理过程，该过程无需手动（显示）调用}
procedure TForm1.ShowMyMsg(var msg: TMessage);
begin
    // ShowMessage(msg.WParam.ToString);
    ShowMessage(PChar(msg.LParam));
end;

end.

