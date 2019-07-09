program Project_Calc;

uses
  Vcl.Forms,
  CalcForm in 'CalcForm.pas' {CalForm},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Metropolis UI Blue');
  Application.CreateForm(TCalForm, CalForm);
  Application.Run;
end.
