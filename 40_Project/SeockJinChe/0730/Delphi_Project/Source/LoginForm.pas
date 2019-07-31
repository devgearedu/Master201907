unit LoginForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation;

type
  TfrmLogin = class(TFrame)
    btnLogin: TButton;
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
    function LoginCheck(AId, APwd: string): Boolean;
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

procedure TfrmLogin.btnLoginClick(Sender: TObject);
//begin
//  if LoginCheck(edtId.Text, edtPassword.Text) then
//    ModalResult := mrOK
//  else
//    ShowMessage('Incorrect id or password');
//end;

end.
