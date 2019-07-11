unit UInsa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TInsaForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabControl1: TTabControl;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Edit1: TEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
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

procedure TInsaForm.ComboBox1Change(Sender: TObject);
begin
 case combobox1.ItemIndex of
   0:dm.Insa.IndexName := 'i_id';
   1:dm.Insa.IndexName := 'i_name';
   2:dm.Insa.IndexName := 'i_dept';
 end;
end;

procedure TInsaForm.Edit1Change(Sender: TObject);
begin
  dm.Insa.IndexFieldNames := 'name';
  dm.Insa.FindNearest([Edit1.text]);
end;

procedure TInsaForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     if not dm.Insa.FindKey([Edit1.Text]) then
        ShowMessage('그런 사람 없음');
// if not dm.insa.Locate('name', Edit1.text, []) then
// [] loCaseInsensitive, loPartialKey
end;

procedure TInsaForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action := caFree;
end;

procedure TInsaForm.SpeedButton1Click(Sender: TObject);
begin
  dm.Insa.First;
end;

procedure TInsaForm.SpeedButton2Click(Sender: TObject);
begin
  if not dm.Insa.Bof  then
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

end.
