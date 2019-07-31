unit UsplashForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.GIFImg, System.ImageList, Vcl.ImgList,
  Vcl.Imaging.pngimage;

type
  TSplashForm = class(TForm)
    pnlMain: TPanel;
    Label1: TLabel;
    imgSplash: TImage;
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  SplashForm: TSplashForm;

implementation

{$R *.dfm}




end.

