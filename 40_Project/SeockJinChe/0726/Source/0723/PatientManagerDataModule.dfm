object frmDataModule: TfrmDataModule
  OldCreateOrder = False
  Height = 368
  Width = 615
  object DSProviderConnection: TDSProviderConnection
    ServerClassName = 'TServermethods'
    SQLConnection = SQLConnection
    Left = 192
    Top = 24
  end
  object ReservDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ReservProvider'
    RemoteServer = DSProviderConnection
    Left = 72
    Top = 88
    object ReservDataSetNumber: TIntegerField
      DisplayLabel = #49692#48264
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Number'
      Calculated = True
    end
    object ReservDataSetPATIENT_SEQ: TIntegerField
      DisplayWidth = 10
      FieldName = 'PATIENT_SEQ'
      Origin = 'PATIENT_SEQ'
      Required = True
      Visible = False
    end
    object ReservDataSetPATIENT_NAME: TWideStringField
      DisplayLabel = #54872#51088#47749
      DisplayWidth = 30
      FieldName = 'PATIENT_NAME'
      Origin = 'PATIENT_NAME'
      Required = True
      Size = 200
    end
    object ReservDataSetPATIENT_BIRTH: TDateField
      DisplayLabel = #49373#45380#50900#51068
      DisplayWidth = 30
      FieldName = 'PATIENT_BIRTH'
      Origin = 'PATIENT_BIRTH'
      Required = True
    end
    object ReservDataSetRESERVATION_DATE: TDateField
      DisplayLabel = #50696#50557#51068
      DisplayWidth = 30
      FieldName = 'RESERVATION_DATE'
      Origin = 'RESERVATION_DATE'
    end
    object ReservDataSetRESERVATION_TIME: TTimeField
      DisplayLabel = #49884#44036
      DisplayWidth = 30
      FieldName = 'RESERVATION_TIME'
      Origin = 'RESERVATION_TIME'
    end
    object ReservDataSetNOW: TIntegerField
      DisplayWidth = 30
      FieldName = 'NOW'
      Origin = 'NOW'
      Visible = False
    end
    object ReservDataSetDOCTOR_NAME: TWideStringField
      DisplayLabel = #45812#45817#51032#49324
      DisplayWidth = 30
      FieldName = 'DOCTOR_NAME'
      Origin = 'DOCTOR_NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
  end
  object ReservSource: TDataSource
    DataSet = ReservDataSet
    Left = 168
    Top = 88
  end
  object DiagnoDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DiagnoProvider'
    RemoteServer = DSProviderConnection
    Left = 72
    Top = 144
    object DiagnoDataSetPATIENT_SEQ: TIntegerField
      FieldName = 'PATIENT_SEQ'
      Origin = 'PATIENT_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DiagnoDataSetPATIENT_REASON: TWideStringField
      FieldName = 'PATIENT_REASON'
      Origin = 'PATIENT_REASON'
      Size = 4000
    end
    object DiagnoDataSetPATIENT_DIAGNO: TWideStringField
      FieldName = 'PATIENT_DIAGNO'
      Origin = 'PATIENT_DIAGNO'
      Size = 4000
    end
    object DiagnoDataSetPAYMENT: TIntegerField
      FieldName = 'PAYMENT'
      Origin = 'PAYMENT'
    end
    object DiagnoDataSetACCEPT_AMOUNT: TIntegerField
      FieldName = 'ACCEPT_AMOUNT'
      Origin = 'ACCEPT_AMOUNT'
    end
    object DiagnoDataSetDOCTOR_NAME: TWideStringField
      FieldName = 'DOCTOR_NAME'
      Origin = 'DOCTOR_NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object DiagnoDataSetMEDICINE_SEQ: TIntegerField
      FieldName = 'MEDICINE_SEQ'
      Origin = 'MEDICINE_SEQ'
      ProviderFlags = []
      ReadOnly = True
    end
    object DiagnoDataSetMEDICINE_NAME: TWideStringField
      FieldName = 'MEDICINE_NAME'
      Origin = 'MEDICINE_NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object DiagnoDataSetMEDICINE_PRICE: TIntegerField
      FieldName = 'MEDICINE_PRICE'
      Origin = 'MEDICINE_PRICE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object PatientListDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PatientListProvider'
    RemoteServer = DSProviderConnection
    Left = 72
    Top = 200
    object PatientListDataSetPATIENT_SEQ: TIntegerField
      FieldName = 'PATIENT_SEQ'
      Required = True
    end
    object PatientListDataSetPATIENT_NAME: TWideStringField
      FieldName = 'PATIENT_NAME'
      Required = True
      Size = 200
    end
    object PatientListDataSetPATIENT_BIRTH: TDateField
      FieldName = 'PATIENT_BIRTH'
      Required = True
    end
    object PatientListDataSetPATIENT_IMAGE: TBlobField
      FieldName = 'PATIENT_IMAGE'
    end
    object PatientListDataSetPATIENT_PHONE: TWideStringField
      FieldName = 'PATIENT_PHONE'
      Size = 44
    end
  end
  object MedicineListDataSe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MedicineListProvider'
    RemoteServer = DSProviderConnection
    Left = 72
    Top = 256
    object MedicineListDataSeMEDICINE_SEQ: TIntegerField
      FieldName = 'MEDICINE_SEQ'
      Required = True
    end
    object MedicineListDataSeMEDICINE_NAME: TWideStringField
      FieldName = 'MEDICINE_NAME'
      Required = True
      Size = 200
    end
    object MedicineListDataSeMEDICINE_IMAGE: TBlobField
      FieldName = 'MEDICINE_IMAGE'
    end
    object MedicineListDataSeMEDICINE_PRICE: TIntegerField
      FieldName = 'MEDICINE_PRICE'
    end
  end
  object SMSDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SMSProvider'
    RemoteServer = DSProviderConnection
    Left = 72
    Top = 312
    object SMSDataSetPATIENT_SEQ: TIntegerField
      FieldName = 'PATIENT_SEQ'
      Required = True
    end
    object SMSDataSetRESERVATION_DATE: TDateField
      FieldName = 'RESERVATION_DATE'
    end
    object SMSDataSetRESERVATION_TIME: TTimeField
      FieldName = 'RESERVATION_TIME'
    end
    object SMSDataSetSMS_INDEX: TWideStringField
      FieldName = 'SMS_INDEX'
      ReadOnly = True
      Size = 2000
    end
    object SMSDataSetSMS_TIME: TTimeField
      FieldName = 'SMS_TIME'
      ReadOnly = True
    end
    object SMSDataSetSMS_DATE: TDateField
      FieldName = 'SMS_DATE'
      ReadOnly = True
    end
  end
  object SQLConnection: TSQLConnection
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
        'Token=91d62ebb5b0d1b1b'
      'Filters={}')
    Left = 72
    Top = 24
    UniqueId = '{79D570B8-241B-46E8-8416-E73A86C0C287}'
  end
  object DiagnoSource: TDataSource
    Left = 168
    Top = 144
  end
  object PatientListSource: TDataSource
    Left = 168
    Top = 200
  end
  object MedicineListSource: TDataSource
    Left = 168
    Top = 256
  end
  object SMSSource: TDataSource
    Left = 168
    Top = 312
  end
  object DecisionDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DecisionProvider'
    RemoteServer = DSProviderConnection
    Left = 264
    Top = 88
    object DecisionDataSetPATIENT_SEQ: TIntegerField
      FieldName = 'PATIENT_SEQ'
      ReadOnly = True
    end
    object DecisionDataSetMEDICINE_NAME: TWideStringField
      FieldName = 'MEDICINE_NAME'
      Required = True
      Size = 200
    end
    object DecisionDataSetACCEPT_AMOUNT: TIntegerField
      FieldName = 'ACCEPT_AMOUNT'
      ReadOnly = True
    end
    object DecisionDataSetPAYMENT: TIntegerField
      FieldName = 'PAYMENT'
      ReadOnly = True
    end
  end
  object DecisionSource: TDataSource
    DataSet = DecisionDataSet
    Left = 352
    Top = 88
  end
end
