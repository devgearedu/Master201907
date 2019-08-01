unit LogIn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmLogin = class(TForm)
    pnlLogin: TPanel;
    Label1: TLabel;
    pnlLoginMain: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtLoginName: TEdit;
    edtLoginCode: TEdit;
    edtLoginPw: TEdit;
    btnLogin: TButton;
    btnNewMember: TButton;
    procedure btnLoginClick(Sender: TObject);
    procedure btnNewMemberClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;
  AUSERS_NAME, AUSERS_CODE, AUSERS_PW : String;
    procedure Display_USplash; stdcall;
external 'Project8.dll';
implementation

{$R *.dfm}

uses DataAccessModule, MainForm, NewMember;

procedure TfrmLogin.btnLoginClick(Sender: TObject);      //로그인(폼) 버튼클릭시
var
  AUSERS_NAME, AUSERS_CODE, AUSERS_PW : String;
  Login_Check :Integer;
begin
  AUSERS_NAME := edtLoginName.Text;
  AUSERS_CODE := edtLoginCode.Text;
  AUSERS_PW := edtLoginPw.Text;

  Login_Check := dmDataAccess.ExecuteLogin(AUSERS_NAME, AUSERS_CODE, AUSERS_PW);


  if Login_Check > 0 then
  begin
      ShowMessage('성공');

      ModalResult := mrOK;
    Exit;
  end
  else
    ShowMessage('실패');
end;


procedure TfrmLogin.btnNewMemberClick(Sender: TObject);
begin
  if not Assigned(frmNewMember) then
  frmNewMember := TfrmNewMember.Create(Self);
  frmNewMember.Show;
end;

end.
