unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, FireDAC.Phys.IBDef, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.IB, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Datasnap.Provider, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.UI, FireDAC.Phys.IBBase;

type
  TServerMethods1 = class(TDSServerModule)
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Insa: TFDTable;
    InsaID: TIntegerField;
    InsaNAME: TStringField;
    InsaAGE: TSmallintField;
    InsaDEPT_CODE: TStringField;
    Insasection: TStringField;
    InsaCLASS: TStringField;
    InsaIPSA_DATE: TDateField;
    InsaSALARY: TIntegerField;
    Insatax: TFloatField;
    InsaPHOTO: TBlobField;
    InsaGRADE: TStringField;
    InsaDuring: TIntegerField;
    Dept: TFDTable;
    InsaQuery: TFDQuery;
    InsaProvider: TDataSetProvider;
    DeptProvider: TDataSetProvider;
    InsaQueryProvider: TDataSetProvider;
    Tot_Query: TFDQuery;
    FDStoredProc1: TFDStoredProc;
    FDQuery1: TFDQuery;
    DeptQuery: TFDQuery;
    DeptQueryProvider: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function GetCount(value:string):integer;
    function Insert_Dept(code, dept, section:string):integer;
    function Delete_Dept(code:string):integer;
  end;

implementation


{$R *.dfm}


uses System.StrUtils, Vcl.RecError;

function TServerMethods1.Delete_Dept(code: string): integer;
begin
  result := 0;
  FDConnection1.StartTransaction;
  try
    try
      fdQuery1.Close;
      fdQuery1.SQL.Text :=
      'delete from insa where dept_code = :code';
      fdquery1.Params[0].AsString := code;
      fdQuery1.ExecSQL;
    except
     result := 1;
     raise;
    end;

    try
      fdQuery1.Close;
      fdQuery1.SQL.Text :=
      'delete from dept where code = :code';
      fdquery1.Params[0].AsString := code;
      fdQuery1.ExecSQL;
    except
      result := 2;
      raise;
    end;
    FDConnection1.Commit;
  except
    FDConnection1.rollback;
  end;
end;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.GetCount(value: string): integer;
begin
   tot_Query.close;
   tot_Query.Params[0].AsString := value;
   tot_Query.Open;
   result := tot_query.FieldByName('total').Asinteger;
end;

function TServerMethods1.Insert_Dept(code, dept, section: string): integer;
begin
  result := 0;
  FDStoredProc1.Close;
  FDStoredProc1.Parambyname('pcode').AsString := code;
  FDStoredProc1.ParamByName('pDept').asString := dept;
  FDStoredProc1.ParamByName('psection').asString := section;
  try
    FDStoredProc1.ExecProc;
  except
    result := 1;
  end;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

