object Form1: TForm1
  Left = 640
  Top = 270
  Caption = 'ini'#37197#32622#25991#20214#25805#20316
  ClientHeight = 626
  ClientWidth = 551
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 63
    Top = 272
    Width = 28
    Height = 13
    Caption = #29233#22909':'
  end
  object Label2: TLabel
    Left = 64
    Top = 424
    Width = 36
    Height = 13
    Caption = #20303#22336#65306
  end
  object Button1: TButton
    Left = 16
    Top = 40
    Width = 75
    Height = 25
    Caption = #22995#21517#65306
    TabOrder = 0
  end
  object EdtName: TEdit
    Left = 144
    Top = 42
    Width = 233
    Height = 23
    TabOrder = 1
  end
  object Button2: TButton
    Left = 16
    Top = 180
    Width = 75
    Height = 25
    Caption = #24615#21035#65306
    TabOrder = 2
  end
  object rgSex: TRadioGroup
    Left = 144
    Top = 160
    Width = 233
    Height = 57
    Caption = 'rgSex'
    TabOrder = 3
    Visible = False
  end
  object rbMan: TRadioButton
    Left = 176
    Top = 184
    Width = 73
    Height = 17
    Caption = #30007
    TabOrder = 4
  end
  object rbWmen: TRadioButton
    Left = 255
    Top = 184
    Width = 90
    Height = 17
    Caption = #22899
    TabOrder = 5
  end
  object Button3: TButton
    Left = 16
    Top = 98
    Width = 75
    Height = 25
    Caption = #24180#40836
    TabOrder = 6
  end
  object edtAge: TEdit
    Left = 144
    Top = 100
    Width = 233
    Height = 23
    TabOrder = 7
  end
  object GroupBox1: TGroupBox
    Left = 144
    Top = 272
    Width = 233
    Height = 89
    TabOrder = 8
    object chk1: TCheckBox
      Left = 24
      Top = 32
      Width = 65
      Height = 17
      Caption = #38065
      TabOrder = 0
    end
    object chk2: TCheckBox
      Left = 112
      Top = 32
      Width = 81
      Height = 17
      Caption = #32534#31243
      TabOrder = 1
    end
  end
  object cbbAddress: TComboBox
    Left = 144
    Top = 424
    Width = 233
    Height = 21
    ItemIndex = 0
    TabOrder = 9
    Text = #38485#35199#35199#23433
    Items.Strings = (
      #38485#35199#35199#23433
      #21271#20140#28023#28096
      #27827#21335#37073#24030)
  end
  object btnSave: TButton
    Left = 176
    Top = 528
    Width = 75
    Height = 25
    Caption = #20445#23384#35774#32622
    TabOrder = 10
    OnClick = btnSaveClick
  end
end
