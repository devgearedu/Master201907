unit LoopForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.DBXDataSnap,
  Data.DBXCommon, IPPeerClient, Datasnap.DBClient, Datasnap.DSConnect,
  Data.SqlExpr, Vcl.Grids, Vcl.DBGrids;

type
  TfrmLoop = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edtStartNum: TEdit;
    btnOddCount: TButton;
    edtEndNum: TEdit;
    DBGrid1: TDBGrid;
    btnCheckLoadData: TButton;
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    procedure btnOddCountClick(Sender: TObject);
    procedure btnCheckLoadDataClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function CalcOddNumSum(AStartNum, AEndNum: Integer): Integer;
    function CheckLoadData: Boolean;
  end;

var
  frmLoop: TfrmLoop;

implementation

{$R *.dfm}

uses ServerMethodClient;

{ TfrmLoop }

function TfrmLoop.CheckLoadData: Boolean;
begin
{
  TODO : DataSnap을 통해 사용자 정보를 DBGrid1에 표시하세요.
    (1) LoopTestDataSnap 프로젝트를 완성하세요.
    (2) 위 프로젝트를 실행 후 연결하세요
     - SQLConnection1, DSProviderConnection1, ClientDataSet1 속성 설정
}
  Result := False;

  if not SQLConnection1.Connected then
    Exit;

  if DBGrid1.Columns.Count <= 1 then
    Exit;

  if not Assigned(DBGrid1.DataSource) then
    Exit;

  if not Assigned(DBGrid1.DataSource.DataSet) then
    Exit;

  if not DBGrid1.DataSource.DataSet.Active then
    Exit;

  if DBGrid1.DataSource.DataSet.RecordCount = 0 then
    Exit;

  Result := True;
end;

function TfrmLoop.CalcOddNumSum(AStartNum, AEndNum: Integer): Integer;
var
  Method: TServerMethods1Client;
begin
  if not SQLConnection1.Connected then
    Exit;
{
  TODO : 서버메소드를 호출하는 코드 클라이언트 측 코드가 완성되었습니다.
         서버측의 서버메소드 코드를 완성하시오.

  (참고) 서버메소드 호출 순서
    (1) 서버측에 서버메소드 생성
    (2) 서버와 연결(TSQLConnection)
    (3) 서버메소드 클라이언트 유닛(소스) 생성(TSQLConnection > 팝업메뉴 > Generate Datasnap client classes
    (4) 위에서 생성한 클래스를 이용 서버메소드 호출
}
  Method := TServerMethods1Client.Create(SQLConnection1.DBXConnection);
  Result := Method.CalcOddNumSum(AStartNum, AEndNum);
  Method.Free;
end;

procedure TfrmLoop.btnOddCountClick(Sender: TObject);
var
  StartNum, EndNum: Integer;
  Count: Integer;
begin
  StartNum := StrToIntDef(edtStartNum.Text, 0);
  EndNum   := StrToIntDef(edtEndNum.Text, 0);

  Count := CalcOddNumSum(StartNum, EndNum);

  ShowMessage(Format('두 수 사이 홀수의 합은 [%d] 입니다.', [Count]));
end;

procedure TfrmLoop.btnCheckLoadDataClick(Sender: TObject);
begin
  if CheckLoadData then
    ShowMessage('데이터가 로드되었습니다.')
  else
    ShowMessage('데이터가 로드되지 않았습니다.');
end;

end.
