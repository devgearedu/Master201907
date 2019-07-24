object frmLoop: TfrmLoop
  Left = 0
  Top = 0
  Caption = 'frmLoop'
  ClientHeight = 144
  ClientWidth = 227
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
    Left = 103
    Top = 35
    Width = 8
    Height = 13
    Caption = '~'
  end
  object edtStartNum: TEdit
    Left = 40
    Top = 32
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 0
    TextHint = #49884#51089
  end
  object btnOddCount: TButton
    Left = 40
    Top = 59
    Width = 161
    Height = 25
    Caption = #46160' '#49688' '#49324#51060#51032' '#54848#49688' '#44079#49688#45716'?'
    TabOrder = 2
    OnClick = btnOddCountClick
  end
  object edtEndNum: TEdit
    Left = 128
    Top = 32
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 1
    TextHint = #45149
  end
  object btnMul3Sum: TButton
    Left = 40
    Top = 90
    Width = 161
    Height = 25
    Caption = #46160' '#49688' '#49324#51060#51032' 3'#51032' '#48176#49688#51032' '#54633#51008'?'
    TabOrder = 3
    OnClick = btnMul3SumClick
  end
end
