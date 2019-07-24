object frmUser: TfrmUser
  Left = 0
  Top = 0
  Caption = #54924#50896#44288#47532
  ClientHeight = 546
  ClientWidth = 891
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 891
    Height = 41
    Align = alTop
    TabOrder = 0
    DesignSize = (
      891
      41)
    object lblCaption: TLabel
      Left = 16
      Top = 12
      Width = 44
      Height = 16
      Caption = #54924#50896#44288#47532
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnAdd: TButton
      Left = 705
      Top = 10
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #49888#44508' '#46321#47197
      TabOrder = 0
      OnClick = btnAddClick
    end
    object btnClose: TButton
      Left = 793
      Top = 10
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #45803#44592
      TabOrder = 1
    end
  end
  object pnlContent: TPanel
    Left = 0
    Top = 41
    Width = 891
    Height = 505
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 302
    ExplicitHeight = 152
    object pnlGrid: TPanel
      Left = 1
      Top = 1
      Width = 536
      Height = 503
      Align = alClient
      TabOrder = 0
      object pnlGridHeader: TPanel
        Left = 1
        Top = 1
        Width = 534
        Height = 41
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 21
          Top = 11
          Width = 22
          Height = 16
          Caption = #44160#49353
        end
        object edtSearch: TEdit
          Left = 64
          Top = 8
          Width = 121
          Height = 24
          TabOrder = 0
          OnKeyUp = edtSearchKeyUp
        end
        object chkSearchName: TCheckBox
          Left = 208
          Top = 13
          Width = 97
          Height = 17
          Caption = #51060#47492
          TabOrder = 1
        end
        object chkSearchPhone: TCheckBox
          Left = 304
          Top = 13
          Width = 97
          Height = 17
          Caption = #51204#54868#48264#54840
          TabOrder = 2
        end
      end
      object grdList: TDBGrid
        Left = 1
        Top = 42
        Width = 534
        Height = 460
        Align = alClient
        DataSource = dsUser
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'USER_NAME'
            Title.Caption = #51060#47492
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USER_BIRTH'
            Title.Caption = #49373#45380#50900#51068
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USER_SEX_STR'
            Title.Caption = #49457#48324
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USER_PHONE'
            Title.Caption = #51204#54868#48264#54840
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USER_MAIL'
            Title.Caption = #47700#51068#51452#49548
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USER_REG_DATE'
            Title.Caption = #46321#47197#51068#49884
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USER_OUT'
            Title.Caption = #53448#53748#50668#48512
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USER_OUT_DATE'
            Title.Caption = #53448#53748#51068#49884
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USER_RENT_COUNT'
            Title.Caption = #45824#50668#44428#49688
            Visible = True
          end>
      end
    end
    object pnlInput: TPanel
      Left = 537
      Top = 1
      Width = 353
      Height = 503
      Align = alRight
      TabOrder = 1
      ExplicitLeft = -52
      ExplicitHeight = 150
      DesignSize = (
        353
        503)
      object Splitter1: TSplitter
        Left = 1
        Top = 1
        Width = 7
        Height = 501
        ExplicitLeft = -6
        ExplicitHeight = 467
      end
      object Label2: TLabel
        Left = 32
        Top = 12
        Width = 22
        Height = 16
        Anchors = [akLeft, akTop, akRight]
        Caption = #51060#47492
      end
      object Label3: TLabel
        Left = 32
        Top = 68
        Width = 44
        Height = 16
        Anchors = [akLeft, akTop, akRight]
        Caption = #49373#45380#50900#51068
      end
      object Label4: TLabel
        Left = 32
        Top = 195
        Width = 44
        Height = 16
        Anchors = [akLeft, akTop, akRight]
        Caption = #51204#54868#48264#54840
      end
      object Label5: TLabel
        Left = 32
        Top = 249
        Width = 44
        Height = 16
        Anchors = [akLeft, akTop, akRight]
        Caption = #47700#51068#51452#49548
      end
      object edtName: TDBEdit
        Left = 28
        Top = 34
        Width = 121
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'USER_NAME'
        DataSource = dsUser
        TabOrder = 0
        OnExit = edtNameExit
      end
      object dpBirth: TCalendarPicker
        Left = 28
        Top = 90
        Width = 121
        Height = 32
        Anchors = [akLeft, akTop, akRight]
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -17
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -25
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        OnCloseUp = dpBirthCloseUp
        ParentFont = False
        TabOrder = 1
        TextHint = 'select a date'
      end
      object grpSex: TDBRadioGroup
        Left = 28
        Top = 129
        Width = 120
        Height = 57
        Anchors = [akLeft, akTop, akRight]
        Caption = #49457#48324
        Columns = 2
        DataField = 'USER_SEX'
        DataSource = dsUser
        Items.Strings = (
          #45224
          #50668)
        TabOrder = 2
        Values.Strings = (
          'M'
          'F')
      end
      object edtPhone: TDBEdit
        Left = 28
        Top = 215
        Width = 121
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'USER_PHONE'
        DataSource = dsUser
        TabOrder = 3
      end
      object edtMail: TDBEdit
        Left = 28
        Top = 271
        Width = 157
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'USER_MAIL'
        DataSource = dsUser
        TabOrder = 4
      end
      object GroupBox1: TGroupBox
        Left = 168
        Top = 28
        Width = 161
        Height = 211
        Anchors = [akTop, akRight]
        TabOrder = 5
        object imgUser: TImage
          Left = 3
          Top = 3
          Width = 155
          Height = 205
          Proportional = True
          Stretch = True
        end
      end
      object btnClearImage: TButton
        Left = 176
        Top = 314
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #52488#44592#54868
        TabOrder = 6
        OnClick = btnClearImageClick
      end
      object btnLoadImage: TButton
        Left = 256
        Top = 314
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #48520#47084#50724#44592
        TabOrder = 7
        OnClick = btnLoadImageClick
      end
      object btnSave: TButton
        Left = 176
        Top = 347
        Width = 75
        Height = 25
        Caption = #51200#51109
        TabOrder = 8
        OnClick = btnSaveClick
      end
      object btnCancel: TButton
        Left = 256
        Top = 347
        Width = 75
        Height = 25
        Caption = #52712#49548
        TabOrder = 9
        OnClick = btnCancelClick
      end
      object btnDelete: TButton
        Left = 28
        Top = 347
        Width = 75
        Height = 25
        Caption = #54924#50896#53448#53748
        TabOrder = 10
        OnClick = btnDeleteClick
      end
    end
  end
  object dlgLoadImage: TOpenDialog
    Left = 752
    Top = 160
  end
  object dsUser: TDataSource
    DataSet = dmDataAccess.qryUser
    OnStateChange = dsUserStateChange
    OnDataChange = dsUserDataChange
    Left = 432
    Top = 264
  end
end
