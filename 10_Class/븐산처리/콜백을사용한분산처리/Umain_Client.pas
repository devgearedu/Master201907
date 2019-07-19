unit Umain_Client;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DbxDataSnap, Data.DBXCommon,
  IPPeerClient, dbxjson,system.json,Data.DB, Data.SqlExpr, Vcl.StdCtrls,
  Datasnap.DSCommon;

type
  TMemoCallBack = class(TDBXCallBack)
     function execute(const arg:TJSONValue):TJSONValue; override;
  end;

  TMainForm_Client = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    SQLConnection1: TSQLConnection;
    ChannelManager: TDSClientCallbackChannelManager;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    CallbackID:string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm_Client: TMainForm_Client;

implementation

{$R *.dfm}

{ TMemoCallBack }

function TMemoCallBack.execute(const arg: TJSONValue): TJSONValue;
var
  MessageStr:String;
begin
  result :=TJSONTrue.Create;
  if arg is TJSONString  then
     MessageStr := TJSONString(arg).value;

  TThread.Synchronize(nil,
          procedure
          begin
            Mainform_client.Memo1.Lines.text := Messagestr;
          end);
end;

procedure TMainForm_Client.Button1Click(Sender: TObject);
begin
  if not sqlconnection1.Connected  then
     SQLConnection1.Open;
  CallBackID := DateTimetoStr(now);
  button1.Enabled := false;
  button2.Enabled := true;
  ChannelManager.RegisterCallback(Callbackid, TMemocallback.create);
end;

procedure TMainForm_Client.Button2Click(Sender: TObject);
begin
  button1.Enabled := true;
  button2.Enabled := false;
  ChannelManager.unRegisterCallback(Callbackid);
end;

end.
