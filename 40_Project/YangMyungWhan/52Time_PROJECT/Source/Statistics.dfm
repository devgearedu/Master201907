object frmStatisics: TfrmStatisics
  Left = 0
  Top = 0
  Caption = 'frmStatisics'
  ClientHeight = 530
  ClientWidth = 857
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlHead: TPanel
    Left = 0
    Top = 0
    Width = 857
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 40
      Height = 19
      Caption = #53685#44228
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'HY'#49688#54217#49440'M'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pcStatistics: TPageControl
    Left = 0
    Top = 41
    Width = 857
    Height = 489
    ActivePage = tsWorkState
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object tsWorkState: TTabSheet
      Caption = #44540#47924#54788#54889
      object Label2: TLabel
        Left = 50
        Top = 56
        Width = 114
        Height = 19
        Caption = #45572#51201#44540#47924#49884#44036
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'HY'#49688#54217#49440'M'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 324
        Top = 56
        Width = 114
        Height = 19
        Caption = #51092#50668#44540#47924#49884#44036
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'HY'#49688#54217#49440'M'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 590
        Top = 56
        Width = 152
        Height = 19
        Caption = #45817#50900#44540#47924#44032#45733#49884#44036
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'HY'#49688#54217#49440'M'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 50
        Top = 224
        Width = 223
        Height = 19
        Caption = #51092#50668#44540#47924#44032#45733#49884#44036'('#51068#54217#44512')'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'HY'#49688#54217#49440'M'
        Font.Style = []
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 50
        Top = 96
        Width = 121
        Height = 28
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 324
        Top = 96
        Width = 121
        Height = 28
        TabOrder = 1
      end
      object Edit3: TEdit
        Left = 590
        Top = 96
        Width = 121
        Height = 28
        TabOrder = 2
      end
      object Edit4: TEdit
        Left = 50
        Top = 264
        Width = 121
        Height = 28
        TabOrder = 3
      end
    end
    object tsWorkHistory: TTabSheet
      Caption = #44540#47924#51060#47141
      ImageIndex = 1
    end
    object tsEtc: TTabSheet
      Caption = #44592#53440
      ImageIndex = 2
    end
  end
end
