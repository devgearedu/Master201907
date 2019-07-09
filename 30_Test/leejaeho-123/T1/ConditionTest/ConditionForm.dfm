object frmCondition: TfrmCondition
  Left = 0
  Top = 0
  Caption = #54632#49688' '#48143' '#51312#44148#47928
  ClientHeight = 300
  ClientWidth = 316
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 112
    Width = 58
    Height = 13
    Caption = #50500#51060#46356' '#47785#47197
  end
  object edtId: TEdit
    Left = 32
    Top = 47
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = #50500#51060#46356
  end
  object edtPwd: TEdit
    Left = 32
    Top = 74
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = #48708#48128#48264#54840
  end
  object Button1: TButton
    Left = 159
    Top = 72
    Width = 75
    Height = 25
    Caption = #47196#44536#51064
    TabOrder = 2
    OnClick = Button1Click
  end
  object mmoIds: TMemo
    Left = 32
    Top = 131
    Width = 257
    Height = 137
    TabOrder = 3
  end
end
