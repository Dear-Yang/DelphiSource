unit Unit1;

interface

uses
    DaoUnit, AddFormUnit, Unit2, System.Generics.Collections, Winapi.Windows,
    Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
    Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
    TMainForm = class(TForm)
        Button1: TButton;
        Button2: TButton;
        Button3: TButton;
        Button4: TButton;
        Memo1: TMemo;
        //procedure FormCreate(Sender: TObject);
        procedure Button1Click(Sender: TObject);
        procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    private    { Private declarations }
    public    { Public declarations }
    end;

var
    MainForm: TMainForm;

//全局容器类 :存放学生信息
//var                        {TKey,Tvalue}
//    Students: TDictionary<Integer, TStudent>;


implementation

{$R *.dfm}

procedure TMainForm.Button1Click(Sender: TObject);
var
    AddForm: TFormAdd;
begin
    AddForm := TFormAdd.Create(Self);
    AddForm.Left := Self.Left + 70;
    AddForm.Top := Self.Top + 30;
    AddForm.ShowModal;
    //FormAdd.Create(Self).ShowModal;

end;

procedure TMainForm.Button2Click(Sender: TObject);
var
    Dictionary: TDictionary<string, TStudent>;
    Stu: TStudent;
begin
//    Memo1.Lines.Clear;
//    Dictionary := TDao.ListStu();
    for Stu in Dictionary.Values do begin
        Memo1.Lines.Add(Stu.Id + ',' + Stu.Name + ',' + Stu.Age.ToString);
    end;

end;

procedure TMainForm.Button4Click(Sender: TObject);
begin
TDao.clear;
Memo1.Lines.Clear;
end;

//procedure TMainForm.FormCreate(Sender: TObject);
//begin
//    //初始化
//    Students := TDictionary<Integer, TStudent>.Create();
//end;

end.

