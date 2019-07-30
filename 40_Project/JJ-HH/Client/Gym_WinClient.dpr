program Gym_WinClient;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {frmMain},
  ServerMethodsUnit12_ClientClass in 'ServerMethodsUnit12_ClientClass.pas',
  Vcl.Themes,
  Vcl.Styles,
  RegistrationForm in 'RegistrationForm.pas' {frmRegistration},
  ModificationForm in 'ModificationForm.pas' {frmModification},
  NamesakeForm in 'NamesakeForm.pas' {frmNamesake},
  LookupForm in 'LookupForm.pas' {frmLookup},
  EnrollmentForm in 'EnrollmentForm.pas' {frmEnrollment},
  AttendanceForm in 'AttendanceForm.pas' {frmAttendance};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Amethyst Kamri');
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
