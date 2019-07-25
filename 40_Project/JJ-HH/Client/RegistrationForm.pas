unit RegistrationForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask, Vcl.ComCtrls, Vcl.StdCtrls, System.DateUtils,
  ServerMethodsUnit12_ClientClass;

type
  TfrmRegistration = class(TForm)
    pcForRegister: TPageControl;
    tshtClient: TTabSheet;
    lblName_: TLabel;
    lblBirth_Date: TLabel;
    lblMobile: TLabel;
    lblEmail: TLabel;
    lblAddress_: TLabel;
    lblVehicle_Plate: TLabel;
    lblFavoriteBranch: TLabel;
    lblCode: TLabel;
    lblCodeAssigned: TLabel;
    edtName_: TEdit;
    edtEmail: TEdit;
    edtAddress: TEdit;
    edtVehicle_Plate: TEdit;
    edtFavorite_Branch: TEdit;
    btnSave: TButton;
    dtpBirth_Date: TDateTimePicker;
    medtMobile: TMaskEdit;
    tshtCoach: TTabSheet;
    DBGrid1: TDBGrid;
    tshtCourse: TTabSheet;
    btnNew: TButton;
    btnCancel: TButton;
    procedure btnSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure tshtClientShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRegistration: TfrmRegistration;

implementation
uses
  MainForm;

var
  serverclient : TServerMethods12Client;

{$R *.dfm}

procedure TfrmRegistration.btnCancelClick(Sender: TObject);
begin
    edtName_.Clear;
    edtEmail.Clear;
    edtAddress.Clear;
    edtVehicle_Plate.Clear;
    edtFavorite_Branch.Clear;
    dtpBirth_Date.Date := StrToDate('1990-01-01');
    medtMobile.Clear;

    lblCodeAssigned.Caption := '';
end;

procedure TfrmRegistration.btnNewClick(Sender: TObject);
begin
    edtName_.Clear;
    edtName_.TextHint :='';
    edtName_.Refresh;
    edtEmail.Clear;
    edtAddress.Clear;
    edtVehicle_Plate.Clear;
    edtFavorite_Branch.Clear;
    dtpBirth_Date.Date := StrToDate('1990-01-01');
    medtMobile.Clear;

    lblCodeAssigned.Caption := '';
    btnSave.Enabled := True;
    btnCancel.Enabled := True;
    btnNew.Enabled := False;
end;

procedure TfrmRegistration.btnSaveClick(Sender: TObject);
var
  AssignedCode : Integer;
begin
  if (edtName_.Text = '') then
  begin
    edtName_.TextHint := '필수 항목입니다.';
  end
  else
  begin
      frmMain.cdsClients.Insert;

      frmMain.cdsClients.FieldByName('Name_').AsString := edtName_.Text;
      frmMain.cdsClients.FieldByName('Birth_Date').AsDateTime := dtpBirth_Date.Date;
      frmMain.cdsClients.FieldByName('Date_Of_Sign_Up').AsDateTime := Today;
      frmMain.cdsClients.FieldByName('Password_').AsString := FormatDateTime('yymmdd',dtpBirth_Date.Date);

      if not (medtMobile.Text = '') then
        frmMain.cdsClients.FieldByName('Mobile').AsString := StringReplace(medtMobile.Text,'-', '', [rfReplaceAll]);
      if not (edtEmail.Text = '') then
        frmMain.cdsClients.FieldByName('Email').AsString := edtEmail.Text;
      if not (edtAddress.Text = '') then
        frmMain.cdsClients.FieldByName('Address_').AsString := edtAddress.Text;



      frmMain.cdsClients.Post;
      frmMain.cdsClients.ApplyUpdates(-1);

      AssignedCode := serverclient.GetCode(edtName_.Text);
      lblCodeAssigned.Caption := IntToStr(AssignedCode);

      if not (lblCodeAssigned.Caption='') then
      begin
        btnSave.Enabled := False;
        btnNew.Enabled := True;
        btnCancel.Enabled := False;
      end;
  end;

end;

procedure TfrmRegistration.FormCreate(Sender: TObject);
begin
  serverclient := TServerMethods12Client.Create(frmMain.SQLcnClients.DBXConnection);
end;

procedure TfrmRegistration.tshtClientShow(Sender: TObject);
begin
  btnNew.Enabled := False;
end;

end.
