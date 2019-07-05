program ConditionTest;

uses
  Vcl.Forms,
  FunctionForm in 'FunctionForm.pas' {frmCondition};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCondition, frmCondition);
  Application.Run;
end.
