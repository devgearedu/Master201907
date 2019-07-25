object ServerMethods12: TServerMethods12
  OldCreateOrder = False
  Height = 524
  Width = 735
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
    IndexFieldNames = 'CODE'
    Connection = fdcnGYM
    UpdateOptions.UpdateTableName = 'CLIENTS'
    UpdateOptions.AutoIncFields = 'CODE'
    TableName = 'CLIENTS'
    Left = 352
    Top = 248
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
      Size = 1020
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
    Left = 464
    Top = 248
  end
  object fdqryClients: TFDQuery
    Connection = fdcnGYM
    SQL.Strings = (
      'SELECT * FROM clients')
    Left = 352
    Top = 320
  end
  object dspQryClients: TDataSetProvider
    DataSet = fdqryClients
    Left = 464
    Top = 320
  end
end
