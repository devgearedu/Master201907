//
// Created by the DataSnap proxy generator.
// 2019-07-31 ¿ÀÀü 9:53:43
// 

unit DataSnapClientClass;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethodsClient = class(TDSAdminClient)
  private
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FDuplicatedUserCommand: TDBXCommand;
    FAcceptDecisionCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function DuplicatedUser(ASeq: Integer; AName: string; ABirth: TDateTime): Boolean;
    function AcceptDecision(AReserveSeq: Integer): Boolean;
  end;

implementation

function TServerMethodsClient.EchoString(Value: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FDBXConnection.CreateCommand;
    FEchoStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEchoStringCommand.Text := 'TServerMethods.EchoString';
    FEchoStringCommand.Prepare;
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.ExecuteUpdate;
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethodsClient.ReverseString(Value: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FDBXConnection.CreateCommand;
    FReverseStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReverseStringCommand.Text := 'TServerMethods.ReverseString';
    FReverseStringCommand.Prepare;
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.ExecuteUpdate;
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethodsClient.DuplicatedUser(ASeq: Integer; AName: string; ABirth: TDateTime): Boolean;
begin
  if FDuplicatedUserCommand = nil then
  begin
    FDuplicatedUserCommand := FDBXConnection.CreateCommand;
    FDuplicatedUserCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDuplicatedUserCommand.Text := 'TServerMethods.DuplicatedUser';
    FDuplicatedUserCommand.Prepare;
  end;
  FDuplicatedUserCommand.Parameters[0].Value.SetInt32(ASeq);
  FDuplicatedUserCommand.Parameters[1].Value.SetWideString(AName);
  FDuplicatedUserCommand.Parameters[2].Value.AsDateTime := ABirth;
  FDuplicatedUserCommand.ExecuteUpdate;
  Result := FDuplicatedUserCommand.Parameters[3].Value.GetBoolean;
end;

function TServerMethodsClient.AcceptDecision(AReserveSeq: Integer): Boolean;
begin
  if FAcceptDecisionCommand = nil then
  begin
    FAcceptDecisionCommand := FDBXConnection.CreateCommand;
    FAcceptDecisionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAcceptDecisionCommand.Text := 'TServerMethods.AcceptDecision';
    FAcceptDecisionCommand.Prepare;
  end;
  FAcceptDecisionCommand.Parameters[0].Value.SetInt32(AReserveSeq);
  FAcceptDecisionCommand.ExecuteUpdate;
  Result := FAcceptDecisionCommand.Parameters[1].Value.GetBoolean;
end;

constructor TServerMethodsClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;

constructor TServerMethodsClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;

destructor TServerMethodsClient.Destroy;
begin
  FEchoStringCommand.DisposeOf;
  FReverseStringCommand.DisposeOf;
  FDuplicatedUserCommand.DisposeOf;
  FAcceptDecisionCommand.DisposeOf;
  inherited;
end;

end.
