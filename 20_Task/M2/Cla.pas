unit Cla;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
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
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Edit2: TEdit;
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  num1, num2, res3: real;
  clac: integer;

implementation

{$R *.dfm}

procedure TForm1.Button11Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + (Sender as TButton).Caption;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + (Sender as TButton).Caption;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  Edit1.clear;
  Edit2.Clear;
end;

procedure TForm1.Button14Click(Sender: TObject);
var
  bs:string;
begin
  bs:=Edit1.Text;
  delete(bs,length(bs),1);
  Edit1.Text:=bs;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  num1:=strtofloat(edit1.Text);
  Edit1.Clear;
  clac := 0;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  num1:=strtofloat(edit1.Text);
  Edit1.Clear;
  clac := 1;
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
  num1:=strtofloat(edit1.Text);
  Edit1.Clear;
  clac:= 2;
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
  if Edit1.text = '0' then
  begin
   Edit1.Clear;
   raise Exception.Create('0으로는 안나눠짐,  다시 입력ㄱㄱ');
  end
  else
  begin
   num1:=strtofloat(edit1.Text);
   clac := 3;
   Edit1.Clear;
   end;
end;

procedure TForm1.Button19Click(Sender: TObject);
var
  s : string;
begin
  num2:=strtofloat(edit1.Text);
  case clac of
    0: res3:= num1 + num2;
    1: res3:= num1 - num2;
    2: res3:= num1 * num2;
    3: if num2 = 0 then
      begin
        raise Exception.Create('숫자0으로 나누는거 ㄴㄴ.');
      end
      else
      begin
        res3:= num1 / num2;
      end;
  end;
  Edit1.Text := floattostr(res3);
  s := floattostr(num1);
     case clac of
    0: s := s + ' + ';
    1: s := s + ' - ';
    2: s := s + ' * ';
    3: s := s + ' / ';
  end;
    Edit2.Text := s + floattostr(num2);
end;
procedure TForm1.Button1Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + (Sender as TButton).Caption;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + (Sender as TButton).Caption;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + (Sender as TButton).Caption;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + (Sender as TButton).Caption;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + (Sender as TButton).Caption;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + (Sender as TButton).Caption;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + (Sender as TButton).Caption;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + (Sender as TButton).Caption;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + (Sender as TButton).Caption;
end;

end.
