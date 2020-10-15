unit LoginForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Layouts;

type
  TfrmLogin = class(TForm)
    StyleBook1: TStyleBook;
    Layout1: TLayout;
    Label2: TLabel;
    edtId: TEdit;
    Label1: TLabel;
    edtPassword: TEdit;
    btnDuple: TButton;
    btnLoginCheck: TButton;
    procedure btnLoginCheckClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.fmx}

uses MobileDataModule, MobileReserveForm;

procedure TfrmLogin.btnLoginCheckClick(Sender: TObject);
begin
  if (edtId.Text = 'madongseok') and (edtPassword.Text = 'masterkey') then
  begin
    UserSEQ := DataModule1.User.FieldByName('PATIENT_SEQ').AsInteger;   //로그인정보 저장
    UserName := DataModule1.User.FieldByName('PATIENT_NAME').AsString;
  end;

  frmMain.edtName.Text := UserName;  //예약화면에 유저이름 넣기
  frmMain.pnlLogin.Visible := False; //로그인창 비활성화
  close;
end;

end.
