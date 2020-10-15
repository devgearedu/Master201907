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
    qryPatientList: TFDQuery;
    qryMedicineList: TFDQuery;
    qrySMS: TFDQuery;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    ReserveProvider: TDataSetProvider;
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
    qryDuringRESERVE_SEQ: TIntegerField;
    qryAccept: TFDQuery;
    AcceptProvider: TDataSetProvider;
    qryAcceptREASON: TWideStringField;
    qryAcceptNOWSTATE: TIntegerField;
    qryDecisionPATIENT_SEQ: TIntegerField;
    qryAcceptPATIENT_SEQ: TIntegerField;
    qryAcceptTOTAL_PRICE: TIntegerField;
    qryTotal: TFDQuery;
    qryDiagnosis: TFDQuery;
    DiagnosisProvider: TDataSetProvider;
    qryDiagnosisRESERVE_SEQ: TIntegerField;
    qryDiagnosisPATIENT_SEQ: TIntegerField;
    qryDiagnosisDOCTOR_SEQ: TIntegerField;
    qryDiagnosisNOWSTATE: TIntegerField;
    qryDiagnosisRESERVATION_DATE: TDateField;
    qryDiagnosisRESERVATION_TIME: TTimeField;
    qryDiagnosisREASON: TWideStringField;
    qryDiagnosisTOTAL_PRICE: TIntegerField;
    qryPatientListUSER_ID: TWideStringField;
    qryPatientListUSER_PASSWORD: TWideStringField;
    qryMobileUser: TFDQuery;
    MobileUserProvider: TDataSetProvider;
    qryMobileUserPATIENT_SEQ: TIntegerField;
    qryMobileUserPATIENT_NAME: TWideStringField;
    qryMobileUserPATIENT_BIRTH: TDateField;
    qryMobileUserPATIENT_IMAGE: TBlobField;
    qryMobileUserPATIENT_PHONE: TWideStringField;
    qryMobileUserPATIENT_GENDER: TWideStringField;
    qryMobileUserUSER_ID: TWideStringField;
    qryMobileUserUSER_PASSWORD: TWideStringField;
    qryMobileReserve: TFDQuery;
    MobileReserveProvider: TDataSetProvider;
    qryMobileReserveRESERVE_SEQ: TIntegerField;
    qryMobileReservePATIENT_SEQ: TIntegerField;
    qryMobileReserveDOCTOR_SEQ: TIntegerField;
    qryMobileReserveNOWSTATE: TIntegerField;
    qryMobileReserveRESERVATION_DATE: TDateField;
    qryMobileReserveRESERVATION_TIME: TTimeField;
    qryMobileReserveREASON: TWideStringField;
    qryMobileReserveTOTAL_PRICE: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;

    function DuplicatedUser(ASeq: Integer; AName: string; ABirth: TDateTime): Boolean;
    function AcceptDecision(AReserveSeq: Integer): Boolean;
  end;

implementation


{$R *.dfm}


uses System.StrUtils;

function TServerMethods.AcceptDecision(AReserveSeq: Integer): Boolean; //서버메소드
var
  SQL: string;
  SumPrice: Integer;
begin
  // 예약번호(AReserveSeq)의 처방 금액의 합계를 가져온다. SUM 사용
  SQL := 'SELECT SUM(PRICE) FROM DECISION WHERE RESERVE_SEQ = :RESERVE_SEQ';
  qryTotal.SQL.Text := SQL;                                      //SQL값 지정.
  qryTotal.ParamByName('RESERVE_SEQ').AsInteger := AReserveSeq;  //파라미터값 지정.
  qryTotal.Open;                                                 //Acitve True

  SumPrice := qryTotal.Fields[0].AsInteger;                      //첫번쨰값 가져오기(계산된 총금액)
  qryTotal.Close;

  // 합계금액과 상태(30)를 예약번호의 예약정보에 업데이트한다. UPDATE문 사용
  SQL := 'UPDATE RESERVATION SET TOTAL_PRICE = :TOTAL_PRICE, NOWSTATE = 30 ';
  SQL := SQL + 'WHERE RESERVE_SEQ = :RESERVE_SEQ';               // : 붙인건 파라미터값 이름
  qryTotal.SQL.Text := SQL;
  qryTotal.ParamByName('TOTAL_PRICE').AsInteger := SumPrice;     //파라미터값 지정
  qryTotal.ParamByName('RESERVE_SEQ').AsInteger := AReserveSeq;  //파라미터값 지정
  qryTotal.ExecSQL;                                              //UPDATE는 OPEN이 필요없고 ExecSQL이란 것을 사용.
//
//   위 내용을 처리하고 싶었던 실패의 흔적
//  qryReserve.Edit;                                    // 처방 금액 합계(sum)를 예약정보 금액합계에 업데이트
//  qryReserve.FieldByName('TOTAL_PRICE').AsInteger := qryDecision.FieldByName('PRICE').AsInteger; //금액 PRICE에 넣기
//  qryReserve.FieldByName('NOWSTATE').AsInteger := 30; //현재상태 수납중으로 변경
//
//  qryReserve.Post;
//  qryReserve.ApplyUpdates(-1);

  Result := True;
end;

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

