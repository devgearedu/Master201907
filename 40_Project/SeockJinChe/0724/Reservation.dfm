object frmReserv: TfrmReserv
  Left = 0
  Top = 0
  Caption = 'frmReserv'
  ClientHeight = 361
  ClientWidth = 1264
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RservPanel: TPanel
    Left = 0
    Top = 0
    Width = 1264
    Height = 361
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -846
    ExplicitTop = -213
    ExplicitHeight = 399
    object Sub_Panel1: TPanel
      Left = 1
      Top = 1
      Width = 1262
      Height = 41
      Align = alTop
      TabOrder = 0
      object Edit1: TEdit
        Left = 264
        Top = 10
        Width = 201
        Height = 21
        TabOrder = 0
      end
      object ButtonInsert: TButton
        Left = 592
        Top = 10
        Width = 75
        Height = 25
        Caption = #50696#50557' '#52628#44032
        TabOrder = 1
      end
      object ButtonLookup: TButton
        Left = 511
        Top = 10
        Width = 75
        Height = 25
        Caption = #51312#54924
        TabOrder = 2
      end
      object ButtonDelete: TButton
        Left = 673
        Top = 10
        Width = 75
        Height = 25
        Caption = #50696#50557' '#49325#51228
        TabOrder = 3
      end
      object Button1: TButton
        Left = 754
        Top = 10
        Width = 75
        Height = 25
        Caption = #54872#51088' '#51077#51109
        TabOrder = 4
      end
      object DBComboBox1: TDBComboBox
        Left = 73
        Top = 10
        Width = 145
        Height = 21
        DataSource = frmDataModule.ReservSource
        TabOrder = 5
      end
    end
    object Sub_Panel2: TPanel
      Left = 1
      Top = 42
      Width = 1262
      Height = 318
      Align = alClient
      TabOrder = 1
      ExplicitHeight = 356
      object RSVDBGrid: TDBGrid
        Left = 1
        Top = 1
        Width = 1260
        Height = 316
        Align = alClient
        DataSource = frmDataModule.ReservSource
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
end
