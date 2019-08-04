object ServerMethodsGym: TServerMethodsGym
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 534
  Width = 847
  object fdcnGYM: TFDConnection
    Params.Strings = (
      'Database=C:\Users\doces\Desktop\Project\Server\DB\GYM.IB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 48
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 200
    Top = 48
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 328
    Top = 48
  end
  object fdtblClients: TFDTable
    Active = True
    CachedUpdates = True
    IndexFieldNames = 'CODE'
    Connection = fdcnGYM
    UpdateOptions.AssignedValues = [uvCheckReadOnly]
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.UpdateTableName = 'CLIENTS'
    UpdateOptions.AutoIncFields = 'CODE'
    TableName = 'CLIENTS'
    Left = 224
    Top = 352
    object fdtblClientsCODE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODE'
      Origin = 'CODE'
    end
    object fdtblClientsNAME_: TWideStringField
      FieldName = 'NAME_'
      Origin = 'NAME_'
      Size = 128
    end
    object fdtblClientsBIRTH_DATE: TDateField
      FieldName = 'BIRTH_DATE'
      Origin = 'BIRTH_DATE'
    end
    object fdtblClientsMOBILE: TStringField
      FieldName = 'MOBILE'
      Origin = 'MOBILE'
      Size = 11
    end
    object fdtblClientsDATE_OF_SIGN_UP: TDateField
      FieldName = 'DATE_OF_SIGN_UP'
      Origin = 'DATE_OF_SIGN_UP'
    end
    object fdtblClientsEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 64
    end
    object fdtblClientsADDRESS_: TWideStringField
      FieldName = 'ADDRESS_'
      Origin = 'ADDRESS_'
      Size = 200
    end
    object fdtblClientsFAVORITE_BRANCH: TWideStringField
      FieldName = 'FAVORITE_BRANCH'
      Origin = 'FAVORITE_BRANCH'
      Size = 128
    end
    object fdtblClientsVEHICLE_PLATE: TWideStringField
      FieldName = 'VEHICLE_PLATE'
      Origin = 'VEHICLE_PLATE'
      FixedChar = True
      Size = 28
    end
    object fdtblClientsPASSWORD_: TStringField
      FieldName = 'PASSWORD_'
      Origin = 'PASSWORD_'
      Size = 32
    end
    object fdtblClientsDATE_OF_WITHDRAWAL: TDateField
      FieldName = 'DATE_OF_WITHDRAWAL'
      Origin = 'DATE_OF_WITHDRAWAL'
    end
  end
  object dspClients: TDataSetProvider
    DataSet = fdtblClients
    Left = 296
    Top = 336
  end
  object fdqryClients: TFDQuery
    Connection = fdcnGYM
    SQL.Strings = (
      'SELECT * FROM clients')
    Left = 224
    Top = 424
    object fdqryClientsCODE: TIntegerField
      FieldName = 'CODE'
      Origin = 'CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqryClientsNAME_: TWideStringField
      FieldName = 'NAME_'
      Origin = 'NAME_'
      Size = 128
    end
    object fdqryClientsBIRTH_DATE: TDateField
      FieldName = 'BIRTH_DATE'
      Origin = 'BIRTH_DATE'
    end
    object fdqryClientsMOBILE: TStringField
      FieldName = 'MOBILE'
      Origin = 'MOBILE'
      Size = 11
    end
    object fdqryClientsDATE_OF_SIGN_UP: TDateField
      FieldName = 'DATE_OF_SIGN_UP'
      Origin = 'DATE_OF_SIGN_UP'
    end
    object fdqryClientsEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 64
    end
    object fdqryClientsADDRESS_: TWideStringField
      FieldName = 'ADDRESS_'
      Origin = 'ADDRESS_'
      Size = 200
    end
    object fdqryClientsFAVORITE_BRANCH: TWideStringField
      FieldName = 'FAVORITE_BRANCH'
      Origin = 'FAVORITE_BRANCH'
      Size = 128
    end
    object fdqryClientsVEHICLE_PLATE: TWideStringField
      FieldName = 'VEHICLE_PLATE'
      Origin = 'VEHICLE_PLATE'
      FixedChar = True
      Size = 28
    end
    object fdqryClientsPASSWORD_: TStringField
      FieldName = 'PASSWORD_'
      Origin = 'PASSWORD_'
      Size = 32
    end
    object fdqryClientsDATE_OF_WITHDRAWAL: TDateField
      FieldName = 'DATE_OF_WITHDRAWAL'
      Origin = 'DATE_OF_WITHDRAWAL'
    end
  end
  object dspQryClients: TDataSetProvider
    DataSet = fdqryClients
    Left = 288
    Top = 408
  end
  object fdtblCoaches: TFDTable
    Active = True
    CachedUpdates = True
    IndexFieldNames = 'CODE'
    Connection = fdcnGYM
    UpdateOptions.UpdateTableName = 'COACHES'
    TableName = 'COACHES'
    Left = 32
    Top = 256
    object fdtblCoachesCODE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODE'
      Origin = 'CODE'
    end
    object fdtblCoachesNAME_: TWideStringField
      FieldName = 'NAME_'
      Origin = 'NAME_'
      Size = 128
    end
    object fdtblCoachesBIRTH_DATE: TDateField
      FieldName = 'BIRTH_DATE'
      Origin = 'BIRTH_DATE'
    end
    object fdtblCoachesMOBILE: TStringField
      FieldName = 'MOBILE'
      Origin = 'MOBILE'
      Size = 11
    end
    object fdtblCoachesSPORTS: TWideStringField
      FieldName = 'SPORTS'
      Origin = 'SPORTS'
      Size = 24
    end
    object fdtblCoachesDATE_OF_ENTER: TDateField
      FieldName = 'DATE_OF_ENTER'
      Origin = 'DATE_OF_ENTER'
    end
    object fdtblCoachesEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 64
    end
    object fdtblCoachesADDRESS_: TWideStringField
      FieldName = 'ADDRESS_'
      Origin = 'ADDRESS_'
      Size = 200
    end
    object fdtblCoachesVEHICLE_PLATE: TWideStringField
      FieldName = 'VEHICLE_PLATE'
      Origin = 'VEHICLE_PLATE'
      FixedChar = True
      Size = 28
    end
    object fdtblCoachesPASSWORD_: TStringField
      FieldName = 'PASSWORD_'
      Origin = 'PASSWORD_'
      Size = 32
    end
    object fdtblCoachesPICTURE: TBlobField
      FieldName = 'PICTURE'
      Origin = 'PICTURE'
    end
    object fdtblCoachesDATE_OF_RESIGN: TDateField
      FieldName = 'DATE_OF_RESIGN'
      Origin = 'DATE_OF_RESIGN'
    end
  end
  object dspCoaches: TDataSetProvider
    DataSet = fdtblCoaches
    Left = 128
    Top = 256
  end
  object fdqryCoaches: TFDQuery
    Connection = fdcnGYM
    SQL.Strings = (
      'SELECT * FROM coaches')
    Left = 40
    Top = 344
    object fdqryCoachesCODE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODE'
      Origin = 'CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdqryCoachesNAME_: TWideStringField
      FieldName = 'NAME_'
      Origin = 'NAME_'
      Size = 128
    end
    object fdqryCoachesBIRTH_DATE: TDateField
      FieldName = 'BIRTH_DATE'
      Origin = 'BIRTH_DATE'
    end
    object fdqryCoachesMOBILE: TStringField
      FieldName = 'MOBILE'
      Origin = 'MOBILE'
      Size = 11
    end
    object fdqryCoachesSPORTS: TWideStringField
      FieldName = 'SPORTS'
      Origin = 'SPORTS'
      Size = 24
    end
    object fdqryCoachesDATE_OF_ENTER: TDateField
      FieldName = 'DATE_OF_ENTER'
      Origin = 'DATE_OF_ENTER'
    end
    object fdqryCoachesEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 64
    end
    object fdqryCoachesADDRESS_: TWideStringField
      FieldName = 'ADDRESS_'
      Origin = 'ADDRESS_'
      Size = 200
    end
    object fdqryCoachesVEHICLE_PLATE: TWideStringField
      FieldName = 'VEHICLE_PLATE'
      Origin = 'VEHICLE_PLATE'
      FixedChar = True
      Size = 28
    end
    object fdqryCoachesPASSWORD_: TStringField
      FieldName = 'PASSWORD_'
      Origin = 'PASSWORD_'
      Size = 32
    end
    object fdqryCoachesPICTURE: TBlobField
      FieldName = 'PICTURE'
      Origin = 'PICTURE'
    end
    object fdqryCoachesDATE_OF_RESIGN: TDateField
      FieldName = 'DATE_OF_RESIGN'
      Origin = 'DATE_OF_RESIGN'
    end
  end
  object dspQryCoaches: TDataSetProvider
    DataSet = fdqryCoaches
    Left = 120
    Top = 328
  end
  object fdtblCourses: TFDTable
    Active = True
    CachedUpdates = True
    IndexFieldNames = 'CODE'
    Connection = fdcnGYM
    UpdateOptions.UpdateTableName = 'COURSES'
    TableName = 'COURSES'
    Left = 376
    Top = 160
    object fdtblCoursesCODE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODE'
      Origin = 'CODE'
    end
    object fdtblCoursesCOACH_CODE: TIntegerField
      FieldName = 'COACH_CODE'
      Origin = 'COACH_CODE'
    end
    object fdtblCoursesNAME_: TWideStringField
      FieldName = 'NAME_'
      Origin = 'NAME_'
      Size = 24
    end
    object fdtblCoursesWEEKDAYS: TWideStringField
      FieldName = 'WEEKDAYS'
      Origin = 'WEEKDAYS'
      Size = 12
    end
    object fdtblCoursesYEAR_AND_MONTH: TStringField
      FieldName = 'YEAR_AND_MONTH'
      Origin = 'YEAR_AND_MONTH'
      FixedChar = True
      Size = 6
    end
    object fdtblCoursesBEGIN_TIME: TTimeField
      FieldName = 'BEGIN_TIME'
      Origin = 'BEGIN_TIME'
    end
    object fdtblCoursesLOCATION_: TWideStringField
      FieldName = 'LOCATION_'
      Origin = 'LOCATION_'
      Size = 24
    end
    object fdtblCoursesMINIMUM_ENROLL: TIntegerField
      FieldName = 'MINIMUM_ENROLL'
      Origin = 'MINIMUM_ENROLL'
    end
    object fdtblCoursesCURRENT_ENROLL: TIntegerField
      FieldName = 'CURRENT_ENROLL'
      Origin = 'CURRENT_ENROLL'
    end
    object fdtblCoursesMAXIMUM_ENROLL: TIntegerField
      FieldName = 'MAXIMUM_ENROLL'
      Origin = 'MAXIMUM_ENROLL'
    end
    object fdtblCoursesPRICE: TIntegerField
      FieldName = 'PRICE'
      Origin = 'PRICE'
    end
    object fdtblCoursesEND_TIME: TTimeField
      FieldName = 'END_TIME'
      Origin = 'END_TIME'
    end
    object fdtblCoursesIS_CANCELED: TStringField
      FieldName = 'IS_CANCELED'
      Origin = 'IS_CANCELED'
      FixedChar = True
      Size = 1
    end
  end
  object fdqryCourses: TFDQuery
    Connection = fdcnGYM
    SQL.Strings = (
      'SELECT * FROM courses')
    Left = 376
    Top = 216
  end
  object dspCourses: TDataSetProvider
    DataSet = fdtblCourses
    Left = 456
    Top = 168
  end
  object dspQryCourses: TDataSetProvider
    DataSet = fdqryCourses
    Left = 456
    Top = 232
  end
  object fdtblEnrollments: TFDTable
    Active = True
    CachedUpdates = True
    IndexFieldNames = 'CLIENT_CODE;COURSE_CODE'
    Connection = fdcnGYM
    UpdateOptions.UpdateTableName = 'ENROLLMENTS'
    TableName = 'ENROLLMENTS'
    Left = 488
    Top = 328
    object fdtblEnrollmentsCLIENT_CODE: TIntegerField
      FieldName = 'CLIENT_CODE'
      Origin = 'CLIENT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdtblEnrollmentsCOURSE_CODE: TIntegerField
      FieldName = 'COURSE_CODE'
      Origin = 'COURSE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdtblEnrollmentsCOACH_CODE: TIntegerField
      FieldName = 'COACH_CODE'
      Origin = 'COACH_CODE'
    end
    object fdtblEnrollmentsTIME_OF_ENROLLMENT: TSQLTimeStampField
      FieldName = 'TIME_OF_ENROLLMENT'
      Origin = 'TIME_OF_ENROLLMENT'
      Required = True
    end
  end
  object fdqryEnrollments: TFDQuery
    Connection = fdcnGYM
    SQL.Strings = (
      'SELECT * FROM enrollments')
    Left = 495
    Top = 391
  end
  object dspEnrollments: TDataSetProvider
    DataSet = fdtblEnrollments
    Left = 574
    Top = 343
  end
  object dspQryEnrollments: TDataSetProvider
    DataSet = fdqryEnrollments
    Left = 586
    Top = 407
  end
  object fdtblAttendances: TFDTable
    Active = True
    CachedUpdates = True
    IndexFieldNames = 'CLIENT_CODE;COURSE_CODE'
    Connection = fdcnGYM
    UpdateOptions.UpdateTableName = 'ATTENDANCES'
    TableName = 'ATTENDANCES'
    Left = 624
    Top = 144
    object fdtblAttendancesCLIENT_CODE: TIntegerField
      FieldName = 'CLIENT_CODE'
      Origin = 'CLIENT_CODE'
      Required = True
    end
    object fdtblAttendancesCOURSE_CODE: TIntegerField
      FieldName = 'COURSE_CODE'
      Origin = 'COURSE_CODE'
      Required = True
    end
    object fdtblAttendancesCOACH_CODE: TIntegerField
      FieldName = 'COACH_CODE'
      Origin = 'COACH_CODE'
    end
    object fdtblAttendancesDATE_OF_COURSE: TDateField
      FieldName = 'DATE_OF_COURSE'
      Origin = 'DATE_OF_COURSE'
    end
    object fdtblAttendancesIS_PRESENT: TStringField
      FieldName = 'IS_PRESENT'
      Origin = 'IS_PRESENT'
      FixedChar = True
      Size = 1
    end
  end
  object fdqryAttendances: TFDQuery
    Connection = fdcnGYM
    SQL.Strings = (
      'SELECT * FROM attendances')
    Left = 624
    Top = 208
  end
  object dspAttendances: TDataSetProvider
    DataSet = fdtblAttendances
    Left = 720
    Top = 128
  end
  object dspQryAttendances: TDataSetProvider
    DataSet = fdqryAttendances
    Left = 712
    Top = 184
  end
end
