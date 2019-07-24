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
  FireDAC.Phys.IBBase;

type
  TForm1 = class(TForm)
    Ribbon1: TRibbon;
    RibbonPage1: TRibbonPage;
    RibbonGroup1: TRibbonGroup;
    RibbonPage2: TRibbonPage;
    RibbonPage3: TRibbonPage;
    RibbonPage4: TRibbonPage;
    RibbonGroup2: TRibbonGroup;
    RibbonGroup3: TRibbonGroup;
    Panel2: TPanel;
    InformPnl: TPanel;
    DBGrid1: TDBGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    TabSheet3: TTabSheet;
    Splitter1: TSplitter;
    SearchPnl: TPanel;
    Edit1: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DataSource1: TDataSource;
    FDConnection1: TFDConnection;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDTable1: TFDTable;
    GroupBox1: TGroupBox;
    DBImage1: TDBImage;
    GroupBox2: TGroupBox;
    FDQuery1: TFDQuery;
    DBEdit11: TDBEdit;
    Label3: TLabel;
    Label13: TLabel;
    DBEdit14: TDBEdit;
    DBEdit13: TDBEdit;
    Label11: TLabel;
    DBEdit12: TDBEdit;
    Label8: TLabel;
    Label2: TLabel;
    DBEdit10: TDBEdit;
    DBEdit4: TDBEdit;
    Label12: TLabel;
    DBEdit3: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit8: TDBEdit;
    lblStudentCode: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    GroupBox4: TGroupBox;
    Label14: TLabel;
    DBMemo1: TDBMemo;
    Label15: TLabel;
    DBMemo2: TDBMemo;
    Label16: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
