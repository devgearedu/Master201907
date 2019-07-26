unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ExtCtrls, Vcl.Menus,
  WorkerInformation, TimeInsert, Statistics;

type
  TfrmMainForm = class(TForm)
    tbMainMenu: TToolBar;
    btnWorkerInformation: TToolButton;
    btnTimeInsert: TToolButton;
    btnResult: TToolButton;
    btnClose: TToolButton;
    ilToolbar: TImageList;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    pnlLayout: TPanel;
    procedure btnCloseClick(Sender: TObject);
    procedure btnWorkerInformationClick(Sender: TObject);
    procedure btnTimeInsertClick(Sender: TObject);
    procedure btnResultClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMainForm: TfrmMainForm;

implementation

{$R *.dfm}

procedure TfrmMainForm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMainForm.btnResultClick(Sender: TObject);
begin
  if not Assigned(frmStatisics) then
  frmStatisics := TfrmStatisics.Create(Self);
  frmStatisics.Parent := pnlLayout;
  frmStatisics.BorderStyle := bsNone;
  frmStatisics.Align := alClient;
  frmStatisics.Show;
end;

procedure TfrmMainForm.btnTimeInsertClick(Sender: TObject);
begin
  if not Assigned(frmTimeInsert) then
  frmTimeInsert := TfrmTimeInsert.Create(Self);
  frmTimeInsert.Parent := pnlLayout;
  frmTimeInsert.BorderStyle := bsNone;
  frmTimeInsert.Align := alClient;
  frmTimeInsert.Show;
end;

procedure TfrmMainForm.btnWorkerInformationClick(Sender: TObject);
begin
  if not Assigned(frmWorkerInformation) then
  frmWorkerInformation := TfrmWorkerInformation.Create(Self);
  frmWorkerInformation.Parent := pnlLayout;
  frmWorkerInformation.BorderStyle := bsNone;
  frmWorkerInformation.Align := alClient;
  frmWorkerInformation.Show;
end;

end.
