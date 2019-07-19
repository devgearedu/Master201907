object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 283
  Width = 541
  object InsaSource: TDataSource
    DataSet = Insa
    Left = 144
    Top = 128
  end
  object DeptSource: TDataSource
    DataSet = Dept
    OnDataChange = DeptSourceDataChange
    Left = 144
    Top = 200
  end
  object InsaquerySource: TDataSource
    DataSet = InsaQuery
    Left = 344
    Top = 120
  end
  object Connection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DbxDatasnap'
      'HostName=localhost'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=24.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Filters={}')
    Connected = True
    Left = 72
    Top = 40
    UniqueId = '{A52FFDB6-7615-4811-99FA-7700E48828CB}'
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = Connection1
    Left = 160
    Top = 40
  end
  object Insa: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NAME'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'AGE'
        DataType = ftSmallint
      end
      item
        Name = 'DEPT_CODE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'section'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'CLASS'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'IPSA_DATE'
        DataType = ftDate
      end
      item
        Name = 'SALARY'
        DataType = ftInteger
      end
      item
        Name = 'tax'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'PHOTO'
        DataType = ftBlob
      end
      item
        Name = 'GRADE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'During'
        Attributes = [faReadonly]
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'i_id'
        Fields = 'id'
      end
      item
        Name = 'i_name'
        Fields = 'name'
      end
      item
        Name = 'i_dept'
        Fields = 'dept_code'
      end>
    Params = <>
    ProviderName = 'InsaProvider'
    RemoteServer = DSProviderConnection1
    StoreDefs = True
    AfterInsert = InsaAfterInsert
    OnCalcFields = InsaCalcFields
    OnNewRecord = InsaNewRecord
    OnReconcileError = InsaReconcileError
    Left = 72
    Top = 128
    object InsaID: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      DisplayLabel = #49324#48264
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object InsaNAME: TStringField
      DisplayLabel = #51060#47492
      FieldName = 'NAME'
      Origin = 'NAME'
    end
    object InsaAGE: TSmallintField
      DisplayLabel = #45208#51060
      FieldName = 'AGE'
      Origin = 'AGE'
      MaxValue = 60
      MinValue = 20
    end
    object InsaDEPT_CODE: TStringField
      DisplayLabel = #48512#49436#53076#46300
      FieldName = 'DEPT_CODE'
      Origin = 'DEPT_CODE'
      Required = True
      Size = 4
    end
    object Insasection: TStringField
      DisplayLabel = #54016#47749
      FieldName = 'section'
      ReadOnly = True
      Size = 8
    end
    object InsaCLASS: TStringField
      DisplayLabel = #51649#44553
      FieldName = 'CLASS'
      Origin = 'CLASS'
      Size = 4
    end
    object InsaIPSA_DATE: TDateField
      DisplayLabel = #51077#49324#51068#51088
      FieldName = 'IPSA_DATE'
      Origin = 'IPSA_DATE'
      DisplayFormat = 'yyyy'#45380'mm'#50900'dd'#51068
      EditMask = '!9999/99/00;1;_'
    end
    object InsaDuring: TIntegerField
      DisplayLabel = #44540#49549#45380#49688
      FieldKind = fkCalculated
      FieldName = 'During'
      DisplayFormat = '#0'#45380
      Calculated = True
    end
    object InsaSALARY: TIntegerField
      DisplayLabel = #44553#50668
      FieldName = 'SALARY'
      Origin = 'SALARY'
      DisplayFormat = '#,##0'#50896
    end
    object Insatax: TFloatField
      DisplayLabel = #49464#44552
      FieldKind = fkCalculated
      FieldName = 'tax'
      DisplayFormat = '#,##0'#50896
      Calculated = True
    end
    object InsaPHOTO: TBlobField
      DisplayLabel = #49324#51652
      FieldName = 'PHOTO'
      Origin = 'PHOTO'
      Visible = False
    end
    object InsaGRADE: TStringField
      DisplayLabel = #46321#44553
      FieldName = 'GRADE'
      Origin = 'GRADE'
      Size = 1
    end
  end
  object Dept: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DeptProvider'
    RemoteServer = DSProviderConnection1
    Left = 72
    Top = 200
  end
  object InsaQuery: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'CODE'
        ParamType = ptInput
      end>
    ProviderName = 'InsaQueryProvider'
    RemoteServer = DSProviderConnection1
    Left = 280
    Top = 120
  end
  object DeptQuery: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DeptQueryProvider'
    RemoteServer = DSProviderConnection1
    Left = 280
    Top = 208
  end
end
