object Admin: TAdmin
  Left = 0
  Top = 0
  Caption = 'Admin'
  ClientHeight = 433
  ClientWidth = 648
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Ribbon1: TRibbon
    Left = 0
    Top = 0
    Width = 648
    Height = 143
    Caption = #44288#47532
    Tabs = <
      item
        Caption = #44288#47532
        Page = RibbonPage1
      end>
    DesignSize = (
      648
      143)
    StyleName = 'Ribbon - Luna'
    object RibbonPage1: TRibbonPage
      Left = 0
      Top = 50
      Width = 647
      Height = 93
      Caption = #44288#47532
      Index = 0
      object RibbonGroup1: TRibbonGroup
        Left = 4
        Top = 3
        Width = 100
        Height = 86
        Caption = #51089#54408#44288#47532
        GroupIndex = 0
      end
      object RibbonGroup2: TRibbonGroup
        Left = 106
        Top = 3
        Width = 100
        Height = 86
        Caption = #50976#51200#44288#47532
        GroupIndex = 1
      end
    end
  end
  object Pgc_Writer: TPageControl
    Left = 0
    Top = 143
    Width = 648
    Height = 290
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    ExplicitLeft = -1
    ExplicitTop = 145
    object TabSheet1: TTabSheet
      Caption = #51312' '#54924
      ExplicitLeft = 132
      object lbl_SearchList: TLabel
        Left = 9
        Top = 6
        Width = 44
        Height = 13
        Caption = #44160#49353#47785#47197
      end
      object lbl_Search: TLabel
        Left = 9
        Top = 40
        Width = 40
        Height = 13
        Caption = #44160'      '#49353
      end
      object Cbx_Search: TComboBox
        Left = 59
        Top = 3
        Width = 121
        Height = 21
        TabOrder = 0
        OnChange = Cbx_SearchChange
        Items.Strings = (
          'WRITER_ID'
          'WRITER_GOOD'
          'UP_LOAD')
      end
      object Edt_Search: TEdit
        Left = 59
        Top = 37
        Width = 121
        Height = 21
        TabOrder = 1
        OnChange = Edt_SearchChange
      end
      object Tbc_Writer: TTabControl
        Left = 0
        Top = 69
        Width = 640
        Height = 193
        Align = alBottom
        TabOrder = 2
        Tabs.Strings = (
          #51204#52404
          '~10'
          '~20'
          '~50'
          '~100'
          '~200'
          '~400'
          '~800'
          '~1600')
        TabIndex = 0
        OnChange = Tbc_WriterChange
        object DBG_Writer: TDBGrid
          Left = 4
          Top = 24
          Width = 632
          Height = 165
          Align = alClient
          DataSource = DM.Writer_Source
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
    object TabSheet2: TTabSheet
      Caption = #49345#49464#51221#48372
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 56
      object lbl_ID: TLabel
        Left = 25
        Top = 27
        Width = 32
        Height = 13
        Caption = 'I       D'
      end
      object lbl_NickName: TLabel
        Left = 25
        Top = 67
        Width = 33
        Height = 13
        Caption = #45769#45348#51076
      end
      object lbl_UpLoad: TLabel
        Left = 25
        Top = 107
        Width = 44
        Height = 13
        Caption = #50732#47536#54943#49688
      end
      object lbl_Good: TLabel
        Left = 25
        Top = 147
        Width = 33
        Height = 13
        Caption = #52628#52380#49688
      end
      object lbl_NotGood: TLabel
        Left = 25
        Top = 187
        Width = 33
        Height = 13
        Caption = #49888#44256#49688
      end
      object lbl_WriterPoint: TLabel
        Left = 25
        Top = 227
        Width = 55
        Height = 13
        Caption = #51089#44032#54252#51064#53944
      end
      object DbEdt_ID: TDBEdit
        Left = 89
        Top = 24
        Width = 121
        Height = 21
        ReadOnly = True
        TabOrder = 0
      end
      object DbEdt_NickName: TDBEdit
        Left = 89
        Top = 64
        Width = 121
        Height = 21
        ReadOnly = True
        TabOrder = 1
      end
      object DbEdt_UpLoad: TDBEdit
        Left = 89
        Top = 104
        Width = 121
        Height = 21
        ReadOnly = True
        TabOrder = 2
      end
      object DbEdt_Good: TDBEdit
        Left = 89
        Top = 144
        Width = 121
        Height = 21
        ReadOnly = True
        TabOrder = 3
      end
      object DbEdt_NotGood: TDBEdit
        Left = 89
        Top = 184
        Width = 121
        Height = 21
        ReadOnly = True
        TabOrder = 4
      end
      object DbEdt_Point: TDBEdit
        Left = 89
        Top = 224
        Width = 121
        Height = 21
        ReadOnly = True
        TabOrder = 5
      end
      object Btn_NovelMove: TButton
        Left = 320
        Top = 198
        Width = 185
        Height = 51
        Caption = #51089#54408#51060#46041
        TabOrder = 6
      end
      object DbRdoG_jeje: TDBRadioGroup
        Left = 320
        Top = 24
        Width = 185
        Height = 105
        Caption = #51228#51228
        Items.Strings = (
          'Write'
          'DoNot_Write')
        TabOrder = 7
      end
      object Btn_ReWrite: TButton
        Left = 320
        Top = 137
        Width = 185
        Height = 51
        Caption = #49688' '#51221
        TabOrder = 8
      end
    end
  end
end
