program Project_MobileReserve;

uses
  System.StartUpCopy,
  FMX.Forms,
  MobileReserveForm in 'MobileReserveForm.pas' {frmMain};

{$R *.res}
//begin
//
//  frmLogin := TfrmLogin.Create(nil);
//  if frmLogin.ShowModal = mrOK then
//  begin
//    Application.Initialize;
//    Application.CreateForm(TfrmMain, frmMain);
//    Application.Run;
//  end;
//
//end.
begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
