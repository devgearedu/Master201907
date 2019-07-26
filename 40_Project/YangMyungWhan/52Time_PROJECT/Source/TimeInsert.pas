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





procedure TfrmTimeInsert.btnExceptTimeInsertClick(Sender: TObject);
begin
  dmdataaccess.qryTimeInsert.insert;
  dmDataAccess.qryTimeInsert.FieldByName('USERS_SEQ').Asinteger := 2;
  dmDataAccess.qryTimeInsert.FieldByName('WTIT_DATE').AsdateTime := cpExceptTimeDate.date;
  dmDataAccess.qryTimeInsert.FieldByName('WTIT_STEXCEPTTIME').AsdateTime := tpExceptStart.Time;
  dmDataAccess.qryTimeInsert.FieldByName('WTIT_FIEXCEPTTIME').AsdateTime := tpExceptFinish.Time;
  dmDataAccess.qryTimeInsert.FieldByName('WTIT_STWORKTIME').AsdateTime := 0;
  dmDataAccess.qryTimeInsert.FieldByName('WTIT_FIWORKTIME').Asdatetime := 0;
  dmDataAccess.qryTimeInsert.Post;
  dmDataAccess.qryTimeInsert.Refresh;
end;

procedure TfrmTimeInsert.btnTimeDeleteClick(Sender: TObject);
Var
  Msg: string;
begin
  Msg := Format('해당 항목을 삭제하시겠습니까?',[]);
  if MessageDlg(Msg, mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  dmDataAccess.qryTimeInsert.Delete;
end;

procedure TfrmTimeInsert.btnWorkTimeInsertClick(Sender: TObject);
begin
  dmdataaccess.qryTimeInsert.insert;
  dmDataAccess.qryTimeInsert.FieldByName('USERS_SEQ').Asinteger := 2;
  dmDataAccess.qryTimeInsert.FieldByName('WTIT_DATE').AsdateTime := cpWorkDate.date;
  dmDataAccess.qryTimeInsert.FieldByName('WTIT_STWORKTIME').AsdateTime := tpWorkStart.Time;
  dmDataAccess.qryTimeInsert.FieldByName('WTIT_FIWORKTIME').AsdateTime := tpWorkFinish.Time;
  dmDataAccess.qryTimeInsert.FieldByName('WTIT_STEXCEPTTIME').AsdateTime := 0;
  dmDataAccess.qryTimeInsert.FieldByName('WTIT_FIEXCEPTTIME').AsdateTime := 0;
  dmDataAccess.qryTimeInsert.Post;
  dmDataAccess.qryTimeInsert.Refresh;
end;

end.
