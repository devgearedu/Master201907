object frmChart: TfrmChart
  Left = 0
  Top = 0
  Caption = 'frmChart'
  ClientHeight = 461
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 584
    Height = 461
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1000
    ExplicitHeight = 361
    object pnlHeader: TPanel
      Left = 1
      Top = 1
      Width = 582
      Height = 41
      Align = alTop
      TabOrder = 0
      ExplicitTop = -5
      object Label1: TLabel
        Left = 16
        Top = 14
        Width = 72
        Height = 13
        Caption = #54872#51088' '#45236#50669' '#53685#44228
      end
    end
    object pnlChart: TPanel
      Left = 1
      Top = 42
      Width = 582
      Height = 377
      Align = alClient
      TabOrder = 1
      ExplicitTop = 43
      ExplicitWidth = 982
      ExplicitHeight = 318
      object DBChart: TDBChart
        Left = 1
        Top = 1
        Width = 580
        Height = 375
        Title.Text.Strings = (
          'TDBChart')
        Align = alClient
        Color = clWhite
        TabOrder = 0
        ExplicitLeft = 2
        ExplicitTop = 2
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
      end
    end
    object pnlFooter: TPanel
      Left = 1
      Top = 419
      Width = 582
      Height = 41
      Align = alBottom
      TabOrder = 2
      ExplicitLeft = 200
      ExplicitTop = 208
      ExplicitWidth = 185
      object Button1: TButton
        Left = 278
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 0
      end
    end
  end
end
