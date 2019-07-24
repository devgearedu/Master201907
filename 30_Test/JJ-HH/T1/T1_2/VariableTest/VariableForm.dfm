object frmVariable: TfrmVariable
  Left = 0
  Top = 0
  Caption = #48320#49688' '#49324#50857
  ClientHeight = 165
  ClientWidth = 353
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 24
    Top = 85
    Width = 58
    Height = 13
    Caption = #49707#51088#46308#51032' '#54633
  end
  object Label1: TLabel
    Left = 24
    Top = 29
    Width = 47
    Height = 13
    Caption = #49707#51088' '#51077#47141
  end
  object edtSum: TEdit
    Left = 24
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtNum: TEdit
    Left = 24
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnPlus: TButton
    Left = 151
    Top = 46
    Width = 75
    Height = 25
    Caption = #45908#54616#44592
    TabOrder = 2
    OnClick = btnPlusClick
  end
  object btnMinus: TButton
    Left = 232
    Top = 46
    Width = 75
    Height = 25
    Caption = #48764#44592
    TabOrder = 3
    OnClick = btnMinusClick
  end
end
