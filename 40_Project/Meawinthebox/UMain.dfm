object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 691
  ClientWidth = 968
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Ribbon1: TRibbon
    Left = 0
    Top = 0
    Width = 968
    Height = 143
    Caption = #54617#50896' '#44288#47532' '#54532#47196#44536#47016
    Tabs = <
      item
        Caption = #54617#49373#44288#47532
        Page = RibbonPage1
      end
      item
        Caption = #48152#48324#44288#47532
        Page = RibbonPage2
      end
      item
        Caption = #44053#51340#44288#47532
        Page = RibbonPage3
      end
      item
        Caption = #44277#51648
        Page = RibbonPage4
      end>
    DesignSize = (
      968
      143)
    StyleName = 'Ribbon - Luna'
    object RibbonPage2: TRibbonPage
      Left = 0
      Top = 50
      Width = 967
      Height = 93
      Caption = #48152#48324#44288#47532
      Index = 1
    end
    object RibbonPage3: TRibbonPage
      Left = 0
      Top = 50
      Width = 967
      Height = 93
      Caption = #44053#51340#44288#47532
      Index = 2
    end
    object RibbonPage4: TRibbonPage
      Left = 0
      Top = 50
      Width = 967
      Height = 93
      Caption = #44277#51648
      Index = 3
    end
    object RibbonPage1: TRibbonPage
      Left = 0
      Top = 50
      Width = 967
      Height = 93
      Caption = #54617#49373#44288#47532
      Index = 0
      object RibbonGroup1: TRibbonGroup
        Left = 4
        Top = 3
        Width = 100
        Height = 86
        Caption = #52628#44032
        GroupIndex = 0
      end
      object RibbonGroup2: TRibbonGroup
        Left = 106
        Top = 3
        Width = 99
        Height = 86
        Caption = #49688#51221
        GroupIndex = 1
      end
      object RibbonGroup3: TRibbonGroup
        Left = 207
        Top = 3
        Width = 100
        Height = 86
        Caption = #49325#51228
        GroupIndex = 2
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 143
    Width = 307
    Height = 548
    Align = alLeft
    Caption = 'Panel2'
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 304
      Top = 49
      Width = 2
      Height = 498
      Align = alRight
      ExplicitLeft = 302
      ExplicitTop = 65
      ExplicitHeight = 458
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 49
      Width = 303
      Height = 498
      Align = alClient
      DataSource = DataSource1
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
          FieldName = 'STUDENT_CODE'
          Title.Caption = #54617#49373#48264#54840
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STUDENT_NAME'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STUDENT_BIRTH'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STUDENT_PHONE'
          Visible = True
        end>
    end
    object SearchPnl: TPanel
      Left = 1
      Top = 1
      Width = 305
      Height = 48
      Align = alTop
      TabOrder = 1
      ExplicitWidth = 301
      object Label16: TLabel
        Left = 13
        Top = 5
        Width = 22
        Height = 13
        Caption = #44160#49353
      end
      object Edit1: TEdit
        Left = 56
        Top = 1
        Width = 240
        Height = 21
        TabOrder = 0
        Text = 'Edit1'
      end
      object CheckBox1: TCheckBox
        Left = 1
        Top = 25
        Width = 97
        Height = 17
        Caption = #51060#47492
        TabOrder = 1
      end
      object CheckBox2: TCheckBox
        Left = 104
        Top = 25
        Width = 97
        Height = 17
        Caption = #54617#44368
        TabOrder = 2
      end
      object CheckBox3: TCheckBox
        Left = 202
        Top = 25
        Width = 97
        Height = 17
        Caption = #48152
        TabOrder = 3
      end
    end
  end
  object InformPnl: TPanel
    Left = 307
    Top = 143
    Width = 661
    Height = 548
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 319
    ExplicitWidth = 665
    object PageControl1: TPageControl
      Left = 1
      Top = 345
      Width = 659
      Height = 202
      ActivePage = TabSheet3
      Align = alBottom
      TabOrder = 0
      ExplicitWidth = 663
      object TabSheet1: TTabSheet
        Caption = #49457#51201
        ExplicitWidth = 655
        ExplicitHeight = 167
        object DBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 651
          Height = 174
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
      object TabSheet2: TTabSheet
        Caption = #52636#49437
        ImageIndex = 1
        ExplicitWidth = 655
        ExplicitHeight = 167
        object DBGrid3: TDBGrid
          Left = 0
          Top = 0
          Width = 651
          Height = 174
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
        ExplicitWidth = 655
        ExplicitHeight = 167
        object DBGrid4: TDBGrid
          Left = 0
          Top = 0
          Width = 651
          Height = 174
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
    object GroupBox1: TGroupBox
      Left = 3
      Top = 2
      Width = 158
      Height = 193
      Caption = #49324#51652
      TabOrder = 1
      object DBImage1: TDBImage
        Left = 2
        Top = 15
        Width = 154
        Height = 176
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 6
        ExplicitTop = -82
        ExplicitWidth = 147
        ExplicitHeight = 187
      end
    end
    object GroupBox2: TGroupBox
      Left = 167
      Top = 0
      Width = 490
      Height = 195
      Caption = #51064#51201#49324#54637
      TabOrder = 2
      object Label3: TLabel
        Left = 7
        Top = 168
        Width = 22
        Height = 13
        Caption = #51452#49548
      end
      object Label13: TLabel
        Left = 286
        Top = 105
        Width = 44
        Height = 13
        Caption = #51116#50896#50668#48512
      end
      object Label11: TLabel
        Left = 7
        Top = 132
        Width = 44
        Height = 13
        Caption = #53748#50896#51068#51088
      end
      object Label8: TLabel
        Left = 7
        Top = 105
        Width = 44
        Height = 13
        Caption = #51077#54617#51068#51088
      end
      object Label2: TLabel
        Left = 261
        Top = 72
        Width = 11
        Height = 13
        Caption = #48152
      end
      object Label12: TLabel
        Left = 136
        Top = 72
        Width = 22
        Height = 13
        Caption = #54617#45380
      end
      object Label10: TLabel
        Left = 7
        Top = 78
        Width = 22
        Height = 13
        Caption = #54617#44368
      end
      object Label9: TLabel
        Left = 176
        Top = 45
        Width = 22
        Height = 13
        Caption = #49457#48324
      end
      object Label4: TLabel
        Left = 7
        Top = 49
        Width = 44
        Height = 13
        Caption = #49373#45380#50900#51068
      end
      object lblStudentCode: TLabel
        Left = 176
        Top = 23
        Width = 44
        Height = 13
        Caption = #54617#49373#53076#46300
      end
      object Label1: TLabel
        Left = 7
        Top = 18
        Width = 22
        Height = 13
        Caption = #51060#47492
      end
      object DBEdit11: TDBEdit
        Left = 57
        Top = 165
        Width = 216
        Height = 21
        TabOrder = 0
      end
      object DBEdit14: TDBEdit
        Left = 344
        Top = 102
        Width = 41
        Height = 21
        TabOrder = 1
      end
      object DBEdit13: TDBEdit
        Left = 57
        Top = 129
        Width = 216
        Height = 21
        TabOrder = 2
      end
      object DBEdit12: TDBEdit
        Left = 57
        Top = 102
        Width = 216
        Height = 21
        TabOrder = 3
      end
      object DBEdit10: TDBEdit
        Left = 287
        Top = 69
        Width = 115
        Height = 21
        TabOrder = 4
      end
      object DBEdit4: TDBEdit
        Left = 176
        Top = 69
        Width = 63
        Height = 21
        TabOrder = 5
      end
      object DBEdit3: TDBEdit
        Left = 57
        Top = 69
        Width = 63
        Height = 21
        TabOrder = 6
      end
      object DBEdit9: TDBEdit
        Left = 226
        Top = 42
        Width = 39
        Height = 21
        TabOrder = 7
      end
      object DBEdit2: TDBEdit
        Left = 57
        Top = 42
        Width = 113
        Height = 21
        DataField = 'STUDENT_BIRTH'
        DataSource = DataSource1
        TabOrder = 8
      end
      object DBEdit8: TDBEdit
        Left = 226
        Top = 15
        Width = 87
        Height = 21
        DataField = 'STUDENT_CODE'
        DataSource = DataSource1
        TabOrder = 9
      end
      object DBEdit1: TDBEdit
        Left = 57
        Top = 15
        Width = 113
        Height = 21
        DataField = 'STUDENT_NAME'
        DataSource = DataSource1
        TabOrder = 10
      end
    end
    object GroupBox3: TGroupBox
      Left = 6
      Top = 201
      Width = 215
      Height = 145
      Caption = #50672#46973#52376
      TabOrder = 3
      object Label7: TLabel
        Left = 11
        Top = 15
        Width = 41
        Height = 13
        Caption = ' '#54617#49373' HP'
      end
      object Label5: TLabel
        Left = 14
        Top = 53
        Width = 49
        Height = 13
        Caption = #48372#54840#51088' HP'
      end
      object Label6: TLabel
        Left = 17
        Top = 95
        Width = 40
        Height = 18
        Caption = #48372#54840#51088
      end
      object DBEdit5: TDBEdit
        Left = 13
        Top = 30
        Width = 153
        Height = 17
        DataField = 'STUDENT_PHONE'
        DataSource = DataSource1
        TabOrder = 0
      end
      object DBEdit6: TDBEdit
        Left = 13
        Top = 72
        Width = 154
        Height = 17
        TabOrder = 1
      end
      object DBEdit7: TDBEdit
        Left = 14
        Top = 111
        Width = 62
        Height = 17
        TabOrder = 2
      end
    end
    object GroupBox4: TGroupBox
      Left = 224
      Top = 201
      Width = 433
      Height = 145
      Caption = #47700#47784
      TabOrder = 4
      object Label14: TLabel
        Left = 3
        Top = 12
        Width = 47
        Height = 13
        Caption = #54617#49373' '#47700#47784
      end
      object Label15: TLabel
        Left = 265
        Top = 12
        Width = 58
        Height = 13
        Caption = #54617#48512#47784' '#47700#47784
      end
      object DBMemo1: TDBMemo
        Left = 3
        Top = 31
        Width = 256
        Height = 107
        TabOrder = 0
      end
      object DBMemo2: TDBMemo
        Left = 265
        Top = 31
        Width = 162
        Height = 107
        TabOrder = 1
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 688
    Top = 96
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\ACADEMY\ACADEMY.IB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 256
    Top = 96
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 368
    Top = 96
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 504
    Top = 96
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'STUDENT_CODE'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'INFORM'
    TableName = 'INFORM'
    Left = 608
    Top = 96
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 368
    Top = 32
  end
end
