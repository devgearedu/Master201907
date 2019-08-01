unit ReserveSubForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.WinXCalendars, Vcl.Mask, Vcl.WinXPickers, System.UITypes,
  Vcl.ComCtrls;

type
  TfrmReserveSub = class(TForm)
    pnlGrid: TPanel;
    PanelGridHeader: TPanel;
    lbSearch: TLabel;
    btnFirst: TSpeedButton;
    btnPrior: TSpeedButton;
    btnNext: TSpeedButton;
    btnLast: TSpeedButton;
    btnSearch: TButton;
    grdList: TDBGrid;
    edtSearch: TEdit;
    ComboBox1: TComboBox;
    pnlInput: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label7: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtName: TDBEdit;
    dbReserve: TCalendarPicker;
    dbTime: TTimePicker;
    btnAddReserv: TButton;
    btnReservCancel: TButton;
    btnDeleteCancel: TButton;
    grpDoctor: TDBRadioGroup;
    grpSelectDoctor: TRadioGroup;
    procedure edtSearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdListDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddReservClick(Sender: TObject);
    procedure btnDeleteCancelClick(Sender: TObject);
    procedure btnReservCancelClick(Sender: TObject);
    procedure dbTimeCloseUp(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReserveSub: TfrmReserveSub;

implementation

{$R *.dfm}

uses ReservationForm, PatientManagerDataModule;

procedure TfrmReserveSub.btnAddReservClick(Sender: TObject);  //예약하기 클릭시
var
  DocSeq: Integer;
begin
  if edtName.Text = '' then
  begin
    ShowMessage('환자를 선택하세요.');
    Exit;
  end;

  dm.Reserve.Append;

  //환자번호
  dm.Reserve.FieldByName('PATIENT_SEQ').AsInteger := dm.PatientList.FieldByName('PATIENT_SEQ').AsInteger;

  //예약일 지정
//  if dm.Reserve.FieldByName('RESERVATION_DATE').AsDateTime <> dbReserve.Date then //선택한 날짜와 같지않으면
//  begin
    dm.Reserve.FieldByName('RESERVATION_DATE').AsDateTime := dbReserve.Date;    //선택한 시간으로 수정
//  end;

  //예약시간 지정
//  if dm.Reserve.FieldByName('RESERVATION_TIME').AsDateTime <> dbTime.Time then  //선택한 시간과 같지않으면
//  begin
    dm.Reserve.FieldByName('RESERVATION_TIME').AsDateTime := dbTime.Time;       //선택한 시간으로 수정
//  end;

  //담당의사 지정
  DocSeq := grpSelectDoctor.ItemIndex;
  dm.Reserve.FieldByName('DOCTOR_SEQ').AsInteger := DocSeq;

  dm.Reserve.FieldByName('NOWSTATE').AsInteger := 10;  //상태변경 : 예약중

  dm.Reserve.Post;
  dm.Reserve.ApplyUpdates(-1);
  dm.Reserve.Refresh;
  close;
end;

procedure TfrmReserveSub.btnDeleteCancelClick(Sender: TObject);
begin
  if MessageDlg('예약을 삭제하시겠습니까?', MTConfirmation, [mbYes, mbno], 0) = mrYes  then
    begin
      dm.Reserve.Delete;
      dm.Reserve.ApplyUpdates(-1);
      dm.Reserve.Refresh;
    end;
end;

procedure TfrmReserveSub.btnReservCancelClick(Sender: TObject);
begin
  close;
end;

procedure TfrmReserveSub.dbTimeCloseUp(Sender: TObject);
var
  Field: TField;
begin
  Field := dm.Reserve.FieldByName('RESERVATION_TIME');

  if Field.AsDateTime <> dbTime.Time then
  begin
    if dm.Reserve.State = dsBrowse then
    begin
      if dm.Reserve.RecNo > 0 then  //이미 존재할 경우
        dm.Reserve.Edit
      else
        dm.Reserve.Append;      //신규등록일 경우
    end;
      Field.AsDateTime := dbTime.Time;
  end;

end;

procedure TfrmReserveSub.edtSearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);                                   //검색기능
var
  Filter: string;
begin
  Filter := '';
  if edtSearch.Text <> '' then
  begin
    if ComboBox1.Text = '환자명' then
      Filter := Format('PATIENT_NAME like ''%%%s%%''', [edtSearch.Text]); //필터링
    if ComboBox1.Text = '생년월일' then
      Filter := Format('PATIENT_BIRTH like ''%%%s%%''', [edtSearch.Text]);
    if ComboBox1.Text = '연락처' then
    begin
      if Filter <> '' then
        Filter := Filter + ' or ';
      Filter := Filter + Format('PATIENT_PHONE like ''%%%s%%''', [edtSearch.Text]);
    end;
  end;

  dm.PatientList.Filter := Filter;
  dm.PatientList.Filtered := (Filter <> '');

end;

procedure TfrmReserveSub.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmReserveSub := nil;
end;

procedure TfrmReserveSub.FormCreate(Sender: TObject);
begin
  dbReserve.Date := now;
  dbTime.Time := now;
end;

procedure TfrmReserveSub.grdListDblClick(Sender: TObject);
var
  Field: TField;
  Today: TDate;
begin
  Field := dm.Reserve.FieldByName('RESERVATION_DATE');
   if dm.Reserve.State = dsBrowse then
   begin
     dm.Reserve.Edit;
     Today := now;
     Field.AsDateTime := Today;
     dm.Reserve.Post;
     dm.Reserve.ApplyUpdates(-1);
   end;

   frmReserveSub.Close;
end;

end.
