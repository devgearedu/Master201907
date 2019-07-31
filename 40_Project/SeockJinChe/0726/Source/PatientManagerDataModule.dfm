object frmDataModule: TfrmDataModule
  OldCreateOrder = False
  Height = 436
  Width = 615
  object DSProviderConnection: TDSProviderConnection
    ServerClassName = 'TServermethods'
    Connected = True
    SQLConnection = SQLConnection
    Left = 192
    Top = 24
  end
  object Reserv: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'ReservProvider'
    RemoteServer = DSProviderConnection
    OnCalcFields = ReservCalcFields
    Left = 72
    Top = 160
    object ReservNumber: TIntegerField
      DisplayLabel = #49692#48264
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Number'
      Calculated = True
    end
    object ReservPATIENT_SEQ: TIntegerField
      DisplayWidth = 20
      FieldName = 'PATIENT_SEQ'
      Origin = 'PATIENT_SEQ'
      Visible = False
    end
    object ReservPATIENT_NAME: TWideStringField
      DisplayLabel = #54872#51088#47749
      DisplayWidth = 20
      FieldName = 'PATIENT_NAME'
      Origin = 'PATIENT_NAME'
      Size = 200
    end
    object ReservPATIENT_BIRTH: TDateField
      DisplayLabel = #49373#45380#50900#51068
      DisplayWidth = 20
      FieldName = 'PATIENT_BIRTH'
      Origin = 'PATIENT_BIRTH'
    end
    object ReservRESERVATION_DATE: TDateField
      DisplayLabel = #50696#50557#51068
      DisplayWidth = 20
      FieldName = 'RESERVATION_DATE'
      Origin = 'RESERVATION_DATE'
    end
    object ReservRESERVATION_TIME: TTimeField
      DisplayLabel = #49884#44036
      DisplayWidth = 20
      FieldName = 'RESERVATION_TIME'
      Origin = 'RESERVATION_TIME'
    end
    object ReservPATIENT_GENDER: TWideStringField
      DisplayWidth = 20
      FieldName = 'PATIENT_GENDER'
      Origin = 'PATIENT_GENDER'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object ReservNOWSTATE: TIntegerField
      DisplayWidth = 20
      FieldName = 'NOWSTATE'
      Origin = 'NOWSTATE'
      Visible = False
    end
    object ReservNOWSTATE_STR: TStringField
      DisplayLabel = #54788#51116#49345#53468
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'NOWSTATE_STR'
      Calculated = True
    end
    object ReservDOCTOR_SEQ: TIntegerField
      DisplayWidth = 20
      FieldName = 'DOCTOR_SEQ'
      Origin = 'DOCTOR_SEQ'
      Visible = False
    end
  end
  object ReservSource: TDataSource
    DataSet = Reserv
    Left = 168
    Top = 160
  end
  object Diagno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DiagnoProvider'
    RemoteServer = DSProviderConnection
    Left = 72
    Top = 216
    object DiagnoPATIENT_SEQ: TIntegerField
      FieldName = 'PATIENT_SEQ'
      Origin = 'PATIENT_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DiagnoPATIENT_REASON: TWideStringField
      FieldName = 'PATIENT_REASON'
      Origin = 'PATIENT_REASON'
      Size = 4000
    end
    object DiagnoPATIENT_DIAGNO: TWideStringField
      FieldName = 'PATIENT_DIAGNO'
      Origin = 'PATIENT_DIAGNO'
      Size = 4000
    end
    object DiagnoPAYMENT: TIntegerField
      FieldName = 'PAYMENT'
      Origin = 'PAYMENT'
    end
    object DiagnoACCEPT_AMOUNT: TIntegerField
      FieldName = 'ACCEPT_AMOUNT'
      Origin = 'ACCEPT_AMOUNT'
    end
    object DiagnoDOCTOR_NAME: TWideStringField
      FieldName = 'DOCTOR_NAME'
      Origin = 'DOCTOR_NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object DiagnoMEDICINE_SEQ: TIntegerField
      FieldName = 'MEDICINE_SEQ'
      Origin = 'MEDICINE_SEQ'
      ProviderFlags = []
      ReadOnly = True
    end
    object DiagnoMEDICINE_NAME: TWideStringField
      FieldName = 'MEDICINE_NAME'
      Origin = 'MEDICINE_NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object DiagnoMEDICINE_PRICE: TIntegerField
      FieldName = 'MEDICINE_PRICE'
      Origin = 'MEDICINE_PRICE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object PatientList: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'PatientListProvider'
    RemoteServer = DSProviderConnection
    OnCalcFields = PatientListCalcFields
    Left = 72
    Top = 104
    object PATIENT_SEQ: TIntegerField
      DisplayLabel = #48264#54840
      FieldName = 'PATIENT_SEQ'
      Origin = 'PATIENT_SEQ'
    end
    object PATIENT_NAME: TWideStringField
      DisplayLabel = #51060#47492
      DisplayWidth = 20
      FieldName = 'PATIENT_NAME'
      Origin = 'PATIENT_NAME'
      Required = True
      Size = 200
    end
    object PATIENT_BIRTH: TDateField
      DisplayLabel = #49373#45380#50900#51068
      DisplayWidth = 20
      FieldName = 'PATIENT_BIRTH'
      Origin = 'PATIENT_BIRTH'
      Required = True
    end
    object PATIENT_IMAGE: TBlobField
      FieldName = 'PATIENT_IMAGE'
      Origin = 'PATIENT_IMAGE'
      Visible = False
    end
    object PATIENT_PHONE: TWideStringField
      DisplayLabel = #50672#46973#52376
      DisplayWidth = 20
      FieldName = 'PATIENT_PHONE'
      Origin = 'PATIENT_PHONE'
      Size = 44
    end
    object PatientListPATIENT_GENDER: TWideStringField
      DisplayLabel = #49457#48324
      DisplayWidth = 10
      FieldName = 'PATIENT_GENDER'
      Origin = 'PATIENT_GENDER'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object PatientListPATIENT_GENDER_STR: TWideStringField
      DisplayLabel = #49457#48324
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'PATIENT_GENDER_STR'
      Calculated = True
    end
  end
  object MedicineList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MedicineListProvider'
    RemoteServer = DSProviderConnection
    Left = 72
    Top = 272
    object MedicineListMEDICINE_SEQ: TIntegerField
      FieldName = 'MEDICINE_SEQ'
      Required = True
    end
    object MedicineListMEDICINE_NAME: TWideStringField
      FieldName = 'MEDICINE_NAME'
      Required = True
      Size = 200
    end
    object MedicineListMEDICINE_IMAGE: TBlobField
      FieldName = 'MEDICINE_IMAGE'
    end
    object MedicineListMEDICINE_PRICE: TIntegerField
      FieldName = 'MEDICINE_PRICE'
    end
  end
  object SMS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SMSProvider'
    RemoteServer = DSProviderConnection
    Left = 72
    Top = 328
    object SMSPATIENT_SEQ: TIntegerField
      FieldName = 'PATIENT_SEQ'
      Required = True
    end
    object SMSRESERVATION_DATE: TDateField
      FieldName = 'RESERVATION_DATE'
    end
    object SMSRESERVATION_TIME: TTimeField
      FieldName = 'RESERVATION_TIME'
    end
    object SMSSMS_INDEX: TWideStringField
      FieldName = 'SMS_INDEX'
      ReadOnly = True
      Size = 2000
    end
    object SMSSMS_TIME: TTimeField
      FieldName = 'SMS_TIME'
      ReadOnly = True
    end
    object SMSSMS_DATE: TDateField
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
    Connected = True
    Left = 72
    Top = 24
    UniqueId = '{79D570B8-241B-46E8-8416-E73A86C0C287}'
  end
  object DiagnoSource: TDataSource
    Left = 168
    Top = 216
  end
  object PatientListSource: TDataSource
    DataSet = PatientList
    Left = 168
    Top = 104
  end
  object MedicineListSource: TDataSource
    Left = 168
    Top = 272
  end
  object SMSSource: TDataSource
    Left = 168
    Top = 328
  end
  object Decision: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DecisionProvider'
    RemoteServer = DSProviderConnection
    Left = 264
    Top = 104
    object DecisionPATIENT_NAME: TWideStringField
      DisplayLabel = #54872#51088#47749
      DisplayWidth = 10
      FieldName = 'PATIENT_NAME'
      Origin = 'PATIENT_NAME'
      Required = True
      Size = 200
    end
    object DecisionPATIENT_REASON: TWideStringField
      DisplayLabel = #52376#48169#50557#54408
      DisplayWidth = 50
      FieldName = 'PATIENT_REASON'
      Origin = 'PATIENT_REASON'
      ProviderFlags = []
      ReadOnly = True
      Size = 4000
    end
    object DecisionACCEPT_AMOUNT: TIntegerField
      DisplayLabel = #52376#48169#47049
      FieldName = 'ACCEPT_AMOUNT'
      Origin = 'ACCEPT_AMOUNT'
      ProviderFlags = []
      ReadOnly = True
    end
    object DecisionPAYMENT: TIntegerField
      DisplayLabel = #44552#50529
      DisplayWidth = 20
      FieldName = 'PAYMENT'
      Origin = 'PAYMENT'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DecisionSource: TDataSource
    DataSet = Decision
    Left = 352
    Top = 104
  end
  object DuplicateUser: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DuplicateUserProvider'
    RemoteServer = DSProviderConnection
    Left = 264
    Top = 160
    object DuplicateUserPATIENT_SEQ: TIntegerField
      DisplayLabel = #48264#54840
      DisplayWidth = 5
      FieldName = 'PATIENT_SEQ'
      Required = True
    end
  end
  object DuplicateUserSource: TDataSource
    Left = 352
    Top = 160
  end
  object SqlServerMethod1: TSqlServerMethod
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'Value'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'ReturnParameter'
        ParamType = ptResult
        Size = 2000
      end>
    SQLConnection = SQLConnection
    Left = 320
    Top = 24
  end
  object DoctorList: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DoctorListProvider'
    RemoteServer = DSProviderConnection
    Left = 264
    Top = 216
    object DoctorListDOCTOR_SEQ: TIntegerField
      FieldName = 'DOCTOR_SEQ'
      Origin = 'DOCTOR_SEQ'
      Required = True
    end
    object DoctorListDOCTOR_NAME: TWideStringField
      FieldName = 'DOCTOR_NAME'
      Origin = 'DOCTOR_NAME'
      Size = 200
    end
    object DoctorListDOCTOR_PHONE: TStringField
      FieldName = 'DOCTOR_PHONE'
      Origin = 'DOCTOR_PHONE'
      Size = 200
    end
    object DoctorListDOCTOR_IMAGE: TBlobField
      FieldName = 'DOCTOR_IMAGE'
      Origin = 'DOCTOR_IMAGE'
    end
  end
  object DoctorListSource: TDataSource
    DataSet = DoctorList
    Left = 352
    Top = 216
  end
end
