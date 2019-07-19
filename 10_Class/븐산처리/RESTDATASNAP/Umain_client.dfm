object Form212: TForm212
  Left = 0
  Top = 0
  Caption = 'Form212'
  ClientHeight = 308
  ClientWidth = 529
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Tag = 3
    Left = 8
    Top = 64
    Width = 512
    Height = 89
    ColCount = 3
    FixedCols = 0
    RowCount = 2
    TabOrder = 0
    ColWidths = (
      64
      64
      64)
  end
  object Button2: TButton
    Left = 256
    Top = 175
    Width = 265
    Height = 50
    Caption = 'GetDept'
    TabOrder = 1
    OnClick = Button2Click
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://localhost:8080/datasnap/rest/TServerMethods1/getdept'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 88
    Top = 16
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 208
    Top = 24
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    RootElement = ' result[0].depts.dept'
    Left = 280
    Top = 24
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Active = True
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse1
    NestedElements = True
    Left = 352
    Top = 24
  end
  object FDMemTable1: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'code'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'dept'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'section'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 432
    Top = 32
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDMemTable1
    ScopeMappings = <>
    Left = 480
    Top = 16
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      GridControl = StringGrid1
      Columns = <>
    end
  end
end
