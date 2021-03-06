unit Unit1;

interface

uses
    System.SysUtils, Winapi.Windows, Vcl.Dialogs;

type
    {用户传输消息的结构}
    TMyMsg = record

        {long长整型}
        MsgNum: Cardinal;      //消息号
        MsgText: ShortString;   //传输消息的内容

    end;

    //
    {消息处理类}
    TMsgAccepter = class(TObject)
    private        {用于处理消息编号是2000的消息}
        procedure AcceptMsg2000(var msg: TMyMsg); message 2000;
    public
        procedure DefaultHandler (var message); override;
    end;

implementation

{ TMsgAccepter }

procedure TMsgAccepter.AcceptMsg2000(var msg: TMyMsg);
begin
    ShowMessage('接收到消息，编号是：' + msg.MsgNum.ToString + ', 消息内容是：' + msg.MsgText);
end;

procedure TMsgAccepter.DefaultHandler(var message);
var
  Msg:TMyMsg;
begin
    Msg:= TMyMsg(message);
   ShowMessage('对不起，该消息编号无法处理' + Msg.MsgNum.ToString);
end;

end.

