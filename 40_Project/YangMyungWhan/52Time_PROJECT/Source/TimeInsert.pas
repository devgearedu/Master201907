unit TimeInsert;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ComCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.WinXPickers, Vcl.WinXCalendars,
  Vcl.Samples.Calendar, DataAccessModule;

type
  TfrmTimeInsert = class(TForm)
    pnlHeader: TPanel;
    Label1: TLabel;
    pcTimeInsert: TPageControl;
    DBGrid1: TDBGrid;
    tbsWorkTime: TTabSheet;
    tbsWorkExcept: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    tpWorkStart: TTimePicker;
    tpWorkFinish: TTimePicker;
    btnWorkTimeInsert: TButton;
    Label4: TLabel;
    Label5: TLabel;
    tpExceptStart: TTimePicker;
    tpExceptFinish: TTimePicker;
    btnExceptTimeInsert: TButton;
    cpWorkDate: TCalendarPicker;
    cpExceptTimeDate: TCalendarPicker;
    btnTimeDelete: TButton;
    DBGrid2: TDBGrid;
    procedure btnExceptTimeInsertClick(Sender: TObject);
    procedure btnWorkTimeInsertClick(Sender: TObject);
    procedure btnTimeDeleteClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTimeInsert: TfrmTimeInsert;

implementation

{$R *.dfm}

uses LogIn;





procedure TfrmTimeInsert.btnExceptTimeInsertClick(Sender: TObject);
Var
  ExceptTime_Seq: Integer;
  Et_FiExceptTime: TTime;
  Et_StExceptTime:TTime;

begin
  dmdataaccess.qryExceptTime.append;
  dmDataAccess.qryExceptTime.FieldByName('WTIT_DATE').AsdateTime := cpExceptTimeDate.date;
  dmDataAccess.qryExceptTime.FieldByName('WTIT_SEQ').Asinteger := 1;
  dmDataAccess.qryExceptTime.FieldByName('ET_STEXCEPTTIME').AsdateTime := tpExceptStart.Time;
  dmDataAccess.qryExceptTime.FieldByName('ET_FIEXCEPTTIME').AsdateTime := tpExceptFinish.Time;
  dmDataAccess.qryExceptTime.Post;
  dmDataAccess.qryExceptTime.Refresh;

    //제외시간 계산
  ExceptTime_Seq := dmDataAccess.qryExceptTime.FieldByName('ET_SEQ').AsInteger;
  Et_StExceptTime := dmDataAccess.qryExceptTime.FieldByName('ET_STEXCEPTTIME').AsDateTime;
  Et_FiExceptTime := dmDataAccess.qryExceptTime.FieldByName('ET_FIEXCEPTTIME').AsDateTime;
  dmDataAccess.ExecuteExceptTime(ExceptTime_Seq, Et_StExceptTime, Et_FiExcepttime);
  dmDataAccess.qryExceptTime.Refresh;

end;

procedure TfrmTimeInsert.btnTimeDeleteClick(Sender: TObject);
Var
  Msg: string;
begin
  Msg := Format('해당 항목을 삭제하시겠습니까?',[]);
  if MessageDlg(Msg, mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  dmDataAccess.qryTimeInsert.Delete;
  dmDataAccess.qryTimeInsert.Refresh;
  dmDataAccess.qryAutoTimeInsert.Refresh;
end;

procedure TfrmTimeInsert.btnWorkTimeInsertClick(Sender: TObject);
Var
  RealTime_Seq: Integer;
  Wtit_FiWorkTime: TTime;
  Wtit_StWorkTime:TTime;
  seq : Integer;

begin

  dmdataaccess.qryAutoTimeInsert.append;
  dmdataAccess.qryNameInsert.Close;
  dmdataAccess.qryNameInsert.ParamByName('AUSERS_NAME').AsString := frmLogin.edtLoginName.Text;
  dmdataAccess.qryNameInsert.Open;
  seq := dmdataAccess.qryInformationDept.FieldbyName('USERS_SEQ').Asinteger;
  dmdataAccess.qryNameInsert.Close;

  dmdataaccess.qryAutoTimeInsert.append;
  dmDataAccess.qryAutoTimeInsert.FieldByName('USERS_SEQ').Asinteger := seq;
  dmDataAccess.qryAutoTimeInsert.FieldByName('WTIT_DATE').AsdateTime := cpWorkDate.date;
  dmDataAccess.qryAutoTimeInsert.FieldByName('WTIT_STWORKTIME').AsdateTime := tpWorkStart.Time;
  dmDataAccess.qryAutoTimeInsert.FieldByName('WTIT_FIWORKTIME').AsdateTime := tpWorkFinish.Time;
  dmDataAccess.qryAutoTimeInsert.Post;
  dmDataAccess.qryAutoTimeInsert.Refresh;
  dmDataAccess.qryAutoTimeInsert.Refresh;

  //퇴근시간 - 출근시간 = 실 근무시간 계산
  RealTime_Seq := dmDataAccess.qryAutoTimeInsert.FieldByName('WTIT_SEQ').AsInteger;
  Wtit_StWorkTime := dmDataAccess.qryAutoTimeInsert.FieldByName('WTIT_STWORKTIME').AsDateTime;
  Wtit_FiWorkTime := dmDataAccess.qryAutoTimeInsert.FieldByName('WTIT_FIWORKTIME').AsDateTime;
  dmDataAccess.ExecuteRealTime(RealTime_Seq, Wtit_StworkTime, Wtit_FiWorktime);
  dmDataAccess.qryTimeInsert.Refresh;
  dmDataAccess.qryAutoTimeInsert.Refresh;

  // 제외시간 디비만들기
  // 제외시간 SUM으로 합쳐서 넘겨 가져오기
end;

end.
