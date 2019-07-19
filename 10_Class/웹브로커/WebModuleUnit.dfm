object WebModule8: TWebModule8
  OldCreateOrder = False
  Actions = <
    item
      Default = True
      Name = 'DefaultHandler'
      PathInfo = '/'
      Producer = HomeProducer
    end
    item
      Name = 'WebActionItem1'
      PathInfo = '/Dept'
      Producer = DeptProducer
    end
    item
      Name = 'WebActionItem2'
      PathInfo = '/insa'
      OnAction = WebModule8WebActionItem2Action
    end>
  Height = 389
  Width = 516
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=Sample')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 48
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 152
    Top = 48
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 264
    Top = 48
  end
  object Dept: TFDTable
    Active = True
    IndexFieldNames = 'CODE'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'DEPT'
    TableName = 'DEPT'
    Left = 72
    Top = 128
  end
  object InsaQuery: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from insa'
      'where dept_code =:code')
    Left = 72
    Top = 216
    ParamData = <
      item
        Name = 'CODE'
        DataType = ftString
        ParamType = ptInput
        Value = 'C001'
      end>
  end
  object HomeProducer: TPageProducer
    HTMLFile = 'D:\201907_'#45944#54028#51060#44368#50977'\'#50937#48652#47196#52964'\home.htm'
    Left = 264
    Top = 128
  end
  object DeptProducer: TDataSetTableProducer
    Columns = <
      item
        FieldName = 'CODE'
      end
      item
        FieldName = 'DEPT'
      end
      item
        FieldName = 'SECTION'
      end>
    Header.Strings = (
      '=============================')
    DataSet = Dept
    TableAttributes.BgColor = 'Silver'
    TableAttributes.Border = 1
    OnFormatCell = DeptProducerFormatCell
    Left = 152
    Top = 128
  end
  object InsaProducer: TDataSetTableProducer
    Columns = <
      item
        FieldName = 'NAME'
      end
      item
        FieldName = 'DEPT_CODE'
      end
      item
        FieldName = 'CLASS'
      end
      item
        FieldName = 'IPSA_DATE'
      end>
    DataSet = InsaQuery
    TableAttributes.BgColor = 'Aqua'
    TableAttributes.Border = 1
    Left = 160
    Top = 216
  end
  object DataSetPageProducer1: TDataSetPageProducer
    Left = 264
    Top = 216
  end
end
