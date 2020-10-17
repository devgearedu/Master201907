object DM: TDM
  OldCreateOrder = False
  Height = 291
  Width = 417
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=Novel')
    Left = 32
    Top = 24
  end
  object Writer: TFDTable
    IndexFieldNames = 'WRITER_ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'TB_WRITER'
    TableName = 'TB_WRITER'
    Left = 32
    Top = 112
    object WriterWRITER_ID: TWideStringField
      DisplayWidth = 200
      FieldName = 'WRITER_ID'
      Origin = 'WRITER_ID'
      Required = True
      Size = 200
    end
    object WriterWRITER_PW: TIntegerField
      DisplayWidth = 13
      FieldName = 'WRITER_PW'
      Origin = 'WRITER_PW'
      Required = True
    end
    object WriterWRITER_NICKNAME: TWideStringField
      DisplayWidth = 22
      FieldName = 'WRITER_NICKNAME'
      Origin = 'WRITER_NICKNAME'
      Required = True
      Size = 200
    end
    object WriterUP_LOAD: TIntegerField
      DisplayWidth = 10
      FieldName = 'UP_LOAD'
      Origin = 'UP_LOAD'
      Required = True
    end
    object WriterWRITER_POINT: TIntegerField
      DisplayWidth = 12
      FieldName = 'WRITER_POINT'
      Origin = 'WRITER_POINT'
      Required = True
    end
    object WriterNO_WRITE: TStringField
      DisplayWidth = 9
      FieldName = 'NO_WRITE'
      Origin = 'NO_WRITE'
      FixedChar = True
      Size = 1
    end
    object WriterWRITER_GOOD: TIntegerField
      DisplayWidth = 12
      FieldName = 'WRITER_GOOD'
      Origin = 'WRITER_GOOD'
      Required = True
    end
    object WriterWRITER_NOTGOOD: TIntegerField
      DisplayWidth = 16
      FieldName = 'WRITER_NOTGOOD'
      Origin = 'WRITER_NOTGOOD'
      Required = True
    end
    object WriterWRITER_LOGIN: TDateField
      DisplayWidth = 12
      FieldName = 'WRITER_LOGIN'
      Origin = 'WRITER_LOGIN'
      Required = True
    end
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 160
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 272
    Top = 24
  end
  object Novel: TFDTable
    IndexFieldNames = 'NOVEL_CODE'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'TB_NOVEL'
    TableName = 'TB_NOVEL'
    Left = 32
    Top = 168
    object NovelNOVEL_CODE: TIntegerField
      FieldName = 'NOVEL_CODE'
      Origin = 'NOVEL_CODE'
      Required = True
    end
    object NovelWRITER_ID: TWideStringField
      FieldName = 'WRITER_ID'
      Origin = 'WRITER_ID'
      Required = True
      Size = 200
    end
    object NovelGENRE_CODE: TIntegerField
      FieldName = 'GENRE_CODE'
      Origin = 'GENRE_CODE'
      Required = True
    end
    object NovelNOVEL_TITLE: TWideStringField
      FieldName = 'NOVEL_TITLE'
      Origin = 'NOVEL_TITLE'
      Required = True
      Size = 1000
    end
    object NovelVIEW_POINT: TIntegerField
      FieldName = 'VIEW_POINT'
      Origin = 'VIEW_POINT'
      Required = True
    end
    object NovelNOVEL_CREATE: TDateField
      FieldName = 'NOVEL_CREATE'
      Origin = 'NOVEL_CREATE'
    end
  end
  object Sub: TFDTable
    IndexFieldNames = 'SUB_CODE'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'TB_SUB'
    TableName = 'TB_SUB'
    Left = 32
    Top = 224
    object SubSUB_CODE: TIntegerField
      FieldName = 'SUB_CODE'
      Origin = 'SUB_CODE'
      Required = True
    end
    object SubNOVEL_CODE: TIntegerField
      FieldName = 'NOVEL_CODE'
      Origin = 'NOVEL_CODE'
      Required = True
    end
    object SubWRITER_ID: TWideStringField
      FieldName = 'WRITER_ID'
      Origin = 'WRITER_ID'
      Required = True
      Size = 200
    end
    object SubGENRE_CODE: TIntegerField
      FieldName = 'GENRE_CODE'
      Origin = 'GENRE_CODE'
      Required = True
    end
    object SubSUB_TITLE: TWideStringField
      FieldName = 'SUB_TITLE'
      Origin = 'SUB_TITLE'
      Required = True
      Size = 200
    end
    object SubCONTENT_TXT: TMemoField
      FieldName = 'CONTENT_TXT'
      Origin = 'CONTENT_TXT'
      BlobType = ftMemo
    end
    object SubSUB_NUM: TIntegerField
      FieldName = 'SUB_NUM'
      Origin = 'SUB_NUM'
      Required = True
    end
    object SubSUB_CREATE: TDateField
      FieldName = 'SUB_CREATE'
      Origin = 'SUB_CREATE'
    end
  end
  object Writer_Source: TDataSource
    DataSet = Writer
    Left = 120
    Top = 112
  end
  object Novel_Source: TDataSource
    DataSet = Novel
    Left = 120
    Top = 168
  end
  object Sub_Source: TDataSource
    DataSet = Sub
    Left = 120
    Top = 224
  end
end
