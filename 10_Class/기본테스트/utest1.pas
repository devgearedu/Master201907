unit utest1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TForm217 = class(TForm)
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form217: TForm217;

implementation

{$R *.dfm}

procedure TForm217.FormActivate(Sender: TObject);
begin
  caption := inttostr(application.ComponentCount);
end;

end.
