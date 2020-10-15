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
    DuplicateUserQuery: TFDQuery;
    DuplicateUserProvider: TDataSetProvider;
    PatientListQueryPATIENT_GENDER: TWideStringField;
    PatientListQueryDOCTOR_SEQ: TIntegerField;
    PatientListQueryMEDICINE_SEQ: TIntegerField;
    DoctorListQuery: TFDQuery;
    DoctorListProvider: TDataSetProvider;
    DoctorListQueryDOCTOR_SEQ: TIntegerField;
    DoctorListQueryDOCTOR_NAME: TWideStringField;
    DoctorListQueryDOCTOR_PHONE: TStringField;
    DoctorListQueryDOCTOR_IMAGE: TBlobField;
    ReservQueryNumber: TIntegerField;
    ReservQueryPATIENT_SEQ: TIntegerField;
    ReservQueryPATIENT_NAME: TWideStringField;
    ReservQueryPATIENT_BIRTH: TDateField;
    ReservQueryPATIENT_GENDER: TWideStringField;
    ReservQueryRESERVATION_DATE: TDateField;
    ReservQueryRESERVATION_TIME: TTimeField;
    ReservQueryNOWSTATE: TIntegerField;
    ReservQueryDOCTOR_SEQ: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function DuplicatedUser(ASeq: Integer; AName: string; ABirth: TDateTime): Boolean;

  end;

implementation


{$R *.dfm}


uses System.StrUtils;

function TServerMethods.DuplicatedUser(ASeq: Integer; AName: string;
  ABirth: TDateTime): Boolean;
begin
  Result := False;
  DuplicateUserQuery.Close;
  DuplicateUserQuery.ParamByName('NAME').AsString := AName;
  DuplicateUserQuery.ParamByName('BIRTH').AsDateTime := ABirth;
  DuplicateUserQuery.Open;

  if (DuplicateUserQuery.RecordCount > 0)
    and (DuplicateUserQuery.Fields[0].AsInteger <> ASeq) then
    Result := True;
end;

function TServerMethods.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

