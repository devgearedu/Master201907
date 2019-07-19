program VariableTestWithDll;

uses
  Vcl.Forms,
  VariableForm in 'VariableForm.pas' {frmVariable};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmVariable, frmVariable);
  Application.Run;
end.
