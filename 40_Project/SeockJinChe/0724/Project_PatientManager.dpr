program Project_PatientManager;

uses
  Vcl.Forms,
  MainClient in 'MainClient.pas' {frmMain},
  PatientManagerDataModule in 'PatientManagerDataModule.pas' {frmDataModule: TDataModule},
  Reservation in 'Reservation.pas' {frmReserv},
  PatientList in 'PatientList.pas' {frmPatientList},
  Diagnosis in 'Diagnosis.pas' {frmDiagnosis},
  Message in 'Message.pas' {frmMessage},
  Medicine in 'Medicine.pas' {frmMedicine};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmDataModule, frmDataModule);
  Application.Run;
end.
