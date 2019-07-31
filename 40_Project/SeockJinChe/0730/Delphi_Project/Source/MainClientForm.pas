unit MainClientForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.StdActns, Vcl.DBCtrls,
  System.ImageList, Vcl.ImgList;

type
  TfrmMain = class(TForm)
    ToolBarPanel: TPanel;
    AcceptPanel: TPanel;
    ActionMenuBar: TActionMainMenuBar;
    AcceptGrid: TDBGrid;
    ActionList: TActionList;
    ActionManager: TActionManager;
    FileExit1: TFileExit;
    pnlAcceptButton: TPanel;
    btnAccept: TButton;
    btnOutput: TButton;
    btnRefresh: TButton;
    pnlMain: TPanel;
    ilToolbar: TImageList;
    ToolBar: TToolBar;
    btnPatientList: TToolButton;
    btnReservation: TToolButton;
    btnDiagnosis: TToolButton;
    btnMessage: TToolButton;
    btnMedicine: TToolButton;
    btnDoctor: TToolButton;
    ToolButton1: TToolButton;
    btnClose: TButton;
    ImageList: TImageList;
    pnlAcceptHeader: TPanel;
    Label1: TLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure btnPatientListClick(Sender: TObject);
    procedure btnReservationClick(Sender: TObject);
    procedure btnMedicineClick(Sender: TObject);
    procedure btnDiagnosisClick(Sender: TObject);
    procedure btnDoctorClick(Sender: TObject);
    procedure btnAcceptClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnOutputClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  frmSub: TForm;                            // 폼을 열때 참조되는 변수값

implementation

{$R *.dfm}

uses PatientManagerDataModule, DiagnosisForm, MedicineForm, MessageForm,
  PatientListForm, ReservationForm, DecisionForm;

procedure TfrmMain.btnAcceptClick(Sender: TObject);
begin
  if MessageDlg('결제하시겠습니까?', MTConfirmation, [mbYes, mbno], 0) = mrYes  then
  begin
    AcceptGrid.SetFocus;
    dm.Reserve.Edit;
    dm.Reserve.FieldByName('NOWSTATE').AsInteger := 0;
    dm.Reserve.Post;
    dm.Reserve.ApplyUpdates(-1);
    dm.Reserve.Refresh;
    dm.Accept.Refresh;
  end;

end;

procedure TfrmMain.btnCloseClick(Sender: TObject);     //종료
begin
  Close;
end;

procedure TfrmMain.btnDiagnosisClick(Sender: TObject);  //진료내역 열기
begin
  if Assigned(frmSub) then            //이미 열려있을 시
  begin
    if not (frmSub is TfrmDiagnosis) then  //할당된 값이 이녀석 타입이 아닐 때
      frmSub.Close;                          //닫아버려라
  end;
  if not Assigned(frmSub) then            //열려있지 않다면
    frmSub := TfrmDiagnosis.Create(frmSub); //frmSub에 할당해라. 소유주 : Self = MainForm
  frmSub.Parent := pnlMain;       // 부모변경 : MainForm -> pnlMain
  frmSub.BorderStyle := bsNone;
  frmSub.Align := alClient;
  frmSub.Show;
end;

procedure TfrmMain.btnDoctorClick(Sender: TObject);   //의사 진찰 화면 열기
begin
  if not Assigned(frmDecision) then            //열려있지 않다면
    frmDecision := TfrmDecision.Create(frmDecision); //frmSub에 할당해라. 소유주 frmDecision (Self일떈 frmMain)
  frmDecision.WindowState := wsMaximized;
  frmDecision.Show;
end;

procedure TfrmMain.btnMedicineClick(Sender: TObject); //약품목록 열기
begin
  if Assigned(frmSub) then            //이미 열려있을 시
  begin
    if not (frmSub is TfrmMedicine) then  //할당된 값이 이녀석 타입이 아닐 때
      frmSub.Close;                          //닫아버려라
  end;
  if not Assigned(frmSub) then            //열려있지 않다면
    frmSub := TfrmMedicine.Create(frmSub); //frmSub에 할당해라. 소유주 frmSub
  frmSub.Parent := pnlMain;       // 부모변경 : MainForm -> pnlMain
  frmSub.BorderStyle := bsNone;
  frmSub.Align := alClient;
  frmSub.Show;
end;

procedure TfrmMain.btnOutputClick(Sender: TObject);
begin
  if MessageDlg('출력하시겠습니까?', MTConfirmation, [mbYes, mbno], 0) = mrYes  then
    showMessage('출력완료!');
end;

procedure TfrmMain.btnPatientListClick(Sender: TObject);  //환자목록 열기
begin
  if Assigned(frmSub) then            //이미 열려있을 시
  begin
    if not (frmSub is TfrmPatientList) then  //할당된 값이 이녀석 타입이 아닐 때
      frmSub.Close;                          //닫아버려라
  end;
  if not Assigned(frmSub) then            //열려있지 않다면
    frmSub := TfrmPatientList.Create(frmSub); //frmSub에 할당해라. 소유주 frmSub
  frmSub.Parent := pnlMain;       // 부모변경 : MainForm -> pnlMain
  frmSub.BorderStyle := bsNone;
  frmSub.Align := alClient;
  frmSub.Show;
end;

procedure TfrmMain.btnRefreshClick(Sender: TObject);
begin
  dm.Accept.Refresh;
end;

procedure TfrmMain.btnReservationClick(Sender: TObject); //예약접수 열기
begin
  if Assigned(frmSub) then               //이미 열려있을 시
  begin
    if not (frmSub is TfrmReserve) then  //할당값이 이녀석이 아니면
      frmSub.Close;                          //닫아라.
  end;
  if not Assigned(frmSub) then            //열려있지 않다면.
    frmSub := TfrmReserve.Create(frmSub); //소유주 frmSub
  frmSub.Parent := pnlMain;       // 부모변경 : MainForm -> pnlMain
  frmSub.BorderStyle := bsNone;
  frmSub.Align := alClient;
  frmSub.Show;
end;


end.
