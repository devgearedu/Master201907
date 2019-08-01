object frmAttendance: TfrmAttendance
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 657
  ClientWidth = 850
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
  object pnlScreen: TPanel
    Left = 0
    Top = 0
    Width = 850
    Height = 657
    Align = alClient
    TabOrder = 0
    object pcForAttend: TPageControl
      Left = 1
      Top = 1
      Width = 848
      Height = 655
      ActivePage = tshtAttendClient
      Align = alClient
      TabOrder = 0
      TabWidth = 250
      object tshtAttendClient: TTabSheet
        Caption = #54924#50896
        object pnlSearchClient: TPanel
          Left = 0
          Top = 0
          Width = 840
          Height = 289
          Align = alTop
          TabOrder = 0
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
          object dbgrdCurrentEnroll: TDBGrid
            Left = 1
            Top = 109
            Width = 838
            Height = 179
            Align = alBottom
            Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
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
            TabOrder = 1
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
            TabOrder = 2
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
            TabOrder = 3
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
            TabOrder = 4
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
            TabOrder = 5
            TabStop = True
          end
          object sbClient: TSearchBox
            Left = 215
            Top = 18
            Width = 150
            Height = 24
            TabOrder = 6
            OnInvokeSearch = sbClientInvokeSearch
          end
          object btnSelectEnrolledCourse: TButton
            Left = 740
            Top = 65
            Width = 75
            Height = 30
            Caption = #52636#49437#51312#54924
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -18
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnClick = btnSelectEnrolledCourseClick
          end
        end
        object pnlShowClient: TPanel
          Left = 0
          Top = 289
          Width = 840
          Height = 335
          Align = alClient
          TabOrder = 1
          object lblAttendanceStatus: TLabel
            Left = 15
            Top = 25
            Width = 100
            Height = 30
            ParentCustomHint = False
            AutoSize = False
            BiDiMode = bdLeftToRight
            Caption = #52636#49437#54788#54889
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
            Layout = tlCenter
          end
          object dbgrdAttendByClient: TDBGrid
            Left = 1
            Top = 64
            Width = 838
            Height = 270
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
          object btnAttend: TButton
            Left = 740
            Top = 25
            Width = 75
            Height = 30
            Caption = #52636#49437#52376#47532
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -18
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = btnAttendClick
          end
        end
      end
      object tshtAttendCoach: TTabSheet
        Caption = #44053#49324
        ImageIndex = 1
      end
      object tshtAttendCourse: TTabSheet
        Caption = #44053#51340
        ImageIndex = 2
        OnShow = tshtAttendCourseShow
        object dbgrdAttendByClass: TDBGrid
          Left = 0
          Top = 72
          Width = 840
          Height = 552
          Align = alBottom
          Anchors = [akLeft, akTop, akRight, akBottom]
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
        object cmbbxYearAndMonth: TComboBox
          Left = 5
          Top = 30
          Width = 145
          Height = 24
          TabOrder = 1
        end
        object cmbbxSports: TComboBox
          Left = 176
          Top = 30
          Width = 145
          Height = 24
          TabOrder = 2
        end
        object btnLookupToAttend: TButton
          Left = 521
          Top = 30
          Width = 75
          Height = 25
          Caption = #51312#54924
          TabOrder = 4
          OnClick = btnLookupToAttendClick
        end
        object cmbbxWeekdays: TComboBox
          Left = 352
          Top = 30
          Width = 145
          Height = 24
          TabOrder = 3
        end
        object dpDate_Of_Course: TDatePicker
          Left = 664
          Top = 30
          Date = 43676.000000000000000000
          DateFormat = 'yyyy/MM/dd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = []
          TabOrder = 5
        end
      end
    end
  end
end
