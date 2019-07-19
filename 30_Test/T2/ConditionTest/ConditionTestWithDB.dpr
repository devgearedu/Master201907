program ConditionTestWithDB;

uses
  Vcl.Forms,
  ConditionForm in 'ConditionForm.pas' {frmCondition},
  ConditionModule in 'ConditionModule.pas' {dmDB: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCondition, frmCondition);
  Application.CreateForm(TdmDB, dmDB);
  Application.Run;
end.
