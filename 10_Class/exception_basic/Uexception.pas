unit Uexception;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm219 = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button2: TButton;
    Edit4: TEdit;
    Edit5: TEdit;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    function Divide(x,y:integer):integer;
    { Public declarations }
  end;

var
  Form219: TForm219;

implementation

{$R *.dfm}

procedure TForm219.Button1Click(Sender: TObject);
begin
  try
     caption := ListBox1.Items[0];
  except
  on e:exception do
     showmessage(e.Message);

  end;
  showmessage('..ing');
end;

procedure TForm219.Button2Click(Sender: TObject);
var
  i:integer;
  t:tdate;
begin
  if edit1.Text = '' then
     raise Exception.Create('Edit1 꼭 입력');

  try
     i := strtoint(edit2.Text);
  except
     raise Exception.Create('이상한 숫자');
  end;

  try
     t := strtodate(edit3.Text);
  except
     raise Exception.Create('이상한 날자');
  end;

  showmessage('ok');
end;

procedure TForm219.Button3Click(Sender: TObject);
var
  i,j,k:integer;
begin
  i := strtoint(edit4.Text);
  j := strtoint(edit5.Text);

//  try
    k := divide(i,j);
    button3.caption := inttostr(k);
    showmessagE('ok');
//  except
//   showmessage('divide fun error-main');
//  end;
end;

function TForm219.Divide(x, y: integer): integer;
begin
  try
     result := x div y;
  except
     showmessagE('error');
   //  raise;
     abort;      //raise eabort.create('XXX');
  end;
end;

end.
