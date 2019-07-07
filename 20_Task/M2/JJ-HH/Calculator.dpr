program Calculator;

uses
  Vcl.Forms,
  Main in 'Main.pas' {MainForm},
  CalcScreen in 'CalcScreen.pas' {FrameCalc: TFrame},
  SplashScreen in 'SplashScreen.pas' {FrameSplash: TFrame},
  Accumulator in 'Accumulator.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Luna');
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
