unit utest1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm217 = class(TForm)
    Button1: TButton;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form217: TForm217;

implementation

{$R *.dfm}

procedure TForm217.Button1Click(Sender: TObject);
begin
 close;
end;

procedure TForm217.FormActivate(Sender: TObject);
begin
  caption := inttostr(ComponentCount);
end;

end.
