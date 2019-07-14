object UpdateForm: TUpdateForm
  Left = 0
  Top = 0
  Caption = 'UpdateForm'
  ClientHeight = 350
  ClientWidth = 561
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 16
    Top = 48
    Width = 537
    Height = 129
    DataSource = dm.DeptSource
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 8
    Width = 360
    Height = 34
    DataSource = dm.DeptSource
    TabOrder = 1
  end
  object CheckBox1: TCheckBox
    Left = 400
    Top = 16
    Width = 145
    Height = 26
    Caption = #52880#49772
    TabOrder = 2
    OnClick = CheckBox1Click
  end
  object Button1: TButton
    Left = 24
    Top = 183
    Width = 75
    Height = 25
    Caption = 'cancelupdates'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 105
    Top = 183
    Width = 75
    Height = 25
    Caption = 'revertrecord'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 186
    Top = 183
    Width = 75
    Height = 25
    Caption = 'applyupdates'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 267
    Top = 183
    Width = 75
    Height = 25
    Caption = 'save'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 348
    Top = 183
    Width = 75
    Height = 25
    Caption = 'load'
    TabOrder = 7
    OnClick = Button5Click
  end
  object DBGrid2: TDBGrid
    Left = 22
    Top = 222
    Width = 531
    Height = 120
    DataSource = DataSource1
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button6: TButton
    Left = 429
    Top = 183
    Width = 89
    Height = 25
    Caption = #49353#51228'('#51312#51064#53244#47532#49325#51228')'
    TabOrder = 9
    OnClick = Button6Click
  end
  object FDStanStorageXMLLink1: TFDStanStorageXMLLink
    Left = 472
    Top = 192
  end
  object FDQuery1: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = dm.FDConnection1
    UpdateObject = FDUpdateSQL1
    SQL.Strings = (
      'select * from dept, insa'
      'where code = dept_code')
    Left = 136
    Top = 232
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 192
    Top = 240
  end
  object FDUpdateSQL1: TFDUpdateSQL
    Connection = dm.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO DEPT'
      '(CODE, DEPT, SECTION)'
      'VALUES (:NEW_CODE, :NEW_DEPT, :NEW_SECTION)')
    ModifySQL.Strings = (
      'UPDATE DEPT'
      'SET CODE = :NEW_CODE, DEPT = :NEW_DEPT, SECTION = :NEW_SECTION'
      'WHERE CODE = :OLD_CODE')
    DeleteSQL.Strings = (
      'DELETE FROM DEPT'
      'WHERE CODE = :OLD_CODE')
    FetchRowSQL.Strings = (
      'SELECT CODE, DEPT, SECTION'
      'FROM DEPT'
      'WHERE CODE = :OLD_CODE')
    Left = 304
    Top = 248
  end
end
