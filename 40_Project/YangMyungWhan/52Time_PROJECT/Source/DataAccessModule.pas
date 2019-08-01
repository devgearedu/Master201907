unit DataAccessModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Datasnap.Provider;

type
  TdmDataAccess = class(TDataModule)
    con52Time: TFDConnection;
    qry52Time: TFDQuery;
    qryInformationDept: TFDQuery;
    qryInformationDeptUSERS_SEQ: TIntegerField;
    qryInformationDeptUSERS_CODE: TIntegerField;
    qryInformationDeptUSERS_NAME: TWideStringField;
    qryInformationDeptUSERS_PASS: TWideStringField;
    qryInformationDeptUSERS_NUM: TWideStringField;
    qryInformationDeptUSERS_IMG: TBlobField;
    qryInformationDeptUSERS_MA: TWideStringField;
    qryInformationDeptDEPT_SEQ: TIntegerField;
    qryInformationDeptDEPT_DEPT: TWideStringField;
    qryInformationDeptUSERS_MA_OX: TStringField;
    qryTimeInsert: TFDQuery;
    qryDept: TFDQuery;
    dsInformationDept: TDataSource;
    dsTimeInsert: TDataSource;
    dsDept: TDataSource;
    qryTimeInsertWTIT_SEQ: TIntegerField;
    qryTimeInsertUSERS_SEQ: TIntegerField;
    qryTimeInsertWTIT_STWORKTIME: TTimeField;
    qryTimeInsertWTIT_FIWORKTIME: TTimeField;
    qryTimeInsertWTIT_DATE: TSQLTimeStampField;
    qryTimeInsertUSERS_NAME: TWideStringField;
    qryUpdateTimeInsert: TFDQuery;
    dsTimeInsertUpdate: TDataSource;
    usTimeInsert: TFDUpdateSQL;
    qryAutoTimeInsert: TFDQuery;
    dsAutoTimeInsert: TDataSource;
    qryAutoTimeInsertWTIT_SEQ: TIntegerField;
    qryAutoTimeInsertUSERS_SEQ: TIntegerField;
    qryAutoTimeInsertWTIT_STWORKTIME: TTimeField;
    qryAutoTimeInsertWTIT_FIWORKTIME: TTimeField;
    qryAutoTimeInsertWTIT_DATE: TSQLTimeStampField;
    qryAutoTimeInsertUSERS_NAME: TWideStringField;
    qryWeekday: TFDQuery;
    dsWeekday: TDataSource;
    qryRealTime: TFDQuery;
    dsRealTime: TDataSource;
    qryRealTime이름: TStringField;
    qryTimeInsertWTIT_REALWORKTIME: TTimeField;
    qryAutoTimeInsertWTIT_REALWORKTIME: TTimeField;
    qryExceptTime: TFDQuery;
    dsExceptTime: TDataSource;
    qryAutoTimeInsertWTIT_DAYREALWORKTIME: TTimeField;
    qryUpdateExceptTime: TFDQuery;
    dsUpdateExceptTime: TDataSource;
    qryExceptTimeET_SEQ: TIntegerField;
    qryExceptTimeWTIT_SEQ: TIntegerField;
    qryExceptTimeET_STEXCEPTTIME: TTimeField;
    qryExceptTimeET_FIEXCEPTTIME: TTimeField;
    qryExceptTimeET_EXCEPTTIME: TTimeField;
    qryExceptTimeWTIT_DATE: TSQLTimeStampField;
    qryLogin: TFDQuery;
    dsLogin: TDataSource;
    qryNewMember: TFDQuery;
    dsNewMember: TDataSource;
    qryNameInsert: TFDQuery;
    dsNameinsert: TDataSource;
    proInformationDept: TDataSetProvider;
    procedure qryInformationDeptCalcFields(DataSet: TDataSet);
    function ExecuteLogin(AUSERS_NAME, AUSERS_CODE, AUSERS_PW: String):Integer;
    function NewMember(ADEPT_DEPT: String): Integer;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ExecuteTime(AWorkTime_Seq: Integer; AFiWorkTime: TTime);
    procedure ExecuteRealTime(ARealTime_Seq: Integer; AWtit_StWorkTime, AWtit_FiWorkTime: TTime);
    procedure ExecuteExceptTime(AExceptTime_Seq: Integer; AEt_StExceptTime, AEt_FiExceptTime: TTime);

  end;

var
  dmDataAccess: TdmDataAccess;
    procedure Display_USplash; stdcall;
external 'Project8.dll';

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
uses
  System.StrUtils;

procedure TdmDataAccess.ExecuteExceptTime(AExceptTime_Seq: Integer;
  AEt_StExceptTime, AEt_FiExceptTime: TTime);
begin
  qryUpdateExceptTime.Close;
  qryUpdateExceptTime.ParamByName('EXCEPTTIME').AsDateTime := AEt_FiExceptTime - AEt_StExceptTime;
  qryUpdateExceptTime.ParamByName('ET_SEQ').Asinteger := AExceptTime_Seq;
  qryUpdateExceptTime.ExecSQL;

  qryExceptTime.Refresh;
end;

function TdmDataAccess.ExecuteLogin(AUSERS_NAME, AUSERS_CODE, AUSERS_PW: String):integer;
var
  Check : Integer;
begin

  try
  qryLogin.Close;
  qryLogin.ParamByName('AUSERS_NAME').AsString := AUSERS_NAME;
  qryLogin.ParamByName('AUSERS_CODE').AsString := AUSERS_CODE;
  qryLogin.ParamByName('AUSERS_PW').AsString := AUSERS_PW;
  qryLogin.open;
   Check := qryLogin.FieldByName('USERS_SEQ').AsInteger;
    result := Check;
  Except
    result:= 0;
  end;
end;

procedure TdmDataAccess.ExecuteRealTime(ARealTime_Seq: Integer;
  AWtit_StWorkTime, AWtit_FiWorkTime: TTime);
begin
  qryrealTime.Close;
//  qryrealTime.fieldbyname('WTIT_STWORKTIME').AsDateTime := AWtit_StWorkTime;
//  qryrealTime.fieldbyname('WTIT_FIWORKTIME').AsDateTime := AWtit_FiWorkTime;
  qryRealTime.ParamByName('WORKTIME').AsDateTime := AWtit_FiWorkTime - AWtit_StWorkTime;
  qryRealTime.ParamByName('WTIT_SEQ').Asinteger := ARealTime_Seq;
  qryRealTime.ExecSQL;

  qryAutoTimeInsert.Refresh;
  qryTimeInsert.Refresh;
end;

procedure TdmDataAccess.ExecuteTime(AWorkTime_Seq: Integer; AFiWorkTime: TTime);
begin
  // 기존 출근시간 입력 이후 퇴근시간 추가 업데이트

  qryUpdateTimeInsert.ParamByName('FIWORKTIME').AsDateTime := Now;
  qryUpdateTimeInsert.ParamByName('SEQ').AsInteger := AWorkTime_Seq;
  qryUpdateTimeInsert.ExecSQL;

  qryAutoTimeInsert.Refresh;

end;

function TdmDataAccess.NewMember(ADEPT_DEPT: String): Integer;
var
  ADEPT_SEQ : Integer;
begin
  qryNewMember.Close;
  qryNewMember.ParamByName('DEPT_DEPT').AsString := ADept_dept;
  qryNewMember.Open;
  ADEPT_SEQ := qryNewMember.FieldByName('DEPT_SEQ').AsInteger;
  qryNewMember.Close;
  result := ADEPT_SEQ;
end;

procedure TdmDataAccess.qryInformationDeptCalcFields(DataSet: TDataSet);
var
  MA_OX:string;
begin
  MA_OX := qryInformationDept.FieldByName('USERS_MA').AsString;
  if MA_OX='T' then
    qryInformationDept.FieldByName('USERS_MA_OX').AsString := 'O'
  else
    qryInformationDept.FieldByName('USERS_MA_OX').AsString := 'X';
end;


end.
