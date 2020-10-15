object CalForm: TCalForm
  Left = 0
  Top = 0
  AutoSize = True
  Caption = #44228#49328#44592
  ClientHeight = 333
  ClientWidth = 282
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 283
    Width = 282
    Height = 50
    TabOrder = 0
    object Num0: TButton
      Left = 71
      Top = 1
      Width = 70
      Height = 48
      Align = alLeft
      Caption = '0'
      TabOrder = 0
      OnClick = NumClick
    end
    object PlsButton: TButton
      Left = 211
      Top = 1
      Width = 70
      Height = 48
      Align = alLeft
      Caption = '+'
      TabOrder = 1
      OnClick = OpButtonClick
    end
    object DmcButton: TButton
      Left = 141
      Top = 1
      Width = 70
      Height = 48
      Align = alLeft
      Caption = '.'
      TabOrder = 2
    end
    object Button1: TButton
      Left = 1
      Top = 1
      Width = 70
      Height = 48
      Align = alLeft
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 237
    Width = 282
    Height = 50
    TabOrder = 1
    object Num1: TButton
      Left = 1
      Top = 1
      Width = 70
      Height = 48
      Align = alLeft
      Anchors = []
      Caption = '1'
      TabOrder = 0
      OnClick = NumClick
    end
    object Num2: TButton
      Left = 71
      Top = 1
      Width = 70
      Height = 48
      Align = alLeft
      Caption = '2'
      TabOrder = 1
      OnClick = NumClick
    end
    object Num3: TButton
      Left = 141
      Top = 1
      Width = 70
      Height = 48
      Align = alLeft
      Caption = '3'
      TabOrder = 2
      OnClick = NumClick
    end
    object MnsButton: TButton
      Left = 211
      Top = 1
      Width = 70
      Height = 48
      Align = alLeft
      Caption = #12641
      TabOrder = 3
      OnClick = OpButtonClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 191
    Width = 282
    Height = 50
    TabOrder = 2
    object Num5: TButton
      Left = 71
      Top = 1
      Width = 70
      Height = 48
      Align = alLeft
      Caption = '5'
      TabOrder = 0
      OnClick = NumClick
    end
    object Num4: TButton
      Left = 1
      Top = 1
      Width = 70
      Height = 48
      Align = alLeft
      Anchors = []
      Caption = '4'
      TabOrder = 1
      OnClick = NumClick
    end
    object Num6: TButton
      Left = 141
      Top = 1
      Width = 70
      Height = 48
      Align = alLeft
      Caption = '6'
      TabOrder = 2
      OnClick = NumClick
    end
    object MtpButton: TButton
      Left = 211
      Top = 1
      Width = 70
      Height = 48
      Align = alLeft
      Caption = 'X'
      TabOrder = 3
      OnClick = OpButtonClick
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 145
    Width = 282
    Height = 50
    TabOrder = 3
    object Num7: TButton
      Left = 1
      Top = 1
      Width = 70
      Height = 48
      Align = alLeft
      Anchors = []
      Caption = '7'
      TabOrder = 0
      OnClick = NumClick
    end
    object Num8: TButton
      Left = 71
      Top = 1
      Width = 70
      Height = 48
      Align = alLeft
      Caption = '8'
      TabOrder = 1
      OnClick = NumClick
    end
    object Num9: TButton
      Left = 141
      Top = 1
      Width = 70
      Height = 48
      Align = alLeft
      Caption = '9'
      TabOrder = 2
      OnClick = NumClick
    end
    object DvsButton: TButton
      Left = 211
      Top = 1
      Width = 70
      Height = 48
      Align = alLeft
      Caption = #247
      TabOrder = 3
      OnClick = OpButtonClick
    end
  end
  object LabelPanel: TPanel
    Left = 1
    Top = 0
    Width = 281
    Height = 100
    TabOrder = 4
    object RstLabel: TLabel
      Left = 1
      Top = 39
      Width = 279
      Height = 60
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      AutoSize = False
      BiDiMode = bdLeftToRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      ExplicitTop = 38
    end
    object SaveLabel: TLabel
      Left = 1
      Top = 1
      Width = 279
      Height = 40
      Align = alTop
      AutoSize = False
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      ExplicitTop = -7
      ExplicitWidth = 285
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 97
    Width = 282
    Height = 50
    TabOrder = 5
    object Button2: TButton
      Left = 71
      Top = 1
      Width = 70
      Height = 48
      Align = alLeft
      TabOrder = 0
    end
    object Button4: TButton
      Left = 211
      Top = 1
      Width = 70
      Height = 48
      Align = alLeft
      TabOrder = 1
    end
    object RstButton: TButton
      Left = 141
      Top = 1
      Width = 70
      Height = 48
      Align = alLeft
      Caption = '='
      TabOrder = 2
      OnClick = RstButtonClick
    end
    object CEButton: TButton
      Left = 1
      Top = 1
      Width = 70
      Height = 48
      Align = alLeft
      Anchors = []
      Caption = 'CE'
      TabOrder = 3
      OnClick = CEClick
    end
  end
end
