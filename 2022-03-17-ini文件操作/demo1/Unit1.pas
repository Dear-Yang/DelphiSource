unit Unit1;

interface

uses
    System.IOUtils, System.IniFiles, Winapi.Windows, Winapi.Messages,
    System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
    Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
    TForm1 = class(TForm)
        Button1: TButton;
        EdtName: TEdit;
        Button2: TButton;
        rgSex: TRadioGroup;
        rbMan: TRadioButton;
        rbWmen: TRadioButton;
        Button3: TButton;
        edtAge: TEdit;
        GroupBox1: TGroupBox;
        Label1: TLabel;
        chk1: TCheckBox;
        chk2: TCheckBox;
        cbbAddress: TComboBox;
        Label2: TLabel;
        btnSave: TButton;
        procedure btnSaveClick(Sender: TObject);
        procedure FormCreate(Sender: TObject);
    private    { Private declarations }
    public    { Public declarations }
    end;

var
    Form1: TForm1;
    ConfigPath: string;


implementation

{$R *.dfm}

procedure TForm1.btnSaveClick(Sender: TObject);
var
    IniFile: TIniFile;
    Section: string;
begin
    //配置文件
//    IniFile := TIniFile.Create('D:\Delphi\2022-03-17-ini文件操作\demo1\Win32\Debug\UserConfig.ini');
    IniFile := TIniFile.Create(ConfigPath);
    Section := 'basic';
    IniFile.WriteString(Section, 'editName', EdtName.Text);
    IniFile.WriteString(Section, 'editAge', edtAge.Text);
    IniFile.WriteBool(Section, 'man', rbMan.Checked);
    IniFile.WriteBool(Section, 'chk1', chk1.Checked);
    IniFile.WriteBool(Section, 'chk2', chk2.Checked);
    IniFile.WriteInteger(Section, 'address', cbbAddress.ItemIndex);

end;

procedure TForm1.FormCreate(Sender: TObject);
var
    IniFile: TIniFile;
begin
    ConfigPath := TDirectory.GetCurrentDirectory() + '\UserConfig.ini';
    IniFile := TIniFile.Create(ConfigPath);
//    IniFile := TIniFile.Create('D:\Delphi\2022-03-17-ini文件操作\demo1\Win32\Debug\UserConfig.ini');
    EdtName.Text := IniFile.ReadString('basic', 'editName', '');
    edtAge.Text := IniFile.ReadString('basic', 'editAge', '');
    rbMan.Checked := IniFile.ReadBool('basic', 'man', False);
    rbWmen.Checked := not rbMan.Checked;
    chk1.Checked := IniFile.ReadBool('basic', 'chk1', False);
    chk2.Checked := IniFile.ReadBool('basic', 'chk2', False);
    cbbAddress.ItemIndex := IniFile.ReadInteger('basic', 'address', 0)
end;

end.

