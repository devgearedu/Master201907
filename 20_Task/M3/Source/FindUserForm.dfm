object frmFindUser: TfrmFindUser
  Left = 0
  Top = 0
  Caption = #54924#50896#44160#49353
  ClientHeight = 291
  ClientWidth = 633
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
    Width = 633
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 232
    ExplicitTop = 152
    ExplicitWidth = 185
    object Label1: TLabel
      Left = 24
      Top = 12
      Width = 22
      Height = 16
      Caption = #44160#49353
    end
    object edtSearch: TEdit
      Left = 61
      Top = 9
      Width = 121
      Height = 24
      TabOrder = 0
      OnKeyUp = edtSearchKeyUp
    end
    object chkSearchName: TCheckBox
      Left = 208
      Top = 13
      Width = 81
      Height = 17
      Caption = #51060#47492
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 250
    Width = 633
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 232
    ExplicitTop = 152
    ExplicitWidth = 185
    DesignSize = (
      633
      41)
    object btnSelect: TButton
      Left = 448
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #49440#53469
      ModalResult = 1
      TabOrder = 0
      OnClick = btnSelectClick
    end
    object btnClose: TButton
      Left = 536
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = #45803#44592
      ModalResult = 2
      TabOrder = 1
      OnClick = btnCloseClick
    end
  end
  object grdList: TDBGrid
    Left = 0
    Top = 41
    Width = 633
    Height = 209
    Align = alClient
    DataSource = dsFindUser
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyUp = grdListKeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'USER_NAME'
        Title.Caption = #51060#47492
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USER_PHONE'
        Title.Caption = #50672#46973#52376
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USER_BIRTH'
        Title.Caption = #49373#45380#50900#51068
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USER_SEX_STR'
        Title.Caption = #49457#48324
        Width = 50
        Visible = True
      end>
  end
  object dsFindUser: TDataSource
    DataSet = dmDataAccess.qryFindUser
    Left = 312
    Top = 152
  end
end
