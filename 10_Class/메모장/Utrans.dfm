object TransForm: TTransForm
  Left = 0
  Top = 0
  Caption = #53944#47004#51117#49496#52376#47532
  ClientHeight = 350
  ClientWidth = 559
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  DesignSize = (
    559
    350)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 16
    Top = 16
    Width = 529
    Height = 145
    Anchors = [akLeft, akTop, akRight]
    DataSource = dm.DeptSource
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 15
    Top = 205
    Width = 536
    Height = 137
    Anchors = [akLeft, akTop, akRight]
    DataSource = dm.InsaSource
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 16
    Top = 167
    Width = 75
    Height = 25
    Caption = #49325#51228
    TabOrder = 2
    OnClick = Button1Click
  end
  object FDQuery1: TFDQuery
    Connection = dm.FDConnection1
    Left = 416
    Top = 88
  end
end
