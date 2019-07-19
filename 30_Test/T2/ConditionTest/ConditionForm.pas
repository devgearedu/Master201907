unit ConditionForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmCondition = class(TForm)
    edtId: TEdit;
    edtPwd: TEdit;
    btnLogin: TButton;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    btnCheckLoadDB: TButton;
    procedure btnLoginClick(Sender: TObject);
    procedure btnCheckLoadDBClick(Sender: TObject);
  private
    FIds: array of string;
    FPwds: array of string;

    function CheckEmpty(AId, APwd: string): Boolean;
    function CheckIncorrect(AId, APwd: string): Boolean;
  public
    { Public declarations }
    function LoginCheck(AId, APwd: string): Integer;
    function CheckLoadDB: Boolean;
  end;

var
  frmCondition: TfrmCondition;

const
  LOGIN_RESULT_OK           = 0;
  LOGIN_RESULT_INCORRECT    = 10;
  LOGIN_RESULT_EMPTY        = 20;

implementation

{$R *.dfm}

uses ConditionModule;

{ TForm2 }

{ TODO :
  (1) 데이터모듈의 FDConnection에서 샘플 DB(DB 디렉토리의 TEST2DB.IB)를 연결하세요.
    - DRIVE ID를 지정해서 진행하세요.
  (2) 사용자 목록을 DBGrid1에 표시하세요.
    - qryUser(TFDQuery)에 SQL 입력(SELECT * FROM USER_INFO)
    - DB그리드에 데이터를 표현하기 위한 컴포넌트의 속성을 정상 설정하세요.
}
function TfrmCondition.CheckLoadDB: Boolean;
begin
  Result := False;

  if not dmDB.FDConnection1.Connected then
    Exit;

  if not Assigned(DBGrid1.DataSource) then
    Exit;

  if not Assigned(DBGrid1.DataSource.DataSet) then
    Exit;

  try
    DBGrid1.DataSource.DataSet.Open;
  except
    Exit;
  end;

  if DBGrid1.Columns.Count <= 1 then
    Exit;

  if not DBGrid1.DataSource.DataSet.Active then
    Exit;

  if DBGrid1.DataSource.DataSet.RecordCount = 0 then
    Exit;

  Result := True;
end;

function TfrmCondition.CheckEmpty(AId, APwd: string): Boolean;
begin
  { TODO : 아이디와 비밀번호가 없는(공백) 경우 False 반환 }
  Result := True;
end;

function TfrmCondition.CheckIncorrect(AId, APwd: string): Boolean;
begin
  if not dmDB.FDConnection1.Connected then
    Exit;
{ TODO :
  아이디와 비밀번호가 맞지 않는 경우 False 반환 하도록 완성하세요.
   - 데이터모듈의 qryLogin 이용합니다.
   ------------
    SELECT * FROM USER_INFO
    WHERE USER_ID = :P_USER_ID
    AND USER_PWD = :P_USER_PWD
   ------------
   - 파라메터 값 할당 해 ID와 비밀번호를 조건으로 검색합니다.
}
  dmDB.qryLogin.Close;
//  dmDB.qryLogin.ParamByName('P_USER_ID')..................
//  dmDB.qryLogin.ParamByName('P_USER_PWD')..................
  dmDB.qryLogin.Open;
  Result := (dmDB.qryLogin.RecordCount > 0);
end;

function TfrmCondition.LoginCheck(AId, APwd: string): Integer;
begin
  Result := -1;

  // 아이디 또는 비밀번호가 누락된 경우 20 반환
  if not CheckEmpty(AId, APwd) then
    Exit(LOGIN_RESULT_EMPTY);

  // 아이디의 비밀번호가 맞지 않는 경우 10 반환
  if not CheckIncorrect(AId, APwd) then
    Exit(LOGIN_RESULT_INCORRECT);

  // 아이디 비밀번호가 유효한 경우 0 반환
end;

procedure TfrmCondition.btnCheckLoadDBClick(Sender: TObject);
begin
  if CheckLoadDB then
    ShowMessage('데이터가 로드되었습니다.')
  else
    ShowMessage('데이터가 로드되지 않았습니다.');
end;

procedure TfrmCondition.btnLoginClick(Sender: TObject);
var
  LoginResult: Integer;
begin
  LoginResult := LoginCheck(edtId.Text, edtPwd.Text);

  if LoginResult > 0 then
  begin
    case LoginResult of
    LOGIN_RESULT_INCORRECT:   ShowMessage('아이디 또는 비밀번호가 맞지 않습니다.');
    LOGIN_RESULT_EMPTY:       ShowMessage('아이디와 비밀번호를 입력하세요.');
    end;
    Exit;
  end;

  ShowMessage('로그인 성공');
end;

end.
