unit UMain_Client;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DbxDatasnap, Data.DBXCommon,
  IPPeerClient, Data.DB, Data.SqlExpr, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, Datasnap.DSConnect, Data.FMTBcd;

type
  TForm221 = class(TForm)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    Dept: TClientDataSet;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    InsaQuery: TClientDataSet;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    SqlServerMethod1: TSqlServerMethod;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure Button8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button6Click(Sender: TObject);
    procedure DeptReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form221: TForm221;

implementation

uses UClientClass, Vcl.RecError;
var
  ServerMethods1Client:TServerMethods1Client;

{$R *.dfm}

procedure TForm221.Button1Click(Sender: TObject);
begin
  Dept.CancelUpdates;
end;
procedure TForm221.Button2Click(Sender: TObject);
begin
  dept.RevertRecord;
end;
procedure TForm221.Button3Click(Sender: TObject);
begin
  dept.ApplyUpdates(-1);
end;
procedure TForm221.Button4Click(Sender: TObject);
begin
  dept.SaveToFile('sample.cds');
end;
procedure TForm221.Button5Click(Sender: TObject);
begin
   dept.LoadFromFile('sample.cds');
end;

procedure TForm221.Button6Click(Sender: TObject);
begin
  button6.Caption :=
  Inttostr(ServerMethods1Client.Get_Count(dept.Fields[0].asstring));
end;

procedure TForm221.Button8Click(Sender: TObject);
begin
  SqlServerMethod1.Close;
  SqlServerMethod1.Params[0].asstring := 'abc';
  SqlServerMethod1.ExecuteMethod;
  button8.Caption := SqlServerMethod1.Params[1].asstring;
end;

procedure TForm221.DataSource1DataChange(Sender: TObject; Field: TField);
begin
   InsaQuery.Close;
   InsaQuery.Params[0].AsString := dept.Fields[0].AsString;
   insaquery.Open;
end;

procedure TForm221.DeptReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  action := HandleReconcileError(Dataset,updatekind,e);
end;

procedure TForm221.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ServerMethods1Client.Free;
end;

procedure TForm221.FormCreate(Sender: TObject);
begin
ServerMethods1Client := TServerMethods1Client.create(sqlconnection1.DBXConnection);
end;

end.
