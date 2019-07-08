program Project_Calc;

uses
  Vcl.Forms,
  uCalcForm in 'uCalcForm.pas' {frmCalc},
  USplash in 'USplash.pas' {SplashForm},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  SplashForm := TSplashForm.Create(Application);
  SplashForm.Show;
  SplashForm.Refresh;
  TStyleManager.TrySetStyle('Silver');
  Application.CreateForm(TfrmCalc, frmCalc);
  SplashForm.Hide;
  SplashForm.Free;
  Application.Run;
end.
