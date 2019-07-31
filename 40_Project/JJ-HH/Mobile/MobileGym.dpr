program MobileGym;

uses
  System.StartUpCopy,
  FMX.Forms,
  HomeScreenForm in 'HomeScreenForm.pas' {frmHomeScreen},
  ServerMethodsUnitGym_MobileClientClass in 'ServerMethodsUnitGym_MobileClientClass.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmHomeScreen, frmHomeScreen);
  Application.Run;
end.
