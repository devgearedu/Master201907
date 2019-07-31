unit MainClientForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.StdActns, Vcl.DBCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Themes;

type
  TfrmMain = class(TForm)
    ToolBarPanel: TPanel;
    AcceptPanel: TPanel;
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
    Action1: TAction;
    Action2: TAction;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N2: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    EmeralLightSlate1: TMenuItem;
    CyanNight1: TMenuItem;
    MetropolisUIGreen1: TMenuItem;
    OnyxBlue1: TMenuItem;
    RubiGraphite1: TMenuItem;
    SkyDefalt1: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    Infomaion1: TMenuItem;
    windows1: TMenuItem;
    procedure btnCloseClick(Sender: TObject);
    procedure btnPatientListClick(Sender: TObject);
    procedure btnReservationClick(Sender: TObject);
    procedure btnMedicineClick(Sender: TObject);
    procedure btnDiagnosisClick(Sender: TObject);
    procedure btnDoctorClick(Sender: TObject);
    procedure btnAcceptClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnOutputClick(Sender: TObject);
    procedure Infomaion1Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure EmeralLightSlate1Click(Sender: TObject);
    procedure CyanNight1Click(Sender: TObject);
    procedure MetropolisUIGreen1Click(Sender: TObject);
    procedure OnyxBlue1Click(Sender: TObject);
    procedure RubiGraphite1Click(Sender: TObject);
    procedure SkyDefalt1Click(Sender: TObject);
    procedure windows1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
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
    dm.Accept.Edit;
    dm.Accept.FieldByName('NOWSTATE').AsInteger := 0;
    dm.Accept.Post;
    dm.Accept.ApplyUpdates(-1);
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


procedure TfrmMain.CyanNight1Click(Sender: TObject);
begin
  TStyleManager.TrySetStyle('Cyan Night');
end;

procedure TfrmMain.EmeralLightSlate1Click(Sender: TObject);
begin
  TStyleManager.TrySetStyle('Emerald Light Slate');
end;

procedure TfrmMain.Infomaion1Click(Sender: TObject);
begin
  showmessage('만든이 : 최석진');
end;

procedure TfrmMain.MetropolisUIGreen1Click(Sender: TObject);
begin
  TStyleManager.TrySetStyle('Metropolis UI Green');
end;

procedure TfrmMain.N5Click(Sender: TObject);
begin
  close;
end;

procedure TfrmMain.N8Click(Sender: TObject);
begin
  frmMain.WindowState := wsMaximized;
end;

procedure TfrmMain.N9Click(Sender: TObject);
begin
  frmMain.WindowState := wsMinimized;
end;

procedure TfrmMain.OnyxBlue1Click(Sender: TObject);
begin
  TStyleManager.TrySetStyle('Onyx Blue');
end;

procedure TfrmMain.RubiGraphite1Click(Sender: TObject);
begin
  TStyleManager.TrySetStyle('Ruby Graphite');
end;

procedure TfrmMain.SkyDefalt1Click(Sender: TObject);
begin
  TStyleManager.TrySetStyle('Sky');
end;

procedure TfrmMain.windows1Click(Sender: TObject);
begin
  TStyleManager.TrySetStyle('Windows10');
end;

end.
