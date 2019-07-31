unit PatientManagerDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, Data.DbxDatasnap,
  Data.DBXCommon, IPPeerClient, Datasnap.DBClient, Datasnap.DSConnect,
  Data.SqlExpr, Data.DBXInterBase, Data.FMTBcd, Vcl.ExtCtrls,
  Vcl.WinXCalendars, Vcl.Dialogs;

type
  TfrmDataModule = class(TDataModule)
    DSProviderConnection: TDSProviderConnection;
    Reserve: TClientDataSet;
    ReserveSource: TDataSource;
    Diagnosis: TClientDataSet;
    PatientList: TClientDataSet;
    MedicineList: TClientDataSet;
    SMS: TClientDataSet;
    SQLConnection: TSQLConnection;
    DiagnosisSource: TDataSource;
    PatientListSource: TDataSource;
    MedicineListSource: TDataSource;
    SMSSource: TDataSource;
    Decision: TClientDataSet;
    DecisionSource: TDataSource;
    PATIENT_SEQ: TIntegerField;
    PATIENT_NAME: TWideStringField;
    PATIENT_BIRTH: TDateField;
    PATIENT_IMAGE: TBlobField;
    PATIENT_PHONE: TWideStringField;
    DuplicateUser: TClientDataSet;
    DuplicateUserSource: TDataSource;
    DuplicateUserPATIENT_SEQ: TIntegerField;
    PatientListPATIENT_GENDER: TWideStringField;
    SqlServerMethod1: TSqlServerMethod;
    PatientListPATIENT_GENDER_STR: TWideStringField;
    DoctorList: TClientDataSet;
    DoctorListSource: TDataSource;
    DoctorListDOCTOR_SEQ: TIntegerField;
    DoctorListDOCTOR_NAME: TWideStringField;
    DoctorListDOCTOR_PHONE: TStringField;
    DoctorListDOCTOR_IMAGE: TBlobField;
    ReservePATIENT_SEQ: TIntegerField;
    ReserveRESERVATION_DATE: TDateField;
    ReserveRESERVATION_TIME: TTimeField;
    ReserveNOWSTATE: TIntegerField;
    ReserveDOCTOR_SEQ: TIntegerField;
    ReserveDOCTOR_NAME: TStringField;
    ReserveNOWSTATE_STR: TStringField;
    ReserveNum: TIntegerField;
    MedicineListMEDICINE_SEQ: TIntegerField;
    MedicineListMEDICINE_NAME: TWideStringField;
    MedicineListMEDICINE_IMAGE: TBlobField;
    MedicineListMEDICINE_PRICE: TIntegerField;
    DiagnosisDIAGNOSIS_LOG: TWideStringField;
    DuringSource: TDataSource;
    During: TClientDataSet;
    DecisionRESERVE_SEQ: TIntegerField;
    DecisionACCEPT_AMOUNT: TIntegerField;
    DecisionPRICE: TIntegerField;
    ReserveRESERVE_SEQ: TIntegerField;
    DecisionRESERVE_NAME: TStringField;
    ReserveREASON: TWideStringField;
    ReservePATIENT_NAME: TStringField;
    ReservePATIENT_BIRTH: TDateField;
    DecisionMEDICINE_SEQ: TIntegerField;
    DecisionMEDICINE_NAME: TStringField;
    DiagnosisRESERVE_SEQ: TIntegerField;
    DuringRESERVE_SEQ: TIntegerField;
    DuringNOWSTATE: TIntegerField;
    DuringREASON: TWideStringField;
    DuringPATIENT_NAME: TStringField;
    DuringNum: TIntegerField;
    DecisionMEDICINE_PRICE: TIntegerField;
    DecisionPRICE_CALC: TIntegerField;
    Accept: TClientDataSet;
    AcceptSource: TDataSource;
    AcceptRESERVE_SEQ: TIntegerField;
    AcceptREASON: TWideStringField;
    AcceptPRICE: TIntegerField;
    AcceptACCEPT_NAME: TStringField;
    AcceptNOWSTATE: TIntegerField;
    procedure PatientListCalcFields(DataSet: TDataSet);
    procedure ReserveCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DuringCalcFields(DataSet: TDataSet);
    procedure DecisionCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm : TfrmDataModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TfrmDataModule.DataModuleCreate(Sender: TObject);
begin
  try
    begin
      SQLConnection.Connected := True;
      PatientList.Active := True;
      Reserve.Active := True;
      MedicineList.Active := True;
      Decision.Active := True;
      During.Active := True;
      Accept.Active := True;
      Diagnosis.Active := True;
    end;
  except
    showmessage('서버 연결 상태 확인');
  end;
end;

procedure TfrmDataModule.DecisionCalcFields(DataSet: TDataSet);   //결제금액 계산
begin
  Decision.FieldByName('PRICE_CALC').AsInteger := (Decision.FieldByName('MEDICINE_PRICE').AsInteger) * (Decision.FieldByName('ACCEPT_AMOUNT').AsInteger);
end;

procedure TfrmDataModule.DuringCalcFields(DataSet: TDataSet);
var
  i:integer;
begin
  for i := 0 to During.RecNo do                //DB에 순번넣기
    During.FieldByName('Num').AsInteger := i;
end;

procedure TfrmDataModule.PatientListCalcFields(DataSet: TDataSet);
begin                //입력된 성별 정보에 따라 남자, 여자, 미정으로 표시해줌.
  if PatientList.FieldByName('PATIENT_GENDER').AsString = 'M' then
    PatientList.FieldByName('PATIENT_GENDER_STR').AsString := '남자'
  else if PatientList.FieldByName('PATIENT_GENDER').AsString = 'F' then
    PatientList.FieldByName('PATIENT_GENDER_STR').AsString := '여자'
  else
    PatientList.FieldByName('PATIENT_GENDER_STR').AsString := '미정';
  if PatientListPATIENT_GENDER.AsString = 'M' then
    PatientListPATIENT_GENDER_STR.AsString := '남자'
  else if PatientListPATIENT_GENDER.AsString = 'F' then
    PatientListPATIENT_GENDER_STR.AsString := '여자'
  else
    PatientListPATIENT_GENDER_STR.AsString := '미정';



end;

procedure TfrmDataModule.ReserveCalcFields(DataSet: TDataSet);
var
  i : integer;
begin
  if Reserve.FieldByName('NOWSTATE').AsInteger = 0 then      //현재 상태 표시
    Reserve.FieldByName('NOWSTATE_STR').AsString := ''
  else if Reserve.FieldByName('NOWSTATE').AsInteger = 10 then
    Reserve.FieldByName('NOWSTATE_STR').AsString := '예약중'
  else if Reserve.FieldByName('NOWSTATE').AsInteger = 20 then
    Reserve.FieldByName('NOWSTATE_STR').AsString := '진찰중'
  else if Reserve.FieldByName('NOWSTATE').AsInteger = 30 then
    Reserve.FieldByName('NOWSTATE_STR').AsString := '수납중'
  else
    Reserve.FieldByName('NOWSTATE_STR').AsString := '에러';

  for i := 0 to Reserve.RecNo do                       //DB에 순번넣기
    Reserve.FieldByName('Num').AsInteger := i;

end;

end.
