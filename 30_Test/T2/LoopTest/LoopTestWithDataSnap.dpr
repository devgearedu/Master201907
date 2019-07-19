program LoopTestWithDataSnap;

uses
  Vcl.Forms,
  LoopForm in 'LoopForm.pas' {frmLoop},
  ServerMethodClient in 'ServerMethodClient.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLoop, frmLoop);
  Application.Run;
end.
