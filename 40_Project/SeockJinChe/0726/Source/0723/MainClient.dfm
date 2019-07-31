object frmMain: TfrmMain
  Left = 0
  Top = 0
  Align = alClient
  Caption = #47700#51064
  ClientHeight = 687
  ClientWidth = 1264
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainPanel: TPanel
    Left = 0
    Top = 25
    Width = 1264
    Height = 113
    Align = alTop
    TabOrder = 0
    object ButtonReservation: TButton
      Left = 16
      Top = 6
      Width = 100
      Height = 100
      Caption = #50696#50557' '#48143' '#51217#49688
      TabOrder = 0
    end
    object ButtonPatientList: TButton
      Left = 122
      Top = 6
      Width = 100
      Height = 100
      Caption = #54872#51088#47785#47197
      TabOrder = 1
    end
    object ButtonDiagnosis: TButton
      Left = 228
      Top = 6
      Width = 100
      Height = 100
      Caption = #51652#47308#45236#50669
      TabOrder = 2
    end
    object ButtonMessage: TButton
      Left = 334
      Top = 6
      Width = 100
      Height = 100
      Caption = #47928#51088#51204#49569
      TabOrder = 3
    end
    object ButtonMedicine: TButton
      Left = 440
      Top = 6
      Width = 100
      Height = 100
      Caption = #50557#54408#44288#47532
      TabOrder = 4
    end
  end
  object RservPanel: TPanel
    Left = 0
    Top = 138
    Width = 1264
    Height = 399
    Align = alClient
    TabOrder = 1
    object Sub_Panel1: TPanel
      Left = 1
      Top = 1
      Width = 1262
      Height = 41
      Align = alTop
      TabOrder = 0
      object Edit1: TEdit
        Left = 152
        Top = -2
        Width = 39
        Height = 21
        TabOrder = 0
      end
      object ButtonInsert: TButton
        Left = 592
        Top = 8
        Width = 75
        Height = 25
        Caption = #50696#50557' '#52628#44032
        TabOrder = 1
      end
      object ButtonLookup: TButton
        Left = 511
        Top = 10
        Width = 75
        Height = 25
        Caption = #51312#54924
        TabOrder = 2
      end
      object ButtonDelete: TButton
        Left = 673
        Top = 10
        Width = 75
        Height = 25
        Caption = #50696#50557' '#49325#51228
        TabOrder = 3
      end
      object Button1: TButton
        Left = 754
        Top = 11
        Width = 75
        Height = 25
        Caption = #54872#51088' '#51077#51109
        TabOrder = 4
      end
      object DBComboBox1: TDBComboBox
        Left = 1
        Top = 1
        Width = 145
        Height = 21
        Align = alLeft
        DataSource = frmDataModule.ReservSource
        TabOrder = 5
      end
    end
    object Sub_Panel2: TPanel
      Left = 1
      Top = 42
      Width = 1262
      Height = 356
      Align = alClient
      TabOrder = 1
      object RSVDBGrid: TDBGrid
        Left = 1
        Top = 1
        Width = 1260
        Height = 354
        Align = alClient
        DataSource = frmDataModule.ReservSource
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object DecisionPanel: TPanel
    Left = 0
    Top = 537
    Width = 1264
    Height = 150
    Align = alBottom
    TabOrder = 2
    object AcceptLabel: TLabel
      Left = 1
      Top = 1
      Width = 1262
      Height = 13
      Align = alTop
      Caption = #49688#45225#47785#47197
      ExplicitWidth = 44
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 14
      Width = 1077
      Height = 135
      Align = alClient
      DataSource = frmDataModule.DecisionSource
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object DecisionPanel_Sub1: TPanel
      Left = 1078
      Top = 14
      Width = 185
      Height = 135
      Align = alRight
      TabOrder = 1
      object ButtonAccept: TButton
        Left = 94
        Top = 6
        Width = 75
        Height = 25
        Caption = #44208#51228#54616#44592
        TabOrder = 0
      end
      object ButtonOutput: TButton
        Left = 6
        Top = 6
        Width = 75
        Height = 25
        Caption = #52636#47141#54616#44592
        TabOrder = 1
      end
      object ButtonRefresh: TButton
        Left = 6
        Top = 48
        Width = 75
        Height = 25
        Caption = #47785#47197' '#44081#49888
        TabOrder = 2
      end
    end
  end
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 1264
    Height = 25
    UseSystemFont = False
    ActionManager = ActionManager1
    Caption = 'ActionMainMenuBar1'
    Color = clMenuBar
    ColorMap.DisabledFontColor = 7171437
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedFont = clBlack
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Spacing = 0
  end
  object ActionList1: TActionList
    Left = 656
    Top = 53
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = FileExit1
                ImageIndex = 43
              end>
            Caption = '&File'
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Left = 584
    Top = 56
    StyleName = 'Platform Default'
    object FileExit1: TFileExit
      Category = 'File'
      Caption = 'E&xit'
      Hint = 'Exit|Quits the application'
      ImageIndex = 43
    end
  end
end
