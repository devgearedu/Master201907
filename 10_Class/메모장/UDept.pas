unit UDept;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ComCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls;

type
  TDeptForm = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    Tot_Query: TFDQuery;
    StringGrid1: TStringGrid;
    FDStoredProc1: TFDStoredProc;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeptForm: TDeptForm;

implementation

{$R *.dfm}

uses Udm;

procedure TDeptForm.Button1Click(Sender: TObject);
begin
  if Edit1.Text = '' then
     raise Exception.Create('부서 코드는 반드시 입력하십시오');
  if Edit2.Text = '' then
     raise Exception.Create('부서명은  반드시 입력하십시오');
  if Edit3.Text = '' then
     raise Exception.Create('팀명은 반드시 입력하십시오');
  if dm.Dept.Locate('code', edit1.Text,[]) then
     raise Exception.Create('이미 등록된 코드입니다');

  FDStoredProc1.Close;
  FDStoredProc1.Parambyname('pcode').AsString := Edit1.Text;
  FDStoredProc1.ParamByName('pDept').asString := Edit2.Text;
  FDStoredProc1.ParamByName('psection').asString := Edit3.Text;
  try
    FDStoredProc1.ExecProc;
  except
    showmessage('등록 실패');
  end;
  DM.Dept.Refresh;
end;

procedure TDeptForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action := caFree;
end;

procedure TDeptForm.FormCreate(Sender: TObject);
var
  i:byte;
begin
  with StringGrid1 do
  begin
    RowCount := dm.Dept.RecordCount + 2;
    Cells[0,0] := '부서명';
    Cells[1,0] := '팀  명';
    Cells[2,0] := '인원수';
    for I := 1 to rowcount do
    begin
      Cells[0,i] := '';
      Cells[1,i] := '';
      Cells[2,i] := '';
    end;
    DM.Dept.First;
    for I := 1 to dm.Dept.recordcount do
    begin
      Cells[0,i] := dm.Dept.FieldByName('dept').asstring;
      Cells[1,i] := dm.Dept.FieldByName('section').asstring;
      tot_Query.close;
      tot_Query.Params[0].AsString := dm.Dept.FieldByName('code').asstring;
      tot_Query.Open;
      Cells[2,i] := tot_query.FieldByName('total').AsString;
      dm.Dept.Next;
    end;
    Cells[0,i] := '총인원수';
    tot_Query.close;
    tot_Query.Params[0].AsString := '%';
    tot_Query.Open;
    Cells[2,i] := tot_query.FieldByName('total').AsString;
  end;
end;

procedure TDeptForm.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  s:string;
  pos:integer;
  OldAlign:integer;
begin
  s := StringGrid1.Cells[Acol, Arow];
  with StringGrid1.Canvas do
  begin
    FillRect(Rect);
    if Arow = 0 then
    begin
      Font.Color := clBlue;
      Font.Size := Font.Size + 4;
    end;
    if (arow <> 0) and (acol = 2) then
    begin
      Font.Color := clRed;
      Font.Size := Font.Size + 4;
      s := s + '명';
      oldAlign := SetTextAlign(handle, ta_Right);
      TextRect(Rect, Rect.right, Rect.Top+3, s);
      SetTextAlign(handle, oldalign);
    end
    else
    begin
      pos := ((Rect.Right - Rect.Left) - TextWidth(s)) div 2;
      TextRect(Rect, Rect.Left+pos, Rect.Top+3, s);
    end;
  end;
end;

end.
