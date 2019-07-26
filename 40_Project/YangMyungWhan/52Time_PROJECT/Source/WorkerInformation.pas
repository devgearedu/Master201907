unit WorkerInformation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, DataAccessModule, Vcl.Mask, Vcl.DBCtrls,
  CommonFunctions, System.ImageList, Vcl.ImgList, Vcl.ToolWin, Vcl.ComCtrls,
  DeptAdd;

type
  TfrmWorkerInformation = class(TForm)
    pnlHeader: TPanel;
    Label1: TLabel;
    pnlShowInformation: TPanel;
    grdInformation: TDBGrid;
    GroupBox1: TGroupBox;
    imgWorkerInformation: TImage;
    lbl: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtName: TDBEdit;
    edtCode: TDBEdit;
    edtNum: TDBEdit;
    btnClear: TButton;
    btnImageLoad: TButton;
    dlgLoadImage: TOpenDialog;
    btnStartWork: TButton;
    btnFinishWork: TButton;
    imgWorkBtn: TImageList;
    StatusBar1: TStatusBar;
    btnWorkerSave: TButton;
    btncancel: TButton;
    btnWorkerLoad: TButton;
    cbDept: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    btnAutoDelete: TButton;
    procedure btnClearClick(Sender: TObject);
    procedure btnImageLoadClick(Sender: TObject);
    procedure btnWorkerLoadClick(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
    procedure btnWorkerSaveClick(Sender: TObject);
    procedure btnDeptAddClick(Sender: TObject);
    procedure btnStartWorkClick(Sender: TObject);
    procedure btnFinishWorkClick(Sender: TObject);
    procedure btnAutoDeleteClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWorkerInformation: TfrmWorkerInformation;

implementation

{$R *.dfm}

procedure TfrmWorkerInformation.btnAutoDeleteClick(Sender: TObject);
var
  Msg: string;
begin
  Msg := Format('해당 항목을 삭제하시겠습니까?',[]);
  if MessageDlg(Msg, mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  dmDataAccess.qryAutoTimeInsert.Delete;
end;

procedure TfrmWorkerInformation.btncancelClick(Sender: TObject);
begin
  dmDataAccess.qryInformationDept.Cancel;
end;

procedure TfrmWorkerInformation.btnClearClick(Sender: TObject);
var
  Field: TField;
begin
  imgWorkerInformation.Picture.Assign(nil);
end;

procedure TfrmWorkerInformation.btnDeptAddClick(Sender: TObject);
begin
  if not Assigned(frmDeptAdd) then
  frmDeptAdd := frmDeptAdd.Create(Self);
  frmDeptAdd.Show;
end;

procedure TfrmWorkerInformation.btnFinishWorkClick(Sender: TObject);
Var
  WorkTime_Seq: Integer;
  FiworkTime: TTime;
begin
  WorkTime_Seq := dmDataAccess.qryAutoTimeInsert.FieldByName('WTIT_SEQ').AsInteger;
  dmDataAccess.ExecuteTime(WorkTime_Seq, now);
end;

procedure TfrmWorkerInformation.btnImageLoadClick(Sender: TObject);
var
  field:Tfield;
begin
  if dlgLoadImage.execute then
  begin
    LoadImagefromFile(imgWorkerInformation, dlgLoadImage.FileName);

    field := dmdataAccess.qryInformationDept.FieldByName('USERS_IMG');
    SaveImageToBlobField(imgWorkerInformation, Field as TBlobField);
  end;

end;

procedure TfrmWorkerInformation.btnStartWorkClick(Sender: TObject);

begin
  dmdataaccess.qryAutoTimeInsert.append;
  dmDataAccess.qryAutoTimeInsert.FieldByName('USERS_SEQ').Asinteger := 2;
  dmDataAccess.qryAutoTimeInsert.FieldByName('WTIT_DATE').AsdateTime := date;
  dmDataAccess.qryAutoTimeInsert.FieldByName('WTIT_STWORKTIME').AsdateTime := Now;
  dmDataAccess.qryAutoTimeInsert.FieldByName('WTIT_FIWORKTIME').AsdateTime := 0;
  dmDataAccess.qryAutoTimeInsert.FieldByName('WTIT_STEXCEPTTIME').AsdateTime := 0;
  dmDataAccess.qryAutoTimeInsert.FieldByName('WTIT_FIEXCEPTTIME').AsdateTime := 0;
  dmDataAccess.qryAutoTimeInsert.Post;
  dmDataAccess.qryAutoTimeInsert.Refresh;
end;

procedure TfrmWorkerInformation.btnWorkerLoadClick(Sender: TObject);
begin
  dmdataaccess.qryInformationDept.Append;
  edtName.SetFocus;
end;


procedure TfrmWorkerInformation.btnWorkerSaveClick(Sender: TObject);
begin
  if edtName.Text = '' then
  begin
    ShowMessage('이름을 입력하세요.');
    edtName.SetFocus;
    Exit;
  end;

  if edtCode.Text = '' then
  begin
    ShowMessage('사번을 입력하세요.');
    edtCode.SetFocus;
    Exit;
  end;

  if cbDept.Text = '' then
  begin
    ShowMessage('부서를 입력하세요.');
    cbDept.SetFocus;
    Exit;
  end;

  if edtNum.Text = '' then
  begin
    ShowMessage('연락처를 입력하세요.');
    edtNum.SetFocus;
    Exit;
  end;

  dmDataAccess.qryInformationDept.Post;
  dmDataAccess.qryInformationDept.Refresh;
end;


end.

