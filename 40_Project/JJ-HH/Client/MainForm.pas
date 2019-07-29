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
    SQLcnGym: TSQLConnection;
    DSpcnGym: TDSProviderConnection;
    cdsQryClients: TClientDataSet;
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
    dspQryClients: TDataSetProvider;
    dsQryClients: TDataSource;
    cdsQryCoaches: TClientDataSet;
    dspQryCoaches: TDataSetProvider;
    dsQryCoaches: TDataSource;
    cdsQryCoachesCODE: TIntegerField;
    cdsQryCoachesNAME_: TWideStringField;
    cdsQryCoachesBIRTH_DATE: TDateField;
    cdsQryCoachesMOBILE: TStringField;
    cdsQryCoachesSPORTS: TWideStringField;
    cdsQryCoachesDATE_OF_ENTER: TDateField;
    cdsQryCoachesEMAIL: TStringField;
    cdsQryCoachesADDRESS_: TWideStringField;
    cdsQryCoachesVEHICLE_PLATE: TWideStringField;
    cdsQryCoachesPASSWORD_: TStringField;
    cdsQryCoachesPICTURE: TBlobField;
    cdsQryCoachesDATE_OF_RESIGN: TDateField;
    dsQryCourses: TDataSource;
    cdsQryCourses: TClientDataSet;
    dspQryCourses: TDataSetProvider;
    cdsQryEnrollments: TClientDataSet;
    dspQryEnrollments: TDataSetProvider;
    dsQryEnrollments: TDataSource;
    procedure imgSplitViewButtonClick(Sender: TObject);
    procedure ButtonGroup1Items0Click(Sender: TObject);
    procedure ButtonGroup1Items2Click(Sender: TObject);
    procedure ButtonGroup1Items3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonGroup1Items1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  serverclient : TServerMethods12Client;

implementation
uses
  RegistrationForm, ModificationForm, LookupForm, EnrollmentForm;


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

procedure TfrmMain.ButtonGroup1Items1Click(Sender: TObject);
begin
  if not Assigned(frmEnrollment) then
  begin
    frmEnrollment := TfrmEnrollment.Create(Application);
    frmEnrollment.Parent := pnlScreen;
    frmEnrollment.Align := alClient;
    frmEnrollment.Show;
  end
  else
    FreeAndNil(frmEnrollment);

end;

procedure TfrmMain.ButtonGroup1Items2Click(Sender: TObject);
begin
  if not Assigned(frmModification) then
  begin
    frmModification := TfrmModification.Create(Application);
    frmModification.Parent := pnlScreen;
    frmModification.Align := alClient;
    frmModification.Show;
  end
  else
    FreeAndNil(frmModification);

end;

procedure TfrmMain.ButtonGroup1Items3Click(Sender: TObject);
begin
  if not Assigned(frmLookup) then
  begin
    frmLookup := TfrmLookup.Create(Application);
    frmLookup.Parent := pnlScreen;
    frmLookup.Align := alClient;
    frmLookup.Show;
  end
  else
    FreeAndNil(frmLookup);

end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  serverclient := TServerMethods12Client.Create(frmMain.SQLcnGym.DBXConnection);
end;

procedure TfrmMain.imgSplitViewButtonClick(Sender: TObject);
begin
  if svMenu.Opened then
    svMenu.Close
  else
    svMenu.Open;
end;

end.
