program Project_PatientManager;

uses
  Vcl.Forms,
  MainClientForm in 'MainClientForm.pas' {frmMain},
  PatientManagerDataModule in 'PatientManagerDataModule.pas' {frmDataModule: TDataModule},
  ReservationForm in 'ReservationForm.pas' {frmReserve},
  PatientListForm in 'PatientListForm.pas' {frmPatientList},
  DiagnosisForm in 'DiagnosisForm.pas' {frmDiagnosis},
  MessageForm in 'MessageForm.pas' {frmMessage},
  MedicineForm in 'MedicineForm.pas' {frmMedicine},
  CommonFunctions in 'CommonFunctions.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Aqua Light Slate');
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmDataModule, dm);
  Application.Run;
end.
