object frmClass: TfrmClass
  Left = 0
  Top = 0
  Caption = #48152' '#44288#47532
  ClientHeight = 552
  ClientWidth = 877
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object InformPnl: TPanel
    Left = 519
    Top = 0
    Width = 358
    Height = 366
    Align = alRight
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 8
      Top = 0
      Width = 129
      Height = 175
      Caption = #49324#51652
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Image1: TImage
        Left = 2
        Top = 18
        Width = 125
        Height = 155
        Align = alClient
        ExplicitWidth = 119
      end
    end
    object GroupBox2: TGroupBox
      Left = 5
      Top = 181
      Width = 340
      Height = 179
      Caption = #51064#51201#49324#54637
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label3: TLabel
        Left = 8
        Top = 147
        Width = 22
        Height = 16
        Caption = #51452#49548
      end
      object Label13: TLabel
        Left = 179
        Top = 109
        Width = 44
        Height = 16
        Caption = #51116#51649#50668#48512
      end
      object Label11: TLabel
        Left = 7
        Top = 122
        Width = 44
        Height = 16
        Caption = #53748#49324#51068#51088
      end
      object Label8: TLabel
        Left = 7
        Top = 97
        Width = 44
        Height = 16
        Caption = #46321#47197#51068#51088
      end
      object Label2: TLabel
        Left = 179
        Top = 68
        Width = 33
        Height = 16
        Caption = #49688#50629#48152
      end
      object Label10: TLabel
        Left = 9
        Top = 68
        Width = 22
        Height = 16
        Caption = #54617#44368
      end
      object Label9: TLabel
        Left = 180
        Top = 43
        Width = 22
        Height = 16
        Caption = #49457#48324
      end
      object Label4: TLabel
        Left = 8
        Top = 43
        Width = 44
        Height = 16
        Caption = #49373#45380#50900#51068
      end
      object lblStudentCode: TLabel
        Left = 180
        Top = 18
        Width = 55
        Height = 16
        Caption = #49440#49373#45784#48264#54840
      end
      object Label1: TLabel
        Left = 9
        Top = 19
        Width = 22
        Height = 16
        Caption = #51060#47492
      end
      object DBStudent_Address: TDBEdit
        Left = 57
        Top = 146
        Width = 280
        Height = 24
        DataField = 'STUDENT_ADDRESS'
        DataSource = UDM.dsStudent_List
        TabOrder = 0
      end
      object DBStudent_Status: TDBEdit
        Left = 228
        Top = 106
        Width = 34
        Height = 24
        DataField = 'STUDENT_STATUS'
        DataSource = UDM.dsStudent_List
        TabOrder = 1
      end
      object DBStudent_Discharge_Date: TDBEdit
        Left = 57
        Top = 119
        Width = 88
        Height = 24
        DataField = 'STUDENT_DISCHARGE_DATE'
        DataSource = UDM.dsStudent_List
        TabOrder = 2
      end
      object DBStudent_Admission_Date: TDBEdit
        Left = 57
        Top = 94
        Width = 88
        Height = 24
        DataField = 'STUDENT_ADMISSION_DATE'
        DataSource = UDM.dsStudent_List
        TabOrder = 3
      end
      object DBStudent_Class: TDBEdit
        Left = 242
        Top = 65
        Width = 87
        Height = 24
        TabOrder = 4
      end
      object DBStudent_School: TDBEdit
        Left = 57
        Top = 65
        Width = 113
        Height = 24
        DataField = 'STUDENT_SCHOOL'
        DataSource = UDM.dsStudent_List
        TabOrder = 5
      end
      object DBStudent_Sex: TDBEdit
        Left = 241
        Top = 40
        Width = 27
        Height = 24
        DataField = 'STUDENT_SEX'
        DataSource = UDM.dsStudent_List
        TabOrder = 6
      end
      object DBStudent_Birth: TDBEdit
        Left = 57
        Top = 40
        Width = 88
        Height = 24
        DataField = 'STUDENT_BIRTH'
        DataSource = UDM.dsStudent_List
        TabOrder = 7
      end
      object DBStudent_Code: TDBEdit
        Left = 241
        Top = 10
        Width = 27
        Height = 24
        DataField = 'STUDENT_CODE'
        DataSource = UDM.dsStudent_List
        TabOrder = 8
      end
      object DBStudentName: TDBEdit
        Left = 58
        Top = 13
        Width = 63
        Height = 24
        DataField = 'STUDENT_NAME'
        DataSource = UDM.dsStudent_List
        TabOrder = 9
      end
    end
    object GroupBox4: TGroupBox
      Left = 143
      Top = 0
      Width = 202
      Height = 175
      Caption = #47700#47784
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object DBStudent_Memo: TDBMemo
        Left = 2
        Top = 18
        Width = 198
        Height = 155
        Align = alClient
        DataField = 'STUDENT_MEMO'
        DataSource = UDM.dsStudent_List
        TabOrder = 0
      end
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 366
    Width = 877
    Height = 186
    ActivePage = TabSheet1
    Align = alBottom
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = #49457#51201
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 869
        Height = 158
        Align = alClient
        DataSource = UDM.dsQryScore
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'STUDENT_NAME'
            Title.Caption = #51060#47492
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EXAM_NAME'
            Title.Caption = #49884#54744
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SCOR_KOREAN'
            Title.Caption = #44397#50612
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #52636#49437
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 861
      ExplicitHeight = 0
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 870
        Height = 158
        Align = alClient
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object TabSheet3: TTabSheet
      Caption = #54617#49845#51652#46020
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 861
      ExplicitHeight = 0
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 870
        Height = 158
        Align = alClient
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 519
    Height = 366
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 1
      Top = 27
      Width = 517
      Height = 338
      Align = alBottom
      DataSource = UDM.dsStudent_List
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object DBComboBox1: TDBComboBox
      Left = 4
      Top = 0
      Width = 125
      Height = 21
      DataField = 'STUDENT_SCHOOL'
      DataSource = UDM.dsStudent_List
      TabOrder = 1
    end
    object DBComboBox2: TDBComboBox
      Left = 135
      Top = 0
      Width = 102
      Height = 21
      DataField = 'STUDENT_GRADE'
      DataSource = UDM.dsStudent_List
      TabOrder = 2
    end
  end
end
