program LoopTest;

uses
  Vcl.Forms,
  LoopForm in 'LoopForm.pas' {frmLoop};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLoop, frmLoop);
  Application.Run;
end.
