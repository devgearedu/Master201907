unit UInsa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Uchart_Frame,
  Vcl.ExtDlgs, Vcl.ExtCtrls,FireDAC.Stan.Error,VCLTee.Series;

type
  TInsaForm = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Edit1: TEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabControl1: TTabControl;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TFrame11: TFrame1;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBComboBox1: TDBComboBox;
    Label6: TLabel;
    Label7: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBImage1: TDBImage;
    OpenPictureDialog1: TOpenPictureDialog;
    DBRadioGroup1: TDBRadioGroup;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure TabControl1Change(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InsaForm: TInsaForm;

implementation

{$R *.dfm}

uses Udm;
var
  Newseries:TBarSeries;

procedure TInsaForm.Button1Click(Sender: TObject);
begin
  dm.Insa.Insert;
end;

procedure TInsaForm.Button2Click(Sender: TObject);
begin
  if MessageDlg('정말 삭제?', MTConfirmation, [mbYes, mbno], 0) = mrYes  then
     try
       dm.Insa.Delete;
     except
       on e:eFDDBEngineException do
          ShowmessagE(e.message);
     end;

end;

procedure TInsaForm.Button3Click(Sender: TObject);
begin
   dm.Insa.Cancel;
end;

procedure TInsaForm.Button4Click(Sender: TObject);
begin
 try
     dm.Insa.Post;
   except
     on e:eFDdbEngineException do
      if e.Kind = ekUKViolated  then
          ShowMessage('중복키오류')
       else if e.Kind = ekFKViolated then
        ShowMessagE('부서가 없는 부서코드 입력')
      else showmessagE(e.Message);

  end;
end;

procedure TInsaForm.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0:
      begin
        dm.Insa.IndexName := 'i_id';
        dm.InsaID.Index := 0;
        dm.InsaNAME.Index := 1;
      end;
    1:
      begin
        dm.Insa.IndexName := 'i_name';
        dm.InsaID.Index := 1;
        dm.InsaNAME.Index := 0;
      end;
    2:
      dm.Insa.IndexName := 'i_dept';
  end;
end;

procedure TInsaForm.Edit1Change(Sender: TObject);
begin
  dm.Insa.IndexFieldNames := 'i_name';
  dm.Insa.FindNearest([Edit1.text]);
end;

procedure TInsaForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    if not dm.Insa.FindKey([Edit1.text]) then
      ShowMessage('그런 사람 없음');
  // if not dm.insa.Locate('name', Edit1.text, []) then
  // [] loCaseInsensitive, loPartialKey
end;

procedure TInsaForm.FormActivate(Sender: TObject);
begin
  dm.InsaSourceStateChange(dm.InsaSource);
  DM.InsaSourceDataChange(DM.InsaSource, DM.InsaID);
end;

procedure TInsaForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.InsaSource.OnDataChange := NIL;
  dm.InsaSource.OnStateChange  := nil;
  Action := caFree;
end;

procedure TInsaForm.FormCreate(Sender: TObject);
begin
   NewSeries := TBarSeries.Create(TFrame11.dbchart1);
   NewSeries.ParentChart := TFrame11.dbchart1;
   NewSeries.DataSource := DM.Insa;
   NewSeries.CheckDataSource;
   NewSeries.Color := clBlue;
   NewSeries.XLabelsSource := 'tax';
   NewSeries.YValues.ValueSource := 'tax';
   DM.InsaSource.OnDataChange := DM.InsaSourceDataChange;
   dm.InsaSource.OnStateChange := dm.InsaSourceStateChange;
end;

procedure TInsaForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
     SelectNext(activeControl, true, true);
end;

procedure TInsaForm.Label10Click(Sender: TObject);
begin
  if OpenPictureDialog1.execute then
     dbImage1.Picture.LoadFromFile(openpicturedialog1.FileName);
end;

procedure TInsaForm.SpeedButton1Click(Sender: TObject);
begin
  dm.Insa.First;
end;

procedure TInsaForm.SpeedButton2Click(Sender: TObject);
begin
  if not dm.Insa.Bof then
    dm.Insa.Prior;
end;

procedure TInsaForm.SpeedButton3Click(Sender: TObject);
begin
  if not dm.Insa.Eof then
    dm.Insa.Next;
end;

procedure TInsaForm.SpeedButton4Click(Sender: TObject);
begin
  dm.Insa.Last;
end;

procedure TInsaForm.TabControl1Change(Sender: TObject);
begin
  if TabControl1.TabIndex = 0 then
    dm.Insa.Filtered := false
  else
  begin
    dm.Insa.Filtered := true;
    dm.Insa.Filter := 'class =' + '''' + TabControl1.Tabs
      [TabControl1.TabIndex] + '''';
  end;
end;

end.
