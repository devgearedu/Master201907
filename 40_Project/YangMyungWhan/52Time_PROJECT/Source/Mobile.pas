unit Mobile;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Ani,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm8 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    FloatAnimation1: TFloatAnimation;
    FloatAnimation3: TFloatAnimation;

    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.fmx}

procedure TForm8.Button3Click(Sender: TObject);
begin
  Button3.AnimateFloat('Position.Y', Button3.Position.Y+20, 0.5);
end;


end.
