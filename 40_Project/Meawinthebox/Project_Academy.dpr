program Project_Academy;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {Form1},
  UDataModule in 'UDataModule.pas' {UDM: TDataModule},
  UClass in 'UClass.pas' {frmClass},
  UStudent in 'UStudent.pas' {frmStudent};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TUDM, UDM);
  Application.CreateForm(TfrmClass, frmClass);
  Application.CreateForm(TfrmStudent, frmStudent);
  Application.Run;
end.
