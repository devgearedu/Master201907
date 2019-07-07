unit Cal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  OP : Char;

implementation

{$R *.dfm}

procedure TForm1.Button10Click(Sender: TObject);
begin
  if op = '@' then
    Edit1.Text := Edit1.Text + '0'
  else Edit2.Text := Edit2.Text + '0';
end;

procedure TForm1.Button11Click(Sender: TObject);
var
  ans : single;
begin
  if(Edit1.Text = '') or (Edit2.Text = '') then
    ShowMessage('자료를 모두 입력하신 후 사용하세요!')
  else
  begin
    case op of
      '+': ans := StrToFloat(Edit1.Text) + StrToFloat(Edit2.Text);
      '-': ans := StrToFloat(Edit1.Text) * StrToFloat(Edit2.Text);
      '*': ans := StrToFloat(Edit1.Text) * StrToFloat(Edit2.Text);
      '/': ans := StrToFloat(Edit1.Text) * StrToFloat(Edit2.Text);
    end;
    Edit3.Text := FloatToStr(ans);
  end;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  op := '@';
  Edit1.SetFocus;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  op := '+';
  label1.Caption := op;
  Edit2.SetFocus;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  op := '-';
  label1.Caption := op;
  Edit2.SetFocus;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  op := '*';
  label1.Caption := op;
  Edit2.SetFocus;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  op := '/';
  label1.Caption := op;
  Edit2.SetFocus;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
if op = '@' then
    Edit1.Text := Edit1.Text + '1'
  else Edit2.Text := Edit2.Text + '1';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if op = '@' then
    Edit1.Text := Edit1.Text + '2'
  else Edit2.Text := Edit2.Text + '2';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if op = '@' then
    Edit1.Text := Edit1.Text + '3'
  else Edit2.Text := Edit2.Text + '3';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if op = '@' then
    Edit1.Text := Edit1.Text + '4'
  else Edit2.Text := Edit2.Text + '4';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  if op = '@' then
    Edit1.Text := Edit1.Text + '5'
  else Edit2.Text := Edit2.Text + '5';
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  if op = '@' then
    Edit1.Text := Edit1.Text + '6'
  else Edit2.Text := Edit2.Text + '6';
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  if op = '@' then
    Edit1.Text := Edit1.Text + '7'
  else Edit2.Text := Edit2.Text + '7';
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  if op = '@' then
    Edit1.Text := Edit1.Text + '8'
  else Edit2.Text := Edit2.Text + '8';
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  if op = '@' then
    Edit1.Text := Edit1.Text + '9'
  else Edit2.Text := Edit2.Text + '9';
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  op := '@';
end;
end.

