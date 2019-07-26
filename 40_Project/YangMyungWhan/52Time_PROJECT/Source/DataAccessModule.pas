unit DataAccessModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

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
    qryTimeInsertWTIT_STEXCEPTTIME: TTimeField;
    qryTimeInsertWTIT_FIEXCEPTTIME: TTimeField;
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
    qryAutoTimeInsertWTIT_STEXCEPTTIME: TTimeField;
    qryAutoTimeInsertWTIT_FIEXCEPTTIME: TTimeField;
    qryAutoTimeInsertWTIT_DATE: TSQLTimeStampField;
    qryAutoTimeInsertUSERS_NAME: TWideStringField;
    qryWeekday: TFDQuery;
    dsWeekday: TDataSource;
    procedure qryInformationDeptCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ExecuteTime(AWorkTime_Seq: Integer; AFiWorkTime: TTime);
  end;

var
  dmDataAccess: TdmDataAccess;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
uses
  System.StrUtils;

procedure TdmDataAccess.ExecuteTime(AWorkTime_Seq: Integer; AFiWorkTime: TTime);
begin
  // 기존 출근시간 입력 이후 퇴근시간 추가 업데이트

  qryUpdateTimeInsert.ParamByName('FIWORKTIME').AsDateTime := Now;
  qryUpdateTimeInsert.ParamByName('SEQ').AsInteger := AWorkTime_Seq;
  qryUpdateTimeInsert.ExecSQL;

  qryAutoTimeInsert.Refresh;

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
