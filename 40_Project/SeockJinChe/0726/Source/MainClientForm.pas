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
    AcceptLabel: TLabel;
    ActionList: TActionList;
    ActionManager: TActionManager;
    FileExit1: TFileExit;
    AcceptPanel_Sub1: TPanel;
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
    procedure btnCloseClick(Sender: TObject);
    procedure btnPatientListClick(Sender: TObject);
    procedure btnReservationClick(Sender: TObject);
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
  PatientListForm, ReservationForm;

procedure TfrmMain.btnCloseClick(Sender: TObject);     //종료
begin
  Close;
end;

procedure TfrmMain.btnPatientListClick(Sender: TObject);  //환자목록 열기
begin
  if Assigned(frmSub) then            //이미 열려있을 시
  begin
    if not (frmSub is TfrmPatientList) then  //할당된 값이 이녀석 타입이 아닐 때
      frmSub.Close;                          //닫아버려라
  end;
  if not Assigned(frmSub) then            //열려있지 않다면
    frmSub := TfrmPatientList.Create(Self); //frmSub에 할당해라. 소유주 : Self = MainForm
  frmSub.Parent := pnlMain;       // 부모변경 : MainForm -> pnlMain
  frmSub.BorderStyle := bsNone;
  frmSub.Align := alClient;
  frmSub.Show;
end;

procedure TfrmMain.btnReservationClick(Sender: TObject); //예약접수 열기
begin
  if Assigned(frmSub) then               //이미 열려있을 시
  begin
    if not (frmSub is TfrmReserve) then  //할당값이 이녀석이 아니면
      frmSub.Close;                          //닫아라.
  end;
  if not Assigned(frmSub) then            //열려있지 않다면.
    frmSub := TfrmReserve.Create(Self); //소유주 : Self = MainForm
  frmSub.Parent := pnlMain;       // 부모변경 : MainForm -> pnlMain
  frmSub.BorderStyle := bsNone;
  frmSub.Align := alClient;
  frmSub.Show;
end;


end.
