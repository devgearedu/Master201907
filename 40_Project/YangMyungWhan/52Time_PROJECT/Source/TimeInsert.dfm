object frmTimeInsert: TfrmTimeInsert
  Left = 0
  Top = 0
  Width = 886
  Height = 640
  AutoScroll = True
  Caption = 'frmTimeInsert'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    870
    601)
  PixelsPerInch = 96
  TextHeight = 13
  object pcTimeInsert: TPageControl
    Left = 0
    Top = 40
    Width = 870
    Height = 561
    ActivePage = tbsWorkTime
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object tbsWorkTime: TTabSheet
      Caption = #52636'/'#53748#44540#49884#44036' '#51077#47141
      DesignSize = (
        862
        526)
      object Label2: TLabel
        Left = 432
        Top = 48
        Width = 76
        Height = 19
        Anchors = [akTop, akRight]
        Caption = #52636#44540#49884#44036
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'HY'#49688#54217#49440'M'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 432
        Top = 136
        Width = 76
        Height = 19
        Anchors = [akTop, akRight]
        Caption = #53748#44540#49884#44036
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'HY'#49688#54217#49440'M'
        Font.Style = []
        ParentFont = False
      end
      object tpWorkStart: TTimePicker
        Left = 592
        Top = 40
        Anchors = [akTop, akRight]
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'HY'#44053'M'
        Font.Style = []
        HighlightColor = clWindow
        StyleElements = [seFont, seClient]
        TabOrder = 0
        Time = 0.464004629629629600
        TimeFormat = 'h:mm'
      end
      object tpWorkFinish: TTimePicker
        Left = 592
        Top = 129
        Anchors = [akTop, akRight]
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'HY'#44053'M'
        Font.Style = []
        HighlightColor = clWindow
        StyleElements = [seFont, seClient]
        TabOrder = 1
        Time = 0.464131944444444400
        TimeFormat = ' h:mm'
      end
      object btnWorkTimeInsert: TButton
        Left = 432
        Top = 218
        Width = 193
        Height = 41
        Anchors = [akTop, akRight]
        Caption = #46321'      '#47197
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'HY'#49688#54217#49440'B'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btnWorkTimeInsertClick
      end
      object cpWorkDate: TCalendarPicker
        Left = 88
        Top = 40
        Width = 233
        Height = 32
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -13
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -20
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        Date = 43672.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        IsEmpty = False
        MaxYear = 2200
        MinYear = 1900
        ParentFont = False
        TabOrder = 3
        TextHint = 'select a date'
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 316
        Width = 862
        Height = 210
        Align = alBottom
        DataSource = dmDataAccess.dsAutoTimeInsert
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'USERS_NAME'
            Title.Alignment = taCenter
            Title.Caption = #51060#47492
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Arial Narrow'
            Title.Font.Style = []
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'WTIT_DATE'
            Title.Alignment = taCenter
            Title.Caption = #45216#51676
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Arial Narrow'
            Title.Font.Style = []
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'WTIT_STWORKTIME'
            Title.Alignment = taCenter
            Title.Caption = #52636#44540#49884#44036
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Arial Narrow'
            Title.Font.Style = []
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'WTIT_FIWORKTIME'
            Title.Alignment = taCenter
            Title.Caption = #53748#44540#49884#44036
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Arial Narrow'
            Title.Font.Style = []
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'WTIT_REALWORKTIME'
            Title.Alignment = taCenter
            Title.Caption = #49892#44540#47924#49884#44036
            Width = 80
            Visible = True
          end>
      end
    end
    object tbsWorkExcept: TTabSheet
      Caption = #51228#50808#49884#44036' '#51077#47141
      ImageIndex = 1
      DesignSize = (
        862
        526)
      object Label4: TLabel
        Left = 432
        Top = 48
        Width = 76
        Height = 19
        Anchors = [akTop, akRight]
        Caption = #49884#51089#49884#44036
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'HY'#49688#54217#49440'M'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 432
        Top = 136
        Width = 76
        Height = 19
        Anchors = [akTop, akRight]
        Caption = #51333#47308#49884#44036
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'HY'#49688#54217#49440'M'
        Font.Style = []
        ParentFont = False
      end
      object tpExceptStart: TTimePicker
        Left = 592
        Top = 40
        Anchors = [akTop, akRight]
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'HY'#44053'M'
        Font.Style = []
        HighlightColor = clWindow
        StyleElements = [seFont, seClient]
        TabOrder = 0
        Time = 0.464004629629629600
        TimeFormat = 'h:mm'
      end
      object tpExceptFinish: TTimePicker
        Left = 592
        Top = 129
        Anchors = [akTop, akRight]
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'HY'#44053'M'
        Font.Style = []
        HighlightColor = clWindow
        StyleElements = [seFont, seClient]
        TabOrder = 1
        Time = 0.464004629629629600
        TimeFormat = 'h:mm'
      end
      object btnExceptTimeInsert: TButton
        Left = 432
        Top = 218
        Width = 193
        Height = 41
        Anchors = [akTop, akRight]
        Caption = #46321'      '#47197
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'HY'#49688#54217#49440'B'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btnExceptTimeInsertClick
      end
      object cpExceptTimeDate: TCalendarPicker
        Left = 88
        Top = 40
        Width = 233
        Height = 32
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -13
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -20
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        Date = 43672.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        IsEmpty = False
        MaxYear = 2200
        MinYear = 1900
        ParentFont = False
        TabOrder = 3
        TextHint = 'select a date'
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 320
        Width = 862
        Height = 206
        Align = alBottom
        DataSource = dmDataAccess.dsExceptTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 4
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Arial Narrow'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'WTIT_DATE'
            Title.Alignment = taCenter
            Title.Caption = #45216#51676
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ET_EXCEPTTIME'
            Title.Alignment = taCenter
            Title.Caption = #51228#50808#49884#44036
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ET_STEXCEPTTIME'
            Title.Alignment = taCenter
            Title.Caption = #51228#50808#49884#51089#49884#44036
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ET_FIEXCEPTTIME'
            Title.Alignment = taCenter
            Title.Caption = #51228#50808#51333#47308#49884#44036
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 80
            Visible = True
          end>
      end
    end
  end
  object btnTimeDelete: TButton
    Left = 652
    Top = 289
    Width = 94
    Height = 41
    Anchors = [akTop, akRight]
    Caption = #49325' '#51228
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'HY'#49688#54217#49440'M'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnTimeDeleteClick
  end
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 870
    Height = 40
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 80
      Height = 19
      Caption = #49884#44036#51077#47141
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'HY'#49688#54217#49440'M'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
