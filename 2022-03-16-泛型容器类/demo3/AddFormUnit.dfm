object FormAdd: TFormAdd
  Left = 780
  Top = 145
  BorderStyle = bsDialog
  Caption = #28155#21152#23398#29983#20449#24687
  ClientHeight = 309
  ClientWidth = 462
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 48
    Width = 36
    Height = 13
    Caption = #22995#21517#65306
  end
  object Label2: TLabel
    Left = 40
    Top = 152
    Width = 36
    Height = 13
    Caption = #24180#40836#65306
  end
  object EdtName: TEdit
    Left = 144
    Top = 45
    Width = 153
    Height = 21
    TabOrder = 0
  end
  object EdtAge: TEdit
    Left = 144
    Top = 144
    Width = 153
    Height = 21
    TabOrder = 1
  end
  object BtnSave: TButton
    Left = 40
    Top = 248
    Width = 75
    Height = 25
    Caption = #20445#23384
    TabOrder = 2
    OnClick = BtnSaveClick
  end
  object BtnCancel: TButton
    Left = 222
    Top = 248
    Width = 75
    Height = 25
    Caption = #21462#28040
    TabOrder = 3
    OnClick = BtnCancelClick
  end
end
