unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.Ribbon, Vcl.RibbonLunaStyleActnCtrls, Data.DB, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, Datasnap.DBClient, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase, System.Actions, Vcl.ActnList, Vcl.ExtActns,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.Menus, System.ImageList, Vcl.ImgList;

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ImageList1: TImageList;
    ToolButton2: TToolButton;
    PnlLayout: TPanel;
    ToolButton4: TToolButton;
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UDataModule, UStudent, UClass;

procedure TForm1.ToolButton1Click(Sender: TObject);
begin
  if not Assigned(frmStudent) then
    frmStudent := TfrmStudent.Create(Self);
  frmStudent.Parent := PnlLayout;
  frmStudent.BorderStyle := bsNone;
  frmStudent.Align := alClient;
  frmStudent.Show;
end;

procedure TForm1.ToolButton2Click(Sender: TObject);
begin
  if not Assigned(frmClass) then
    frmClass := TfrmClass.Create(Self);
  frmClass.Parent := PnlLayout;
  frmClass.BorderStyle := bsNone;
  frmClass.Align := alClient;
  frmClass.Show;
end;

procedure TForm1.ToolButton4Click(Sender: TObject);
begin
  Close;
end;

end.
