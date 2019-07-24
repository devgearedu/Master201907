unit ServerMethodsUnit;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider,
  FireDAC.Phys.MySQLDef, FireDAC.Phys.MySQL, Data.DBXInterBase, Data.SqlExpr,
  Data.FMTBcd, FireDAC.Phys.FBDef, FireDAC.Phys.FB;

type
  TServerMethods = class(TDSServerModule)
    ReservQuery: TFDQuery;
    DiagnoQuery: TFDQuery;
    PatientListQuery: TFDQuery;
    MedicineListQuery: TFDQuery;
    SMSQuery: TFDQuery;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    ReservProvider: TDataSetProvider;
    DiagnoProvider: TDataSetProvider;
    PatientListProvider: TDataSetProvider;
    MedicineListProvider: TDataSetProvider;
    SMSProvider: TDataSetProvider;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    PMConnection: TFDConnection;
    DecisionQuery: TFDQuery;
    DecisionProvider: TDataSetProvider;
    ReservQueryPATIENT_SEQ: TIntegerField;
    ReservQueryPATIENT_NAME: TWideStringField;
    ReservQueryPATIENT_BIRTH: TDateField;
    ReservQueryRESERVATION_DATE: TDateField;
    ReservQueryRESERVATION_TIME: TTimeField;
    ReservQueryNOW: TIntegerField;
    ReservQueryDOCTOR_NAME: TWideStringField;
    PatientListQueryPATIENT_SEQ: TIntegerField;
    PatientListQueryPATIENT_NAME: TWideStringField;
    PatientListQueryPATIENT_BIRTH: TDateField;
    PatientListQueryPATIENT_IMAGE: TBlobField;
    PatientListQueryPATIENT_PHONE: TWideStringField;
    DiagnoQueryPATIENT_SEQ: TIntegerField;
    DiagnoQueryPATIENT_REASON: TWideStringField;
    DiagnoQueryPATIENT_DIAGNO: TWideStringField;
    DiagnoQueryPAYMENT: TIntegerField;
    DiagnoQueryACCEPT_AMOUNT: TIntegerField;
    DiagnoQueryDOCTOR_NAME: TWideStringField;
    DiagnoQueryMEDICINE_SEQ: TIntegerField;
    DiagnoQueryMEDICINE_NAME: TWideStringField;
    DiagnoQueryMEDICINE_PRICE: TIntegerField;
    MedicineListQueryMEDICINE_SEQ: TIntegerField;
    MedicineListQueryMEDICINE_NAME: TWideStringField;
    MedicineListQueryMEDICINE_IMAGE: TBlobField;
    MedicineListQueryMEDICINE_PRICE: TIntegerField;
    SMSQueryPATIENT_SEQ: TIntegerField;
    SMSQueryRESERVATION_DATE: TDateField;
    SMSQueryRESERVATION_TIME: TTimeField;
    SMSQuerySMS_INDEX: TWideStringField;
    SMSQuerySMS_TIME: TTimeField;
    SMSQuerySMS_DATE: TDateField;
    DecisionQueryPATIENT_SEQ: TIntegerField;
    DecisionQueryMEDICINE_NAME: TWideStringField;
    DecisionQueryACCEPT_AMOUNT: TIntegerField;
    DecisionQueryPAYMENT: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
  end;

implementation


{$R *.dfm}


uses System.StrUtils;

function TServerMethods.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

