object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 405
  Width = 638
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 160
    Top = 32
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=Sample')
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 272
    Top = 32
  end
  object Insa: TFDTable
    IndexName = 'I_NAME'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'INSA'
    TableName = 'INSA'
    Left = 72
    Top = 120
    object InsaID: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      DisplayLabel = #49324#48264
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object InsaNAME: TStringField
      DisplayLabel = #51060#47492
      DisplayWidth = 14
      FieldName = 'NAME'
      Origin = 'NAME'
    end
    object InsaAGE: TSmallintField
      DisplayLabel = #45208#51060
      DisplayWidth = 10
      FieldName = 'AGE'
      Origin = 'AGE'
      MaxValue = 60
      MinValue = 20
    end
    object InsaDEPT_CODE: TStringField
      DisplayLabel = #48512#49436#53076#46300
      DisplayWidth = 8
      FieldName = 'DEPT_CODE'
      Origin = 'DEPT_CODE'
      Required = True
      Size = 4
    end
    object Insasection: TStringField
      FieldKind = fkLookup
      FieldName = 'section'
      LookupDataSet = Dept
      LookupKeyFields = 'CODE'
      LookupResultField = 'SECTION'
      KeyFields = 'DEPT_CODE'
      Size = 8
      Lookup = True
    end
    object InsaCLASS: TStringField
      DisplayLabel = #51649#44553
      DisplayWidth = 4
      FieldName = 'CLASS'
      Origin = 'CLASS'
      Size = 4
    end
    object InsaIPSA_DATE: TDateField
      DisplayLabel = #51077#49324#51068#51088
      DisplayWidth = 18
      FieldName = 'IPSA_DATE'
      Origin = 'IPSA_DATE'
      DisplayFormat = 'yyyy'#45380'mm'#50900'dd'#51068
      EditMask = '!9999/99/00;1;_'
    end
    object InsaSALARY: TIntegerField
      DisplayLabel = #44553#50668
      DisplayWidth = 15
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
      DisplayWidth = 10
      FieldName = 'PHOTO'
      Origin = 'PHOTO'
      Visible = False
    end
    object InsaGRADE: TStringField
      DisplayLabel = #46321#44553
      DisplayWidth = 4
      FieldName = 'GRADE'
      Origin = 'GRADE'
      Size = 1
    end
    object InsaDuring: TIntegerField
      DisplayLabel = #44540#49549#45380#49688
      FieldKind = fkCalculated
      FieldName = 'During'
      DisplayFormat = '00'#45380
      Calculated = True
    end
  end
  object Dept: TFDTable
    IndexFieldNames = 'CODE'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'DEPT'
    TableName = 'DEPT'
    Left = 64
    Top = 208
  end
  object InsaQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from insa where dept_code = :code')
    Left = 264
    Top = 120
    ParamData = <
      item
        Name = 'CODE'
        ParamType = ptInput
      end>
  end
  object InsaProvider: TDataSetProvider
    DataSet = Insa
    Left = 136
    Top = 128
  end
  object DeptProvider: TDataSetProvider
    DataSet = Dept
    Left = 136
    Top = 208
  end
  object InsaQueryProvider: TDataSetProvider
    DataSet = InsaQuery
    Left = 344
    Top = 120
  end
  object Tot_Query: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select count(id) as total'
      'from insa'
      'where dept_code like :code')
    Left = 260
    Top = 215
    ParamData = <
      item
        Name = 'CODE'
        ParamType = ptInput
      end>
  end
  object FDStoredProc1: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'INSERT_DEPT'
    Left = 348
    Top = 214
    ParamData = <
      item
        Position = 1
        Name = 'PCODE'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Position = 2
        Name = 'PDEPT'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 3
        Name = 'PSECTION'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 264
    Top = 304
  end
  object DeptQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from dept'
      'order by dept,section')
    Left = 64
    Top = 288
  end
  object DeptQueryProvider: TDataSetProvider
    DataSet = DeptQuery
    Left = 136
    Top = 288
  end
end
