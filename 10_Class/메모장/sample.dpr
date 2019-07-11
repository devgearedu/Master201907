program sample;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {MainForm},
  Vcl.Themes,
  Vcl.Styles,
  uABOUT in 'uABOUT.pas' {AboutBox},
  Usplash in 'Usplash.pas' {SplashForm},
<<<<<<< HEAD
  Uchart_Frame in 'Uchart_Frame.pas' {Frame1: TFrame},
  Udm in 'Udm.pas' {dm: TDataModule},
  UInsa in 'UInsa.pas' {InsaForm};
=======
  Uchart_Frame in 'Uchart_Frame.pas' {Frame1: TFrame};
>>>>>>> d8b010b9e3be5cdf4a778512695cdc67730e02d9

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Amakrits');
  SplashForm := TSplashForm.Create(application);
  SplashForm.Show;
  SplashForm.Refresh;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(Tdm, dm);
  SplashForm.Hide;
  SplashForm.Free;
  Application.Run;
end.
