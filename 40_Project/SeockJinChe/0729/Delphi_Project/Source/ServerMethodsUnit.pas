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
    qryReserve: TFDQuery;
    qryDiagnosis: TFDQuery;
    qryPatientList: TFDQuery;
    qryMedicineList: TFDQuery;
    qrySMS: TFDQuery;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    ReserveProvider: TDataSetProvider;
    DiagnoProvider: TDataSetProvider;
    PatientListProvider: TDataSetProvider;
    MedicineListProvider: TDataSetProvider;
    SMSProvider: TDataSetProvider;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    PMConnection: TFDConnection;
    qryPatientListPATIENT_SEQ: TIntegerField;
    qryPatientListPATIENT_NAME: TWideStringField;
    qryPatientListPATIENT_BIRTH: TDateField;
    qryPatientListPATIENT_IMAGE: TBlobField;
    qryPatientListPATIENT_PHONE: TWideStringField;
    qrySMSPATIENT_SEQ: TIntegerField;
    qrySMSRESERVATION_DATE: TDateField;
    qrySMSRESERVATION_TIME: TTimeField;
    qrySMSSMS_INDEX: TWideStringField;
    qrySMSSMS_TIME: TTimeField;
    qrySMSSMS_DATE: TDateField;
    qryDuplicateUser: TFDQuery;
    DuplicateUserProvider: TDataSetProvider;
    qryPatientListPATIENT_GENDER: TWideStringField;
    qryDoctorList: TFDQuery;
    DoctorListProvider: TDataSetProvider;
    qryDoctorListDOCTOR_SEQ: TIntegerField;
    qryDoctorListDOCTOR_NAME: TWideStringField;
    qryDoctorListDOCTOR_PHONE: TStringField;
    qryDoctorListDOCTOR_IMAGE: TBlobField;
    qryReserveNumber: TIntegerField;
    qryReservePATIENT_SEQ: TIntegerField;
    qryReserveRESERVATION_DATE: TDateField;
    qryReserveRESERVATION_TIME: TTimeField;
    qryReserveNOWSTATE: TIntegerField;
    qryReserveDOCTOR_SEQ: TIntegerField;
    qryReservePATIENT_NAME: TStringField;
    qryReservePATIENT_BIRTH: TDateField;
    qryReserveDOCTOR_NAME: TStringField;
    qryMedicineListMEDICINE_SEQ: TIntegerField;
    qryMedicineListMEDICINE_NAME: TWideStringField;
    qryMedicineListMEDICINE_IMAGE: TBlobField;
    qryMedicineListMEDICINE_PRICE: TIntegerField;
    qryDiagnosisDIAGNOSIS_LOG: TWideStringField;
    qryReserveRESERVE_SEQ: TIntegerField;
    qryReserveREASON: TWideStringField;
    DecisionProvider: TDataSetProvider;
    qryDecision: TFDQuery;
    qryDecisionRESERVE_SEQ: TIntegerField;
    qryDecisionACCEPT_AMOUNT: TIntegerField;
    qryDecisionPRICE: TIntegerField;
    qryDuring: TFDQuery;
    DuringProvider: TDataSetProvider;
    qryDuringNOWSTATE: TIntegerField;
    qryDuringREASON: TWideStringField;
    qryDecisionMEDICINE_SEQ: TIntegerField;
    qryDiagnosisRESERVE_SEQ: TIntegerField;
    qryDuringRESERVE_SEQ: TIntegerField;
    qryAccept: TFDQuery;
    AcceptProvider: TDataSetProvider;
    qryAcceptRESERVE_SEQ: TIntegerField;
    qryAcceptREASON: TWideStringField;
    qryAcceptPRICE: TIntegerField;
    qryAcceptNOWSTATE: TIntegerField;
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
  qryDuplicateUser.Close;
  qryDuplicateUser.ParamByName('NAME').AsString := AName;
  qryDuplicateUser.ParamByName('BIRTH').AsDateTime := ABirth;
  qryDuplicateUser.Open;

  if (qryDuplicateUser.RecordCount > 0)
    and (qryDuplicateUser.Fields[0].AsInteger <> ASeq) then
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

