unit DM_Novel;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.Phys.FBDef, FireDAC.Comp.UI, FireDAC.Phys.IBBase,
  FireDAC.Phys.FB;

type
  TDM = class(TDataModule)
    FDConnection1: TFDConnection;
    Writer: TFDTable;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Novel: TFDTable;
    Sub: TFDTable;
    Writer_Source: TDataSource;
    Novel_Source: TDataSource;
    Sub_Source: TDataSource;
    WriterWRITER_ID: TWideStringField;
    WriterWRITER_PW: TIntegerField;
    WriterWRITER_NICKNAME: TWideStringField;
    WriterUP_LOAD: TIntegerField;
    WriterWRITER_POINT: TIntegerField;
    WriterNO_WRITE: TStringField;
    WriterWRITER_GOOD: TIntegerField;
    WriterWRITER_NOTGOOD: TIntegerField;
    WriterWRITER_LOGIN: TDateField;
    NovelNOVEL_CODE: TIntegerField;
    NovelWRITER_ID: TWideStringField;
    NovelGENRE_CODE: TIntegerField;
    NovelNOVEL_TITLE: TWideStringField;
    NovelVIEW_POINT: TIntegerField;
    NovelNOVEL_CREATE: TDateField;
    SubSUB_CODE: TIntegerField;
    SubNOVEL_CODE: TIntegerField;
    SubWRITER_ID: TWideStringField;
    SubGENRE_CODE: TIntegerField;
    SubSUB_TITLE: TWideStringField;
    SubCONTENT_TXT: TMemoField;
    SubSUB_NUM: TIntegerField;
    SubSUB_CREATE: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
