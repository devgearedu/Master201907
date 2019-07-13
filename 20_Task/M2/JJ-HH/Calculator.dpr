program Calculator;

uses
  Vcl.Forms,
  ExtCtrls,
  Main in 'Main.pas' {MainForm},
  CalcScreen in 'CalcScreen.pas' {FrameCalc: TFrame},
  Accumulator in 'Accumulator.pas',
  Vcl.Themes,
  Vcl.Styles,
  SplashScreen in 'SplashScreen.pas' {SplashForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  SplashForm := TSplashForm.Create(Application);
  SplashForm.Show;
  SplashForm.Refresh;

  Application.CreateForm(TMainForm, MainForm);
  TStyleManager.TrySetStyle('Luna');


  SplashForm.Hide;
  SplashForm.Free;


  Application.Run;
end.
