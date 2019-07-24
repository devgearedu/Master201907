object Form3: TForm3
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Form3'
  ClientHeight = 610
  ClientWidth = 850
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
    Top = 0
    Width = 481
    Height = 610
    Align = alLeft
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 496
      Width = 479
      Height = 113
      Align = alBottom
      TabOrder = 0
      ExplicitWidth = 359
      object Panel4: TPanel
        Left = 293
        Top = 1
        Width = 185
        Height = 111
        Align = alRight
        TabOrder = 0
        ExplicitLeft = 144
        ExplicitTop = 40
        ExplicitHeight = 41
        object Button4: TButton
          Left = 1
          Top = 56
          Width = 183
          Height = 54
          Align = alBottom
          Caption = 'Button3'
          TabOrder = 0
          ExplicitTop = 1
        end
        object Button3: TButton
          Left = 1
          Top = 1
          Width = 183
          Height = 54
          Align = alTop
          Caption = 'Button3'
          TabOrder = 1
          ExplicitLeft = 2
          ExplicitTop = 9
        end
      end
      object Button1: TButton
        Left = 147
        Top = 1
        Width = 146
        Height = 111
        Align = alLeft
        Caption = 'Button1'
        TabOrder = 1
        ExplicitLeft = 1
      end
      object Button2: TButton
        Left = 1
        Top = 1
        Width = 146
        Height = 111
        Align = alLeft
        Caption = 'Button1'
        TabOrder = 2
        ExplicitLeft = 9
        ExplicitTop = 2
      end
    end
    object DBMemo1: TDBMemo
      Left = 1
      Top = 1
      Width = 479
      Height = 495
      Align = alClient
      TabOrder = 1
      ExplicitLeft = 264
      ExplicitTop = 272
      ExplicitWidth = 185
      ExplicitHeight = 89
    end
  end
  object Panel3: TPanel
    Left = 481
    Top = 0
    Width = 369
    Height = 610
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 408
    ExplicitWidth = 442
    object DBEdit1: TDBEdit
      Left = 56
      Top = 80
      Width = 257
      Height = 25
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 56
      Top = 125
      Width = 257
      Height = 25
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 56
      Top = 166
      Width = 257
      Height = 25
      TabOrder = 2
    end
  end
end
