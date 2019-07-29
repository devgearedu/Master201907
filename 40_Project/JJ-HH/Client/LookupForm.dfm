object frmLookup: TfrmLookup
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = #47785#47197#51312#54924
  ClientHeight = 695
  ClientWidth = 961
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object pnlConditions: TPanel
    Left = 0
    Top = 0
    Width = 961
    Height = 153
    Align = alTop
    TabOrder = 0
    object rdbtnClients: TRadioButton
      Left = 40
      Top = 24
      Width = 75
      Height = 17
      Caption = #54924#50896
      TabOrder = 0
      OnClick = rdbtnClientsClick
    end
    object rdbtnCoaches: TRadioButton
      Left = 159
      Top = 24
      Width = 75
      Height = 17
      Caption = #44053#49324
      TabOrder = 1
    end
    object rdbtnCourses: TRadioButton
      Left = 278
      Top = 24
      Width = 75
      Height = 17
      Caption = #44053#51340
      TabOrder = 2
    end
    object cmbbxField1: TComboBox
      Left = 32
      Top = 80
      Width = 145
      Height = 24
      TabOrder = 3
    end
    object sbValue1: TSearchBox
      Left = 200
      Top = 80
      Width = 121
      Height = 24
      TabOrder = 4
      OnInvokeSearch = sbValue1InvokeSearch
    end
  end
  object pnlRecords: TPanel
    Left = 0
    Top = 153
    Width = 961
    Height = 542
    Align = alClient
    TabOrder = 1
    object dbgrdForLookUp: TDBGrid
      Left = 1
      Top = 1
      Width = 959
      Height = 540
      Align = alClient
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object cdsClients: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClients'
    RemoteServer = frmMain.DSpcnGym
    Left = 768
    Top = 72
    object cdsClientsCODE: TIntegerField
      DisplayLabel = #54924#50896#48264#54840
      DisplayWidth = 6
      FieldName = 'CODE'
      Origin = 'CODE'
    end
    object cdsClientsNAME_: TWideStringField
      DisplayLabel = #51060#47492
      DisplayWidth = 12
      FieldName = 'NAME_'
      Origin = 'NAME_'
      Size = 128
    end
    object cdsClientsBIRTH_DATE: TDateField
      DisplayLabel = #49373#45380#50900#51068
      DisplayWidth = 10
      FieldName = 'BIRTH_DATE'
      Origin = 'BIRTH_DATE'
    end
    object cdsClientsMOBILE: TStringField
      DisplayLabel = #51204#54868#48264#54840
      DisplayWidth = 11
      FieldName = 'MOBILE'
      Origin = 'MOBILE'
      Size = 11
    end
    object cdsClientsDATE_OF_SIGN_UP: TDateField
      DisplayLabel = #44032#51077#51068#51088
      DisplayWidth = 15
      FieldName = 'DATE_OF_SIGN_UP'
      Origin = 'DATE_OF_SIGN_UP'
    end
    object cdsClientsEMAIL: TStringField
      DisplayLabel = #51060#47700#51068
      DisplayWidth = 24
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 64
    end
    object cdsClientsADDRESS_: TWideStringField
      DisplayLabel = #51452#49548
      DisplayWidth = 13
      FieldName = 'ADDRESS_'
      Origin = 'ADDRESS_'
      Size = 1020
    end
    object cdsClientsFAVORITE_BRANCH: TWideStringField
      DisplayLabel = #51452#51060#50857#49884#49444
      DisplayWidth = 17
      FieldName = 'FAVORITE_BRANCH'
      Origin = 'FAVORITE_BRANCH'
      Size = 128
    end
    object cdsClientsVEHICLE_PLATE: TWideStringField
      DisplayLabel = #46321#47197#52264#47049
      DisplayWidth = 15
      FieldName = 'VEHICLE_PLATE'
      Origin = 'VEHICLE_PLATE'
      FixedChar = True
      Size = 28
    end
    object cdsClientsPASSWORD_: TStringField
      DisplayLabel = #48708#48128#48264#54840
      DisplayWidth = 13
      FieldName = 'PASSWORD_'
      Origin = 'PASSWORD_'
      Size = 32
    end
    object cdsClientsDATE_OF_WITHDRAWAL: TDateField
      DisplayLabel = #53448#53748#51068#51088
      DisplayWidth = 20
      FieldName = 'DATE_OF_WITHDRAWAL'
      Origin = 'DATE_OF_WITHDRAWAL'
    end
  end
  object dspClients: TDataSetProvider
    DataSet = cdsClients
    Left = 829
    Top = 48
  end
  object dsClients: TDataSource
    DataSet = cdsClients
    Left = 885
    Top = 72
  end
end
