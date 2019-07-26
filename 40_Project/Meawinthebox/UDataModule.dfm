object UDM: TUDM
  OldCreateOrder = False
  Height = 285
  Width = 495
  object conACADEMY: TFDConnection
    Params.Strings = (
      'Database=C:\ACADEMY\ACADEMY.IB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object dsStudent_List: TDataSource
    DataSet = Student_List
    Left = 112
    Top = 88
  end
  object Student_List: TFDTable
    Active = True
    IndexFieldNames = 'STUDENT_CODE'
    Connection = conACADEMY
    UpdateOptions.UpdateTableName = 'INFORM'
    TableName = 'INFORM'
    Left = 32
    Top = 88
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 128
    Top = 16
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 240
    Top = 16
  end
  object QryScore: TFDQuery
    Active = True
    IndexFieldNames = 'STUDENT_CODE'
    MasterSource = dsStudent_List
    MasterFields = 'STUDENT_CODE'
    Connection = conACADEMY
    SQL.Strings = (
      'SELECT '
      '  INFORM.STUDENT_NAME, EXAM_KIND.EXAM_NAME, '
      '  EXAM_KIND.EXAM_DATE, SCORE.* '
      'FROM '
      '  INFORM, EXAM_KIND, SCORE'
      'WHERE'
      ' SCORE.STUDENT_CODE = INFORM.STUDENT_CODE AND'
      ' SCORE.EXAM_CODE = EXAM_KIND.EXAM_CODE')
    Left = 32
    Top = 144
  end
  object dsQryScore: TDataSource
    DataSet = QryScore
    Left = 112
    Top = 144
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = conACADEMY
    SQL.Strings = (
      'SELECT * FROM ATTENDANCE')
    Left = 32
    Top = 208
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 112
    Top = 200
  end
end
