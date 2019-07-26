object frmMainForm: TfrmMainForm
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'frmMainForm'
  ClientHeight = 623
  ClientWidth = 985
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object tbMainMenu: TToolBar
    Left = 0
    Top = 0
    Width = 99
    Height = 623
    Align = alLeft
    ButtonHeight = 100
    ButtonWidth = 97
    Caption = 'tbMainMenu'
    Color = clBtnHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Images = ilToolbar
    ParentColor = False
    ParentFont = False
    ShowCaptions = True
    TabOrder = 0
    object btnWorkerInformation: TToolButton
      Left = 0
      Top = 0
      Caption = #49324#50896#51221#48372
      ImageIndex = 0
      Wrap = True
      OnClick = btnWorkerInformationClick
    end
    object btnTimeInsert: TToolButton
      Left = 0
      Top = 100
      Caption = #49884#44036#51077#47141
      ImageIndex = 1
      Wrap = True
      OnClick = btnTimeInsertClick
    end
    object btnResult: TToolButton
      Left = 0
      Top = 200
      Caption = #53685#44228
      ImageIndex = 2
      Wrap = True
      OnClick = btnResultClick
    end
    object btnClose: TToolButton
      Left = 0
      Top = 300
      Caption = #51333#47308
      ImageIndex = 3
      Wrap = True
      OnClick = btnCloseClick
    end
  end
  object pnlLayout: TPanel
    Left = 99
    Top = 0
    Width = 886
    Height = 623
    Align = alClient
    TabOrder = 1
  end
  object ilToolbar: TImageList
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Height = 80
    Width = 90
    Left = 16
    Top = 456
  end
  object MainMenu1: TMainMenu
    Left = 64
    Top = 456
    object N1: TMenuItem
      Caption = #54028#51068
    end
    object N2: TMenuItem
      Caption = #44592#45733
    end
    object N3: TMenuItem
      Caption = #49828#53440#51068
    end
  end
end
