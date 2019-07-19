program sample_sample_Client;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {MainForm},
  Vcl.Themes,
  Vcl.Styles,
  uABOUT in 'uABOUT.pas' {AboutBox},
  Usplash in 'Usplash.pas' {SplashForm},
  Uchart_Frame in 'Uchart_Frame.pas' {Frame1: TFrame},
  Udm in 'Udm.pas' {dm: TDataModule},
  UInsa in 'UInsa.pas' {InsaForm},
  UDept in 'UDept.pas' {DeptForm},
  Utrans in 'Utrans.pas' {TransForm},
  uTree in 'uTree.pas' {TreeForm},
  Vcl.RecError in 'Vcl.RecError.pas' {ReconcileErrorForm},
  Uclientclass in 'Uclientclass.pas';

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
