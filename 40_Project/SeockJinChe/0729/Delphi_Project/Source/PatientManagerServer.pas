unit PatientManagerServer;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.StdCtrls;

type
  TServerForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServerForm: TServerForm;

implementation

{$R *.dfm}

end.

