program Project_ServerGym;

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  ServerGym in 'ServerGym.pas' {frmServerGym},
  ServerMethodsUnitGym in 'ServerMethodsUnitGym.pas' {ServerMethodsGym: TDSServerModule},
  ServerContainerUnitGym in 'ServerContainerUnitGym.pas' {ServerContainer12: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmServerGym, frmServerGym);
  Application.CreateForm(TServerContainer12, ServerContainer12);
  Application.Run;
end.

