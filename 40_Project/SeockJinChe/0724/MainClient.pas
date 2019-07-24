unit MainClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.StdActns, Vcl.DBCtrls,
  System.ImageList, Vcl.ImgList;

type
  TfrmMain = class(TForm)
    ToolBarPanel: TPanel;
    AcceptPanel: TPanel;
    ActionMenuBar: TActionMainMenuBar;
    AcceptGrid: TDBGrid;
    AcceptLabel: TLabel;
    ActionList: TActionList;
    ActionManager: TActionManager;
    FileExit1: TFileExit;
    AcceptPanel_Sub1: TPanel;
    btnAccept: TButton;
    btnOutput: TButton;
    btnRefresh: TButton;
    MainPanel: TPanel;
    ilToolbar: TImageList;
    ToolBar: TToolBar;
    btnPatientList: TToolButton;
    btnReservation: TToolButton;
    btnDiagnosis: TToolButton;
    btnMessage: TToolButton;
    btnMedicine: TToolButton;
    btnDoctor: TToolButton;
    ToolButton1: TToolButton;
    btnClose: TButton;
    ImageList: TImageList;
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
