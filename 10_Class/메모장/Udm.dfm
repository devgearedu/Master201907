object dm: Tdm
  OldCreateOrder = False
  Height = 283
  Width = 541
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=Sample')
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 32
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 160
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 272
    Top = 32
  end
  object Insa: TFDTable
    Active = True
    IndexName = 'I_NAME'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'INSA'
    TableName = 'INSA'
    Left = 64
    Top = 128
  end
  object InsaSource: TDataSource
    DataSet = Insa
    Left = 136
    Top = 128
  end
  object Dept: TFDTable
    Active = True
    IndexFieldNames = 'CODE'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'DEPT'
    TableName = 'DEPT'
    Left = 64
    Top = 208
  end
  object DeptSource: TDataSource
    DataSet = Dept
    Left = 136
    Top = 208
  end
end
