program Project217;

uses
  Vcl.Forms,
  Unit219 in 'Unit219.pas' {Form219},
  Umyframe in 'Umyframe.pas' {Frame1: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm219, Form219);
  Application.Run;
end.
