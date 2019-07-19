object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 311
  Width = 454
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=D:\Lectures\DelphiMaster\Master201907\30_Test\T2\DB\TES' +
        'T2DB.IB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 96
    Top = 88
  end
  object qryUsers: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM USER_INFO')
    Left = 96
    Top = 152
  end
  object dspUsers: TDataSetProvider
    DataSet = qryUsers
    Left = 96
    Top = 232
  end
end
