object frmEnrollment: TfrmEnrollment
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 621
  ClientWidth = 864
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object pnlSearch: TPanel
    Left = 0
    Top = 0
    Width = 864
    Height = 289
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 56
    ExplicitWidth = 914
    object lblText1: TLabel
      Left = 300
      Top = 65
      Width = 124
      Height = 30
      AutoSize = False
      Caption = #50640' '#49688#44053#51473#51064' '#44053#51340
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object lblText2: TLabel
      Left = 185
      Top = 65
      Width = 32
      Height = 30
      AutoSize = False
      Caption = #45784#51060
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object rdbtnCodeClient: TRadioButton
      Left = 15
      Top = 18
      Width = 100
      Height = 25
      Caption = #54924#50896#48264#54840
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object rdbtnName_Client: TRadioButton
      Left = 124
      Top = 18
      Width = 70
      Height = 25
      Caption = #51060#47492
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = True
    end
    object sbClient: TSearchBox
      Left = 215
      Top = 18
      Width = 150
      Height = 24
      TabOrder = 2
      OnInvokeSearch = sbClientInvokeSearch
    end
    object btnEnrollAgain: TButton
      Left = 646
      Top = 63
      Width = 75
      Height = 30
      Caption = #51116#46321#47197
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnEnrollAgainClick
    end
    object btnWithdraw: TButton
      Left = 727
      Top = 63
      Width = 75
      Height = 30
      Caption = #54644#51648
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnWithdrawClick
    end
    object dbgrdCurrentEnroll: TDBGrid
      Left = 1
      Top = 104
      Width = 862
      Height = 184
      Align = alBottom
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object edtClientName_: TEdit
      Left = 15
      Top = 65
      Width = 85
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object edtClientCode: TEdit
      Left = 100
      Top = 65
      Width = 85
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object edtYAndMCurrent: TEdit
      Left = 225
      Top = 65
      Width = 75
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
  end
  object pnlEnroll: TPanel
    Left = 0
    Top = 289
    Width = 864
    Height = 332
    Align = alClient
    TabOrder = 1
    ExplicitTop = 294
    ExplicitWidth = 914
    ExplicitHeight = 327
    object lblNewEnroll: TLabel
      Left = 15
      Top = 6
      Width = 100
      Height = 30
      ParentCustomHint = False
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = #49888#44508#46321#47197
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Transparent = True
    end
    object lblYAndMNew: TLabel
      Left = 160
      Top = 41
      Width = 34
      Height = 30
      AutoSize = False
      Caption = #44592#44036#51032
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object lblName_New: TLabel
      Left = 340
      Top = 41
      Width = 40
      Height = 30
      AutoSize = False
      Caption = #49688#50629
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object lblWeekdaysNew: TLabel
      Left = 530
      Top = 41
      Width = 35
      Height = 30
      AutoSize = False
      Caption = #50836#51068
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object dbgrdNewEnroll: TDBGrid
      Left = 1
      Top = 80
      Width = 862
      Height = 251
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object cmbbxYAndMNew: TComboBox
      Left = 15
      Top = 41
      Width = 145
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnSelect = cmbbxYAndMNewSelect
    end
    object edtName_New: TEdit
      Left = 220
      Top = 41
      Width = 120
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnChange = edtName_NewChange
    end
    object edtWeekdaysNew: TEdit
      Left = 410
      Top = 41
      Width = 120
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnChange = edtWeekdaysNewChange
    end
    object btnNewEnroll: TButton
      Left = 727
      Top = 41
      Width = 75
      Height = 30
      Caption = #46321#47197
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnNewEnrollClick
    end
  end
  object cdsCourses: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCourses'
    RemoteServer = frmMain.DSpcnGym
    Left = 464
    Top = 40
    object cdsCoursesCODE: TIntegerField
      FieldName = 'CODE'
      Origin = 'CODE'
    end
    object cdsCoursesCOACH_CODE: TIntegerField
      FieldName = 'COACH_CODE'
      Origin = 'COACH_CODE'
    end
    object cdsCoursesNAME_: TWideStringField
      FieldName = 'NAME_'
      Origin = 'NAME_'
      Size = 24
    end
    object cdsCoursesWEEKDAYS: TWideStringField
      FieldName = 'WEEKDAYS'
      Origin = 'WEEKDAYS'
      Size = 12
    end
    object cdsCoursesYEAR_AND_MONTH: TStringField
      FieldName = 'YEAR_AND_MONTH'
      Origin = 'YEAR_AND_MONTH'
      FixedChar = True
      Size = 6
    end
    object cdsCoursesBEGIN_TIME: TTimeField
      FieldName = 'BEGIN_TIME'
      Origin = 'BEGIN_TIME'
    end
    object cdsCoursesLOCATION_: TWideStringField
      FieldName = 'LOCATION_'
      Origin = 'LOCATION_'
      Size = 24
    end
    object cdsCoursesMINIMUM_ENROLL: TIntegerField
      FieldName = 'MINIMUM_ENROLL'
      Origin = 'MINIMUM_ENROLL'
    end
    object cdsCoursesCURRENT_ENROLL: TIntegerField
      FieldName = 'CURRENT_ENROLL'
      Origin = 'CURRENT_ENROLL'
    end
    object cdsCoursesMAXIMUM_ENROLL: TIntegerField
      FieldName = 'MAXIMUM_ENROLL'
      Origin = 'MAXIMUM_ENROLL'
    end
    object cdsCoursesPRICE: TIntegerField
      FieldName = 'PRICE'
      Origin = 'PRICE'
    end
    object cdsCoursesEND_TIME: TTimeField
      FieldName = 'END_TIME'
      Origin = 'END_TIME'
    end
    object cdsCoursesIS_CANCELED: TStringField
      FieldName = 'IS_CANCELED'
      Origin = 'IS_CANCELED'
      FixedChar = True
      Size = 1
    end
  end
  object dspCourses: TDataSetProvider
    DataSet = cdsCourses
    Left = 544
    Top = 40
  end
  object dsCourses: TDataSource
    DataSet = cdsCourses
    Left = 600
    Top = 16
  end
end
