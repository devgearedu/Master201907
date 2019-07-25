unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCtrls,
  Vcl.CategoryButtons, System.ImageList, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ButtonGroup, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons,
  Data.DBXDataSnap, Data.DBXCommon, IPPeerClient, Datasnap.Provider,
  Data.DB, Datasnap.DBClient, Data.SqlExpr, Datasnap.DSConnect, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Samples.Spin, Vcl.WinXPickers,
  System.DateUtils, FireDAC.Comp.Client, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  ServerMethodsUnit12_ClientClass;

type
  TfrmMain = class(TForm)
    svMenu: TSplitView;
    pnlScreen: TPanel;
    pnlTop: TPanel;
    ButtonGroup1: TButtonGroup;
    imgSplitViewButton: TImage;
    SQLcnClients: TSQLConnection;
    cdsClients: TClientDataSet;
    dspClients: TDataSetProvider;
    DSpcnClients: TDSProviderConnection;
    dsClients: TDataSource;
    dspQryClients: TDataSetProvider;
    cdsQryClients: TClientDataSet;
    dsQryClients: TDataSource;
    cdsClientsCODE: TIntegerField;
    cdsClientsNAME_: TWideStringField;
    cdsClientsBIRTH_DATE: TDateField;
    cdsClientsMOBILE: TStringField;
    cdsClientsDATE_OF_SIGN_UP: TDateField;
    cdsClientsEMAIL: TStringField;
    cdsClientsADDRESS_: TWideStringField;
    cdsClientsFAVORITE_BRANCH: TWideStringField;
    cdsClientsVEHICLE_PLATE: TWideStringField;
    cdsClientsPASSWORD_: TStringField;
    cdsClientsDATE_OF_WITHDRAWAL: TDateField;
    cdsQryClientsCODE: TIntegerField;
    cdsQryClientsNAME_: TWideStringField;
    cdsQryClientsBIRTH_DATE: TDateField;
    cdsQryClientsMOBILE: TStringField;
    cdsQryClientsDATE_OF_SIGN_UP: TDateField;
    cdsQryClientsEMAIL: TStringField;
    cdsQryClientsADDRESS_: TWideStringField;
    cdsQryClientsFAVORITE_BRANCH: TWideStringField;
    cdsQryClientsVEHICLE_PLATE: TWideStringField;
    cdsQryClientsPASSWORD_: TStringField;
    cdsQryClientsDATE_OF_WITHDRAWAL: TDateField;
    procedure imgSplitViewButtonClick(Sender: TObject);
    procedure ButtonGroup1Items0Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation
uses
  RegistrationForm;


{$R *.dfm}


procedure TfrmMain.ButtonGroup1Items0Click(Sender: TObject);
begin
  if not Assigned(frmRegistration) then
  begin
    frmRegistration := TfrmRegistration.Create(Application);
    frmRegistration.Parent := pnlScreen;
    frmRegistration.Align := alClient;
    frmRegistration.Show;
  end
  else
    FreeAndNil(frmRegistration);
end;

procedure TfrmMain.imgSplitViewButtonClick(Sender: TObject);
begin
  if svMenu.Opened then
    svMenu.Close
  else
    svMenu.Open;
end;

end.
