object frmNewMember: TfrmNewMember
  Left = 0
  Top = 0
  Caption = 'frmNewMember'
  ClientHeight = 404
  ClientWidth = 596
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 596
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 304
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 80
      Height = 19
      Caption = #54924#50896#44032#51077
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'HY'#49688#54217#49440'M'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 596
    Height = 363
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 304
    ExplicitHeight = 160
    object Label2: TLabel
      Left = 272
      Top = 42
      Width = 42
      Height = 21
      Caption = #51060#47492
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'HY'#49688#54217#49440'M'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 272
      Top = 85
      Width = 42
      Height = 21
      Caption = #49324#48264
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'HY'#49688#54217#49440'M'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 272
      Top = 126
      Width = 84
      Height = 21
      Caption = #48708#48128#48264#54840
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'HY'#49688#54217#49440'M'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 272
      Top = 167
      Width = 42
      Height = 21
      Caption = #48512#49436
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'HY'#49688#54217#49440'M'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 272
      Top = 209
      Width = 63
      Height = 21
      Caption = #50672#46973#52376
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'HY'#49688#54217#49440'M'
      Font.Style = []
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 40
      Top = 30
      Width = 185
      Height = 225
      TabOrder = 0
      object imgNewMember: TImage
        Left = 2
        Top = 15
        Width = 181
        Height = 208
        Align = alClient
        Stretch = True
        ExplicitLeft = 40
        ExplicitTop = 64
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
    end
    object btnClear: TButton
      Left = 49
      Top = 269
      Width = 75
      Height = 25
      Caption = #52488#44592#54868
      TabOrder = 1
      OnClick = btnClearClick
    end
    object btnImageLoad: TButton
      Left = 143
      Top = 269
      Width = 75
      Height = 25
      Caption = #48520#47084#50724#44592
      TabOrder = 2
      OnClick = btnImageLoadClick
    end
    object btnNew: TButton
      Left = 272
      Top = 262
      Width = 265
      Height = 32
      Caption = #54924#50896#44032#51077
      TabOrder = 3
      OnClick = btnNewClick
    end
    object cbMa: TCheckBox
      Left = 416
      Top = 239
      Width = 97
      Height = 17
      Caption = #44288#47532#51088' '#44428#54620
      TabOrder = 4
    end
    object cbDept: TDBLookupComboBox
      Left = 416
      Top = 167
      Width = 121
      Height = 21
      DataField = 'DEPT_SEQ'
      DataSource = dmDataAccess.dsInformationDept
      KeyField = 'DEPT_SEQ'
      ListField = 'DEPT_DEPT'
      ListSource = dmDataAccess.dsDept
      TabOrder = 5
    end
    object edtNumber: TDBEdit
      Left = 416
      Top = 209
      Width = 121
      Height = 21
      DataField = 'USERS_NUM'
      DataSource = dmDataAccess.dsInformationDept
      TabOrder = 6
    end
    object DBEdit1: TDBEdit
      Left = 416
      Top = 130
      Width = 121
      Height = 21
      DataField = 'USERS_PASS'
      DataSource = dmDataAccess.dsInformationDept
      PasswordChar = '*'
      TabOrder = 7
    end
    object DBEdit2: TDBEdit
      Left = 416
      Top = 89
      Width = 121
      Height = 21
      DataField = 'USERS_CODE'
      DataSource = dmDataAccess.dsInformationDept
      TabOrder = 8
    end
    object DBEdit3: TDBEdit
      Left = 416
      Top = 42
      Width = 121
      Height = 21
      DataField = 'USERS_NAME'
      DataSource = dmDataAccess.dsInformationDept
      TabOrder = 9
    end
  end
  object dlgNewMember: TOpenDialog
    Left = 152
    Top = 176
  end
  object btnNewMember: TImageList
    Left = 72
    Top = 176
  end
end
