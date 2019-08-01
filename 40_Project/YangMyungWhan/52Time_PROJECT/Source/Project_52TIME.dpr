program Project_52TIME;

uses
  Vcl.Forms,
  Vcl.Controls,
  MainForm in 'MainForm.pas' {frmMainForm},
  DataAccessModule in 'DataAccessModule.pas' {dmDataAccess: TDataModule},
  WorkerInformation in 'WorkerInformation.pas' {frmWorkerInformation},
  CommonFunctions in 'CommonFunctions.pas',
  Vcl.Themes,
  Vcl.Styles,
  TimeInsert in 'TimeInsert.pas' {frmTimeInsert},
  Statistics in 'Statistics.pas' {frmStatisics},
  DBFrame in 'DBFrame.pas' {frmDb},
  LogIn in 'LogIn.pas' {frmLogin},
  NewMember in 'NewMember.pas' {frmNewMember};
  procedure Display_USplash; stdcall;
  external 'Project8.dll';
{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.CreateForm(TdmDataAccess, dmDataAccess);
  //  Application.CreateForm(TfrmLogin, frmLogin);
//  Application.CreateForm(TfrmMainForm, frmMainForm);
//  Application.Run;
  frmLogin := TfrmLogin.Create(nil);
  if frmLogin.ShowModal = mrOK then
  begin
    Application.CreateForm(TfrmMainForm, frmMainForm);
    Application.Run;
  end;

end.
