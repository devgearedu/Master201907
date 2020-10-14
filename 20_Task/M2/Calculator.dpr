program Calculator;

uses
  Vcl.Forms,
  Mycal in 'Mycal.pas' {Cal},
  Vcl.Themes,
  Vcl.Styles,
  Usplash in 'Usplash.pas' {SplashForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  SplashForm := TSplashForm.Create(Application);
  TStyleManager.TrySetStyle('Sky');
  SplashForm.show;
  SplashForm.Refresh;
  Application.CreateForm(Tcal, cal);
  SplashForm.Hide;
  SplashForm.Free;
  Application.Run;
end.
