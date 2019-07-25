program Project_Server12;

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  Server12 in 'Server12.pas' {frmServer12},
  ServerMethodsUnit12 in 'ServerMethodsUnit12.pas' {ServerMethods12: TDSServerModule},
  ServerContainerUnit12 in 'ServerContainerUnit12.pas' {ServerContainer12: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmServer12, frmServer12);
  Application.CreateForm(TServerContainer12, ServerContainer12);
  Application.Run;
end.

