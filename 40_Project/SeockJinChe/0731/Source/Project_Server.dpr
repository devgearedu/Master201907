program Project_Server;

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  PatientManagerServer in 'PatientManagerServer.pas' {ServerForm},
  ServerMethodsUnit in 'ServerMethodsUnit.pas' {ServerMethods: TDSServerModule},
  ServerContainerUnit in 'ServerContainerUnit.pas' {ServerContainer1: TDataModule},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Light');
  Application.CreateForm(TServerForm, ServerForm);
  Application.CreateForm(TServerContainer1, ServerContainer1);
  Application.Run;
end.

