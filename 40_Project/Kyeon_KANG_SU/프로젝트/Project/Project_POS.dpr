program Project_POS;

uses
  Vcl.Forms,
  UMenu in 'UMenu.pas' {Form3},
  UDm in 'UDm.pas' {DataModule4: TDataModule},
  ULogin in 'ULogin.pas' {LOGIN};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TDataModule4, DataModule4);
  Application.CreateForm(TLOGIN, LOGIN);
  Application.Run;
end.
