object ServerMethods: TServerMethods
  OldCreateOrder = False
  Height = 393
  Width = 567
  object ReservQuery: TFDQuery
    CachedUpdates = True
    Connection = PMConnection
    SQL.Strings = (
      'SELECT * FROM PATIENT_LIST, DOCTOR')
    Left = 56
    Top = 72
    object ReservQueryPATIENT_SEQ: TIntegerField
      FieldName = 'PATIENT_SEQ'
      Origin = 'PATIENT_SEQ'
      Required = True
    end
    object ReservQueryPATIENT_NAME: TWideStringField
      FieldName = 'PATIENT_NAME'
      Origin = 'PATIENT_NAME'
      Required = True
      Size = 200
    end
    object ReservQueryPATIENT_BIRTH: TDateField
      FieldName = 'PATIENT_BIRTH'
      Origin = 'PATIENT_BIRTH'
      Required = True
    end
    object ReservQueryRESERVATION_DATE: TDateField
      FieldName = 'RESERVATION_DATE'
      Origin = 'RESERVATION_DATE'
    end
    object ReservQueryRESERVATION_TIME: TTimeField
      FieldName = 'RESERVATION_TIME'
      Origin = 'RESERVATION_TIME'
    end
    object ReservQueryNOW: TIntegerField
      FieldName = 'NOW'
      Origin = 'NOW'
    end
    object ReservQueryDOCTOR_NAME: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'DOCTOR_NAME'
      Origin = 'DOCTOR_NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
  end
  object DiagnoQuery: TFDQuery
    Connection = PMConnection
    SQL.Strings = (
      'SELECT * FROM PATIENT_LOG, DOCTOR, MEDICINE_LOG')
    Left = 56
    Top = 192
    object DiagnoQueryPATIENT_SEQ: TIntegerField
      FieldName = 'PATIENT_SEQ'
      Origin = 'PATIENT_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DiagnoQueryPATIENT_REASON: TWideStringField
      FieldName = 'PATIENT_REASON'
      Origin = 'PATIENT_REASON'
      Size = 4000
    end
    object DiagnoQueryPATIENT_DIAGNO: TWideStringField
      FieldName = 'PATIENT_DIAGNO'
      Origin = 'PATIENT_DIAGNO'
      Size = 4000
    end
    object DiagnoQueryPAYMENT: TIntegerField
      FieldName = 'PAYMENT'
      Origin = 'PAYMENT'
    end
    object DiagnoQueryACCEPT_AMOUNT: TIntegerField
      FieldName = 'ACCEPT_AMOUNT'
      Origin = 'ACCEPT_AMOUNT'
    end
    object DiagnoQueryDOCTOR_NAME: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'DOCTOR_NAME'
      Origin = 'DOCTOR_NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object DiagnoQueryMEDICINE_SEQ: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MEDICINE_SEQ'
      Origin = 'MEDICINE_SEQ'
      ProviderFlags = []
      ReadOnly = True
    end
    object DiagnoQueryMEDICINE_NAME: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'MEDICINE_NAME'
      Origin = 'MEDICINE_NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object DiagnoQueryMEDICINE_PRICE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MEDICINE_PRICE'
      Origin = 'MEDICINE_PRICE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object PatientListQuery: TFDQuery
    Connection = PMConnection
    SQL.Strings = (
      'SELECT * FROM PATIENT_LIST')
    Left = 56
    Top = 128
    object PatientListQueryPATIENT_SEQ: TIntegerField
      FieldName = 'PATIENT_SEQ'
      Origin = 'PATIENT_SEQ'
      Required = True
    end
    object PatientListQueryPATIENT_NAME: TWideStringField
      FieldName = 'PATIENT_NAME'
      Origin = 'PATIENT_NAME'
      Required = True
      Size = 200
    end
    object PatientListQueryPATIENT_BIRTH: TDateField
      FieldName = 'PATIENT_BIRTH'
      Origin = 'PATIENT_BIRTH'
      Required = True
    end
    object PatientListQueryPATIENT_IMAGE: TBlobField
      FieldName = 'PATIENT_IMAGE'
      Origin = 'PATIENT_IMAGE'
    end
    object PatientListQueryPATIENT_PHONE: TWideStringField
      FieldName = 'PATIENT_PHONE'
      Origin = 'PATIENT_PHONE'
      Size = 44
    end
  end
  object MedicineListQuery: TFDQuery
    Connection = PMConnection
    SQL.Strings = (
      'SELECT * FROM MEDICINE_LOG')
    Left = 56
    Top = 248
    object MedicineListQueryMEDICINE_SEQ: TIntegerField
      FieldName = 'MEDICINE_SEQ'
      Origin = 'MEDICINE_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object MedicineListQueryMEDICINE_NAME: TWideStringField
      FieldName = 'MEDICINE_NAME'
      Origin = 'MEDICINE_NAME'
      Required = True
      Size = 200
    end
    object MedicineListQueryMEDICINE_IMAGE: TBlobField
      FieldName = 'MEDICINE_IMAGE'
      Origin = 'MEDICINE_IMAGE'
    end
    object MedicineListQueryMEDICINE_PRICE: TIntegerField
      FieldName = 'MEDICINE_PRICE'
      Origin = 'MEDICINE_PRICE'
    end
  end
  object SMSQuery: TFDQuery
    Connection = PMConnection
    SQL.Strings = (
      'SELECT * FROM PATIENT_LIST, SMS_DB')
    Left = 56
    Top = 301
    object SMSQueryPATIENT_SEQ: TIntegerField
      FieldName = 'PATIENT_SEQ'
      Origin = 'PATIENT_SEQ'
      Required = True
    end
    object SMSQueryRESERVATION_DATE: TDateField
      FieldName = 'RESERVATION_DATE'
      Origin = 'RESERVATION_DATE'
    end
    object SMSQueryRESERVATION_TIME: TTimeField
      FieldName = 'RESERVATION_TIME'
      Origin = 'RESERVATION_TIME'
    end
    object SMSQuerySMS_INDEX: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'SMS_INDEX'
      Origin = 'SMS_INDEX'
      ProviderFlags = []
      ReadOnly = True
      Size = 2000
    end
    object SMSQuerySMS_TIME: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'SMS_TIME'
      Origin = 'SMS_TIME'
      ProviderFlags = []
      ReadOnly = True
    end
    object SMSQuerySMS_DATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'SMS_DATE'
      Origin = 'SMS_DATE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 288
    Top = 24
  end
  object ReservProvider: TDataSetProvider
    DataSet = ReservQuery
    Left = 168
    Top = 72
  end
  object DiagnoProvider: TDataSetProvider
    DataSet = DiagnoQuery
    Left = 168
    Top = 192
  end
  object PatientListProvider: TDataSetProvider
    DataSet = PatientListQuery
    Left = 168
    Top = 128
  end
  object MedicineListProvider: TDataSetProvider
    DataSet = MedicineListQuery
    Left = 168
    Top = 248
  end
  object SMSProvider: TDataSetProvider
    DataSet = SMSQuery
    Left = 168
    Top = 304
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 168
    Top = 24
  end
  object PMConnection: TFDConnection
    Params.Strings = (
      'Database=C:\Delphi\Delphi_Project\DB\PATIENTLOG.IB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Protocol=TCPIP'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 24
  end
  object DecisionQuery: TFDQuery
    Connection = PMConnection
    SQL.Strings = (
      'SELECT * FROM MEDICINE_LOG, PATIENT_LOG, DOCTOR')
    Left = 288
    Top = 72
    object DecisionQueryPATIENT_SEQ: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PATIENT_SEQ'
      Origin = 'PATIENT_SEQ'
      ProviderFlags = []
      ReadOnly = True
    end
    object DecisionQueryMEDICINE_NAME: TWideStringField
      FieldName = 'MEDICINE_NAME'
      Origin = 'MEDICINE_NAME'
      Required = True
      Size = 200
    end
    object DecisionQueryACCEPT_AMOUNT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ACCEPT_AMOUNT'
      Origin = 'ACCEPT_AMOUNT'
      ProviderFlags = []
      ReadOnly = True
    end
    object DecisionQueryPAYMENT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PAYMENT'
      Origin = 'PAYMENT'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DecisionProvider: TDataSetProvider
    DataSet = DecisionQuery
    Left = 384
    Top = 72
  end
end
