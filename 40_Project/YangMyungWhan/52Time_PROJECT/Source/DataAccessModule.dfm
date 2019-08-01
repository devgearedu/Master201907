object dmDataAccess: TdmDataAccess
  OldCreateOrder = False
  Height = 653
  Width = 825
  object con52Time: TFDConnection
    Params.Strings = (
      
        'Database=D:\git hub\40_Project\YangMyungWhan\52Time_PROJECT\DB\5' +
        '2TIME_DB_V2.IB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 16
    Top = 24
  end
  object qry52Time: TFDQuery
    Active = True
    Connection = con52Time
    SQL.Strings = (
      'SELECT *'
      'FROM TB_USERS')
    Left = 104
    Top = 24
  end
  object qryInformationDept: TFDQuery
    Active = True
    OnCalcFields = qryInformationDeptCalcFields
    Connection = con52Time
    SQL.Strings = (
      'SELECT '
      'TB_USERS.*,'
      'TB_DEPARTMENT.DEPT_DEPT'
      ''
      'FROM'
      'TB_USERS, TB_DEPARTMENT'
      ''
      'WHERE'
      'TB_USERS.DEPT_SEQ = TB_DEPARTMENT.DEPT_SEQ')
    Left = 104
    Top = 88
    object qryInformationDeptUSERS_SEQ: TIntegerField
      FieldName = 'USERS_SEQ'
      Origin = 'USERS_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryInformationDeptUSERS_CODE: TIntegerField
      Alignment = taCenter
      FieldName = 'USERS_CODE'
      Origin = 'USERS_CODE'
    end
    object qryInformationDeptUSERS_NAME: TWideStringField
      Alignment = taCenter
      FieldName = 'USERS_NAME'
      Origin = 'USERS_NAME'
      Size = 40
    end
    object qryInformationDeptUSERS_PASS: TWideStringField
      FieldName = 'USERS_PASS'
      Origin = 'USERS_PASS'
      Size = 60
    end
    object qryInformationDeptUSERS_NUM: TWideStringField
      Alignment = taCenter
      FieldName = 'USERS_NUM'
      Origin = 'USERS_NUM'
      Size = 60
    end
    object qryInformationDeptUSERS_IMG: TBlobField
      FieldName = 'USERS_IMG'
      Origin = 'USERS_IMG'
    end
    object qryInformationDeptUSERS_MA: TWideStringField
      FieldName = 'USERS_MA'
      Origin = 'USERS_MA'
      FixedChar = True
      Size = 4
    end
    object qryInformationDeptDEPT_SEQ: TIntegerField
      FieldName = 'DEPT_SEQ'
      Origin = 'DEPT_SEQ'
    end
    object qryInformationDeptDEPT_DEPT: TWideStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'DEPT_DEPT'
      Origin = 'DEPT_DEPT'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object qryInformationDeptUSERS_MA_OX: TStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = 'USERS_MA_OX'
      Calculated = True
    end
  end
  object qryTimeInsert: TFDQuery
    Active = True
    IndexesActive = False
    Connection = con52Time
    UpdateObject = usTimeInsert
    SQL.Strings = (
      'SELECT'
      'TB_WORKTIMEINSERT.*,'
      'TB_USERS.USERS_NAME'
      ''
      'FROM'
      'TB_WORKTIMEINSERT, TB_USERS'
      ''
      'WHERE'
      'TB_WORKTIMEINSERT.USERS_SEQ = TB_USERS.USERS_SEQ')
    Left = 104
    Top = 144
    object qryTimeInsertWTIT_SEQ: TIntegerField
      Alignment = taCenter
      FieldName = 'WTIT_SEQ'
      Origin = 'WTIT_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryTimeInsertUSERS_SEQ: TIntegerField
      Alignment = taCenter
      FieldName = 'USERS_SEQ'
      Origin = 'USERS_SEQ'
    end
    object qryTimeInsertWTIT_STWORKTIME: TTimeField
      Alignment = taCenter
      FieldName = 'WTIT_STWORKTIME'
      Origin = 'WTIT_STWORKTIME'
      DisplayFormat = 'hh:mm'
    end
    object qryTimeInsertWTIT_FIWORKTIME: TTimeField
      Alignment = taCenter
      FieldName = 'WTIT_FIWORKTIME'
      Origin = 'WTIT_FIWORKTIME'
      DisplayFormat = 'hh:mm'
    end
    object qryTimeInsertWTIT_DATE: TSQLTimeStampField
      Alignment = taCenter
      FieldName = 'WTIT_DATE'
      Origin = 'WTIT_DATE'
    end
    object qryTimeInsertUSERS_NAME: TWideStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'USERS_NAME'
      Origin = 'USERS_NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object qryTimeInsertWTIT_REALWORKTIME: TTimeField
      Alignment = taCenter
      FieldName = 'WTIT_REALWORKTIME'
      Origin = 'WTIT_REALWORKTIME'
      DisplayFormat = 'hh:mm'
    end
  end
  object qryDept: TFDQuery
    Active = True
    Connection = con52Time
    SQL.Strings = (
      'SELECT *'
      'FROM TB_DEPARTMENT')
    Left = 104
    Top = 312
  end
  object dsInformationDept: TDataSource
    DataSet = qryInformationDept
    Left = 208
    Top = 88
  end
  object dsTimeInsert: TDataSource
    DataSet = qryTimeInsert
    Left = 208
    Top = 144
  end
  object dsDept: TDataSource
    DataSet = qryDept
    Left = 208
    Top = 304
  end
  object qryUpdateTimeInsert: TFDQuery
    Connection = con52Time
    SQL.Strings = (
      'UPDATE TB_WORKTIMEINSERT SET'
      'WTIT_FIWORKTIME = :FIWORKTIME'
      'WHERE WTIT_SEQ = :SEQ')
    Left = 104
    Top = 448
    ParamData = <
      item
        Name = 'FIWORKTIME'
        DataType = ftTime
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object dsTimeInsertUpdate: TDataSource
    DataSet = qryUpdateTimeInsert
    Left = 200
    Top = 448
  end
  object usTimeInsert: TFDUpdateSQL
    Connection = con52Time
    InsertSQL.Strings = (
      'INSERT INTO TB_WORKTIMEINSERT'
      '(WTIT_SEQ, USERS_SEQ, WTIT_STWORKTIME, WTIT_FIWORKTIME, '
      '  WTIT_STEXCEPTTIME, WTIT_FIEXCEPTTIME, WTIT_DATE)'
      
        'VALUES (:NEW_WTIT_SEQ, :NEW_USERS_SEQ, :NEW_WTIT_STWORKTIME, :NE' +
        'W_WTIT_FIWORKTIME, '
      
        '  :NEW_WTIT_STEXCEPTTIME, :NEW_WTIT_FIEXCEPTTIME, :NEW_WTIT_DATE' +
        ')')
    ModifySQL.Strings = (
      'UPDATE TB_WORKTIMEINSERT'
      
        'SET WTIT_SEQ = :NEW_WTIT_SEQ, USERS_SEQ = :NEW_USERS_SEQ, WTIT_S' +
        'TWORKTIME = :NEW_WTIT_STWORKTIME, '
      
        '  WTIT_FIWORKTIME = :NEW_WTIT_FIWORKTIME, WTIT_STEXCEPTTIME = :N' +
        'EW_WTIT_STEXCEPTTIME, '
      
        '  WTIT_FIEXCEPTTIME = :NEW_WTIT_FIEXCEPTTIME, WTIT_DATE = :NEW_W' +
        'TIT_DATE'
      'WHERE WTIT_SEQ = :OLD_WTIT_SEQ')
    DeleteSQL.Strings = (
      'DELETE FROM TB_WORKTIMEINSERT'
      'WHERE WTIT_SEQ = :OLD_WTIT_SEQ')
    FetchRowSQL.Strings = (
      
        'SELECT WTIT_SEQ, USERS_SEQ, WTIT_STWORKTIME, WTIT_FIWORKTIME, WT' +
        'IT_STEXCEPTTIME, '
      '  WTIT_FIEXCEPTTIME, WTIT_DATE'
      'FROM TB_WORKTIMEINSERT'
      'WHERE WTIT_SEQ = :OLD_WTIT_SEQ')
    Left = 24
    Top = 240
  end
  object qryAutoTimeInsert: TFDQuery
    Active = True
    Connection = con52Time
    SQL.Strings = (
      'SELECT'
      'TB_WORKTIMEINSERT.*,'
      'TB_USERS.USERS_NAME'
      ''
      'FROM'
      'TB_WORKTIMEINSERT, TB_USERS'
      ''
      'WHERE'
      'TB_WORKTIMEINSERT.USERS_SEQ = TB_USERS.USERS_SEQ')
    Left = 104
    Top = 384
    object qryAutoTimeInsertWTIT_SEQ: TIntegerField
      Alignment = taCenter
      FieldName = 'WTIT_SEQ'
      Origin = 'WTIT_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryAutoTimeInsertUSERS_SEQ: TIntegerField
      Alignment = taCenter
      FieldName = 'USERS_SEQ'
      Origin = 'USERS_SEQ'
    end
    object qryAutoTimeInsertWTIT_STWORKTIME: TTimeField
      Alignment = taCenter
      FieldName = 'WTIT_STWORKTIME'
      Origin = 'WTIT_STWORKTIME'
      DisplayFormat = 'hh:mm'
    end
    object qryAutoTimeInsertWTIT_FIWORKTIME: TTimeField
      Alignment = taCenter
      FieldName = 'WTIT_FIWORKTIME'
      Origin = 'WTIT_FIWORKTIME'
      DisplayFormat = 'hh:mm'
    end
    object qryAutoTimeInsertWTIT_DATE: TSQLTimeStampField
      Alignment = taCenter
      FieldName = 'WTIT_DATE'
      Origin = 'WTIT_DATE'
    end
    object qryAutoTimeInsertUSERS_NAME: TWideStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'USERS_NAME'
      Origin = 'USERS_NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object qryAutoTimeInsertWTIT_REALWORKTIME: TTimeField
      Alignment = taCenter
      FieldName = 'WTIT_REALWORKTIME'
      Origin = 'WTIT_REALWORKTIME'
      DisplayFormat = 'hh:mm'
    end
    object qryAutoTimeInsertWTIT_DAYREALWORKTIME: TTimeField
      FieldName = 'WTIT_DAYREALWORKTIME'
      Origin = 'WTIT_DAYREALWORKTIME'
    end
  end
  object dsAutoTimeInsert: TDataSource
    DataSet = qryAutoTimeInsert
    Left = 208
    Top = 384
  end
  object qryWeekday: TFDQuery
    Connection = con52Time
    SQL.Strings = (
      'SELECT *'
      'FROM TB_WEEKDAY')
    Left = 424
    Top = 32
  end
  object dsWeekday: TDataSource
    DataSet = qryWeekday
    Left = 496
    Top = 32
  end
  object qryRealTime: TFDQuery
    Connection = con52Time
    SQL.Strings = (
      'UPDATE TB_WORKTIMEINSERT'
      'SET WTIT_REALWORKTIME = :WORKTIME'
      'WHERE'
      'WTIT_SEQ = :WTIT_SEQ')
    Left = 424
    Top = 88
    ParamData = <
      item
        Name = 'WORKTIME'
        DataType = ftTime
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'WTIT_SEQ'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryRealTime이름: TStringField
      FieldName = #51060#47492
      LookupDataSet = qryInformationDept
    end
  end
  object dsRealTime: TDataSource
    DataSet = qryRealTime
    Left = 496
    Top = 88
  end
  object qryExceptTime: TFDQuery
    Connection = con52Time
    SQL.Strings = (
      'SELECT*FROM TB_EXCEPTTIME')
    Left = 424
    Top = 152
    object qryExceptTimeET_SEQ: TIntegerField
      Alignment = taCenter
      FieldName = 'ET_SEQ'
      Origin = 'ET_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryExceptTimeWTIT_SEQ: TIntegerField
      Alignment = taCenter
      FieldName = 'WTIT_SEQ'
      Origin = 'WTIT_SEQ'
    end
    object qryExceptTimeET_STEXCEPTTIME: TTimeField
      Alignment = taCenter
      FieldName = 'ET_STEXCEPTTIME'
      Origin = 'ET_STEXCEPTTIME'
      DisplayFormat = 'hh:mm'
    end
    object qryExceptTimeET_FIEXCEPTTIME: TTimeField
      Alignment = taCenter
      FieldName = 'ET_FIEXCEPTTIME'
      Origin = 'ET_FIEXCEPTTIME'
      DisplayFormat = 'hh:mm'
    end
    object qryExceptTimeWTIT_DATE: TSQLTimeStampField
      Alignment = taCenter
      FieldName = 'WTIT_DATE'
      Origin = 'WTIT_DATE'
    end
    object qryExceptTimeET_EXCEPTTIME: TTimeField
      Alignment = taCenter
      FieldName = 'ET_EXCEPTTIME'
      Origin = 'ET_EXCEPTTIME'
      DisplayFormat = 'hh:mm'
    end
  end
  object dsExceptTime: TDataSource
    DataSet = qryExceptTime
    Left = 496
    Top = 152
  end
  object qryUpdateExceptTime: TFDQuery
    Connection = con52Time
    SQL.Strings = (
      'UPDATE TB_EXCEPTTIME'
      'SET ET_EXCEPTTIME = :EXCEPTTIME'
      'WHERE'
      'ET_SEQ = :ET_SEQ')
    Left = 424
    Top = 216
    ParamData = <
      item
        Name = 'EXCEPTTIME'
        DataType = ftTime
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ET_SEQ'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object dsUpdateExceptTime: TDataSource
    DataSet = qryUpdateExceptTime
    Left = 528
    Top = 216
  end
  object qryLogin: TFDQuery
    Connection = con52Time
    SQL.Strings = (
      'SELECT '
      'TB_USERS.USERS_SEQ'
      ''
      'FROM'
      'TB_USERS'
      ''
      'WHERE'
      'TB_USERS.USERS_NAME = :AUSERS_NAME AND  '
      'TB_USERS.USERS_CODE = :AUSERS_CODE AND'
      'TB_USERS.USERS_PASS = :AUSERS_PW')
    Left = 424
    Top = 280
    ParamData = <
      item
        Name = 'AUSERS_NAME'
        DataType = ftWideString
        ParamType = ptInput
        Size = 40
        Value = Null
      end
      item
        Name = 'AUSERS_CODE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'AUSERS_PW'
        DataType = ftWideString
        ParamType = ptInput
        Size = 60
      end>
  end
  object dsLogin: TDataSource
    DataSet = qryLogin
    Left = 504
    Top = 280
  end
  object qryNewMember: TFDQuery
    Connection = con52Time
    SQL.Strings = (
      'SELECT DEPT_SEQ'
      'FROM'
      'TB_DEPARTMENT'
      'WHERE'
      'TB_DEPARTMENT.DEPT_DEPT =:ADEPT_DEPT')
    Left = 424
    Top = 352
    ParamData = <
      item
        Name = 'ADEPT_DEPT'
        DataType = ftWideString
        ParamType = ptInput
        Size = 40
        Value = Null
      end>
  end
  object dsNewMember: TDataSource
    DataSet = qryNewMember
    Left = 504
    Top = 352
  end
  object qryNameInsert: TFDQuery
    Connection = con52Time
    SQL.Strings = (
      'SELECT USERS_SEQ'
      'FROM'
      'TB_USERS'
      'WHERE'
      'TB_USERS.USERS_NAME =:AUSERS_NAME')
    Left = 424
    Top = 416
    ParamData = <
      item
        Name = 'AUSERS_NAME'
        DataType = ftWideString
        ParamType = ptInput
        Size = 40
        Value = Null
      end>
  end
  object dsNameinsert: TDataSource
    DataSet = qryNameInsert
    Left = 504
    Top = 416
  end
  object proInformationDept: TDataSetProvider
    DataSet = qryInformationDept
    Left = 296
    Top = 88
  end
end
