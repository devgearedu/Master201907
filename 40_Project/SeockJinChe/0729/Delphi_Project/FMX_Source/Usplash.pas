unit Usplash;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  System.Math.Vectors, FMX.Ani, FMX.Controls3D, FMX.Layers3D, FMX.Viewport3D,
  FMX.Layouts;

type
  TForm1 = class(TForm)
    Layout1: TLayout;
    Viewport3D1: TViewport3D;
    Image3D1: TImage3D;
    FloatAnimation1: TFloatAnimation;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

end.
