object frmFindBook: TfrmFindBook
  Left = 0
  Top = 0
  Caption = #46020#49436' '#44160#49353
  ClientHeight = 434
  ClientWidth = 773
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object grdList: TDBGrid
    Left = 0
    Top = 41
    Width = 773
    Height = 352
    Align = alClient
    DataSource = dsFindBook
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyUp = grdListKeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'BOOK_TITLE'
        Title.Caption = #51228#47785
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BOOK_AUTHOR'
        Title.Caption = #51200#51088
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BOOK_PRICE'
        Title.Caption = #44032#44201
        Width = 75
        Visible = True
      end>
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 393
    Width = 773
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 232
    ExplicitTop = 152
    ExplicitWidth = 185
    DesignSize = (
      773
      41)
    object btnSelect: TButton
      Left = 588
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #49440#53469
      ModalResult = 1
      TabOrder = 0
      OnClick = btnSelectClick
      ExplicitLeft = 448
    end
    object btnClose: TButton
      Left = 676
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = #45803#44592
      ModalResult = 2
      TabOrder = 1
      ExplicitLeft = 536
    end
  end
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 773
    Height = 41
    Align = alTop
    TabOrder = 2
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
    object chkSearchTitle: TCheckBox
      Left = 208
      Top = 13
      Width = 81
      Height = 17
      Caption = #51228#47785
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object chkSearchAuthor: TCheckBox
      Left = 280
      Top = 13
      Width = 81
      Height = 17
      Caption = #51200#51088
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
  end
  object dsFindBook: TDataSource
    DataSet = dmDataAccess.qryFindBook
    Left = 312
    Top = 152
  end
end
