program Project_MobileReserve;

uses
  System.StartUpCopy,
  FMX.Forms,
  MobileReserveForm in 'MobileReserveForm.pas' {frmMain},
  SignUpForm in 'SignUpForm.pas' {frmSignUp},
  MobileDataModule in 'MobileDataModule.pas' {DataModule1: TDataModule};

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
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
