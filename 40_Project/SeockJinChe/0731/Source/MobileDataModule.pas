unit MobileDataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DbxDatasnap, Data.DBXCommon,
  IPPeerClient, Datasnap.DBClient, Datasnap.DSConnect, Data.DB, Data.SqlExpr,
  Datasnap.Provider, FMX.Dialogs;

type
  TDataModule1 = class(TDataModule)
    UserList: TClientDataSet;
    UserListPATIENT_SEQ: TIntegerField;
    UserListPATIENT_NAME: TWideStringField;
    UserReserve: TClientDataSet;
    UserListProvider: TDataSetProvider;
    UserReserveProvider: TDataSetProvider;
    MobileConnection: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    UserListNum: TIntegerField;
    procedure UserListCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  try
  MobileConnection.Connected := true;
  UserList.Active := true;
  UserReserve.Active := true;
  except
  showmessage('서버 상태를 확인하세요.');

  end;
end;

procedure TDataModule1.UserListCalcFields(DataSet: TDataSet);
var
  i:integer;
begin
  for i := 0 to UserList.RecNo do                //DB에 순번넣기
    UserList.FieldByName('Num').AsInteger := i;
end;

end.
