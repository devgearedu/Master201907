unit MainClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.StdActns, Vcl.DBCtrls;

type
  TfrmMain = class(TForm)
    MainPanel: TPanel;
    ButtonReservation: TButton;
    ButtonPatientList: TButton;
    ButtonDiagnosis: TButton;
    ButtonMessage: TButton;
    ButtonMedicine: TButton;
    RservPanel: TPanel;
    DecisionPanel: TPanel;
    ActionMainMenuBar1: TActionMainMenuBar;
    DBGrid1: TDBGrid;
    AcceptLabel: TLabel;
    ActionList1: TActionList;
    ActionManager1: TActionManager;
    FileExit1: TFileExit;
    DecisionPanel_Sub1: TPanel;
    ButtonAccept: TButton;
    ButtonOutput: TButton;
    ButtonRefresh: TButton;
    Sub_Panel1: TPanel;
    Edit1: TEdit;
    ButtonInsert: TButton;
    ButtonLookup: TButton;
    ButtonDelete: TButton;
    Button1: TButton;
    DBComboBox1: TDBComboBox;
    Sub_Panel2: TPanel;
    RSVDBGrid: TDBGrid;
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses PatientManagerDataModule;

end.
