//
// Created by the DataSnap proxy generator.
// 2019.07.19 ¿ÀÈÄ 1:57:12
//

unit ServerMethodClient;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminClient)
  private
    FCalcOddNumSumCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function CalcOddNumSum(AStartNum: Integer; AEndNum: Integer): Integer;
  end;

implementation

function TServerMethods1Client.CalcOddNumSum(AStartNum: Integer; AEndNum: Integer): Integer;
begin
  if FCalcOddNumSumCommand = nil then
  begin
    FCalcOddNumSumCommand := FDBXConnection.CreateCommand;
    FCalcOddNumSumCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCalcOddNumSumCommand.Text := 'TServerMethods1.CalcOddNumSum';
    FCalcOddNumSumCommand.Prepare;
  end;
  FCalcOddNumSumCommand.Parameters[0].Value.SetInt32(AStartNum);
  FCalcOddNumSumCommand.Parameters[1].Value.SetInt32(AEndNum);
  FCalcOddNumSumCommand.ExecuteUpdate;
  Result := FCalcOddNumSumCommand.Parameters[2].Value.GetInt32;
end;

constructor TServerMethods1Client.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;

constructor TServerMethods1Client.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;

destructor TServerMethods1Client.Destroy;
begin
  FCalcOddNumSumCommand.DisposeOf;
  inherited;
end;

end.

