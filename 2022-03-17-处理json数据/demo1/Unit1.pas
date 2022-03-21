unit Unit1;

interface

uses
    System.JSON, System.Generics.Collections, System.JSON.Serializers, Unit2,
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
    Vcl.StdCtrls;

type
    TForm1 = class(TForm)
        Button1: TButton;
        Memo1: TMemo;
        Button2: TButton;
        Button3: TButton;
        Button4: TButton;
        procedure Button1Click(Sender: TObject);
        procedure Button2Click(Sender: TObject);
        procedure Button3Click(Sender: TObject);
        procedure Button4Click(Sender: TObject);
    private    { Private declarations }
    public    { Public declarations }
    end;

var
    Form1: TForm1;


implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
    UserJson: string;
    Serializer: TJsonSerializer;
    Student: TStudent;
begin
      //�ַ������͵�json����
    UserJson := '{"FName":"С��","FAge":18}';
    Serializer := TJsonSerializer.Create();
    //�����л�             {�����л��� TStudent}
    Student := Serializer.Deserialize<TStudent>(UserJson);
    Memo1.Lines.Add('�����л�:' + Student.Name + ',' + Student.Age.ToString);

end;

procedure TForm1.Button2Click(Sender: TObject);
var
    UserJson: string;
    Serializer: TJsonSerializer;
    Student: TStudent;
begin
  //����ʵ�������
    Student := TStudent.Create;
    Student.Name := 'С��';
    Student.Age := 30;

    //�������л�����
    Serializer := TJsonSerializer.Create();

    Memo1.Lines.Add('���л�:' + Serializer.Serialize<TStudent>(Student));
end;

procedure TForm1.Button3Click(Sender: TObject);
var
    Student: TStudent;
    List: TList<TStudent>;
    Serializer: TJsonSerializer;
begin
    //����ʵ�������
//    Student := TStudent.Create;
//    Student.Name := 'С��';
//    Student.Age := 30;
    List := TList<TStudent>.Create;
    List.Add(TStudent.Create('С��', 30));
    List.Add(TStudent.Create('С��', 50));
    Serializer := TJsonSerializer.Create();

    Memo1.Lines.Add('���л�:' + Serializer.Serialize<TList<TStudent>>(List));

end;

procedure TForm1.Button4Click(Sender: TObject);
var
    UserJson: string;
    List: TList<TStudent>;
    Serializer: TJsonSerializer;
    stu: TStudent;
begin
    UserJson := '{"FListHelper":{"FCount":2},"FItems":[{"Fname":"С��","FAge":30},{"Fname":"С��","FAge":50}],"FComparer":{}}';
    {�������л�����}
    Serializer := TJsonSerializer.Create();
    List := Serializer.Deserialize<TList<TStudent>>(UserJson);
    for stu in List do begin
        Memo1.Lines.Add('�����л�:' + stu.Name + ',' + stu.Age.ToString);
    end;

    Memo1.Lines.Add(TJSONObject.ParseJSONValue(UserJson).GetValue<TJSONObject>('FListHelper').GetValue<string>('FCount'));
    Memo1.Lines.Add(TJSONObject.ParseJSONValue(UserJson).GetValue<TJSONArray>('FItems').Count.ToString);
end;

end.

