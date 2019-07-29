unit RegistrationForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask, Vcl.ComCtrls, Vcl.StdCtrls, System.DateUtils,
  ServerMethodsUnit12_ClientClass, Vcl.ExtCtrls, Vcl.WinXCtrls,
  Vcl.WinXPickers, Vcl.DBCtrls;

type
  TfrmRegistration = class(TForm)
    pcForRegister: TPageControl;
    tshtClient: TTabSheet;
    lblName_Client: TLabel;
    lblBirth_DateClient: TLabel;
    lblMobileClient: TLabel;
    lblEmailClient: TLabel;
    lblAddress_Client: TLabel;
    lblVehicle_PlateClient: TLabel;
    lblFavorite_BranchClient: TLabel;
    lblCodeClient: TLabel;
    lblCodeAssignedClient: TLabel;
    edtName_Client: TEdit;
    edtEmailClient: TEdit;
    edtAddress_Client: TEdit;
    edtVehicle_PlateClient: TEdit;
    edtFavorite_BranchClient: TEdit;
    btnSaveClient: TButton;
    dtpBirth_DateClient: TDateTimePicker;
    medtMobileClient: TMaskEdit;
    tshtCoach: TTabSheet;
    tshtCourse: TTabSheet;
    btnNewClient: TButton;
    btnCancelClient: TButton;
    lblName_Coach: TLabel;
    lblBirth_DateCoach: TLabel;
    lblMobileCoach: TLabel;
    lblEmailCoach: TLabel;
    lblAddress_: TLabel;
    lblVehicle_Plate: TLabel;
    lblSports: TLabel;
    lblCodeCoach: TLabel;
    lblCodeAssignedCoach: TLabel;
    edtName_Coach: TEdit;
    edtEmailCoach: TEdit;
    edtAddress_Coach: TEdit;
    edtVehicle_PlateCoach: TEdit;
    edtSportsCoach: TEdit;
    btnSaveCoach: TButton;
    dtpBirth_DateCoach: TDateTimePicker;
    medtMobileCoach: TMaskEdit;
    btnNewCoach: TButton;
    btnCancelCoach: TButton;
    lblPhotoCoach: TLabel;
    Image1: TImage;
    lblName_Course: TLabel;
    lblWeekdaysCourse: TLabel;
    lblBegin_TimeCourse: TLabel;
    lblEnd_TimeCourse: TLabel;
    lblPrice: TLabel;
    lblLocation_Course: TLabel;
    lblCoach_CodeCourse: TLabel;
    edtName_Course: TEdit;
    edtPrice: TEdit;
    edtLocation_Course: TEdit;
    btnSaveCourse: TButton;
    btnNewCourse: TButton;
    btnCancelCourse: TButton;
    edtWeekdaysCourse: TEdit;
    lblMinimum_Enroll: TLabel;
    lblMaximum_EnrollCourse: TLabel;
    edtMaximum_EnrollCourse: TEdit;
    lblMinimum_EnrollAssignedCourse: TLabel;
    lblCodeCourse: TLabel;
    tpBegin_Time: TTimePicker;
    tpEnd_Time: TTimePicker;
    dbtxtCoach_Code: TDBText;
    btnCoach_Code: TButton;
    lblCodeAssignedCourse: TLabel;
    procedure btnSaveClientClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNewClientClick(Sender: TObject);
    procedure tshtClientShow(Sender: TObject);
    procedure btnCancelClientClick(Sender: TObject);
    procedure btnSaveCoachClick(Sender: TObject);
    procedure tshtCoachShow(Sender: TObject);
    procedure btnNewCoachClick(Sender: TObject);
    procedure btnCancelCoachClick(Sender: TObject);
    procedure btnSaveCourseClick(Sender: TObject);
    procedure btnCoach_CodeClick(Sender: TObject);
    procedure tshtCourseShow(Sender: TObject);
    procedure btnNewCourseClick(Sender: TObject);
    procedure btnCancelCourseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRegistration: TfrmRegistration;

implementation
uses
  MainForm, NamesakeForm;

var
  serverclient : TServerMethods12Client;

{$R *.dfm}

procedure TfrmRegistration.btnCancelClientClick(Sender: TObject);
begin
    edtName_Client.Clear;
    edtEmailClient.Clear;
    edtAddress_Client.Clear;
    edtVehicle_PlateClient.Clear;
    edtFavorite_BranchClient.Clear;
    dtpBirth_DateClient.Date := StrToDate('1990-01-01');
    medtMobileClient.Clear;

    lblCodeAssignedClient.Caption := '';
end;

procedure TfrmRegistration.btnCancelCoachClick(Sender: TObject);
begin
    edtName_Coach.Clear;
    edtEmailCoach.Clear;
    edtAddress_Coach.Clear;
    edtVehicle_PlateCoach.Clear;
    edtSportsCoach.Clear;
    dtpBirth_DateCoach.Date := StrToDate('1990-01-01');
    medtMobileCoach.Clear;

    lblCodeAssignedClient.Caption := '';
end;

procedure TfrmRegistration.btnCancelCourseClick(Sender: TObject);
begin
  edtName_Course.Clear;
  edtName_Course.TextHint := '';
  edtName_Course.Refresh;
  edtWeekdaysCourse.Clear;
  tpBegin_Time.Time := StrToTime('AM 06:00');
  tpEnd_Time.Time := StrToTime('AM 06:00');
  edtPrice.Clear;
  edtLocation_Course.Clear;
  edtMaximum_EnrollCourse.Clear;

  frmMain.cdsQryCoaches.Active := False;
  lblMinimum_EnrollAssignedCourse.Caption := '';
  lblCodeAssignedCoach.Caption := '';
end;

procedure TfrmRegistration.btnCoach_CodeClick(Sender: TObject);
var
  frmSelectCoach : TfrmNamesake;
begin
  serverclient.SelectByFieldAndValueCoach('Sports', edtName_Course.Text);
  frmMain.cdsQryCoaches.Active := True;
  frmSelectCoach := TfrmNamesake.Create(nil);
  frmSelectCoach.dbgrdNamesake.DataSource := frmMain.dsQryCoaches;
  frmSelectCoach.ShowModal;

end;

procedure TfrmRegistration.btnNewClientClick(Sender: TObject);
begin
    edtName_Client.Clear;
    edtName_Client.TextHint := '';
    edtName_Client.Refresh;
    edtEmailClient.Clear;
    edtAddress_Client.Clear;
    edtVehicle_PlateClient.Clear;
    edtFavorite_BranchClient.Clear;
    dtpBirth_DateClient.Date := StrToDate('1990-01-01');
    medtMobileClient.Clear;

    lblCodeAssignedClient.Caption := '';
    btnSaveClient.Enabled := True;
    btnCancelClient.Enabled := True;
    btnNewClient.Enabled := False;
end;

procedure TfrmRegistration.btnNewCoachClick(Sender: TObject);
begin
    edtName_Coach.Clear;
    edtName_Coach.TextHint := '';
    edtName_Coach.Refresh;
    edtEmailCoach.Clear;
    edtAddress_Coach.Clear;
    edtVehicle_PlateCoach.Clear;
    edtSportsCoach.Clear;
    dtpBirth_DateCoach.Date := StrToDate('1960-01-01');
    medtMobileCoach.Clear;

    lblCodeAssignedCoach.Caption := '';
    btnSaveCoach.Enabled := True;
    btnCancelCoach.Enabled := True;
    btnNewCoach.Enabled := False;
end;

procedure TfrmRegistration.btnNewCourseClick(Sender: TObject);
begin
  edtName_Course.Clear;
  edtName_Course.TextHint := '';
  edtName_Course.Refresh;
  edtWeekdaysCourse.Clear;
  tpBegin_Time.Time := StrToTime('AM 06:00');
  tpEnd_Time.Time := StrToTime('AM 06:00');
  edtPrice.Clear;
  edtLocation_Course.Clear;
  edtMaximum_EnrollCourse.Clear;

  frmMain.cdsQryCoaches.Active := False;
  frmMain.cdsQryCourses.Active := False;
  lblMinimum_EnrollAssignedCourse.Caption := '';
  lblCodeAssignedCourse.Caption := '';

  btnSaveCourse.Enabled := True;
  btnCancelCourse.Enabled := True;
  btnNewCourse.Enabled := False;
end;

procedure TfrmRegistration.btnSaveClientClick(Sender: TObject);
var
  AssignedCode : Integer;
  MobileCheck : string;
begin
  AssignedCode := 0;

  if (edtName_Client.Text = '') then
  begin
    edtName_Client.TextHint := '필수 항목입니다.';
    exit;
  end;

  MobileCheck:= StringReplace(medtMobileClient.Text,'-', '', [rfReplaceAll]);
  if (StringReplace(MobileCheck,' ', '', [rfReplaceAll]).Length < 11) then
  begin
    ShowMessage('전화번호를 입력해주세요');
    exit;
  end;

  AssignedCode := serverclient.InsertClient(edtName_Client.Text,MobileCheck, DateToStr(dtpBirth_DateClient.Date),edtAddress_Client.Text,
    edtFavorite_BranchClient.Text, edtEmailClient.Text,edtVehicle_PlateClient.Text);
  lblCodeAssignedClient.Caption := IntToStr(AssignedCode);
  
  if not (lblCodeAssignedClient.Caption='') then
  begin
    btnSaveClient.Enabled := False;
    btnNewClient.Enabled := True;
    btnCancelClient.Enabled := False;
  end;

end;

procedure TfrmRegistration.btnSaveCoachClick(Sender: TObject);
var
  AssignedCode : Integer;
  MobileCheck : string;
begin
  AssignedCode := 0;

  if (edtName_Coach.Text = '') then
  begin
    edtName_Coach.TextHint := '필수 항목입니다.';
    exit;
  end;

  MobileCheck:= StringReplace(medtMobileCoach.Text,'-', '', [rfReplaceAll]);
  if (StringReplace(MobileCheck,' ', '', [rfReplaceAll]).Length < 11) then
  begin
    ShowMessage('전화번호를 입력해주세요');
    exit;
  end;

  AssignedCode := serverclient.InsertCoach(edtName_Coach.Text,MobileCheck, DateToStr(dtpBirth_DateCoach.Date),
    edtAddress_Coach.Text, edtSportsCoach.Text, edtEmailCoach.Text,edtVehicle_PlateCoach.Text);
    lblCodeAssignedCoach.Caption := IntToStr(AssignedCode);


  if not (lblCodeAssignedCoach.Caption='') then
  begin
    btnSaveCoach.Enabled := False;
    btnNewCoach.Enabled := True;
    btnCancelCoach.Enabled := False;
  end;
end;

procedure TfrmRegistration.btnSaveCourseClick(Sender: TObject);
var
  AssignedCode : Integer;
  MobileCheck : string;
begin
  AssignedCode := 0;

  if (edtName_Course.Text = '') then
  begin
    edtName_Course.TextHint := '필수 항목입니다.';
    exit;
  end;

  if (edtWeekdaysCourse.Text ='') then
  begin
    ShowMessage('요일을 입력해주세요');
    exit;
  end;

  AssignedCode := serverclient.InsertCourse(dbtxtCoach_Code.Caption, edtName_Course.Text,edtWeekdaysCourse.Text,
    TimeToStr(tpBegin_Time.Time), edtLocation_Course.Text, edtMaximum_EnrollCourse.Text,
    edtPrice.Text, TimeToStr(tpEnd_Time.Time));
    lblCodeAssignedCourse.Caption := IntToStr(AssignedCode);


  if not (lblCodeAssignedCourse.Caption='') then
  begin
    lblMinimum_EnrollAssignedCourse.Caption := IntToStr(StrTOInt(edtMaximum_EnrollCourse.Text) div 5);
    btnSaveCourse.Enabled := False;
    btnNewCourse.Enabled := True;
    btnCancelCourse.Enabled := False;
  end;
end;

procedure TfrmRegistration.FormCreate(Sender: TObject);
begin
  serverclient := TServerMethods12Client.Create(frmMain.SQLcnGym.DBXConnection);
end;

procedure TfrmRegistration.tshtClientShow(Sender: TObject);
begin
  btnNewClient.Enabled := False;
end;

procedure TfrmRegistration.tshtCoachShow(Sender: TObject);
begin
  btnNewCoach.Enabled := False;
  dtpBirth_DateCoach.Date := StrToDate('1960-01-01');
end;

procedure TfrmRegistration.tshtCourseShow(Sender: TObject);
begin
  btnNewCourse.Enabled := False;
  frmMain.cdsQryCoaches.Active := False;
end;

end.
