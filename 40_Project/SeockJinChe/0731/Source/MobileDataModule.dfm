object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 273
  Width = 388
  object UserList: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'PatientListProvider'
    RemoteServer = DSProviderConnection1
    OnCalcFields = UserListCalcFields
    Left = 48
    Top = 112
    object UserListNum: TIntegerField
      DisplayLabel = #49692#48264
      FieldKind = fkCalculated
      FieldName = 'Num'
      Calculated = True
    end
    object UserListPATIENT_SEQ: TIntegerField
      FieldName = 'PATIENT_SEQ'
      Origin = 'PATIENT_SEQ'
      Visible = False
    end
    object UserListPATIENT_NAME: TWideStringField
      DisplayLabel = #54872#51088#47749
      FieldName = 'PATIENT_NAME'
      Origin = 'PATIENT_NAME'
      Required = True
      Size = 200
    end
  end
  object UserReserve: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'ReserveProvider'
    RemoteServer = DSProviderConnection1
    Left = 48
    Top = 176
  end
  object UserListProvider: TDataSetProvider
    DataSet = UserList
    Left = 160
    Top = 112
  end
  object UserReserveProvider: TDataSetProvider
    DataSet = UserReserve
    Left = 160
    Top = 184
  end
  object MobileConnection: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DbxDatasnap'
      'HostName=localhost'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=24.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b')
    Connected = True
    Left = 40
    Top = 32
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServermethods'
    Connected = True
    SQLConnection = MobileConnection
    Left = 168
    Top = 24
  end
end
