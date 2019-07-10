program 계산기_양명환;

uses
  Vcl.Forms,
  계산기 in 'D:\201907_델파이교육\계산기\계산기.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Sky');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
