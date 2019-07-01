program test;

uses
  Vcl.Forms,
  utest1 in 'utest1.pas' {Form217},
  utest2 in 'utest2.pas' {Form1},
  utest4 in 'utest4.pas',
  utest3 in 'utest3.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm217, Form217);
  Application.Run;
end.
