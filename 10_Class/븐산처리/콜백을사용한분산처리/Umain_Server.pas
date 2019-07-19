unit Umain_Server;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, system.json,Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TMainForm_Server = class(TForm)
    Memo1: TMemo;
    procedure Memo1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm_Server: TMainForm_Server;

implementation

{$R *.dfm}

uses ServerContainerUnit1;

procedure TMainForm_Server.Memo1Change(Sender: TObject);
var
  Value:TJSONString;
begin
  value := TJSONString.create(MEMO1.Lines.Text);
  ServerContainer1.DSServer1.BroadcastMessage('MemoChannel',value);
end;

end.

