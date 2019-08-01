unit ReservationForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  Vcl.WinXPickers, Vcl.WinXCalendars, Vcl.Mask, Vcl.ComCtrls;

type
  TfrmReserve = class(TForm)
    RservPanel: TPanel;
    ilReserve: TImageList;
    pnlCenter: TPanel;
    pnlHeader: TPanel;
    Label1: TLabel;
    edtSearch: TEdit;
    ButtonInsert: TButton;
    ButtonLookup: TButton;
    ButtonDelete: TButton;
    btnEnter: TButton;
    pnlGrid: TPanel;
    grdReserve: TDBGrid;
    Splitter1: TSplitter;
    ComboBox1: TComboBox;
    btnClose: TButton;
    btnRefresh: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

    procedure btnCloseClick(Sender: TObject);



    procedure btnReservCancelClick(Sender: TObject);
    procedure ButtonDeleteClick(Sender: TObject);
    procedure btnEnterClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure ButtonInsertClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}

uses MainClientForm, PatientManagerDataModule, ReserveSubForm;



procedure TfrmReserve.btnCloseClick(Sender: TObject);
begin
  close;
end;



procedure TfrmReserve.btnEnterClick(Sender: TObject);   //입장버튼 클릭시
begin
  dm.Reserve.Edit;
  dm.Reserve.FieldByName('NOWSTATE').AsInteger := 20;   //진찰 중 상태로 변경
  dm.Reserve.ApplyUpdates(-1);
  dm.Reserve.Refresh;
end;

procedure TfrmReserve.btnRefreshClick(Sender: TObject);
begin
  try
  dm.Reserve.Refresh;
  except
    raise Exception.Create('갱신 불가!');
  end;
end;

procedure TfrmReserve.btnReservCancelClick(Sender: TObject);
begin
  dm.Reserve.Cancel;
end;

procedure TfrmReserve.ButtonDeleteClick(Sender: TObject);
begin
  if MessageDlg('예약을 삭제하시겠습니까?', MTConfirmation, [mbYes, mbno], 0) = mrYes  then
  begin
    dm.Reserve.Delete;
    dm.Reserve.ApplyUpdates(-1);
    dm.Reserve.Refresh;
  end;
end;

procedure TfrmReserve.ButtonInsertClick(Sender: TObject);
begin
  if not Assigned(frmReserveSub) then            //열려있지 않다면
    frmReserveSub := TfrmReserveSub.Create(Self); //frmReserveSub에 할당해라. 소유주 : Self = MainForm
  frmReserveSub.Show;
end;

procedure TfrmReserve.edtSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Filter: string;
begin
  Filter := '';
  if edtSearch.Text <> '' then
  begin
    if ComboBox1.Text = '환자명' then
      Filter := Format('PATIENT_NAME like ''%%%s%%''', [edtSearch.Text]); //필터링
    if ComboBox1.Text = '담당의사' then
      Filter := Format('DOCTOR_NAME like ''%%%s%%''', [edtSearch.Text]);
  end;

  dm.Reserve.Filter := Filter;
  dm.Reserve.Filtered := (Filter <> '');

end;

procedure TfrmReserve.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmSub := nil;
end;

end.
