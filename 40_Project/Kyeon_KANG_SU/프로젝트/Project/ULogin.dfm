object LOGIN: TLOGIN
  Left = 0
  Top = 0
  Align = alClient
  Caption = #47196#44536#51064
  ClientHeight = 622
  ClientWidth = 879
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    879
    622)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 191
    Top = 134
    Width = 64
    Height = 25
    Alignment = taCenter
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = #47588#51109#53076#46300
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 451
    Top = 134
    Width = 22
    Height = 25
    Alignment = taCenter
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 631
    Top = 134
    Width = 31
    Height = 25
    Alignment = taCenter
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'PW'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 18
    Width = 162
    Height = 74
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = #47196#44536#51064
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -64
    Font.Name = 'Cooper Black'
    Font.Style = []
    ParentFont = False
  end
  object Store_Code: TEdit
    Left = 191
    Top = 171
    Width = 200
    Height = 21
    Alignment = taCenter
    Anchors = [akLeft, akRight]
    AutoSize = False
    TabOrder = 0
  end
  object ID: TEdit
    Left = 451
    Top = 171
    Width = 121
    Height = 21
    Alignment = taCenter
    Anchors = [akLeft, akRight]
    AutoSize = False
    TabOrder = 1
  end
  object Password: TEdit
    Left = 631
    Top = 171
    Width = 121
    Height = 21
    Alignment = taCenter
    Anchors = [akLeft, akRight]
    AutoSize = False
    TabOrder = 2
  end
end
