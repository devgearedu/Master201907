unit ModificationForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask, Vcl.ComCtrls, Vcl.StdCtrls, System.DateUtils,
  ServerMethodsUnitGym_ClientClass, Vcl.DBCtrls, Vcl.WinXCtrls, Vcl.ExtCtrls,
  RegistrationForm, NamesakeForm;

type
  TfrmModification = class(TForm)
    pcForModify: TPageControl;
    tshtClient: TTabSheet;
    lblName_Client: TLabel;
    lblBirth_DateClient: TLabel;
    lblMobileClient: TLabel;
    lblEmailClient: TLabel;
    lblAddress_Client: TLabel;
    lblVehicle_PlateClient: TLabel;
    lblFavoriteBranchClient: TLabel;
    lblCodeClient: TLabel;
    edtFavorite_BranchClient: TEdit;
    btnSaveClient: TButton;
    medtMobileClient: TMaskEdit;
    tshtCoach: TTabSheet;
    tshtCourse: TTabSheet;
    btnModifyClient: TButton;
    btnCancelClient: TButton;
    sbClient: TSearchBox;
    dbedtEmailClient: TDBEdit;
    lblDate_Of_Sign_InClient: TLabel;
    btnWithdrawalClient: TButton;
    lblDate_Of_WithdrawalClient: TLabel;
    dbtxtName_Client: TDBText;
    dbtxtBirth_DateClient: TDBText;
    rdbtnNameClient: TRadioButton;
    rdbtnCodeClient: TRadioButton;
    dbtxtDate_Of_Sign_UpClient: TDBText;
    dbtxtDate_Of_WithdrawalClient: TDBText;
    dbedtAddress_Client: TDBEdit;
    dbedtVehicle_PlateClient: TDBEdit;
    lblCodeFieldClient: TLabel;
    lblMobileCoach: TLabel;
    lblName_Coach: TLabel;
    lblBirth_DateCoach: TLabel;
    lblEmailCoach: TLabel;
    lblAddress_Coach: TLabel;
    lblVehicle_PlateCoach: TLabel;
    dbtxtName_Coach: TDBText;
    lblSportsCoach: TLabel;
    lblCodeCoach: TLabel;
    lblDate_Of_EnterCoach: TLabel;
    dbtxtBirth_DateCoach: TDBText;
    dbtxtDate_Of_EnterCoach: TDBText;
    lblDate_Of_ResignCoach: TLabel;
    btnResignCoach: TButton;
    btnSaveCoach: TButton;
    dbtxtDate_Of_ResignCoach: TDBText;
    lblCodeFieldCoach: TLabel;
    medtMobileCoach: TMaskEdit;
    btnModifyCoach: TButton;
    btnCancelCoach: TButton;
    rdbtnName_Coach: TRadioButton;
    sbCoach: TSearchBox;
    dbedtEmailCoach: TDBEdit;
    rdbtnCodeCoach: TRadioButton;
    dbedtAddress_Coach: TDBEdit;
    dbedtVehicle_PlateCoach: TDBEdit;
    DBEdit1: TDBEdit;
    lblPictureCoach: TLabel;
    DBImage1: TDBImage;
    DBComboBox1: TDBComboBox;
    procedure btnSaveClientClick(Sender: TObject);
//    procedure FormCreate(Sender: TObject);
    procedure btnModifyClientClick(Sender: TObject);
    procedure tshtClientShow(Sender: TObject);
    procedure btnCancelClientClick(Sender: TObject);
    procedure sbClientInvokeSearch(Sender: TObject);
    procedure btnWithdrawalClientClick(Sender: TObject);
    procedure sbCoachInvokeSearch(Sender: TObject);
    procedure tshtCoachShow(Sender: TObject);
    procedure btnModifyCoachClick(Sender: TObject);
    procedure btnSaveCoachClick(Sender: TObject);
    procedure btnCancelCoachClick(Sender: TObject);
    procedure btnResignCoachClick(Sender: TObject);
    procedure tshtClientHide(Sender: TObject);
    procedure tshtCoachHide(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModification: TfrmModification;

implementation
uses
  MainForm;

//var
//  serverclient : TServerMethods12Client;

{$R *.dfm}

procedure TfrmModification.btnCancelClientClick(Sender: TObject);
var
  MaskStrMobile : string;
begin
  medtMobileClient.ReadOnly := True;
  dbedtEmailClient.ReadOnly := True;
  dbedtAddress_Client.ReadOnly := True;
  dbedtVehicle_PlateClient.ReadOnly := True;

  frmMain.cdsQryClients.Locate('code',lblCodeFieldClient.Caption, []);
  lblCodeFieldClient.Caption := IntToStr(frmMain.cdsQryClientsCODE.Value);
  MaskStrMobile := frmMain.cdsQryClientsMOBILE.Value;
  medtMobileClient.Text := MaskStrMobile.Substring(0,3)+'-'+MaskStrMobile.Substring(3,4)+'-'+MaskStrMobile.Substring(6,4);

  btnSaveClient.Enabled := False;
  btnCancelClient.Enabled := False;
  btnWithdrawalClient.Enabled := False;
  btnModifyClient.Enabled := True;
end;

procedure TfrmModification.btnCancelCoachClick(Sender: TObject);
var
  MaskStrMobile : string;
begin
   medtMobileCoach.ReadOnly := True;
  dbedtEmailCoach.ReadOnly := True;
  dbedtAddress_Coach.ReadOnly := True;
  dbedtVehicle_PlateCoach.ReadOnly := True;

  frmMain.cdsQryCoaches.Locate('code',lblCodeFieldCoach.Caption, []);
  lblCodeFieldCoach.Caption := IntToStr(frmMain.cdsQryCoachesCODE.Value);
  MaskStrMobile := frmMain.cdsQryCoachesMOBILE.Value;
  medtMobileCoach.Text := MaskStrMobile.Substring(0,3)+'-'+MaskStrMobile.Substring(3,4)+'-'+MaskStrMobile.Substring(6,4);

  btnSaveCoach.Enabled := False;
  btnCancelCoach.Enabled := False;
  btnResignCoach.Enabled := False;
  btnModifyCoach.Enabled := True;
end;

procedure TfrmModification.btnModifyClientClick(Sender: TObject);
begin
  medtMobileClient.ReadOnly := False;
  dbedtEmailClient.ReadOnly := False;
  dbedtAddress_Client.ReadOnly := False;
  dbedtVehicle_PlateClient.ReadOnly := False;

  btnSaveClient.Enabled := True;
  btnCancelClient.Enabled := True;
  btnWithdrawalClient.Enabled := True;
  btnModifyClient.Enabled := False;
end;

procedure TfrmModification.btnModifyCoachClick(Sender: TObject);
begin
  medtMobileCoach.ReadOnly := False;
  dbedtEmailCoach.ReadOnly := False;
  dbedtAddress_Coach.ReadOnly := False;
  dbedtVehicle_PlateCoach.ReadOnly := False;

  btnSaveCoach.Enabled := True;
  btnCancelCoach.Enabled := True;
  btnResignCoach.Enabled := True;
  btnModifyCoach.Enabled := False;
end;

procedure TfrmModification.btnResignCoachClick(Sender: TObject);
begin
  if frmMain.cdsqryCoaches.FieldByName('Date_Of_Resign').IsNull then
  begin
    frmMain.cdsqryCoaches.Edit;
    frmMain.cdsqryCoaches.FieldByName('Date_Of_Resign').AsDateTime := Today; //StrToDate('2019-03-21');
    frmMain.cdsqryCoaches.Post;
    frmMain.cdsqryCoaches.ApplyUpdates(-1);
  end;
end;

procedure TfrmModification.btnSaveClientClick(Sender: TObject);
begin
  frmMain.cdsqryClients.Edit;

  if not (StringReplace(medtMobileClient.Text,'-', '', [rfReplaceAll]) = frmMain.cdsqryClientsMOBILE.Value) then
    frmMain.cdsqryClients.FieldByName('Mobile').AsString := StringReplace(medtMobileClient.Text,'-', '', [rfReplaceAll]);
  if not (dbedtEmailClient.Text = frmMain.cdsqryClientsEMAIL.Value) then
    frmMain.cdsqryClients.FieldByName('Email').AsString := dbedtEmailClient.Text;
  if not (dbedtAddress_Client.Text = frmMain.cdsqryClientsADDRESS_.Value) then
    frmMain.cdsqryClients.FieldByName('Address_').AsString := dbedtAddress_Client.Text;
  if not (dbedtVehicle_PlateClient.Text = frmMain.cdsqryClientsVehicle_Plate.Value) then
    frmMain.cdsqryClients.FieldByName('Vehicle_Plate').AsString := dbedtVehicle_PlateClient.Text;

  frmMain.cdsqryClients.Post;
  frmMain.cdsqryClients.ApplyUpdates(-1);

  btnSaveClient.Enabled := False;
  btnCancelClient.Enabled := False;
  btnWithdrawalClient.Enabled := False;
  btnModifyClient.Enabled := True;
end;

procedure TfrmModification.btnSaveCoachClick(Sender: TObject);
begin
  frmMain.cdsqryCoaches.Edit;

  if not (StringReplace(medtMobileCoach.Text,'-', '', [rfReplaceAll]) = frmMain.cdsqryCoachesMOBILE.Value) then
    frmMain.cdsqryCoaches.FieldByName('Mobile').AsString := StringReplace(medtMobileCoach.Text,'-', '', [rfReplaceAll]);
  if not (dbedtEmailCoach.Text = frmMain.cdsqryCoachesEMAIL.Value) then
    frmMain.cdsqryCoaches.FieldByName('Email').AsString := dbedtEmailCoach.Text;
  if not (dbedtAddress_Coach.Text = frmMain.cdsqryCoachesADDRESS_.Value) then
    frmMain.cdsqryCoaches.FieldByName('Address_').AsString := dbedtAddress_Coach.Text;
  if not (dbedtVehicle_PlateCoach.Text = frmMain.cdsqryCoachesVehicle_Plate.Value) then
    frmMain.cdsqryCoaches.FieldByName('Vehicle_Plate').AsString := dbedtVehicle_PlateCoach.Text;

  frmMain.cdsqryCoaches.Post;
  frmMain.cdsqryCoaches.ApplyUpdates(-1);

  btnSaveCoach.Enabled := False;
  btnCancelCoach.Enabled := False;
  btnResignCoach.Enabled := False;
  btnModifyCoach.Enabled := True;
end;

procedure TfrmModification.btnWithdrawalClientClick(Sender: TObject);
begin
  if frmMain.cdsqryClients.FieldByName('Date_Of_Withdrawal').IsNull then
  begin
    frmMain.cdsqryClients.Edit;
    frmMain.cdsqryClients.FieldByName('Date_Of_Withdrawal').AsDateTime := Today; //StrToDate('2019-03-21');
    frmMain.cdsqryClients.Post;
    frmMain.cdsqryClients.ApplyUpdates(-1);
  end;

end;

procedure TfrmModification.sbClientInvokeSearch(Sender: TObject);
var
  MaskStrMobile : string;
  frmNSClient : TfrmNamesake;
begin

  if sbClient.Text = '' then
  begin
    ShowMessage('검색어를 입력하세요');
    exit;
  end;

  frmMain.cdsQryClients.Active := False;

  if rdbtnCodeClient.Checked then
  begin
    serverclient.SelectByFieldAndValueClient('code', sbClient.Text);
    frmMain.cdsQryClients.Active := True;
  end
  else
  begin
    serverclient.SelectByFieldAndValueClient('name_', sbClient.Text);
    frmMain.cdsQryClients.Active := True;

    if frmMain.cdsQryClients.RecordCount > 1 then
    begin
      frmNSClient := TfrmNamesake.Create(nil);
      frmNSClient.dbgrdNamesake.DataSource := frmMain.dsQryClients;
      frmNSClient.ShowModal;
    end
  end;

  btnModifyClient.Enabled := True;
  lblCodeFieldClient.Caption := IntToStr(frmMain.cdsQryClientsCODE.Value);
  MaskStrMobile := frmMain.cdsQryClientsMOBILE.Value;
  medtMobileClient.Text := MaskStrMobile.Substring(0,3)+'-'+MaskStrMobile.Substring(3,4)+'-'+MaskStrMobile.Substring(6,4);
end;

procedure TfrmModification.sbCoachInvokeSearch(Sender: TObject);
var
  MaskStrMobile : string;
  frmNSCoach : TfrmNamesake;
begin

  if sbCoach.Text = '' then
  begin
    ShowMessage('검색어를 입력하세요');
    exit;
  end;

  frmMain.cdsQryCoaches.Active := False;

  if rdbtnCodeCoach.Checked then
  begin
    serverclient.SelectByFieldAndValueCoach('code', sbCoach.Text);
    frmMain.cdsQrycoaches.Active := True;
  end;

  if rdbtnName_Coach.Checked then
  begin
    serverclient.SelectByFieldAndValueCoach('name_', sbcoach.Text);
    frmMain.cdsQrycoaches.Active := True;

    if frmMain.cdsQryCoaches.RecordCount > 1 then
    begin
      frmNSCoach := TfrmNamesake.Create(nil);
      frmNSCoach.dbgrdNamesake.DataSource := frmMain.dsQryCoaches;
      frmNSCoach.ShowModal;
    end;
  end;

  btnModifycoach.Enabled := True;
  lblCodeFieldcoach.Caption := IntToStr(frmMain.cdsQrycoachesCODE.Value);
  MaskStrMobile := frmMain.cdsQrycoachesMOBILE.Value;
  medtMobilecoach.Text := MaskStrMobile.Substring(0,3)+'-'+MaskStrMobile.Substring(3,4)+'-'+MaskStrMobile.Substring(6,4);

end;

procedure TfrmModification.tshtClientHide(Sender: TObject);
begin
  frmMain.cdsQryClients.Active := False;
  sbClient.Text := '';
  lblCodeFieldClient.Caption := '';
  medtMobileClient.Text := '010-    -    ';
end;

procedure TfrmModification.tshtClientShow(Sender: TObject);
begin
  btnSaveClient.Enabled := False;
  btnModifyClient.Enabled := False;
  btnCancelClient.Enabled := False;
  btnWithdrawalClient.Enabled := False;
  frmMain.cdsQryClients.Active := False;
end;

procedure TfrmModification.tshtCoachHide(Sender: TObject);
begin
  frmMain.cdsQryCoaches.Active := False;
  sbCoach.Text := '';
  lblCodeFieldCoach.Caption := '';
  medtMobileCoach.Text := '010-    -    ';
end;

procedure TfrmModification.tshtCoachShow(Sender: TObject);
begin
  btnSaveCoach.Enabled := False;
  btnModifyCoach.Enabled := False;
  btnCancelCoach.Enabled := False;
  btnResignCoach.Enabled := False;
  frmMain.cdsQryCoaches.Active := False;
end;

end.
