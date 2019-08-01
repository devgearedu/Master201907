object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 395
  Width = 340
  object User: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'MobileUserProvider'
    RemoteServer = DSProviderConnection1
    Left = 48
    Top = 112
    object UserPATIENT_SEQ: TIntegerField
      FieldName = 'PATIENT_SEQ'
      Origin = 'PATIENT_SEQ'
    end
    object UserPATIENT_NAME: TWideStringField
      FieldName = 'PATIENT_NAME'
      Origin = 'PATIENT_NAME'
      Size = 200
    end
    object UserPATIENT_BIRTH: TDateField
      FieldName = 'PATIENT_BIRTH'
      Origin = 'PATIENT_BIRTH'
    end
    object UserPATIENT_IMAGE: TBlobField
      FieldName = 'PATIENT_IMAGE'
      Origin = 'PATIENT_IMAGE'
    end
    object UserPATIENT_PHONE: TWideStringField
      FieldName = 'PATIENT_PHONE'
      Origin = 'PATIENT_PHONE'
      Size = 44
    end
    object UserPATIENT_GENDER: TWideStringField
      FieldName = 'PATIENT_GENDER'
      Origin = 'PATIENT_GENDER'
      FixedChar = True
      Size = 4
    end
    object UserUSER_ID: TWideStringField
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
      Size = 200
    end
    object UserUSER_PASSWORD: TWideStringField
      FieldName = 'USER_PASSWORD'
      Origin = 'USER_PASSWORD'
      Size = 200
    end
  end
  object UserReserve: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'MobileReserveProvider'
    RemoteServer = DSProviderConnection1
    Left = 48
    Top = 168
    object UserReserveNum: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Num'
      Calculated = True
    end
    object UserReserveRESERVE_SEQ: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'RESERVE_SEQ'
      Origin = 'RESERVE_SEQ'
    end
    object UserReservePATIENT_SEQ: TIntegerField
      FieldName = 'PATIENT_SEQ'
      Origin = 'PATIENT_SEQ'
    end
    object UserReserveDOCTOR_SEQ: TIntegerField
      FieldName = 'DOCTOR_SEQ'
      Origin = 'DOCTOR_SEQ'
    end
    object UserReserveNOWSTATE: TIntegerField
      FieldName = 'NOWSTATE'
      Origin = 'NOWSTATE'
    end
    object UserReserveRESERVATION_DATE: TDateField
      FieldName = 'RESERVATION_DATE'
      Origin = 'RESERVATION_DATE'
    end
    object UserReserveRESERVATION_TIME: TTimeField
      FieldName = 'RESERVATION_TIME'
      Origin = 'RESERVATION_TIME'
    end
    object UserReserveREASON: TWideStringField
      FieldName = 'REASON'
      Origin = 'REASON'
      Size = 4000
    end
    object UserReserveTOTAL_PRICE: TIntegerField
      FieldName = 'TOTAL_PRICE'
      Origin = 'TOTAL_PRICE'
    end
    object UserReservePATIENT_NAME: TStringField
      FieldKind = fkLookup
      FieldName = 'PATIENT_NAME'
      LookupDataSet = User
      LookupKeyFields = 'PATIENT_SEQ'
      LookupResultField = 'PATIENT_NAME'
      KeyFields = 'PATIENT_SEQ'
      Lookup = True
    end
    object UserReserveDOCTOR_NAME: TStringField
      FieldKind = fkLookup
      FieldName = 'DOCTOR_NAME'
      LookupDataSet = Doctor
      LookupKeyFields = 'DOCTOR_SEQ'
      LookupResultField = 'DOCTOR_NAME'
      KeyFields = 'DOCTOR_SEQ'
      Lookup = True
    end
  end
  object UserListProvider: TDataSetProvider
    DataSet = User
    Left = 168
    Top = 112
  end
  object UserReserveProvider: TDataSetProvider
    DataSet = UserReserve
    Left = 168
    Top = 168
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServermethods'
    Connected = True
    SQLConnection = MobileConnection
    Left = 176
    Top = 32
  end
  object MobileConnection: TSQLConnection
    ConnectionName = 'DataSnapCONNECTION'
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=DataSnap'
      'HostName=localhost'
      'Port=211'
      'CommunicationProtocol=tcp/ip')
    BeforeConnect = MobileConnectionBeforeConnect
    Connected = True
    Left = 48
    Top = 40
  end
  object Doctor: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DoctorListProvider'
    RemoteServer = DSProviderConnection1
    Left = 48
    Top = 224
    object DoctorDOCTOR_SEQ: TIntegerField
      FieldName = 'DOCTOR_SEQ'
      Origin = 'DOCTOR_SEQ'
    end
    object DoctorDOCTOR_NAME: TWideStringField
      FieldName = 'DOCTOR_NAME'
      Origin = 'DOCTOR_NAME'
      Size = 200
    end
    object DoctorDOCTOR_PHONE: TStringField
      FieldName = 'DOCTOR_PHONE'
      Origin = 'DOCTOR_PHONE'
      Size = 200
    end
    object DoctorDOCTOR_IMAGE: TBlobField
      FieldName = 'DOCTOR_IMAGE'
      Origin = 'DOCTOR_IMAGE'
    end
  end
  object DoctorProvider: TDataSetProvider
    DataSet = Doctor
    Left = 168
    Top = 224
  end
  object WaitList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ReserveProvider'
    RemoteServer = DSProviderConnection1
    OnCalcFields = WaitListCalcFields
    Left = 48
    Top = 280
    object WaitListRESERVE_SEQ: TIntegerField
      FieldName = 'RESERVE_SEQ'
    end
    object WaitListPATIENT_SEQ: TIntegerField
      FieldName = 'PATIENT_SEQ'
    end
    object WaitListDOCTOR_SEQ: TIntegerField
      FieldName = 'DOCTOR_SEQ'
    end
    object WaitListPATIENT_NAME: TStringField
      FieldName = 'PATIENT_NAME'
      ReadOnly = True
    end
    object WaitListPATIENT_BIRTH: TDateField
      FieldName = 'PATIENT_BIRTH'
      ReadOnly = True
    end
    object WaitListRESERVATION_DATE: TDateField
      FieldName = 'RESERVATION_DATE'
    end
    object WaitListRESERVATION_TIME: TTimeField
      FieldName = 'RESERVATION_TIME'
    end
    object WaitListNOWSTATE: TIntegerField
      FieldName = 'NOWSTATE'
    end
    object WaitListDOCTOR_NAME: TStringField
      FieldName = 'DOCTOR_NAME'
      ReadOnly = True
    end
    object WaitListREASON: TWideStringField
      FieldName = 'REASON'
      Size = 4000
    end
    object WaitListNum: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Num'
      Calculated = True
    end
  end
  object WaitListProvider: TDataSetProvider
    DataSet = WaitList
    Left = 168
    Top = 280
  end
end
