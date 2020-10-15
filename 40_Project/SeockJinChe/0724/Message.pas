unit Message;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TfrmMessage = class(TForm)
    MessagePanel: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMessage: TfrmMessage;

implementation

{$R *.dfm}

end.
