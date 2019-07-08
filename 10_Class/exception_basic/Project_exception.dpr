program Project_exception;

uses
  Vcl.Forms,
  Uexception in 'Uexception.pas' {Form219};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm219, Form219);
  Application.Run;
end.
