program Project12;

uses
  Vcl.Forms,
  Unit12 in 'C:\Users\User5217\Documents\Embarcadero\Studio\Projects\Unit12.pas' {Form12};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm12, Form12);
  Application.Run;
end.
