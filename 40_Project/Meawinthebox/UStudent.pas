unit UStudent;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  System.ImageList, Vcl.ImgList, Vcl.ToolWin;

type
  TfrmStudent = class(TForm)
    InformPnl: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid2: TDBGrid;
    TabSheet2: TTabSheet;
    DBGrid3: TDBGrid;
    TabSheet3: TTabSheet;
    DBGrid4: TDBGrid;
    GroupBox1: TGroupBox;
    Image1: TImage;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label13: TLabel;
    Label11: TLabel;
    Label8: TLabel;
    Label2: TLabel;
    Label12: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    lblStudentCode: TLabel;
    Label1: TLabel;
    DBStudent_Address: TDBEdit;
    DBStudent_Status: TDBEdit;
    DBStudent_Discharge_Date: TDBEdit;
    DBStudent_Admission_Date: TDBEdit;
    DBStudent_Class: TDBEdit;
    DBStudent_Grade: TDBEdit;
    DBStudent_School: TDBEdit;
    DBStudent_Sex: TDBEdit;
    DBStudent_Birth: TDBEdit;
    DBStudent_Code: TDBEdit;
    DBStudent_Name: TDBEdit;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBStudent_Phone: TDBEdit;
    DBStudent_Parent_Phone: TDBEdit;
    DBStudent_Parent: TDBEdit;
    GroupBox4: TGroupBox;
    DBStudent_Memo: TDBMemo;
    StudentListPnl: TPanel;
    DBGrid1: TDBGrid;
    SearchPnl: TPanel;
    Label16: TLabel;
    edtSearchStudent: TEdit;
    ChkSearchName: TCheckBox;
    ChkSearchSchool: TCheckBox;
    CheckBox3: TCheckBox;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ImageList1: TImageList;
    ToolButton4: TToolButton;
    procedure edtSearchStudentKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStudent: TfrmStudent;

implementation

{$R *.dfm}

uses UDataModule;

procedure TfrmStudent.edtSearchStudentKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Filter: string;
begin
  Filter := '';
  if edtSearchStudent.Text <> '' then
  begin
    if chkSearchName.Checked then
      Filter := Format('STUDENT_NAME like ''%%%s%%''', [edtSearchStudent.Text]);
    if chkSearchSchool.Checked then
    begin
      if Filter <> '' then
        Filter := Filter + ' or ';
      Filter := Filter + Format('STUDENT_SCHOOL like ''%%%s%%''', [edtSearchStudent.Text]);
    end;
  end;

  UDM.Student_List.Filter := Filter;
  UDM.Student_List.Filtered := (Filter <> '');

end;

procedure TfrmStudent.ToolButton1Click(Sender: TObject);
begin
  UDM.Student_List.Append;
  DBStudent_Name.SetFocus;
end;

procedure TfrmStudent.ToolButton2Click(Sender: TObject);
begin
  if DBStudent_Code.Text = '' then
  begin
    ShowMessage('학번을 입력하세요.');
    DBStudent_Code.SetFocus;
    Exit;
  end;

  if DBStudent_Name.Text = '' then
  begin
    ShowMessage('이름을 입력하세요.');
    DBStudent_Name.SetFocus;
    Exit;
  end;

  if DBStudent_Birth.Text = '' then
  begin
    ShowMessage('생년월일을 입력하세요.');
    DBStudent_Birth.SetFocus;
    Exit;
  end;

  UDM.Student_List.Post;
  UDM.Student_List.Refresh;
end;

procedure TfrmStudent.ToolButton3Click(Sender: TObject);
Var
Name, OutYn, Msg: string;
begin
  Name := UDM.Student_List.FieldByName('STUDENT_NAME').AsString;
  OutYn := UDM.Student_List.FieldByName('STUDENT_STATUS').AsString;

  if OutYn = '퇴원' then
  begin
    ShowMessage('이미 퇴원한 학생입니다.');
    Exit;
  end;

   // 탈퇴 처리
  if UDM.Student_List.State <> dsEdit then
    UDM.Student_List.Edit;
  UDM.Student_List.FieldByName('STUDENT_STATUS').AsString := '퇴원';
  UDM.Student_List.FieldByName('STUDENT_DISCHARGE_DATE').AsDateTime := Now;
  UDM.Student_List.Post;
  UDM.Student_List.Refresh;

end;

procedure TfrmStudent.ToolButton4Click(Sender: TObject);
begin
  close;
end;

end.
