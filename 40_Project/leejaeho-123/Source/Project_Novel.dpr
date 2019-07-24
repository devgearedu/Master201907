program Project_Novel;

uses
  Vcl.Forms,
  AdminForm in 'AdminForm.pas' {Admin},
  DM_Novel in 'DM_Novel.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TAdmin, Admin);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
