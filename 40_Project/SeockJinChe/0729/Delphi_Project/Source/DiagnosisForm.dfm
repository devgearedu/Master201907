object frmDiagnosis: TfrmDiagnosis
  Left = 0
  Top = 0
  Caption = #51652#47308#45236#50669
  ClientHeight = 361
  ClientWidth = 1253
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
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 1253
    Height = 361
    Align = alClient
    TabOrder = 0
    object pnlTop: TPanel
      Left = 1
      Top = 1
      Width = 1251
      Height = 41
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 14
        Top = 13
        Width = 47
        Height = 13
        Caption = #51652#47308' '#45236#50669
      end
    end
    object pnlHeader: TPanel
      Left = 1
      Top = 42
      Width = 1251
      Height = 41
      Align = alTop
      TabOrder = 1
      object Label2: TLabel
        Left = 14
        Top = 16
        Width = 33
        Height = 13
        Caption = #54872#51088#47749
      end
      object edtSearch: TEdit
        Left = 70
        Top = 11
        Width = 255
        Height = 21
        TabOrder = 0
      end
      object btnSearch: TButton
        Left = 343
        Top = 11
        Width = 50
        Height = 21
        Caption = #51312#54924
        ImageIndex = 0
        TabOrder = 1
      end
    end
    object pnlGrid: TPanel
      Left = 1
      Top = 83
      Width = 1251
      Height = 277
      Align = alClient
      TabOrder = 2
      object Splitter1: TSplitter
        Left = 541
        Top = 1
        Height = 275
        Align = alRight
        ExplicitLeft = 509
        ExplicitTop = 6
      end
      object pnltext: TPanel
        Left = 544
        Top = 1
        Width = 706
        Height = 275
        Align = alRight
        TabOrder = 0
        object grdDiagnosis: TDBGrid
          Left = 1
          Top = 1
          Width = 704
          Height = 273
          Align = alClient
          DataSource = frmDataModule.DiagnosisSource
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object grdList: TDBGrid
        Left = 1
        Top = 1
        Width = 540
        Height = 275
        Align = alClient
        DataSource = frmDataModule.PatientListSource
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
end
