program Project_52TIME;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {frmMainForm},
  DataAccessModule in 'DataAccessModule.pas' {dmDataAccess: TDataModule},
  WorkerInformation in 'WorkerInformation.pas' {frmWorkerInformation},
  CommonFunctions in 'CommonFunctions.pas',
  Vcl.Themes,
  Vcl.Styles,
  TimeInsert in 'TimeInsert.pas' {frmTimeInsert},
  Statistics in 'Statistics.pas' {frmStatisics},
  DBFrame in 'DBFrame.pas' {Form1},
  LogIn in 'LogIn.pas' {frmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.CreateForm(TfrmMainForm, frmMainForm);
  Application.CreateForm(TdmDataAccess, dmDataAccess);
  Application.CreateForm(TfrmWorkerInformation, frmWorkerInformation);
  Application.CreateForm(TfrmTimeInsert, frmTimeInsert);
  Application.CreateForm(TfrmStatisics, frmStatisics);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.
