program Project_Calc;

uses
  Vcl.Forms,
  CalcForm in 'CalcForm.pas' {CalForm},
  Vcl.Themes,
  Vcl.Styles,
  Usplash in 'Usplash.pas' {SplashForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Metropolis UI Blue');
  SplashForm := TSplashForm.Create(application);
  SplashForm.Show;
  SplashForm.Refresh;
  Application.CreateForm(TCalForm, CalForm);
  SplashForm.Hide;
  SplashForm.Free;
  Application.Run;
end.
