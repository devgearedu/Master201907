program Project_Login;

uses
  Vcl.Forms,
  ULogin in 'ULogin.pas' {LOGIN},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Aqua Light Slate 2');
  Application.CreateForm(TLOGIN, LOGIN);
  Application.Run;
end.
