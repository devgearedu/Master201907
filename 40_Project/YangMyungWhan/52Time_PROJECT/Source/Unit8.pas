unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm8 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;

    procedure Form222; Export; Stdcall;
//    procedure Form_Free;  Export; Stdcall;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

{ TForm8 }

procedure TForm8.Form222;
var
  Form : TForm8;
begin
Form := TForm8.Create(nil);
Form.ShowModal;
Form.Free;
end;

//procedure TForm8.Form_Free;
//begin
//Form.Free;
//end;

end.
