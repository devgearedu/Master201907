program Project_MobileReserve;

uses
  System.StartUpCopy,
  FMX.Forms,
  MobileReserveForm in 'MobileReserveForm.pas' {frmMain},
  SignUpForm in 'SignUpForm.pas' {frmSignUp},
  MobileDataModule in 'MobileDataModule.pas' {DataModule1: TDataModule},
  LoginForm in 'LoginForm.pas' {frmLogin},
  FMain in 'FMain.pas' {FormMain},
  Grijjy.TextToSpeech in 'Grijjy.TextToSpeech.pas',
  Grijjy.TextToSpeech.Windows in 'Grijjy.TextToSpeech.Windows.pas',
  Grijjy.TextToSpeech.Base in 'Grijjy.TextToSpeech.Base.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
