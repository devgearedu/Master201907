unit DecisionForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, System.ImageList,
  Vcl.ImgList;

type
  TfrmDecision = class(TForm)
    pnlClient: TPanel;
    pnlHeader: TPanel;
    Label1: TLabel;
    pnlMain: TPanel;
    pnlLeft: TPanel;
    grdDuring: TDBGrid;
    pnlGridHeader: TPanel;
    pnlGridFooter: TPanel;
    SplitterLeft: TSplitter;
    pnlMainSub: TPanel;
    pnlMiddle: TPanel;
    pnlRight: TPanel;
    SplitterRight: TSplitter;
    pnlBottom: TPanel;
    pnlMiddleHeader: TPanel;
    pnlMiddleHeaderSub: TPanel;
    pnlMiddleMedicine: TPanel;
    Splitter1: TSplitter;
    btnDecision: TButton;
    btnCancel: TButton;
    Label3: TLabel;
    btnDelete: TButton;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    pnlMiddleMedicineHeader: TPanel;
    Label5: TLabel;
    edtSearch: TEdit;
    grdMedicineList: TDBGrid;
    grdDecision: TDBGrid;
    ilDecision: TImageList;
    btnClose: TButton;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRefreshClick(Sender: TObject);
    procedure grdMedicineListDblClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDecisionClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDecision: TfrmDecision;

implementation

{$R *.dfm}

uses PatientManagerDataModule, MainClientForm;

procedure TfrmDecision.btnCancelClick(Sender: TObject);
begin
  dm.Decision.Cancel;
end;

procedure TfrmDecision.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDecision.btnDecisionClick(Sender: TObject); //처방하기 클릭시
begin
  if (dm.Decision.State = dsInsert) or (dm.Decision.State = dsEdit) then
  begin
    dm.Decision.FieldByName('PRICE').AsInteger := dm.Decision.FieldByName('PRICE_CALC').AsInteger; //계산된 금액 PRICE에 넣기
    dm.Decision.Post;                           //처방내역 DB에 넣기
    dm.Decision.ApplyUpdates(-1);
    dm.Decision.Refresh;
  end;

  dm.Reserve.Edit;
  dm.Reserve.FieldByName('NOWSTATE').AsInteger := 30; //현재상태 수납중으로 변경
  dm.Reserve.Post;
  dm.Reserve.ApplyUpdates(-1);
//  dm.Reserve.Refresh;
  dm.During.Refresh;       //입장환자 Refresh
//  showmessage('처리 완료!');
end;

procedure TfrmDecision.btnRefreshClick(Sender: TObject);
begin
  dm.During.Refresh;
end;

procedure TfrmDecision.Button1Click(Sender: TObject);
begin
  dm.Decision.Delete;
  dm.Decision.ApplyUpdates(-1);
  dm.Decision.Refresh;
end;

procedure TfrmDecision.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmDecision := nil;
end;

procedure TfrmDecision.FormShow(Sender: TObject);
begin
  try
    begin
      dm.During.Refresh;
    end;
  except
    showmessage('서버 연결 상태를 확인해주세요!');
  end;
end;

procedure TfrmDecision.grdMedicineListDblClick(Sender: TObject);    //처방할 약품 더블클릭시 grdDecision에 정보 입력.
begin
  if dm.Decision.FieldByName('MEDICINE_SEQ').AsInteger = dm.MedicineList.FieldByName('MEDICINE_SEQ').AsInteger then
    begin                               //이미 처방약품이 있을시 갯수 추가
      dm.Decision.Edit;
      dm.Decision.FieldByName('ACCEPT_AMOUNT').AsInteger := dm.Decision.FieldByName('ACCEPT_MOUNT').AsInteger + 1;
    end
  else
    dm.Decision.Insert;                 //약품 처음 추가시 값 넣어주기
  dm.Decision.FieldByName('MEDICINE_SEQ').AsInteger := dm.MedicineList.FieldByName('MEDICINE_SEQ').AsInteger;
  dm.Decision.FieldByName('RESERVE_NAME').AsString := dm.Reserve.FieldByName('PATIENT_NAME').AsString;
  dm.Decision.FieldByName('RESERVE_SEQ').AsInteger := dm.During.FieldByName('RESERVE_SEQ').AsInteger;
end;

end.
