object frmDataModule: TfrmDataModule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 436
  Width = 615
  object DSProviderConnection: TDSProviderConnection
    ServerClassName = 'TServermethods'
    Connected = True
    SQLConnection = SQLConnection
    Left = 192
    Top = 24
  end
  object Reserve: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ReserveProvider'
    RemoteServer = DSProviderConnection
    OnCalcFields = ReserveCalcFields
    Left = 72
    Top = 160
    object ReserveNum: TIntegerField
      DisplayLabel = #49692#48264
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Num'
      Calculated = True
    end
    object ReserveRESERVE_SEQ: TIntegerField
      FieldName = 'RESERVE_SEQ'
      Origin = 'RESERVE_SEQ'
      Visible = False
    end
    object ReservePATIENT_SEQ: TIntegerField
      FieldName = 'PATIENT_SEQ'
      Origin = 'PATIENT_SEQ'
      Visible = False
    end
    object ReservePATIENT_NAME: TStringField
      DisplayLabel = #54872#51088#47749
      FieldKind = fkLookup
      FieldName = 'PATIENT_NAME'
      LookupDataSet = PatientList
      LookupKeyFields = 'PATIENT_SEQ'
      LookupResultField = 'PATIENT_NAME'
      KeyFields = 'PATIENT_SEQ'
      Lookup = True
    end
    object ReservePATIENT_BIRTH: TDateField
      DisplayLabel = #49373#45380#50900#51068
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'PATIENT_BIRTH'
      LookupDataSet = PatientList
      LookupKeyFields = 'PATIENT_SEQ'
      LookupResultField = 'PATIENT_BIRTH'
      KeyFields = 'PATIENT_SEQ'
      Lookup = True
    end
    object ReserveRESERVATION_DATE: TDateField
      DisplayLabel = #50696#50557#51068
      DisplayWidth = 20
      FieldName = 'RESERVATION_DATE'
      Origin = 'RESERVATION_DATE'
    end
    object ReserveRESERVATION_TIME: TTimeField
      DisplayLabel = #49884#44036
      DisplayWidth = 30
      FieldName = 'RESERVATION_TIME'
      Origin = 'RESERVATION_TIME'
    end
    object ReserveNOWSTATE: TIntegerField
      FieldName = 'NOWSTATE'
      Origin = 'NOWSTATE'
      Visible = False
    end
    object ReserveNOWSTATE_STR: TStringField
      DisplayLabel = #49345#53468
      FieldKind = fkCalculated
      FieldName = 'NOWSTATE_STR'
      Calculated = True
    end
    object ReserveDOCTOR_SEQ: TIntegerField
      FieldName = 'DOCTOR_SEQ'
      Origin = 'DOCTOR_SEQ'
      Visible = False
    end
    object ReserveDOCTOR_NAME: TStringField
      DisplayLabel = #45812#45817#51032#49324
      FieldName = 'DOCTOR_NAME'
      ReadOnly = True
    end
    object ReserveREASON: TWideStringField
      FieldName = 'REASON'
      Origin = 'REASON'
      Visible = False
      Size = 4000
    end
  end
  object ReserveSource: TDataSource
    DataSet = Reserve
    Left = 168
    Top = 160
  end
  object Diagnosis: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'PATIENT_SEQ'
    MasterFields = 'PATIENT_SEQ'
    MasterSource = PatientListSource
    PacketRecords = 0
    Params = <>
    ProviderName = 'DiagnosisProvider'
    RemoteServer = DSProviderConnection
    Left = 72
    Top = 216
    object DiagnosisRESERVE_SEQ: TIntegerField
      FieldName = 'RESERVE_SEQ'
      Origin = 'RESERVE_SEQ'
      Required = True
      Visible = False
    end
    object DiagnosisPATIENT_SEQ: TIntegerField
      FieldName = 'PATIENT_SEQ'
      Origin = 'PATIENT_SEQ'
      Visible = False
    end
    object DiagnosisDOCTOR_SEQ: TIntegerField
      FieldName = 'DOCTOR_SEQ'
      Origin = 'DOCTOR_SEQ'
      Visible = False
    end
    object DiagnosisNOWSTATE: TIntegerField
      FieldName = 'NOWSTATE'
      Origin = 'NOWSTATE'
      Visible = False
    end
    object DiagnosisRESERVATION_DATE: TDateField
      DisplayLabel = #45236#50896#51068
      DisplayWidth = 20
      FieldName = 'RESERVATION_DATE'
      Origin = 'RESERVATION_DATE'
    end
    object DiagnosisRESERVATION_TIME: TTimeField
      DisplayLabel = #45236#50896#49884#44036
      DisplayWidth = 30
      FieldName = 'RESERVATION_TIME'
      Origin = 'RESERVATION_TIME'
    end
    object DiagnosisREASON: TWideStringField
      DisplayLabel = #45236#50896#49324#50976
      DisplayWidth = 40
      FieldName = 'REASON'
      Origin = 'REASON'
      Size = 4000
    end
    object DiagnosisTOTAL_PRICE: TIntegerField
      DisplayLabel = #44208#51228#44552#50529
      FieldName = 'TOTAL_PRICE'
      Origin = 'TOTAL_PRICE'
    end
  end
  object PatientList: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'PatientListProvider'
    RemoteServer = DSProviderConnection
    OnCalcFields = PatientListCalcFields
    Left = 80
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
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'MedicineListProvider'
    RemoteServer = DSProviderConnection
    Left = 72
    Top = 272
    object MedicineListMEDICINE_SEQ: TIntegerField
      DisplayLabel = #51068#47144#48264#54840
      FieldName = 'MEDICINE_SEQ'
      Origin = 'MEDICINE_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MedicineListMEDICINE_NAME: TWideStringField
      DisplayLabel = #50557#54408#47749
      DisplayWidth = 20
      FieldName = 'MEDICINE_NAME'
      Origin = 'MEDICINE_NAME'
      Required = True
      Size = 200
    end
    object MedicineListMEDICINE_IMAGE: TBlobField
      FieldName = 'MEDICINE_IMAGE'
      Origin = 'MEDICINE_IMAGE'
      Visible = False
    end
    object MedicineListMEDICINE_PRICE: TIntegerField
      DisplayLabel = #44032#44201
      DisplayWidth = 30
      FieldName = 'MEDICINE_PRICE'
      Origin = 'MEDICINE_PRICE'
    end
  end
  object SMS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SMSProvider'
    RemoteServer = DSProviderConnection
    Left = 72
    Top = 328
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
  object DiagnosisSource: TDataSource
    DataSet = Diagnosis
    Left = 168
    Top = 216
  end
  object PatientListSource: TDataSource
    DataSet = PatientList
    Left = 168
    Top = 104
  end
  object MedicineListSource: TDataSource
    DataSet = MedicineList
    Left = 168
    Top = 272
  end
  object SMSSource: TDataSource
    Left = 168
    Top = 328
  end
  object Decision: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'RESERVE_SEQ'
    MasterFields = 'RESERVE_SEQ'
    MasterSource = DuringSource
    PacketRecords = 0
    Params = <>
    ProviderName = 'DecisionProvider'
    RemoteServer = DSProviderConnection
    OnCalcFields = DecisionCalcFields
    Left = 264
    Top = 272
    object DecisionRESERVE_SEQ: TIntegerField
      FieldName = 'RESERVE_SEQ'
      Origin = 'RESERVE_SEQ'
      Visible = False
    end
    object DecisionRESERVE_NAME: TStringField
      DisplayLabel = #54872#51088#47749
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'RESERVE_NAME'
      LookupDataSet = Reserve
      LookupKeyFields = 'RESERVE_SEQ'
      LookupResultField = 'PATIENT_NAME'
      KeyFields = 'RESERVE_SEQ'
      Lookup = True
    end
    object DecisionMEDICINE_SEQ: TIntegerField
      FieldName = 'MEDICINE_SEQ'
      Origin = 'MEDICINE_SEQ'
      Visible = False
    end
    object DecisionMEDICINE_NAME: TStringField
      DisplayLabel = #50557#54408#47749
      FieldKind = fkLookup
      FieldName = 'MEDICINE_NAME'
      LookupDataSet = MedicineList
      LookupKeyFields = 'MEDICINE_SEQ'
      LookupResultField = 'MEDICINE_NAME'
      KeyFields = 'MEDICINE_SEQ'
      Lookup = True
    end
    object DecisionMEDICINE_PRICE: TIntegerField
      FieldKind = fkLookup
      FieldName = 'MEDICINE_PRICE'
      LookupDataSet = MedicineList
      LookupKeyFields = 'MEDICINE_SEQ'
      LookupResultField = 'MEDICINE_PRICE'
      KeyFields = 'MEDICINE_SEQ'
      Visible = False
      Lookup = True
    end
    object DecisionACCEPT_AMOUNT: TIntegerField
      DisplayLabel = #52376#48169#47049
      FieldName = 'ACCEPT_AMOUNT'
      Origin = 'ACCEPT_AMOUNT'
    end
    object DecisionPRICE: TIntegerField
      DisplayLabel = #44208#51228#44552#50529
      FieldName = 'PRICE'
      Origin = 'PRICE'
      Visible = False
    end
    object DecisionPRICE_CALC: TIntegerField
      DisplayLabel = #44032#44201
      FieldKind = fkCalculated
      FieldName = 'PRICE_CALC'
      Calculated = True
    end
    object DecisionPATIENT_SEQ: TIntegerField
      FieldName = 'PATIENT_SEQ'
      Origin = 'PATIENT_SEQ'
      Visible = False
    end
    object DecisionDIAGNOSIS_DATE: TDateField
      DisplayLabel = #51652#52272#45216#51676
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'DIAGNOSIS_DATE'
      LookupDataSet = Reserve
      LookupKeyFields = 'RESERVE_SEQ'
      LookupResultField = 'RESERVATION_DATE'
      KeyFields = 'RESERVE_SEQ'
      Visible = False
      Lookup = True
    end
  end
  object DecisionSource: TDataSource
    DataSet = Decision
    Left = 352
    Top = 272
  end
  object DuplicateUser: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DuplicateUserProvider'
    RemoteServer = DSProviderConnection
    Left = 264
    Top = 104
    object DuplicateUserPATIENT_SEQ: TIntegerField
      DisplayLabel = #48264#54840
      DisplayWidth = 5
      FieldName = 'PATIENT_SEQ'
      Required = True
    end
  end
  object DuplicateUserSource: TDataSource
    Left = 352
    Top = 104
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
    Aggregates = <>
    Params = <>
    ProviderName = 'DoctorListProvider'
    RemoteServer = DSProviderConnection
    Left = 264
    Top = 160
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
    Top = 160
  end
  object DuringSource: TDataSource
    DataSet = During
    Left = 352
    Top = 216
  end
  object During: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DuringProvider'
    RemoteServer = DSProviderConnection
    OnCalcFields = DuringCalcFields
    Left = 264
    Top = 216
    object DuringNum: TIntegerField
      DisplayLabel = #49692#48264
      FieldKind = fkCalculated
      FieldName = 'Num'
      Calculated = True
    end
    object DuringRESERVE_SEQ: TIntegerField
      FieldName = 'RESERVE_SEQ'
      Origin = 'RESERVE_SEQ'
      Visible = False
    end
    object DuringPATIENT_NAME: TStringField
      DisplayLabel = #54872#51088#47749
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'PATIENT_NAME'
      LookupDataSet = Reserve
      LookupKeyFields = 'RESERVE_SEQ'
      LookupResultField = 'PATIENT_NAME'
      KeyFields = 'RESERVE_SEQ'
      Lookup = True
    end
    object DuringNOWSTATE: TIntegerField
      FieldName = 'NOWSTATE'
      Origin = 'NOWSTATE'
      Visible = False
    end
    object DuringREASON: TWideStringField
      FieldName = 'REASON'
      Origin = 'REASON'
      Visible = False
      Size = 4000
    end
  end
  object Accept: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AcceptProvider'
    RemoteServer = DSProviderConnection
    Left = 264
    Top = 328
    object AcceptNOWSTATE: TIntegerField
      FieldName = 'NOWSTATE'
      Origin = 'NOWSTATE'
      Visible = False
    end
    object AcceptPATIENT_SEQ: TIntegerField
      FieldName = 'PATIENT_SEQ'
      Origin = 'PATIENT_SEQ'
      ProviderFlags = []
      Visible = False
    end
    object AcceptPATIENT_NAME: TStringField
      DisplayLabel = #54872#51088#47749
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'PATIENT_NAME'
      LookupDataSet = PatientList
      LookupKeyFields = 'PATIENT_SEQ'
      LookupResultField = 'PATIENT_NAME'
      KeyFields = 'PATIENT_SEQ'
      Lookup = True
    end
    object AcceptREASON: TWideStringField
      DisplayLabel = #52376#48169#45236#50857
      DisplayWidth = 50
      FieldName = 'REASON'
      Origin = 'REASON'
      Visible = False
      Size = 4000
    end
    object AcceptTOTAL_PRICE: TIntegerField
      DisplayLabel = #44208#51228#44552#50529
      DisplayWidth = 40
      FieldName = 'TOTAL_PRICE'
      Origin = 'TOTAL_PRICE'
    end
  end
  object AcceptSource: TDataSource
    DataSet = Accept
    Left = 352
    Top = 328
  end
end
