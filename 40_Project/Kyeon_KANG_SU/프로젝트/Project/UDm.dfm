object DataModule4: TDataModule4
  OldCreateOrder = False
  Height = 442
  Width = 649
  object qryMenu: TFDQuery
    Active = True
    Connection = POS_Connection
    SQL.Strings = (
      'select * from menu')
    Left = 176
    Top = 48
  end
  object DataSource_Menu: TDataSource
    AutoEdit = False
    DataSet = qryMenu
    Left = 256
    Top = 48
  end
  object POS_Connection: TFDConnection
    Params.Strings = (
      'Database=C:\'#54532#47196#51229#53944'\DB\PROJECTDB.IB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 40
  end
end
