object frmLoop: TfrmLoop
  Left = 0
  Top = 0
  Caption = 'frmLoop'
  ClientHeight = 307
  ClientWidth = 477
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 16
    Top = 181
    Width = 329
    Height = 105
    Caption = 'Server method'
    TabOrder = 0
    object Label1: TLabel
      Left = 79
      Top = 27
      Width = 8
      Height = 13
      Caption = '~'
    end
    object edtStartNum: TEdit
      Left = 16
      Top = 24
      Width = 57
      Height = 21
      NumbersOnly = True
      TabOrder = 0
      TextHint = #49884#51089
    end
    object btnOddCount: TButton
      Left = 16
      Top = 59
      Width = 161
      Height = 25
      Caption = #46160' '#49688' '#49324#51060#51032' '#54848#49688#51032' '#54633#51008'?'
      TabOrder = 1
      OnClick = btnOddCountClick
    end
    object edtEndNum: TEdit
      Left = 104
      Top = 24
      Width = 57
      Height = 21
      NumbersOnly = True
      TabOrder = 2
      TextHint = #45149
    end
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 24
    Width = 329
    Height = 120
    DataSource = DataSource1
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnCheckLoadData: TButton
    Left = 16
    Top = 150
    Width = 281
    Height = 25
    Caption = 'DataSetProvider '#51060#50857#54644' '#45936#51060#53552' '#50672#44208
    TabOrder = 2
    OnClick = btnCheckLoadDataClick
  end
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'HostName=localhost'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=24.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b')
    Left = 392
    Top = 32
    UniqueId = '{D407F8C5-6BEF-4A20-90EB-90C7D09DE2E0}'
  end
  object DSProviderConnection1: TDSProviderConnection
    Left = 392
    Top = 80
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 392
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 392
    Top = 184
  end
end
