unit PatientListForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.WinXCalendars, Vcl.Mask, Vcl.WinXPickers, System.UITypes,
  Vcl.ComCtrls;

type
  TfrmPatientList = class(TForm)
    pnlClient: TPanel;
    pnlHeader: TPanel;
    pnlInput: TPanel;
    Splitter1: TSplitter;
    pnlGrid: TPanel;
    PanelGridHeader: TPanel;
    grdList: TDBGrid;
    lbSearch: TLabel;
    btnSearch: TButton;
    btnAdd: TButton;
    lbHeader: TLabel;
    btnFirst: TSpeedButton;
    btnPrior: TSpeedButton;
    btnNext: TSpeedButton;
    btnLast: TSpeedButton;
    btnClose: TButton;
    ilSearch: TImageList;
    pnlSubInput1: TPanel;
    pcInput: TPageControl;
    tstInput1: TTabSheet;
    Label1: TLabel;
    edtName: TDBEdit;
    Label2: TLabel;
    edtBirth: TDBEdit;
    grpGender: TDBRadioGroup;
    imgUser: TImage;
    Label6: TLabel;
    btnClearImage: TButton;
    btnLoadImage: TButton;
    Label3: TLabel;
    edtPhone: TDBEdit;
    dlgLoadImage: TOpenDialog;
    pnlSubInput2: TPanel;
    btnPost: TButton;
    btnCancel: TButton;
    btnDelete: TButton;
    PatientListSource: TDataSource;
    edtSearch: TEdit;
    ComboBox1: TComboBox;
    procedure btnSearchClick(Sender: TObject);
    procedure edtSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFirstClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnCloseClick(Sender: TObject);
    procedure btnClearImageClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure edtSearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnLoadImageClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PatientListSourceDataChange(Sender: TObject; Field: TField);
    procedure PatientListSourceStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses CommonFunctions, MainClientForm, PatientManagerDataModule;

procedure TfrmPatientList.btnAddClick(Sender: TObject);      //신규 등록
begin
  dm.PatientList.Insert;
  edtName.SetFocus;
end;

procedure TfrmPatientList.btnCancelClick(Sender: TObject);
begin
  dm.PatientList.Cancel;                      //등록 취소
end;

procedure TfrmPatientList.btnClearImageClick(Sender: TObject);  //사진초기화
var
  Field: TField;
begin
  imgUser.Picture.Assign(nil);

  Field := dm.PatientList.FieldByName('PATIENT_IMAGE');
  if dm.PatientList.State <> dsEdit then  //수정상태가 아닐시
    dm.PatientList.Edit;                  //수정상태로 변경
  Field.Assign(nil);
end;

procedure TfrmPatientList.btnCloseClick(Sender: TObject);
begin
  Close;                                   //폼 닫기
end;

procedure TfrmPatientList.btnDeleteClick(Sender: TObject);
begin
  if MessageDlg('정말로 삭제하시겠습니까? 삭제한 데이터는 복구할 수 없습니다!', MTConfirmation, [mbYes, mbno], 0) = mrYes  then
    begin
    dm.PatientList.Delete;                  //DB정보 삭제
    dm.PatientList.ApplyUpdates(-1);
    dm.PatientList.Refresh;
    end;
end;

procedure TfrmPatientList.btnPostClick(Sender: TObject);   //등록하기 누를시
begin
  if edtName.Text = '' then                     //빈칸체크
  begin
    ShowMessage('이름을 입력하세요.');
    edtName.SetFocus;
    Exit;
  end;

  if edtBirth.Text = '' then                    //빈칸체크
  begin
    ShowMessage('생년월일을 입력하세요.');
    edtBirth.SetFocus;
    Exit;
  end;

  dm.PatientList.Post;
  dm.PatientList.ApplyUpdates(-1);
  dm.PatientList.Refresh;
end;

procedure TfrmPatientList.btnSearchClick(Sender: TObject);

begin            //To do 인원수 조회기능 추가하기
  if edtSearch.text = '' then
    showMessage('검색할 내용을 입력해주세요!');
end;

procedure TfrmPatientList.edtSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = vk_return then                         //조회기능(엔터)
    if not dm.PatientList.FindKey([edtSearch.Text]) then
      showmessage('일치하는 정보가 없습니다');    //인원수 조회기능추가하기.
end;

procedure TfrmPatientList.edtSearchKeyUp(Sender: TObject; var Key: Word; //검색기능
  Shift: TShiftState);
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

procedure TfrmPatientList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmSub := nil;
end;

procedure TfrmPatientList.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then  //press에서만 #13
    SelectNext (activeControl, true, true);   //다음 입력으로 넘어가기.
end;

procedure TfrmPatientList.PatientListSourceDataChange(Sender: TObject;
  Field: TField);
Var
  LField: TField;
begin                   //DB에 등록된 이미지를 불러오는 기능.
  begin
    LField := dm.PatientList.FieldByName('PATIENT_IMAGE');  //DB이미지경로를 Lfield에 넣고
    LoadImageFromBlobField(imgUser, LField as TBlobField);  //imgUser에 Lfield를 로드하기.
  end;
end;

procedure TfrmPatientList.PatientListSourceStateChange(Sender: TObject);
var
  State: TDataSetState;
begin
  State := dm.PatientList.State;

  btnAdd.Enabled := (State = dsBrowse);
  btnPost.Enabled := (State <> dsBrowse);
  btnDelete.Enabled := (State = dsBrowse);
  btnCancel.Enabled := (State <> dsBrowse);
end;

procedure TfrmPatientList.btnFirstClick(Sender: TObject);
begin
  dm.PatientList.First;       //그리드 목록 맨 위로 이동
end;

procedure TfrmPatientList.btnPriorClick(Sender: TObject);
begin
  dm.PatientList.prior;       //그리드 목록 1칸 위로 이동
end;

procedure TfrmPatientList.btnNextClick(Sender: TObject);
begin
  dm.PatientList.Next;        //그리드 목록 1칸 아래로 이동
end;

procedure TfrmPatientList.btnLastClick(Sender: TObject);
begin
  dm.PatientList.Last;        //그리드 목록 맨 아래로 이동
end;


procedure TfrmPatientList.btnLoadImageClick(Sender: TObject);
var     //불러오기 클릭
  Field: TField;
begin
    if dlgLoadImage.Execute then
    begin
      LoadImageFromFile(imgUser, dlgLoadImage.FileName);
      Field := dm.PatientList.FieldByName('PATIENT_IMAGE');
      SaveImageToBlobField(imgUser, Field as TBlobField);
    end;
end;

end.
