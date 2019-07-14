object DeptForm: TDeptForm
  Left = 0
  Top = 0
  Caption = #48512#49436#44288#47532
  ClientHeight = 384
  ClientWidth = 557
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 24
    Width = 530
    Height = 33
    DataSource = dm.DeptSource
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 72
    Width = 530
    Height = 121
    DataSource = dm.DeptSource
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 199
    Width = 541
    Height = 169
    ActivePage = TabSheet3
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = #49345#49464#51312#54924
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 533
        Height = 141
        Align = alClient
        DataSource = dm.InsaquerySource
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
      Caption = #51064#50896#49688
      ImageIndex = 1
      object StringGrid1: TStringGrid
        Left = 0
        Top = 0
        Width = 533
        Height = 141
        Align = alClient
        ColCount = 3
        DrawingStyle = gdsClassic
        TabOrder = 0
        OnDrawCell = StringGrid1DrawCell
      end
    end
    object TabSheet3: TTabSheet
      Caption = #46321#47197'('#51200#51109#54532#47196#49884#51200')'
      ImageIndex = 2
      ExplicitLeft = 0
      object Label1: TLabel
        Left = 88
        Top = 24
        Width = 48
        Height = 13
        Caption = #48512#49436#53076#46300
      end
      object Label2: TLabel
        Left = 88
        Top = 64
        Width = 36
        Height = 13
        Caption = #48512#49436#47749
      end
      object Label3: TLabel
        Left = 88
        Top = 104
        Width = 33
        Height = 13
        Caption = #54016'   '#47749
      end
      object Edit1: TEdit
        Left = 160
        Top = 24
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 160
        Top = 57
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object Edit3: TEdit
        Left = 160
        Top = 94
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object Button1: TButton
        Left = 320
        Top = 24
        Width = 129
        Height = 33
        Caption = #46321#47197
        TabOrder = 3
        OnClick = Button1Click
      end
    end
  end
  object Tot_Query: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'select count(id) as total'
      'from insa'
      'where dept_code like :code')
    Left = 476
    Top = 247
    ParamData = <
      item
        Name = 'CODE'
        ParamType = ptInput
      end>
  end
  object FDStoredProc1: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'INSERT_DEPT'
    Left = 476
    Top = 311
    ParamData = <
      item
        Position = 1
        Name = 'PCODE'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Position = 2
        Name = 'PDEPT'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 3
        Name = 'PSECTION'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
  end
end
