object frmCondition: TfrmCondition
  Left = 0
  Top = 0
  Caption = #54632#49688' '#48143' '#51312#44148#47928
  ClientHeight = 335
  ClientWidth = 375
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 58
    Height = 13
    Caption = #50500#51060#46356' '#47785#47197
  end
  object edtId: TEdit
    Left = 24
    Top = 240
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = #50500#51060#46356
  end
  object edtPwd: TEdit
    Left = 24
    Top = 274
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = #48708#48128#48264#54840
  end
  object btnLogin: TButton
    Left = 151
    Top = 272
    Width = 75
    Height = 25
    Caption = #47196#44536#51064
    TabOrder = 2
    OnClick = btnLoginClick
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 43
    Width = 320
    Height = 120
    DataSource = DataSource1
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
        FieldName = 'USER_NAME'
        Title.Caption = #51060#47492
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USER_ID'
        Title.Caption = #50500#51060#46356
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USER_PWD'
        Title.Caption = #48708#48128#48264#54840
        Width = 100
        Visible = True
      end>
  end
  object btnCheckLoadDB: TButton
    Left = 24
    Top = 169
    Width = 241
    Height = 25
    Caption = #45936#51060#53552#44032' '#47196#46300' '#46104#50632#45208#50836'?'
    TabOrder = 4
    OnClick = btnCheckLoadDBClick
  end
  object DataSource1: TDataSource
    Left = 288
    Top = 24
  end
end
