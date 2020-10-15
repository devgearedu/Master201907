object ServerMethods: TServerMethods
  OldCreateOrder = False
  Height = 393
  Width = 567
  object qryReserve: TFDQuery
    CachedUpdates = True
    Connection = PMConnection
    SQL.Strings = (
      'SELECT * '
      'FROM RESERVATION '
      'WHERE NOWSTATE = 10 or NOWSTATE = 20 or NOWSTATE = 30 '
      'ORDER BY RESERVATION_DATE, RESERVATION_TIME ')
    Left = 56
    Top = 136
    object qryReserveNumber: TIntegerField
      DisplayLabel = #49692#48264
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Number'
      Calculated = True
    end
    object qryReserveRESERVE_SEQ: TIntegerField
      FieldName = 'RESERVE_SEQ'
      Origin = 'RESERVE_SEQ'
      Visible = False
    end
    object qryReservePATIENT_SEQ: TIntegerField
      DisplayWidth = 20
      FieldName = 'PATIENT_SEQ'
      Origin = 'PATIENT_SEQ'
      Visible = False
    end
    object qryReserveDOCTOR_SEQ: TIntegerField
      DisplayWidth = 20
      FieldName = 'DOCTOR_SEQ'
      Origin = 'DOCTOR_SEQ'
      Visible = False
    end
    object qryReservePATIENT_NAME: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'PATIENT_NAME'
      LookupDataSet = qryPatientList
      LookupKeyFields = 'PATIENT_SEQ'
      LookupResultField = 'PATIENT_NAME'
      KeyFields = 'PATIENT_SEQ'
      Lookup = True
    end
    object qryReservePATIENT_BIRTH: TDateField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'PATIENT_BIRTH'
      LookupDataSet = qryPatientList
      LookupKeyFields = 'PATIENT_SEQ'
      LookupResultField = 'PATIENT_BIRTH'
      KeyFields = 'PATIENT_SEQ'
      Lookup = True
    end
    object qryReserveRESERVATION_DATE: TDateField
      DisplayLabel = #50696#50557#51068
      DisplayWidth = 20
      FieldName = 'RESERVATION_DATE'
      Origin = 'RESERVATION_DATE'
    end
    object qryReserveRESERVATION_TIME: TTimeField
      DisplayLabel = #49884#44036
      DisplayWidth = 20
      FieldName = 'RESERVATION_TIME'
      Origin = 'RESERVATION_TIME'
    end
    object qryReserveNOWSTATE: TIntegerField
      DisplayWidth = 20
      FieldName = 'NOWSTATE'
      Origin = 'NOWSTATE'
    end
    object qryReserveDOCTOR_NAME: TStringField
      FieldKind = fkLookup
      FieldName = 'DOCTOR_NAME'
      LookupDataSet = qryDoctorList
      LookupKeyFields = 'DOCTOR_SEQ'
      LookupResultField = 'DOCTOR_NAME'
      KeyFields = 'DOCTOR_SEQ'
      Lookup = True
    end
    object qryReserveREASON: TWideStringField
      FieldName = 'REASON'
      Origin = 'REASON'
      Size = 4000
    end
  end
  object qryPatientList: TFDQuery
    Connection = PMConnection
    UpdateOptions.AutoIncFields = 'PATIENT_SEQ'
    SQL.Strings = (
      'SELECT * FROM PATIENT_LIST')
    Left = 56
    Top = 80
    object qryPatientListPATIENT_SEQ: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PATIENT_SEQ'
      Origin = 'PATIENT_SEQ'
    end
    object qryPatientListPATIENT_NAME: TWideStringField
      FieldName = 'PATIENT_NAME'
      Origin = 'PATIENT_NAME'
      Required = True
      Size = 200
    end
    object qryPatientListPATIENT_BIRTH: TDateField
      FieldName = 'PATIENT_BIRTH'
      Origin = 'PATIENT_BIRTH'
      Required = True
    end
    object qryPatientListPATIENT_GENDER: TWideStringField
      FieldName = 'PATIENT_GENDER'
      Origin = 'PATIENT_GENDER'
      FixedChar = True
      Size = 4
    end
    object qryPatientListPATIENT_IMAGE: TBlobField
      FieldName = 'PATIENT_IMAGE'
      Origin = 'PATIENT_IMAGE'
    end
    object qryPatientListPATIENT_PHONE: TWideStringField
      FieldName = 'PATIENT_PHONE'
      Origin = 'PATIENT_PHONE'
      Size = 44
    end
  end
  object qryMedicineList: TFDQuery
    Connection = PMConnection
    SQL.Strings = (
      'SELECT * FROM MEDICINE_List')
    Left = 56
    Top = 192
    object qryMedicineListMEDICINE_SEQ: TIntegerField
      FieldName = 'MEDICINE_SEQ'
      Origin = 'MEDICINE_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMedicineListMEDICINE_NAME: TWideStringField
      FieldName = 'MEDICINE_NAME'
      Origin = 'MEDICINE_NAME'
      Required = True
      Size = 200
    end
    object qryMedicineListMEDICINE_IMAGE: TBlobField
      FieldName = 'MEDICINE_IMAGE'
      Origin = 'MEDICINE_IMAGE'
    end
    object qryMedicineListMEDICINE_PRICE: TIntegerField
      FieldName = 'MEDICINE_PRICE'
      Origin = 'MEDICINE_PRICE'
    end
  end
  object qrySMS: TFDQuery
    Connection = PMConnection
    SQL.Strings = (
      'SELECT * FROM PATIENT_LIST, SMS_DB')
    Left = 56
    Top = 301
    object qrySMSPATIENT_SEQ: TIntegerField
      FieldName = 'PATIENT_SEQ'
      Origin = 'PATIENT_SEQ'
      Required = True
    end
    object qrySMSRESERVATION_DATE: TDateField
      FieldName = 'RESERVATION_DATE'
      Origin = 'RESERVATION_DATE'
    end
    object qrySMSRESERVATION_TIME: TTimeField
      FieldName = 'RESERVATION_TIME'
      Origin = 'RESERVATION_TIME'
    end
    object qrySMSSMS_INDEX: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'SMS_INDEX'
      Origin = 'SMS_INDEX'
      ProviderFlags = []
      ReadOnly = True
      Size = 2000
    end
    object qrySMSSMS_TIME: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'SMS_TIME'
      Origin = 'SMS_TIME'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrySMSSMS_DATE: TDateField
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
  object ReserveProvider: TDataSetProvider
    DataSet = qryReserve
    Left = 168
    Top = 136
  end
  object PatientListProvider: TDataSetProvider
    DataSet = qryPatientList
    Left = 168
    Top = 80
  end
  object MedicineListProvider: TDataSetProvider
    DataSet = qryMedicineList
    Left = 168
    Top = 192
  end
  object SMSProvider: TDataSetProvider
    DataSet = qrySMS
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
  object qryDuplicateUser: TFDQuery
    Connection = PMConnection
    SQL.Strings = (
      'SELECT PATIENT_SEQ FROM PATIENT_LIST'
      'WHERE PATIENT_NAME = :NAME AND PATIENT_BIRTH = :BIRTH')
    Left = 288
    Top = 80
    ParamData = <
      item
        Name = 'NAME'
        DataType = ftWideString
        ParamType = ptInput
        Size = 200
        Value = Null
      end
      item
        Name = 'BIRTH'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object DuplicateUserProvider: TDataSetProvider
    DataSet = qryDuplicateUser
    Left = 384
    Top = 80
  end
  object qryDoctorList: TFDQuery
    Connection = PMConnection
    SQL.Strings = (
      'SELECT * FROM DOCTOR')
    Left = 288
    Top = 136
    object qryDoctorListDOCTOR_SEQ: TIntegerField
      FieldName = 'DOCTOR_SEQ'
      Origin = 'DOCTOR_SEQ'
      Required = True
    end
    object qryDoctorListDOCTOR_NAME: TWideStringField
      FieldName = 'DOCTOR_NAME'
      Origin = 'DOCTOR_NAME'
      Size = 200
    end
    object qryDoctorListDOCTOR_PHONE: TStringField
      FieldName = 'DOCTOR_PHONE'
      Origin = 'DOCTOR_PHONE'
      Size = 200
    end
    object qryDoctorListDOCTOR_IMAGE: TBlobField
      FieldName = 'DOCTOR_IMAGE'
      Origin = 'DOCTOR_IMAGE'
    end
  end
  object DoctorListProvider: TDataSetProvider
    DataSet = qryDoctorList
    Left = 384
    Top = 136
  end
  object DecisionProvider: TDataSetProvider
    DataSet = qryDecision
    Left = 384
    Top = 192
  end
  object qryDecision: TFDQuery
    IndexFieldNames = 'RESERVE_SEQ'
    Connection = PMConnection
    SQL.Strings = (
      
        'SELECT RESERVE_SEQ, MEDICINE_SEQ, PATIENT_SEQ, ACCEPT_AMOUNT, PR' +
        'ICE '
      'FROM DECISION '
      '  LEFT JOIN RESERVATION '
      '  ON DECISION.RESERVE_SEQ = RESERVATION.RESERVE_SEQ')
    Left = 288
    Top = 192
    object qryDecisionPATIENT_SEQ: TIntegerField
      FieldName = 'PATIENT_SEQ'
      Origin = 'PATIENT_SEQ'
      Visible = False
    end
    object qryDecisionRESERVE_SEQ: TIntegerField
      FieldName = 'RESERVE_SEQ'
      Origin = 'RESERVE_SEQ'
    end
    object qryDecisionMEDICINE_SEQ: TIntegerField
      FieldName = 'MEDICINE_SEQ'
      Origin = 'MEDICINE_SEQ'
    end
    object qryDecisionACCEPT_AMOUNT: TIntegerField
      FieldName = 'ACCEPT_AMOUNT'
      Origin = 'ACCEPT_AMOUNT'
    end
    object qryDecisionPRICE: TIntegerField
      FieldName = 'PRICE'
      Origin = 'PRICE'
    end
  end
  object qryDuring: TFDQuery
    Connection = PMConnection
    SQL.Strings = (
      
        'SELECT RESERVE_SEQ, NOWSTATE, REASON FROM RESERVATION WHERE NOWS' +
        'TATE = 20')
    Left = 288
    Top = 248
    object qryDuringRESERVE_SEQ: TIntegerField
      FieldName = 'RESERVE_SEQ'
      Origin = 'RESERVE_SEQ'
    end
    object qryDuringNOWSTATE: TIntegerField
      FieldName = 'NOWSTATE'
      Origin = 'NOWSTATE'
    end
    object qryDuringREASON: TWideStringField
      FieldName = 'REASON'
      Origin = 'REASON'
      Size = 4000
    end
  end
  object DuringProvider: TDataSetProvider
    DataSet = qryDuring
    Left = 384
    Top = 248
  end
  object qryAccept: TFDQuery
    Connection = PMConnection
    SQL.Strings = (
      'SELECT NOWSTATE, PATIENT_SEQ, REASON, TOTAL_PRICE'
      'FROM RESERVATION'
      'WHERE NOWSTATE = 30 ')
    Left = 288
    Top = 304
    object qryAcceptNOWSTATE: TIntegerField
      FieldName = 'NOWSTATE'
      Origin = 'NOWSTATE'
      Visible = False
    end
    object qryAcceptPATIENT_SEQ: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PATIENT_SEQ'
      Origin = 'PATIENT_SEQ'
      ProviderFlags = []
    end
    object qryAcceptREASON: TWideStringField
      FieldName = 'REASON'
      Origin = 'REASON'
      Size = 4000
    end
    object qryAcceptTOTAL_PRICE: TIntegerField
      FieldName = 'TOTAL_PRICE'
      Origin = 'TOTAL_PRICE'
    end
  end
  object AcceptProvider: TDataSetProvider
    DataSet = qryAccept
    Left = 384
    Top = 304
  end
  object qryTotal: TFDQuery
    Connection = PMConnection
    Left = 472
    Top = 248
  end
  object qryDiagnosis: TFDQuery
    Connection = PMConnection
    SQL.Strings = (
      'SELECT * FROM RESERVATION ')
    Left = 56
    Top = 248
    object qryDiagnosisRESERVE_SEQ: TIntegerField
      FieldName = 'RESERVE_SEQ'
      Origin = 'RESERVE_SEQ'
      Required = True
    end
    object qryDiagnosisPATIENT_SEQ: TIntegerField
      FieldName = 'PATIENT_SEQ'
      Origin = 'PATIENT_SEQ'
    end
    object qryDiagnosisDOCTOR_SEQ: TIntegerField
      FieldName = 'DOCTOR_SEQ'
      Origin = 'DOCTOR_SEQ'
    end
    object qryDiagnosisNOWSTATE: TIntegerField
      FieldName = 'NOWSTATE'
      Origin = 'NOWSTATE'
    end
    object qryDiagnosisRESERVATION_DATE: TDateField
      FieldName = 'RESERVATION_DATE'
      Origin = 'RESERVATION_DATE'
    end
    object qryDiagnosisRESERVATION_TIME: TTimeField
      FieldName = 'RESERVATION_TIME'
      Origin = 'RESERVATION_TIME'
    end
    object qryDiagnosisREASON: TWideStringField
      FieldName = 'REASON'
      Origin = 'REASON'
      Size = 4000
    end
    object qryDiagnosisTOTAL_PRICE: TIntegerField
      FieldName = 'TOTAL_PRICE'
      Origin = 'TOTAL_PRICE'
    end
  end
  object DiagnosisProvider: TDataSetProvider
    DataSet = qryDiagnosis
    Left = 168
    Top = 248
  end
end
