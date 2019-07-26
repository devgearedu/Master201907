object frmStatisics: TfrmStatisics
  Left = 0
  Top = 0
  Caption = 'frmStatisics'
  ClientHeight = 453
  ClientWidth = 790
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
    Width = 790
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 216
    ExplicitTop = 144
    ExplicitWidth = 185
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
    Width = 790
    Height = 412
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
        Left = 56
        Top = 56
        Width = 40
        Height = 20
        Caption = 'Label2'
      end
      object Label3: TLabel
        Left = 168
        Top = 56
        Width = 40
        Height = 20
        Caption = 'Label2'
      end
      object Label4: TLabel
        Left = 296
        Top = 56
        Width = 40
        Height = 20
        Caption = 'Label2'
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
