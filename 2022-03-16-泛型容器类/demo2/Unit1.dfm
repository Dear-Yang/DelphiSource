object Form1: TForm1
  Left = 600
  Top = 145
  Caption = 'Form1'
  ClientHeight = 506
  ClientWidth = 633
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
  object Memo1: TMemo
    Left = 0
    Top = 208
    Width = 633
    Height = 297
    Lines.Strings = (
      '')
    TabOrder = 0
  end
  object BtnAdd: TButton
    Left = 24
    Top = 120
    Width = 75
    Height = 25
    Caption = #28155#21152
    TabOrder = 1
    OnClick = BtnAddClick
  end
  object BtnDel: TButton
    Left = 128
    Top = 120
    Width = 75
    Height = 25
    Caption = #21024#38500
    TabOrder = 2
  end
  object BtnFind: TButton
    Left = 232
    Top = 120
    Width = 75
    Height = 25
    Caption = #26597#35810
    TabOrder = 3
    OnClick = BtnFindClick
  end
  object BtnUpdate: TButton
    Left = 336
    Top = 120
    Width = 75
    Height = 25
    Caption = #20462#25913
    TabOrder = 4
  end
  object BtnClean: TButton
    Left = 456
    Top = 120
    Width = 75
    Height = 25
    Caption = #28165#31354
    TabOrder = 5
  end
  object edtUName: TEdit
    Left = 64
    Top = 24
    Width = 137
    Height = 21
    TabOrder = 6
  end
end
