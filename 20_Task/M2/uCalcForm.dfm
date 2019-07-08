object frmCalc: TfrmCalc
  Left = 0
  Top = 0
  Caption = 'frmCalc'
  ClientHeight = 368
  ClientWidth = 296
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object displayLabel: TLabel
    Left = 8
    Top = 8
    Width = 274
    Height = 65
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 8
    Top = 97
    Width = 64
    Height = 64
    Caption = '7'
    TabOrder = 0
    OnClick = ButtonNumberClick
  end
  object Button2: TButton
    Left = 78
    Top = 97
    Width = 64
    Height = 64
    Caption = '8'
    TabOrder = 1
    OnClick = ButtonNumberClick
  end
  object Button3: TButton
    Left = 148
    Top = 97
    Width = 64
    Height = 64
    Caption = '9'
    TabOrder = 2
    OnClick = ButtonNumberClick
  end
  object Button4: TButton
    Left = 8
    Top = 166
    Width = 64
    Height = 64
    Caption = '4'
    TabOrder = 3
    OnClick = ButtonNumberClick
  end
  object Button5: TButton
    Left = 78
    Top = 166
    Width = 64
    Height = 64
    Caption = '5'
    TabOrder = 4
    OnClick = ButtonNumberClick
  end
  object Button6: TButton
    Left = 148
    Top = 166
    Width = 64
    Height = 64
    Caption = '6'
    TabOrder = 5
    OnClick = ButtonNumberClick
  end
  object Button7: TButton
    Left = 8
    Top = 233
    Width = 64
    Height = 64
    Caption = '1'
    TabOrder = 6
    OnClick = ButtonNumberClick
  end
  object Button8: TButton
    Left = 78
    Top = 233
    Width = 64
    Height = 64
    Caption = '2'
    TabOrder = 7
    OnClick = ButtonNumberClick
  end
  object Button9: TButton
    Left = 148
    Top = 233
    Width = 64
    Height = 64
    Caption = '3'
    TabOrder = 8
    OnClick = ButtonNumberClick
  end
  object Button10: TButton
    Left = 8
    Top = 302
    Width = 64
    Height = 65
    Caption = 'ac'
    TabOrder = 9
    OnClick = ButtonClearClick
  end
  object Button11: TButton
    Left = 78
    Top = 302
    Width = 64
    Height = 65
    Caption = '0'
    TabOrder = 10
    OnClick = ButtonNumberClick
  end
  object Button12: TButton
    Left = 148
    Top = 302
    Width = 64
    Height = 65
    Caption = '='
    TabOrder = 11
    OnClick = ButtonEqualClick
    OnKeyPress = Button12KeyPress
  end
  object Button13: TButton
    Left = 218
    Top = 151
    Width = 64
    Height = 50
    Caption = '+'
    TabOrder = 12
    OnClick = ButtonOperatorClick
  end
  object Button14: TButton
    Left = 218
    Top = 207
    Width = 64
    Height = 50
    Caption = '-'
    TabOrder = 13
    OnClick = ButtonOperatorClick
  end
  object Button15: TButton
    Left = 218
    Top = 263
    Width = 64
    Height = 50
    Caption = '*'
    TabOrder = 14
    OnClick = ButtonOperatorClick
  end
  object Button16: TButton
    Left = 218
    Top = 320
    Width = 64
    Height = 47
    Caption = '/'
    TabOrder = 15
    OnClick = ButtonOperatorClick
  end
  object Button17: TButton
    Left = 218
    Top = 97
    Width = 64
    Height = 49
    Caption = 'delete'
    TabOrder = 16
    OnClick = ButtonDeleteClick
  end
end
