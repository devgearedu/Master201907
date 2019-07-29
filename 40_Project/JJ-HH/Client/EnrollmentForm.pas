unit EnrollmentForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.Provider,
  Datasnap.DBClient;

type
  TfrmEnrollment = class(TForm)
    pnlSearch: TPanel;
    pnlEnroll: TPanel;
    rdbtnCodeClient: TRadioButton;
    rdbtnName_Client: TRadioButton;
    sbClient: TSearchBox;
    btnEnrollAgain: TButton;
    btnWithdraw: TButton;
    dbgrdCurrentEnroll: TDBGrid;
    lblNewEnroll: TLabel;
    dbgrdNewEnroll: TDBGrid;
    cmbbxYAndMNew: TComboBox;
    lblYAndMNew: TLabel;
    edtName_New: TEdit;
    lblName_New: TLabel;
    edtWeekdaysNew: TEdit;
    btnNewEnroll: TButton;
    lblWeekdaysNew: TLabel;
    lblText1: TLabel;
    cdsCourses: TClientDataSet;
    dspCourses: TDataSetProvider;
    dsCourses: TDataSource;
    cdsCoursesCODE: TIntegerField;
    cdsCoursesCOACH_CODE: TIntegerField;
    cdsCoursesNAME_: TWideStringField;
    cdsCoursesWEEKDAYS: TWideStringField;
    cdsCoursesYEAR_AND_MONTH: TStringField;
    cdsCoursesBEGIN_TIME: TTimeField;
    cdsCoursesLOCATION_: TWideStringField;
    cdsCoursesMINIMUM_ENROLL: TIntegerField;
    cdsCoursesCURRENT_ENROLL: TIntegerField;
    cdsCoursesMAXIMUM_ENROLL: TIntegerField;
    cdsCoursesPRICE: TIntegerField;
    cdsCoursesEND_TIME: TTimeField;
    cdsCoursesIS_CANCELED: TStringField;
    edtClientName_: TEdit;
    edtClientCode: TEdit;
    edtYAndMCurrent: TEdit;
    lblText2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure cmbbxYAndMNewSelect(Sender: TObject);
    procedure edtName_NewChange(Sender: TObject);
    procedure edtWeekdaysNewChange(Sender: TObject);
    procedure btnNewEnrollClick(Sender: TObject);
    procedure sbClientInvokeSearch(Sender: TObject);
    procedure btnWithdrawClick(Sender: TObject);
    procedure btnEnrollAgainClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEnrollment: TfrmEnrollment;

implementation

{$R *.dfm}

uses MainForm, System.DateUtils, ServerMethodsUnit12_ClientClass,
  NamesakeForm;

procedure TfrmEnrollment.btnEnrollAgainClick(Sender: TObject);
begin
  if serverclient.ReEnroll(IntToStr(dbgrdCurrentEnroll.Fields[0].Value),
                          IntToStr(dbgrdCurrentEnroll.Fields[1].Value)) then
  begin
    ShowMessage('재등록 완료');
  end;
end;

procedure TfrmEnrollment.btnNewEnrollClick(Sender: TObject);
var
  ClientCodeString : string;
begin
  ClientCodeString := StringReplace(edtClientCode.Text,'(', '', [rfReplaceAll]);
  ClientCodeString := StringReplace(ClientCodeString,')', '', [rfReplaceAll]);

  if serverclient.Enroll(ClientCodeString, IntToStr(dbgrdNewEnroll.Fields[0].Value)) then
    ShowMessage('등록 완료');
end;

procedure TfrmEnrollment.btnWithdrawClick(Sender: TObject);
begin
  serverclient.DropEnroll(dbgrdCurrentEnroll.Fields[0].Value,dbgrdCurrentEnroll.Fields[1].Value);
  ShowMessage('해지 완료');
  dbgrdCurrentEnroll.DataSource := nil;
  frmMain.cdsQryEnrollments.Refresh;
  dbgrdCurrentEnroll.DataSource := frmMain.dsQryEnrollments;
end;

procedure TfrmEnrollment.cmbbxYAndMNewSelect(Sender: TObject);
begin
  cdsCourses.Filtered := False;
  cdsCourses.Filter := 'Year_And_Month = ' + QuotedStr(cmbbxYAndMNew.Text);
  cdsCourses.Filtered := True;
  dbgrdNewEnroll.DataSource := dsCourses;
end;

procedure TfrmEnrollment.edtName_NewChange(Sender: TObject);
var
  FilterString : string;
begin
  cdsCourses.Filtered := False;
  FilterString := 'Year_And_Month = ' + QuotedStr(cmbbxYAndMNew.Text);
  FilterString := FilterString + ' AND ' + 'Name_ LIKE '  +QuotedStr(edtName_New.Text+'%');
  cdsCourses.Filter := FilterString;
  cdsCourses.Filtered := True;
  dbgrdNewEnroll.DataSource := dsCourses;
end;

procedure TfrmEnrollment.edtWeekdaysNewChange(Sender: TObject);
var
  FilterString : string;
begin
  cdsCourses.Filtered := False;
  FilterString := 'Year_And_Month = ' + QuotedStr(cmbbxYAndMNew.Text);
  FilterString := FilterString + ' AND ' + 'Name_ LIKE '  +QuotedStr(edtName_New.Text+'%');
  FilterString := FilterString + ' AND ' + 'Weekdays LIKE '  +QuotedStr(edtWeekdaysNew.Text+'%');
  cdsCourses.Filter := FilterString;
  cdsCourses.Filtered := True;
  dbgrdNewEnroll.DataSource := dsCourses;
end;

procedure TfrmEnrollment.FormCreate(Sender: TObject);
var
  VarDate : TDate;
begin
  cmbbxYAndMNew.Items.Add('201907');

  VarDate := StrToDate('2019-07-01');
  while VarDate < StrToDate('2019-09-01') do
  begin
    VarDate := IncMonth(VarDate);
    cmbbxYAndMNew.Items.Add(FormatDateTime('yyyymm',VarDate));
  end;

  cmbbxYAndMNew.Text := '선택해주세요';
  edtYAndMCurrent.Text := FormatDateTime('yyyymm',Today);

end;

procedure TfrmEnrollment.sbClientInvokeSearch(Sender: TObject);
var
  frmNSClient : TfrmNamesake;
begin
  if sbClient.Text = '' then
  begin
    ShowMessage('검색어를 입력하세요');
    exit;
  end;

  frmMain.cdsQryClients.Active := False;

  if rdbtnCodeClient.Checked then
  begin
    serverclient.SelectByFieldAndValueClient('code', sbClient.Text);
    frmMain.cdsQryClients.Active := True;
  end;

  if rdbtnName_Client.Checked then
  begin
    serverclient.SelectByFieldAndValueClient('name_', sbClient.Text);
    frmMain.cdsQryClients.Active := True;

    if frmMain.cdsQryClients.RecordCount > 1 then
    begin
      frmNSClient := TfrmNamesake.Create(nil);
      frmNSClient.dbgrdNamesake.DataSource := frmMain.dsQryClients;
      frmNSClient.ShowModal;
    end;
  end;


//  btnModifycoach.Enabled := True;
  edtClientName_.Text := frmMain.cdsQryClientsName_.Value;
  edtClientCode.Text := '(' + IntToStr(frmMain.cdsQryClientsCODE.Value) + ')';

  frmMain.cdsQryEnrollments.Active := False;
//  serverclient.SelectByFieldAndValueEnrollment('client_code', IntToStr(frmMain.cdsQryClientsCODE.Value));

  serverclient.SelectFromEnrollmentsAndCourses(IntToStr(frmMain.cdsQryClientsCODE.Value));
  frmMain.cdsQryEnrollments.Active := True;

  frmMain.cdsQryEnrollments.Fields[0].DisplayLabel := '회원번호';
  frmMain.cdsQryEnrollments.Fields[1].DisplayLabel := '강좌코드';
  frmMain.cdsQryEnrollments.Fields[2].DisplayLabel := '강좌명';
  frmMain.cdsQryEnrollments.Fields[3].DisplayLabel := '요일';
  frmMain.cdsQryEnrollments.Fields[4].DisplayLabel := '기간연월';
  frmMain.cdsQryEnrollments.Fields[4].DisplayLabel := '시작시간';

  if frmMain.cdsQryEnrollments.RecordCount > 0 then
    dbgrdCurrentEnroll.DataSource := frmMain.dsQryEnrollments;
end;

end.
