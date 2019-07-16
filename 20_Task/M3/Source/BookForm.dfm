object frmBook: TfrmBook
  Left = 0
  Top = 0
  Caption = #46020#49436#44288#47532' '#54868#47732
  ClientHeight = 569
  ClientWidth = 926
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
    Width = 926
    Height = 41
    Align = alTop
    TabOrder = 0
    DesignSize = (
      926
      41)
    object lblCaption: TLabel
      Left = 24
      Top = 9
      Width = 44
      Height = 16
      Caption = #46020#49436#44288#47532
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnAdd: TButton
      Left = 753
      Top = 6
      Width = 75
      Height = 26
      Anchors = [akTop, akRight]
      Caption = #52628#44032
      TabOrder = 0
      OnClick = btnAddClick
    end
    object btnClose: TButton
      Left = 834
      Top = 6
      Width = 75
      Height = 26
      Anchors = [akTop, akRight]
      Caption = #45803#44592
      TabOrder = 1
      OnClick = btnCloseClick
    end
  end
  object pnlContent: TPanel
    Left = 0
    Top = 41
    Width = 926
    Height = 528
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 302
    ExplicitHeight = 152
    object Splitter1: TSplitter
      Left = 597
      Top = 1
      Width = 5
      Height = 526
      Align = alRight
      ExplicitLeft = 547
      ExplicitTop = 0
      ExplicitHeight = 570
    end
    object pnlMain: TPanel
      Left = 1
      Top = 1
      Width = 596
      Height = 526
      Align = alClient
      TabOrder = 0
      object pnlMainHeader: TPanel
        Left = 1
        Top = 1
        Width = 594
        Height = 52
        Align = alTop
        TabOrder = 0
        object lblSearch: TLabel
          Left = 22
          Top = 16
          Width = 22
          Height = 16
          Caption = #44160#49353
        end
        object edtSearch: TEdit
          Left = 64
          Top = 16
          Width = 121
          Height = 24
          TabOrder = 0
          OnKeyUp = edtSearchKeyUp
        end
        object chkSearchTitle: TCheckBox
          Left = 224
          Top = 16
          Width = 97
          Height = 26
          Caption = #51228#47785
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
        object chkSearchAuthor: TCheckBox
          Left = 311
          Top = 16
          Width = 97
          Height = 26
          Caption = #51200#51088
          Checked = True
          State = cbChecked
          TabOrder = 2
        end
      end
      object grdBook: TDBGrid
        Left = 1
        Top = 53
        Width = 594
        Height = 472
        Align = alClient
        DataSource = dsBook
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
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
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BOOK_RENT'
            Title.Caption = #45824#50668#50668#48512
            Width = 50
            Visible = True
          end>
      end
    end
    object pnlInput: TPanel
      Left = 602
      Top = 1
      Width = 323
      Height = 526
      Align = alRight
      TabOrder = 1
      ExplicitLeft = -22
      ExplicitHeight = 150
      DesignSize = (
        323
        526)
      object Label2: TLabel
        Left = 24
        Top = 89
        Width = 27
        Height = 16
        Caption = 'ISBN'
      end
      object Label3: TLabel
        Left = 24
        Top = 142
        Width = 22
        Height = 16
        Caption = #51200#51088
      end
      object Label4: TLabel
        Left = 24
        Top = 190
        Width = 22
        Height = 16
        Caption = #44032#44201
      end
      object Label5: TLabel
        Left = 24
        Top = 242
        Width = 22
        Height = 16
        Caption = #47553#53356
      end
      object Label6: TLabel
        Left = 24
        Top = 306
        Width = 22
        Height = 16
        Caption = #49444#47749
      end
      object Label1: TLabel
        Left = 24
        Top = 37
        Width = 22
        Height = 16
        Anchors = [akLeft, akTop, akRight]
        Caption = #51228#47785
      end
      object lblLink: TLabel
        Left = 96
        Top = 242
        Width = 44
        Height = 16
        Anchors = [akTop, akRight]
        Caption = #48148#47196#44032#44592
        Color = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        OnClick = lblLinkClick
      end
      object edtTitle: TDBEdit
        Left = 24
        Top = 59
        Width = 273
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'BOOK_TITLE'
        DataSource = dsBook
        TabOrder = 0
      end
      object edtISBN: TDBEdit
        Left = 24
        Top = 111
        Width = 114
        Height = 24
        DataField = 'BOOK_ISBN'
        DataSource = dsBook
        TabOrder = 1
        OnExit = edtISBNExit
      end
      object edtAuthor: TDBEdit
        Left = 24
        Top = 160
        Width = 114
        Height = 24
        DataField = 'BOOK_AUTHOR'
        DataSource = dsBook
        TabOrder = 2
      end
      object editPrice: TDBEdit
        Left = 24
        Top = 212
        Width = 114
        Height = 24
        DataField = 'BOOK_PRICE'
        DataSource = dsBook
        TabOrder = 3
      end
      object edtLink: TDBEdit
        Left = 24
        Top = 260
        Width = 114
        Height = 24
        DataField = 'BOOK_LINK'
        DataSource = dsBook
        TabOrder = 4
      end
      object GroupBox1: TGroupBox
        Left = 160
        Top = 101
        Width = 137
        Height = 153
        Anchors = [akTop, akRight]
        TabOrder = 5
        object imgBook: TImage
          Left = 2
          Top = 18
          Width = 133
          Height = 133
          Align = alClient
          Proportional = True
          Stretch = True
          ExplicitLeft = 16
          ExplicitTop = 24
          ExplicitWidth = 105
          ExplicitHeight = 105
        end
      end
      object btnImageClear: TButton
        Left = 161
        Top = 260
        Width = 64
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #52488#44592#54868
        TabOrder = 6
        OnClick = btnImageClearClick
      end
      object DBMemo1: TDBMemo
        Left = 24
        Top = 328
        Width = 281
        Height = 143
        Anchors = [akTop, akRight, akBottom]
        DataField = 'BOOK_DESCRIPTION'
        DataSource = dsBook
        ScrollBars = ssVertical
        TabOrder = 7
      end
      object Button3: TButton
        Left = 24
        Top = 484
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = #49325#51228
        TabOrder = 8
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 232
        Top = 479
        Width = 75
        Height = 32
        Anchors = [akRight, akBottom]
        Caption = #52712#49548
        TabOrder = 9
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 151
        Top = 479
        Width = 75
        Height = 32
        Anchors = [akRight, akBottom]
        Caption = #51200#51109
        TabOrder = 10
        OnClick = Button5Click
      end
      object btnImageLoad: TButton
        Left = 231
        Top = 260
        Width = 66
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #48520#47084#50724#44592
        TabOrder = 11
        OnClick = btnImageLoadClick
      end
    end
  end
  object dsBook: TDataSource
    DataSet = dmDataAccess.qryBook
    OnStateChange = dsBookStateChange
    OnDataChange = dsBookDataChange
    Left = 232
    Top = 272
  end
  object dlgLoadImage: TOpenDialog
    Left = 824
    Top = 216
  end
end
