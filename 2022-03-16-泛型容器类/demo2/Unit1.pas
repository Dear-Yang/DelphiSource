unit Unit1;

interface

uses
    System.Generics.Collections, Unit2, Winapi.Windows, Winapi.Messages,
    System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
    Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
    TForm1 = class(TForm)
        Memo1: TMemo;
        BtnAdd: TButton;
        BtnDel: TButton;
        BtnFind: TButton;
        BtnUpdate: TButton;
        BtnClean: TButton;
        edtUName: TEdit;
        procedure FormCreate(Sender: TObject);
        procedure BtnFindClick(Sender: TObject);
        procedure BtnAddClick(Sender: TObject);
    private    { Private declarations }
    public    { Public declarations }
    end;

var
    Form1: TForm1;
  {学生列表}
    StudentList: TList<TStudent>;


implementation

{$R *.dfm}

procedure TForm1.BtnAddClick(Sender: TObject);
var
    Stu: TStudent;
begin

    if edtUName.Text <> '' then
        StudentList.Add(TStudent.Create(edtUName.Text))
    else
        MessageBox(Self.Handle, '姓名不能为空', '温馨提示', MB_OK);

    // Memo1.Lines.Clear;
    for Stu in StudentList do begin
        Memo1.Lines.Add(Stu.Name);

    end;
end;

procedure TForm1.BtnFindClick(Sender: TObject);
var
    Stu: TStudent;
begin
    for Stu in StudentList do begin
        Memo1.Lines.Add(Stu.Name);

    end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    StudentList := TList<TStudent>.Create;
    StudentList.Add(TStudent.Create('小强'));
    StudentList.Add(TStudent.Create('小黑'));
    StudentList.Add(TStudent.Create('小红'));
    StudentList.Add(TStudent.Create('小白'));
end;

end.

