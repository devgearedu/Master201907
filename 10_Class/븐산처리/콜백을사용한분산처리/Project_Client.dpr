program Project_Client;

uses
  Vcl.Forms,
  Umain_Client in 'Umain_Client.pas' {MainForm_Client};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm_Client, MainForm_Client);
  Application.Run;
end.
