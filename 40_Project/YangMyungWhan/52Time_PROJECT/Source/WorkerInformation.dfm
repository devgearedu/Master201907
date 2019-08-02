object frmWorkerInformation: TfrmWorkerInformation
  Left = 0
  Top = 0
  Caption = 'frmWorkerInformation'
  ClientHeight = 644
  ClientWidth = 876
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    876
    644)
  PixelsPerInch = 96
  TextHeight = 13
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 876
    Height = 40
    Align = alTop
    TabOrder = 0
    DesignSize = (
      876
      40)
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 80
      Height = 19
      Caption = #49324#50896#44288#47532
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'HY'#49688#54217#49440'M'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnWorkerSave: TButton
      Left = 675
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #51200#51109
      TabOrder = 0
      OnClick = btnWorkerSaveClick
    end
    object btncancel: TButton
      Left = 756
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #52712#49548
      TabOrder = 1
      OnClick = btncancelClick
    end
    object btnWorkerLoad: TButton
      Left = 594
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #52628#44032
      TabOrder = 2
      OnClick = btnWorkerLoadClick
    end
    object Button1: TButton
      Left = 399
      Top = 9
      Width = 75
      Height = 25
      Caption = 'DLL'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object pnlShowInformation: TPanel
    Left = 0
    Top = 40
    Width = 876
    Height = 585
    Align = alClient
    TabOrder = 1
    DesignSize = (
      876
      585)
    object lbl: TLabel
      Left = 411
      Top = 40
      Width = 42
      Height = 21
      Anchors = [akTop, akRight]
      Caption = #51060#47492
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'HY'#49688#54217#49440'M'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 411
      Top = 98
      Width = 42
      Height = 21
      Anchors = [akTop, akRight]
      Caption = #49324#48264
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'HY'#49688#54217#49440'M'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 411
      Top = 158
      Width = 42
      Height = 21
      Anchors = [akTop, akRight]
      Caption = #48512#49436
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'HY'#49688#54217#49440'M'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 411
      Top = 218
      Width = 63
      Height = 21
      Anchors = [akTop, akRight]
      Caption = #50672#46973#52376
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'HY'#49688#54217#49440'M'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 411
      Top = 271
      Width = 42
      Height = 21
      Anchors = [akTop, akRight]
      Caption = #44160#49353
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'HY'#49688#54217#49440'M'
      Font.Style = []
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 117
      Top = 22
      Width = 193
      Height = 224
      TabOrder = 0
      object imgWorkerInformation: TImage
        Left = 2
        Top = 15
        Width = 189
        Height = 207
        Align = alClient
        Stretch = True
        ExplicitLeft = 3
        ExplicitTop = 31
        ExplicitHeight = 173
      end
    end
    object edtName: TDBEdit
      Left = 525
      Top = 35
      Width = 155
      Height = 33
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      DataField = 'USERS_NAME'
      DataSource = dmDataAccess.dsInformationDept
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
    end
    object edtCode: TDBEdit
      Left = 525
      Top = 95
      Width = 155
      Height = 33
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      DataField = 'USERS_CODE'
      DataSource = dmDataAccess.dsInformationDept
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
    end
    object edtNum: TDBEdit
      Left = 525
      Top = 215
      Width = 155
      Height = 33
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      DataField = 'USERS_NUM'
      DataSource = dmDataAccess.dsInformationDept
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
    end
    object btnClear: TButton
      Left = 128
      Top = 269
      Width = 75
      Height = 25
      Caption = #52488#44592#54868
      TabOrder = 4
      OnClick = btnClearClick
    end
    object btnImageLoad: TButton
      Left = 222
      Top = 269
      Width = 75
      Height = 25
      Caption = #48520#47084#50724#44592
      TabOrder = 5
      OnClick = btnImageLoadClick
    end
    object btnStartWork: TButton
      Left = 740
      Top = 35
      Width = 92
      Height = 86
      Anchors = [akTop, akRight]
      Caption = #52636#44540
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -37
      Font.Name = 'HY'#49688#54217#49440'B'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = btnStartWorkClick
    end
    object btnFinishWork: TButton
      Left = 740
      Top = 156
      Width = 92
      Height = 86
      Anchors = [akTop, akRight]
      Caption = #53748#44540
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -37
      Font.Name = 'HY'#49688#54217#49440'B'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = btnFinishWorkClick
    end
    object cbDept: TDBLookupComboBox
      Left = 525
      Top = 156
      Width = 155
      Height = 32
      Anchors = [akTop, akRight]
      DataField = 'DEPT_SEQ'
      DataSource = dmDataAccess.dsInformationDept
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'DEPT_SEQ'
      ListField = 'DEPT_DEPT'
      ListSource = dmDataAccess.dsDept
      ParentFont = False
      TabOrder = 8
    end
    object btnAutoDelete: TButton
      Left = 740
      Top = 267
      Width = 91
      Height = 27
      Anchors = [akTop, akRight]
      Caption = #49325'    '#51228
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'HY'#49688#54217#49440'M'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = btnAutoDeleteClick
    end
    object edtSearch: TEdit
      Left = 525
      Top = 271
      Width = 155
      Height = 21
      TabOrder = 10
      OnKeyUp = edtSearchKeyUp
    end
  end
  object grdInformation: TDBGrid
    Left = 0
    Top = 384
    Width = 453
    Height = 241
    Anchors = [akLeft, akRight, akBottom]
    DataSource = dsLoad
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'USERS_CODE'
        Title.Alignment = taCenter
        Title.Caption = #49324#48264
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = []
        Visible = True
      end
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
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERS_NUM'
        Title.Alignment = taCenter
        Title.Caption = #50672#46973#52376
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = []
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPT_DEPT'
        Title.Alignment = taCenter
        Title.Caption = #48512#49436
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = []
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERS_MA_OX'
        Title.Alignment = taCenter
        Title.Caption = #44288#47532#51088#44428#54620
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = []
        Width = 80
        Visible = True
      end>
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 625
    Width = 876
    Height = 19
    Panels = <>
  end
  object DBGrid1: TDBGrid
    Left = 453
    Top = 384
    Width = 422
    Height = 241
    Anchors = [akLeft, akRight, akBottom]
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
        Width = 50
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
  object dlgLoadImage: TOpenDialog
    Left = 200
    Top = 176
  end
  object imgWorkBtn: TImageList
    Left = 16
    Top = 256
  end
  object dsLoad: TDataSource
    DataSet = dmDataAccess.qryInformationDept
    OnDataChange = dsLoadDataChange
    Left = 32
    Top = 312
  end
end
