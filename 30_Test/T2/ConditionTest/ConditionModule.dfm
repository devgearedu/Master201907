object dmDB: TdmDB
  OldCreateOrder = False
  Height = 375
  Width = 546
  object FDConnection1: TFDConnection
    Params.Strings = (
      'CharacterSet=UTF8'
      'DriverID=IB'
      'User_Name=sysdba'
      'Password=masterkey')
    LoginPrompt = False
    Left = 96
    Top = 88
  end
  object qryLogin: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM USER_INFO'
      'WHERE USER_ID = :P_USER_ID'
      'AND USER_PWD = :P_USER_PWD')
    Left = 96
    Top = 168
    ParamData = <
      item
        Name = 'P_USER_ID'
        DataType = ftWideString
        ParamType = ptInput
        Size = 128
        Value = Null
      end
      item
        Name = 'P_USER_PWD'
        DataType = ftWideString
        ParamType = ptInput
        Size = 128
      end>
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 312
    Top = 152
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 312
    Top = 80
  end
  object qryUsers: TFDQuery
    SQL.Strings = (
      'SELECT * FROM USER_INFO')
    Left = 96
    Top = 256
  end
end
