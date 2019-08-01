program Project7;

uses
  Vcl.Forms,
  Unit7 in 'Unit7.pas' {Form7},
  Unit8 in 'Unit8.pas' {DataModule8: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TDataModule8, DataModule8);
  Application.Run;
end.
