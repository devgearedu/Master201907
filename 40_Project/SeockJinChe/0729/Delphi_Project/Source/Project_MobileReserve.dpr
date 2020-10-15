program Project_MobileReserve;

uses
  System.StartUpCopy,
  FMX.Forms,
  MobileReserveForm in 'MobileReserveForm.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
