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
  Vcl.WinXCalendars;

type
  TfrmDataModule = class(TDataModule)
    DSProviderConnection: TDSProviderConnection;
    Reserv: TClientDataSet;
    ReservSource: TDataSource;
    Diagno: TClientDataSet;
    PatientList: TClientDataSet;
    MedicineList: TClientDataSet;
    SMS: TClientDataSet;
    SQLConnection: TSQLConnection;
    DiagnoSource: TDataSource;
    PatientListSource: TDataSource;
    MedicineListSource: TDataSource;
    SMSSource: TDataSource;
    Decision: TClientDataSet;
    DecisionSource: TDataSource;
    DiagnoPATIENT_SEQ: TIntegerField;
    DiagnoPATIENT_REASON: TWideStringField;
    DiagnoPATIENT_DIAGNO: TWideStringField;
    DiagnoPAYMENT: TIntegerField;
    DiagnoACCEPT_AMOUNT: TIntegerField;
    DiagnoDOCTOR_NAME: TWideStringField;
    DiagnoMEDICINE_SEQ: TIntegerField;
    DiagnoMEDICINE_NAME: TWideStringField;
    DiagnoMEDICINE_PRICE: TIntegerField;
    PATIENT_SEQ: TIntegerField;
    PATIENT_NAME: TWideStringField;
    PATIENT_BIRTH: TDateField;
    PATIENT_IMAGE: TBlobField;
    PATIENT_PHONE: TWideStringField;
    MedicineListMEDICINE_SEQ: TIntegerField;
    MedicineListMEDICINE_NAME: TWideStringField;
    MedicineListMEDICINE_IMAGE: TBlobField;
    MedicineListMEDICINE_PRICE: TIntegerField;
    SMSPATIENT_SEQ: TIntegerField;
    SMSRESERVATION_DATE: TDateField;
    SMSRESERVATION_TIME: TTimeField;
    SMSSMS_INDEX: TWideStringField;
    SMSSMS_TIME: TTimeField;
    SMSSMS_DATE: TDateField;
    DecisionPATIENT_NAME: TWideStringField;
    DecisionPATIENT_REASON: TWideStringField;
    DecisionPAYMENT: TIntegerField;
    DuplicateUser: TClientDataSet;
    DuplicateUserSource: TDataSource;
    DuplicateUserPATIENT_SEQ: TIntegerField;
    PatientListPATIENT_GENDER: TWideStringField;
    SqlServerMethod1: TSqlServerMethod;
    PatientListPATIENT_GENDER_STR: TWideStringField;
    DecisionACCEPT_AMOUNT: TIntegerField;
    DoctorList: TClientDataSet;
    DoctorListSource: TDataSource;
    DoctorListDOCTOR_SEQ: TIntegerField;
    DoctorListDOCTOR_NAME: TWideStringField;
    DoctorListDOCTOR_PHONE: TStringField;
    DoctorListDOCTOR_IMAGE: TBlobField;
    ReservPATIENT_SEQ: TIntegerField;
    ReservPATIENT_NAME: TWideStringField;
    ReservPATIENT_BIRTH: TDateField;
    ReservRESERVATION_DATE: TDateField;
    ReservRESERVATION_TIME: TTimeField;
    ReservPATIENT_GENDER: TWideStringField;
    ReservNumber: TIntegerField;
    ReservNOWSTATE: TIntegerField;
    ReservDOCTOR_SEQ: TIntegerField;
    ReservNOWSTATE_STR: TStringField;
    procedure PatientListCalcFields(DataSet: TDataSet);
    procedure ReservCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    PLFormLoadCheck : Boolean;
  end;

var
  dm : TfrmDataModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

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

procedure TfrmDataModule.ReservCalcFields(DataSet: TDataSet);
begin
  if Reserv.FieldByName('NOWSTATE').AsInteger = 0 then      //현재 상태 표시
    Reserv.FieldByName('NOWSTATE_STR').AsString := ''
  else if Reserv.FieldByName('NOWSTATE').AsInteger = 10 then
    Reserv.FieldByName('NOWSTATE_STR').AsString := '예약중'
  else if Reserv.FieldByName('NOWSTATE').AsInteger = 20 then
    Reserv.FieldByName('NOWSTATE_STR').AsString := '진찰중'
  else if Reserv.FieldByName('NOWSTATE').AsInteger = 30 then
    Reserv.FieldByName('NOWSTATE_STR').AsString := '수납중'
  else
    Reserv.FieldByName('NOWSTATE_STR').AsString := '에러';
end;

end.
