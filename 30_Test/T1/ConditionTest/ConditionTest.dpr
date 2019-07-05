program ConditionTest;

uses
  Vcl.Forms,
  ConditionForm in 'ConditionForm.pas' {frmCondition};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCondition, frmCondition);
  Application.Run;
end.
