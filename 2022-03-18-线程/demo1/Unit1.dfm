object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 78
    Top = 32
    Width = 18
    Height = 13
    Caption = '0'
  end
  object Button1: TButton
    Left = 45
    Top = 88
    Width = 75
    Height = 25
    Caption = #24320#22987#36816#31639
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 336
    Top = 88
    Width = 75
    Height = 25
    Caption = #36824#21407#26631#31614
    TabOrder = 1
    OnClick = Button2Click
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 119
    Width = 633
    Height = 178
    Caption = #22810#32447#31243#25511#21046
    TabOrder = 2
    object Label2: TLabel
      Left = 32
      Top = 80
      Width = 31
      Height = 13
      Caption = 'Label2'
    end
    object btnStart: TButton
      Left = 176
      Top = 28
      Width = 75
      Height = 25
      Caption = #24320#22987
      TabOrder = 0
      OnClick = btnStartClick
    end
    object btnSuspend: TButton
      Left = 176
      Top = 71
      Width = 75
      Height = 25
      Caption = #26242#20572
      TabOrder = 1
    end
    object btnContinue: TButton
      Left = 176
      Top = 120
      Width = 75
      Height = 25
      Caption = #32487#32493
      TabOrder = 2
    end
  end
end
