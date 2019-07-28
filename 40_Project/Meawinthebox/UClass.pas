unit UClass;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Data.DB,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmClass = class(TForm)
    InformPnl: TPanel;
    GroupBox1: TGroupBox;
    Image1: TImage;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label13: TLabel;
    Label11: TLabel;
    Label8: TLabel;
    Label2: TLabel;
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
    DBStudent_School: TDBEdit;
    DBStudent_Sex: TDBEdit;
    DBStudent_Birth: TDBEdit;
    DBStudent_Code: TDBEdit;
    DBStudentName: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid2: TDBGrid;
    TabSheet2: TTabSheet;
    DBGrid3: TDBGrid;
    TabSheet3: TTabSheet;
    DBGrid4: TDBGrid;
    GroupBox4: TGroupBox;
    DBStudent_Memo: TDBMemo;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClass: TfrmClass;

implementation

{$R *.dfm}

uses UDataModule;

end.
