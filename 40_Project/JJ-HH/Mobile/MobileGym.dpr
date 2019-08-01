program MobileGym;

uses
  System.StartUpCopy,
  System.UITypes,
  FMX.Forms,
  HomeScreenForm in 'HomeScreenForm.pas' {frmHomeScreen},
  ServerMethodsUnitGym_MobileClientClass in 'ServerMethodsUnitGym_MobileClientClass.pas',
  AndroidApi.JNI.FireBase in 'AndroidApi.JNI.FireBase.pas',
  FMX.PushNotification.Android in 'FMX.PushNotification.Android.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmHomeScreen, frmHomeScreen);
  Application.Run;
end.
