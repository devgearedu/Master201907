program Project_Mobile;

uses
  System.StartUpCopy,
  FMX.Forms,
  Mobile in 'Mobile.pas' {Form8};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.
