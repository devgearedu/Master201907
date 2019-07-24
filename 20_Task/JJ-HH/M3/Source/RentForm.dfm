object frmRent: TfrmRent
  Left = 0
  Top = 0
  Caption = #46020#49436#45824#50668' '#54868#47732
  ClientHeight = 525
  ClientWidth = 919
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object pnlContent: TPanel
    Left = 0
    Top = 41
    Width = 919
    Height = 484
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 940
    ExplicitHeight = 644
    object Splitter1: TSplitter
      Left = 523
      Top = 1
      Width = 7
      Height = 482
      Align = alRight
      ExplicitLeft = 544
      ExplicitTop = -15
      ExplicitHeight = 642
    end
    object pnlGrid: TPanel
      Left = 1
      Top = 1
      Width = 522
      Height = 482
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 543
      ExplicitHeight = 642
      object pnlGridHeader: TPanel
        Left = 1
        Top = 1
        Width = 520
        Height = 56
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 541
        object Label1: TLabel
          Left = 21
          Top = 24
          Width = 22
          Height = 16
          Caption = #44160#49353
        end
        object edtSearch: TEdit
          Left = 64
          Top = 21
          Width = 121
          Height = 24
          TabOrder = 0
          OnKeyUp = edtSearchKeyUp
        end
        object chkSearchBook: TCheckBox
          Left = 208
          Top = 24
          Width = 97
          Height = 17
          Caption = #46020#49436' '#51228#47785
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
        object chkSearchUser: TCheckBox
          Left = 311
          Top = 24
          Width = 97
          Height = 17
          Caption = #54924#50896#47749
          Checked = True
          State = cbChecked
          TabOrder = 2
        end
      end
      object grdList: TDBGrid
        Left = 1
        Top = 57
        Width = 520
        Height = 424
        Align = alClient
        DataSource = dsRent
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
            Title.Caption = #46020#49436' '#51228#47785
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USER_NAME'
            Title.Caption = #54924#50896#47749
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RENT_DATE'
            Title.Caption = #45824#50668#51068#51088
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RENT_RETURN_DATE'
            Title.Caption = #48152#45224#50696#51221#51068
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RENT_RETURN'
            Title.Caption = #45824#50668#50668#48512
            Visible = True
          end>
      end
    end
    object pnlInput: TPanel
      Left = 530
      Top = 1
      Width = 388
      Height = 482
      Align = alRight
      TabOrder = 1
      ExplicitLeft = 551
      ExplicitHeight = 642
      DesignSize = (
        388
        482)
      object grpUser: TGroupBox
        Left = 6
        Top = 6
        Width = 363
        Height = 216
        Anchors = [akLeft, akTop, akRight]
        Caption = #54924#50896#51221#48372
        TabOrder = 0
        DesignSize = (
          363
          216)
        object Label2: TLabel
          Left = 192
          Top = 48
          Width = 22
          Height = 16
          Anchors = [akTop, akRight]
          Caption = #51060#47492
        end
        object Label3: TLabel
          Left = 192
          Top = 95
          Width = 44
          Height = 16
          Anchors = [akTop, akRight]
          Caption = #49373#45380#50900#51068
        end
        object Label4: TLabel
          Left = 192
          Top = 146
          Width = 33
          Height = 16
          Anchors = [akTop, akRight]
          Caption = #50672#46973#52376
        end
        object btnFindUser: TButton
          Left = 13
          Top = 21
          Width = 244
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          Caption = #54924#50896' '#44160#49353
          TabOrder = 0
          OnClick = btnFindUserClick
        end
        object GroupBox1: TGroupBox
          Left = 16
          Top = 55
          Width = 153
          Height = 152
          TabOrder = 1
          DesignSize = (
            153
            152)
          object imgUser: TImage
            Left = 3
            Top = 2
            Width = 147
            Height = 146
            Anchors = [akLeft, akTop, akRight, akBottom]
            Proportional = True
            Stretch = True
          end
        end
        object edtUserName: TDBEdit
          Left = 192
          Top = 66
          Width = 121
          Height = 24
          Anchors = [akTop, akRight]
          DataField = 'USER_NAME'
          DataSource = dsRentUser
          TabOrder = 2
        end
        object edtUserBirth: TDBEdit
          Left = 192
          Top = 115
          Width = 121
          Height = 24
          Anchors = [akTop, akRight]
          DataField = 'USER_BIRTH'
          DataSource = dsRentUser
          TabOrder = 3
        end
        object edtUserPhone: TDBEdit
          Left = 192
          Top = 165
          Width = 121
          Height = 24
          Anchors = [akTop, akRight]
          DataField = 'USER_PHONE'
          DataSource = dsRentUser
          TabOrder = 4
        end
      end
      object GroupBox2: TGroupBox
        Left = 6
        Top = 219
        Width = 363
        Height = 255
        Anchors = [akLeft, akTop, akRight]
        Caption = #46020#49436' '#51221#48372
        TabOrder = 1
        DesignSize = (
          363
          255)
        object Label5: TLabel
          Left = 200
          Top = 62
          Width = 22
          Height = 16
          Caption = #51228#47785
        end
        object Label6: TLabel
          Left = 200
          Top = 107
          Width = 22
          Height = 16
          Caption = #51200#51088
        end
        object Label7: TLabel
          Left = 200
          Top = 155
          Width = 22
          Height = 16
          Caption = #44032#44201
        end
        object GroupBox3: TGroupBox
          Left = 24
          Top = 65
          Width = 153
          Height = 142
          TabOrder = 0
          DesignSize = (
            153
            142)
          object imgBook: TImage
            Left = 3
            Top = 5
            Width = 147
            Height = 134
            Anchors = [akLeft, akTop, akBottom]
            Proportional = True
            Stretch = True
          end
        end
        object btnFindBook: TButton
          Left = 21
          Top = 27
          Width = 244
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          Caption = #46020#49436' '#44160#49353
          TabOrder = 1
          OnClick = btnFindBookClick
        end
        object edtBookTitle: TDBEdit
          Left = 200
          Top = 80
          Width = 121
          Height = 24
          Anchors = [akTop, akRight]
          DataField = 'BOOK_TITLE'
          DataSource = dsRentBook
          TabOrder = 2
        end
        object edtBookAuthor: TDBEdit
          Left = 200
          Top = 129
          Width = 121
          Height = 24
          Anchors = [akTop, akRight]
          DataField = 'BOOK_AUTHOR'
          DataSource = dsRentBook
          TabOrder = 3
        end
        object edtBookPrice: TDBEdit
          Left = 200
          Top = 177
          Width = 121
          Height = 24
          Anchors = [akTop, akRight]
          DataField = 'BOOK_PRICE'
          DataSource = dsRentBook
          TabOrder = 4
        end
        object btnRent: TButton
          Left = 24
          Top = 214
          Width = 75
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = #45824#52636
          TabOrder = 5
          OnClick = btnRentClick
          ExplicitTop = 266
        end
        object btnReturn: TButton
          Left = 105
          Top = 214
          Width = 75
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = #48152#45225
          TabOrder = 6
          OnClick = btnReturnClick
          ExplicitTop = 266
        end
        object btnCancel: TButton
          Left = 246
          Top = 214
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = #52712#49548
          TabOrder = 7
          OnClick = btnCancelClick
          ExplicitTop = 266
        end
      end
    end
  end
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 919
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 940
    DesignSize = (
      919
      41)
    object lblCaption: TLabel
      Left = 16
      Top = 12
      Width = 44
      Height = 16
      Caption = #46020#49436#45824#50668
    end
    object btnAdd: TButton
      Left = 754
      Top = 10
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #49352' '#45824#52636
      TabOrder = 0
      OnClick = btnAddClick
      ExplicitLeft = 775
    end
    object btnClose: TButton
      Left = 835
      Top = 10
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #45803#44592
      TabOrder = 1
      OnClick = btnCloseClick
    end
  end
  object dsRent: TDataSource
    DataSet = dmDataAccess.qryRent
    OnStateChange = dsRentStateChange
    Left = 289
    Top = 458
  end
  object dsRentUser: TDataSource
    DataSet = dmDataAccess.qryRentUser
    OnDataChange = dsRentUserDataChange
    Left = 600
    Top = 248
  end
  object dsRentBook: TDataSource
    DataSet = dmDataAccess.qryRentBook
    OnDataChange = dsRentBookDataChange
    Left = 608
    Top = 432
  end
end
