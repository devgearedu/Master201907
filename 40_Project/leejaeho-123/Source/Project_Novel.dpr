program Project_Novel;

uses
  Vcl.Forms,
  AdminForm in 'AdminForm.pas' {Form1},
  DM_Novel in 'DM_Novel.pas' {DataModule2: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
