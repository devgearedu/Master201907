object InsaForm: TInsaForm
  Left = 0
  Top = 0
  Caption = #49324#50896#44288#47532
  ClientHeight = 403
  ClientWidth = 590
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  DesignSize = (
    590
    403)
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 431
    Top = 16
    Width = 23
    Height = 22
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333FF3333333333333003333333333333F77F33333333333009033
      333333333F7737F333333333009990333333333F773337FFFFFF330099999000
      00003F773333377777770099999999999990773FF33333FFFFF7330099999000
      000033773FF33777777733330099903333333333773FF7F33333333333009033
      33333333337737F3333333333333003333333333333377333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 453
    Top = 16
    Width = 23
    Height = 22
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
      3333333333777F33333333333309033333333333337F7F333333333333090333
      33333333337F7F33333333333309033333333333337F7F333333333333090333
      33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
      3333333777737777F333333099999990333333373F3333373333333309999903
      333333337F33337F33333333099999033333333373F333733333333330999033
      3333333337F337F3333333333099903333333333373F37333333333333090333
      33333333337F7F33333333333309033333333333337373333333333333303333
      333333333337F333333333333330333333333333333733333333}
    NumGlyphs = 2
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 474
    Top = 16
    Width = 23
    Height = 22
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
      333333333337F33333333333333033333333333333373F333333333333090333
      33333333337F7F33333333333309033333333333337373F33333333330999033
      3333333337F337F33333333330999033333333333733373F3333333309999903
      333333337F33337F33333333099999033333333373333373F333333099999990
      33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
      33333333337F7F33333333333309033333333333337F7F333333333333090333
      33333333337F7F33333333333309033333333333337F7F333333333333090333
      33333333337F7F33333333333300033333333333337773333333}
    NumGlyphs = 2
    OnClick = SpeedButton3Click
  end
  object SpeedButton4: TSpeedButton
    Left = 495
    Top = 16
    Width = 23
    Height = 23
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333FF3333333333333003333
      3333333333773FF3333333333309003333333333337F773FF333333333099900
      33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
      99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
      33333333337F3F77333333333309003333333333337F77333333333333003333
      3333333333773333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    OnClick = SpeedButton4Click
  end
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 48
    Height = 16
    Caption = #44160#49353#49692
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 208
    Top = 18
    Width = 48
    Height = 13
    Caption = #44160#49353#51060#47492
  end
  object ComboBox1: TComboBox
    Left = 88
    Top = 15
    Width = 105
    Height = 21
    ItemIndex = 1
    TabOrder = 0
    Text = #51060#47492
    OnChange = ComboBox1Change
    Items.Strings = (
      #48264#54840
      #51060#47492
      #48512#49436)
  end
  object Edit1: TEdit
    Left = 270
    Top = 8
    Width = 131
    Height = 21
    TabOrder = 1
    OnChange = Edit1Change
    OnKeyPress = Edit1KeyPress
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 56
    Width = 579
    Height = 339
    ActivePage = TabSheet2
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = #51312#54924
      object TabControl1: TTabControl
        Left = 0
        Top = 0
        Width = 571
        Height = 311
        Align = alClient
        TabOrder = 0
        Tabs.Strings = (
          #51204#52404
          #49324#50896
          #45824#47532
          #44284#51109
          #52264#51109
          #48512#51109
          #49345#47924
          #51060#49324
          #51204#47924
          #49324#51109
          #51452#51076
          #49440#51076
          #52293#51076
          #44053#49324
          #44256#47928)
        TabIndex = 0
        OnChange = TabControl1Change
        object DBGrid1: TDBGrid
          Left = 4
          Top = 24
          Width = 563
          Height = 283
          Align = alClient
          DataSource = dm.InsaSource
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
    object TabSheet2: TTabSheet
      Caption = #54200#51665
      ImageIndex = 1
      object Label3: TLabel
        Left = 40
        Top = 35
        Width = 24
        Height = 13
        Caption = #49324#48264
      end
      object Label4: TLabel
        Left = 40
        Top = 75
        Width = 24
        Height = 13
        Caption = #51060#47492
      end
      object Label5: TLabel
        Left = 40
        Top = 115
        Width = 24
        Height = 13
        Caption = #45208#51060
      end
      object Label6: TLabel
        Left = 40
        Top = 155
        Width = 24
        Height = 13
        Caption = #51649#44553
      end
      object Label7: TLabel
        Left = 40
        Top = 195
        Width = 24
        Height = 13
        Caption = #48512#49436
      end
      object Label8: TLabel
        Left = 40
        Top = 235
        Width = 48
        Height = 13
        Caption = #51077#51088#51068#51088
      end
      object Label9: TLabel
        Left = 40
        Top = 275
        Width = 24
        Height = 13
        Caption = #44553#50668
      end
      object Label10: TLabel
        Left = 272
        Top = 40
        Width = 24
        Height = 13
        Caption = #49324#51652
        OnClick = Label10Click
      end
      object DBEdit1: TDBEdit
        Left = 112
        Top = 32
        Width = 121
        Height = 21
        DataField = 'ID'
        DataSource = dm.InsaSource
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 112
        Top = 72
        Width = 121
        Height = 21
        DataField = 'NAME'
        DataSource = dm.InsaSource
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 112
        Top = 112
        Width = 121
        Height = 21
        DataField = 'AGE'
        DataSource = dm.InsaSource
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 112
        Top = 232
        Width = 121
        Height = 21
        DataField = 'IPSA_DATE'
        DataSource = dm.InsaSource
        MaxLength = 10
        TabOrder = 5
      end
      object DBEdit5: TDBEdit
        Left = 112
        Top = 272
        Width = 121
        Height = 21
        DataField = 'SALARY'
        DataSource = dm.InsaSource
        TabOrder = 6
      end
      object DBComboBox1: TDBComboBox
        Left = 112
        Top = 152
        Width = 121
        Height = 21
        DataField = 'CLASS'
        DataSource = dm.InsaSource
        Items.Strings = (
          #49324#50896
          #45824#47532
          #44284#51109
          #48512#51109
          #52264#51109
          #51060#49324)
        TabOrder = 3
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 112
        Top = 187
        Width = 121
        Height = 21
        DataField = 'DEPT_CODE'
        DataSource = dm.InsaSource
        KeyField = 'CODE'
        ListField = 'SECTION'
        ListSource = dm.DeptSource
        TabOrder = 4
      end
      object DBImage1: TDBImage
        Left = 312
        Top = 28
        Width = 121
        Height = 140
        DataField = 'PHOTO'
        DataSource = dm.InsaSource
        TabOrder = 7
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 454
        Top = 28
        Width = 102
        Height = 140
        Caption = #50628#48512#45733#47141
        DataField = 'GRADE'
        DataSource = dm.InsaSource
        Items.Strings = (
          #47588#50864#51339#51020
          #51339#51020
          #48372#53685
          #44536#51200#44536#47100)
        TabOrder = 8
        Values.Strings = (
          '1'
          '2'
          '3'
          '4')
      end
      object Button1: TButton
        Left = 312
        Top = 192
        Width = 121
        Height = 33
        Caption = 'Insert'
        TabOrder = 9
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 454
        Top = 192
        Width = 102
        Height = 33
        Caption = 'Delete'
        TabOrder = 10
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 312
        Top = 248
        Width = 121
        Height = 33
        Caption = 'Cancel'
        TabOrder = 11
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 454
        Top = 248
        Width = 102
        Height = 33
        Caption = 'Post'
        TabOrder = 12
        OnClick = Button4Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = #52264#53944
      ImageIndex = 2
      inline TFrame11: TFrame1
        Left = 3
        Top = -56
        Width = 417
        Height = 355
        TabOrder = 0
        ExplicitLeft = 3
        ExplicitTop = -56
        inherited DBChart1: TDBChart
          Left = 16
          Top = 64
          Height = 217
          ExplicitLeft = 16
          ExplicitTop = 64
          ExplicitHeight = 217
          PrintMargins = (
            15
            17
            15
            17)
          inherited Series1: TBarSeries
            DataSource = dm.Insa
            XLabelsSource = 'NAME'
            YValues.ValueSource = 'SALARY'
          end
        end
      end
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 328
    Top = 56
  end
end
