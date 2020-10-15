program Project_PatientManager;

uses
  Vcl.Forms,
  MainClient in 'MainClient.pas' {frmMain},
  PatientManagerDataModule in 'PatientManagerDataModule.pas' {frmDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmDataModule, frmDataModule);
  Application.Run;
end.
