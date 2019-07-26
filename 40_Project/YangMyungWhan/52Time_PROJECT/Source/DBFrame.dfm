object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'frmDb'
  ClientHeight = 601
  ClientWidth = 1335
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    1335
    601)
  PixelsPerInch = 96
  TextHeight = 13
  object grdInformation: TDBGrid
    Left = 0
    Top = 0
    Width = 465
    Height = 241
    Anchors = [akLeft, akRight, akBottom]
    DataSource = dmDataAccess.dsInformationDept
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 0
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
  object DBGrid1: TDBGrid
    Left = 461
    Top = 0
    Width = 404
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
    TabOrder = 1
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
      end>
  end
  object DBGrid2: TDBGrid
    Left = 864
    Top = 0
    Width = 463
    Height = 241
    DataSource = dmDataAccess.dsTimeInsert
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
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
        FieldName = 'WTIT_STEXCEPTTIME'
        Title.Alignment = taCenter
        Title.Caption = #51228#50808#49884#51089#49884#44036
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'WTIT_FIEXCEPTTIME'
        Title.Alignment = taCenter
        Title.Caption = #51228#50808#51333#47308#49884#44036
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 0
    Top = 240
    Width = 465
    Height = 217
    DataSource = dmDataAccess.dsWeekday
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'WD_SEQ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'WD_YM'
        Title.Caption = #45380'-'#50900
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'WD_COUNT'
        Title.Caption = #54217#51068#49688
        Visible = True
      end>
  end
  object DBGrid4: TDBGrid
    Left = 461
    Top = 240
    Width = 866
    Height = 217
    Anchors = [akLeft, akRight, akBottom]
    DataSource = dmDataAccess.dsInformationDept
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
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
        FieldName = 'USERS_SEQ'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERS_CODE'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERS_NAME'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERS_PASS'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERS_NUM'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERS_IMG'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERS_MA'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPT_SEQ'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPT_DEPT'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERS_MA_OX'
        Width = 70
        Visible = True
      end>
  end
end
