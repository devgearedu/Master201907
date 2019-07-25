program Gym_WinClient;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {frmMain},
  ServerMethodsUnit12_ClientClass in 'ServerMethodsUnit12_ClientClass.pas',
  Vcl.Themes,
  Vcl.Styles,
  RegistrationForm in 'RegistrationForm.pas' {frmRegistration};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Amethyst Kamri');
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
