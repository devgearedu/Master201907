//
// Created by the DataSnap proxy generator.
// 2019-07-29 ���� 2:14:20
//

unit ServerMethodsUnit12_ClientClass;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods12Client = class(TDSAdminClient)
  private
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FGetCodeCommand: TDBXCommand;
    FInsertClientCommand: TDBXCommand;
    FInsertCoachCommand: TDBXCommand;
    FInsertCourseCommand: TDBXCommand;
    FEnrollCommand: TDBXCommand;
    FDropEnrollCommand: TDBXCommand;
    FReEnrollCommand: TDBXCommand;
    FSelectByFieldAndValueClientCommand: TDBXCommand;
    FSelectByFieldAndValueCoachCommand: TDBXCommand;
    FSelectByFieldAndValueCourseCommand: TDBXCommand;
    FSelectByFieldAndValueEnrollmentCommand: TDBXCommand;
    FSelectFromEnrollmentsAndCoursesCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function GetCode(AName: string; ADate_Of_Birth: string): Integer;
    function InsertClient(AName_: string; AMobile: string; ABirth_Date: string; AAddress_: string; AFavorite_Branch: string; AEmail: string; AVehicle_Plate: string): Integer;
    function InsertCoach(AName_: string; AMobile: string; ABirth_Date: string; AAddress_: string; ASports: string; AEmail: string; AVehicle_Plate: string): Integer;
    function InsertCourse(ACoach_Code: string; AName_: string; AWeekdays: string; ABegin_Time: string; ALocation_: string; AMax_Enroll: string; APrice: string; AEnd_Time: string): Integer;
    function Enroll(AClient_Code: string; ACourse_Code: string): Boolean;
    function DropEnroll(AClient_Code: string; ACourse_Code: string): Boolean;
    function ReEnroll(AClient_Code: string; ACourse_Code: string): Boolean;
    procedure SelectByFieldAndValueClient(AFieldName: string; AValue: string);
    procedure SelectByFieldAndValueCoach(AFieldName: string; AValue: string);
    procedure SelectByFieldAndValueCourse(AFieldName: string; AValue: string);
    procedure SelectByFieldAndValueEnrollment(AFieldName: string; AValue: string);
    procedure SelectFromEnrollmentsAndCourses(AClient_code: string);
  end;

implementation

function TServerMethods12Client.EchoString(Value: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FDBXConnection.CreateCommand;
    FEchoStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEchoStringCommand.Text := 'TServerMethods12.EchoString';
    FEchoStringCommand.Prepare;
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.ExecuteUpdate;
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods12Client.ReverseString(Value: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FDBXConnection.CreateCommand;
    FReverseStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReverseStringCommand.Text := 'TServerMethods12.ReverseString';
    FReverseStringCommand.Prepare;
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.ExecuteUpdate;
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods12Client.GetCode(AName: string; ADate_Of_Birth: string): Integer;
begin
  if FGetCodeCommand = nil then
  begin
    FGetCodeCommand := FDBXConnection.CreateCommand;
    FGetCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetCodeCommand.Text := 'TServerMethods12.GetCode';
    FGetCodeCommand.Prepare;
  end;
  FGetCodeCommand.Parameters[0].Value.SetWideString(AName);
  FGetCodeCommand.Parameters[1].Value.SetWideString(ADate_Of_Birth);
  FGetCodeCommand.ExecuteUpdate;
  Result := FGetCodeCommand.Parameters[2].Value.GetInt32;
end;

function TServerMethods12Client.InsertClient(AName_: string; AMobile: string; ABirth_Date: string; AAddress_: string; AFavorite_Branch: string; AEmail: string; AVehicle_Plate: string): Integer;
begin
  if FInsertClientCommand = nil then
  begin
    FInsertClientCommand := FDBXConnection.CreateCommand;
    FInsertClientCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInsertClientCommand.Text := 'TServerMethods12.InsertClient';
    FInsertClientCommand.Prepare;
  end;
  FInsertClientCommand.Parameters[0].Value.SetWideString(AName_);
  FInsertClientCommand.Parameters[1].Value.SetWideString(AMobile);
  FInsertClientCommand.Parameters[2].Value.SetWideString(ABirth_Date);
  FInsertClientCommand.Parameters[3].Value.SetWideString(AAddress_);
  FInsertClientCommand.Parameters[4].Value.SetWideString(AFavorite_Branch);
  FInsertClientCommand.Parameters[5].Value.SetWideString(AEmail);
  FInsertClientCommand.Parameters[6].Value.SetWideString(AVehicle_Plate);
  FInsertClientCommand.ExecuteUpdate;
  Result := FInsertClientCommand.Parameters[7].Value.GetInt32;
end;

function TServerMethods12Client.InsertCoach(AName_: string; AMobile: string; ABirth_Date: string; AAddress_: string; ASports: string; AEmail: string; AVehicle_Plate: string): Integer;
begin
  if FInsertCoachCommand = nil then
  begin
    FInsertCoachCommand := FDBXConnection.CreateCommand;
    FInsertCoachCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInsertCoachCommand.Text := 'TServerMethods12.InsertCoach';
    FInsertCoachCommand.Prepare;
  end;
  FInsertCoachCommand.Parameters[0].Value.SetWideString(AName_);
  FInsertCoachCommand.Parameters[1].Value.SetWideString(AMobile);
  FInsertCoachCommand.Parameters[2].Value.SetWideString(ABirth_Date);
  FInsertCoachCommand.Parameters[3].Value.SetWideString(AAddress_);
  FInsertCoachCommand.Parameters[4].Value.SetWideString(ASports);
  FInsertCoachCommand.Parameters[5].Value.SetWideString(AEmail);
  FInsertCoachCommand.Parameters[6].Value.SetWideString(AVehicle_Plate);
  FInsertCoachCommand.ExecuteUpdate;
  Result := FInsertCoachCommand.Parameters[7].Value.GetInt32;
end;

function TServerMethods12Client.InsertCourse(ACoach_Code: string; AName_: string; AWeekdays: string; ABegin_Time: string; ALocation_: string; AMax_Enroll: string; APrice: string; AEnd_Time: string): Integer;
begin
  if FInsertCourseCommand = nil then
  begin
    FInsertCourseCommand := FDBXConnection.CreateCommand;
    FInsertCourseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInsertCourseCommand.Text := 'TServerMethods12.InsertCourse';
    FInsertCourseCommand.Prepare;
  end;
  FInsertCourseCommand.Parameters[0].Value.SetWideString(ACoach_Code);
  FInsertCourseCommand.Parameters[1].Value.SetWideString(AName_);
  FInsertCourseCommand.Parameters[2].Value.SetWideString(AWeekdays);
  FInsertCourseCommand.Parameters[3].Value.SetWideString(ABegin_Time);
  FInsertCourseCommand.Parameters[4].Value.SetWideString(ALocation_);
  FInsertCourseCommand.Parameters[5].Value.SetWideString(AMax_Enroll);
  FInsertCourseCommand.Parameters[6].Value.SetWideString(APrice);
  FInsertCourseCommand.Parameters[7].Value.SetWideString(AEnd_Time);
  FInsertCourseCommand.ExecuteUpdate;
  Result := FInsertCourseCommand.Parameters[8].Value.GetInt32;
end;

function TServerMethods12Client.Enroll(AClient_Code: string; ACourse_Code: string): Boolean;
begin
  if FEnrollCommand = nil then
  begin
    FEnrollCommand := FDBXConnection.CreateCommand;
    FEnrollCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEnrollCommand.Text := 'TServerMethods12.Enroll';
    FEnrollCommand.Prepare;
  end;
  FEnrollCommand.Parameters[0].Value.SetWideString(AClient_Code);
  FEnrollCommand.Parameters[1].Value.SetWideString(ACourse_Code);
  FEnrollCommand.ExecuteUpdate;
  Result := FEnrollCommand.Parameters[2].Value.GetBoolean;
end;

function TServerMethods12Client.DropEnroll(AClient_Code: string; ACourse_Code: string): Boolean;
begin
  if FDropEnrollCommand = nil then
  begin
    FDropEnrollCommand := FDBXConnection.CreateCommand;
    FDropEnrollCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDropEnrollCommand.Text := 'TServerMethods12.DropEnroll';
    FDropEnrollCommand.Prepare;
  end;
  FDropEnrollCommand.Parameters[0].Value.SetWideString(AClient_Code);
  FDropEnrollCommand.Parameters[1].Value.SetWideString(ACourse_Code);
  FDropEnrollCommand.ExecuteUpdate;
  Result := FDropEnrollCommand.Parameters[2].Value.GetBoolean;
end;

function TServerMethods12Client.ReEnroll(AClient_Code: string; ACourse_Code: string): Boolean;
begin
  if FReEnrollCommand = nil then
  begin
    FReEnrollCommand := FDBXConnection.CreateCommand;
    FReEnrollCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReEnrollCommand.Text := 'TServerMethods12.ReEnroll';
    FReEnrollCommand.Prepare;
  end;
  FReEnrollCommand.Parameters[0].Value.SetWideString(AClient_Code);
  FReEnrollCommand.Parameters[1].Value.SetWideString(ACourse_Code);
  FReEnrollCommand.ExecuteUpdate;
  Result := FReEnrollCommand.Parameters[2].Value.GetBoolean;
end;

procedure TServerMethods12Client.SelectByFieldAndValueClient(AFieldName: string; AValue: string);
begin
  if FSelectByFieldAndValueClientCommand = nil then
  begin
    FSelectByFieldAndValueClientCommand := FDBXConnection.CreateCommand;
    FSelectByFieldAndValueClientCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSelectByFieldAndValueClientCommand.Text := 'TServerMethods12.SelectByFieldAndValueClient';
    FSelectByFieldAndValueClientCommand.Prepare;
  end;
  FSelectByFieldAndValueClientCommand.Parameters[0].Value.SetWideString(AFieldName);
  FSelectByFieldAndValueClientCommand.Parameters[1].Value.SetWideString(AValue);
  FSelectByFieldAndValueClientCommand.ExecuteUpdate;
end;

procedure TServerMethods12Client.SelectByFieldAndValueCoach(AFieldName: string; AValue: string);
begin
  if FSelectByFieldAndValueCoachCommand = nil then
  begin
    FSelectByFieldAndValueCoachCommand := FDBXConnection.CreateCommand;
    FSelectByFieldAndValueCoachCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSelectByFieldAndValueCoachCommand.Text := 'TServerMethods12.SelectByFieldAndValueCoach';
    FSelectByFieldAndValueCoachCommand.Prepare;
  end;
  FSelectByFieldAndValueCoachCommand.Parameters[0].Value.SetWideString(AFieldName);
  FSelectByFieldAndValueCoachCommand.Parameters[1].Value.SetWideString(AValue);
  FSelectByFieldAndValueCoachCommand.ExecuteUpdate;
end;

procedure TServerMethods12Client.SelectByFieldAndValueCourse(AFieldName: string; AValue: string);
begin
  if FSelectByFieldAndValueCourseCommand = nil then
  begin
    FSelectByFieldAndValueCourseCommand := FDBXConnection.CreateCommand;
    FSelectByFieldAndValueCourseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSelectByFieldAndValueCourseCommand.Text := 'TServerMethods12.SelectByFieldAndValueCourse';
    FSelectByFieldAndValueCourseCommand.Prepare;
  end;
  FSelectByFieldAndValueCourseCommand.Parameters[0].Value.SetWideString(AFieldName);
  FSelectByFieldAndValueCourseCommand.Parameters[1].Value.SetWideString(AValue);
  FSelectByFieldAndValueCourseCommand.ExecuteUpdate;
end;

procedure TServerMethods12Client.SelectByFieldAndValueEnrollment(AFieldName: string; AValue: string);
begin
  if FSelectByFieldAndValueEnrollmentCommand = nil then
  begin
    FSelectByFieldAndValueEnrollmentCommand := FDBXConnection.CreateCommand;
    FSelectByFieldAndValueEnrollmentCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSelectByFieldAndValueEnrollmentCommand.Text := 'TServerMethods12.SelectByFieldAndValueEnrollment';
    FSelectByFieldAndValueEnrollmentCommand.Prepare;
  end;
  FSelectByFieldAndValueEnrollmentCommand.Parameters[0].Value.SetWideString(AFieldName);
  FSelectByFieldAndValueEnrollmentCommand.Parameters[1].Value.SetWideString(AValue);
  FSelectByFieldAndValueEnrollmentCommand.ExecuteUpdate;
end;

procedure TServerMethods12Client.SelectFromEnrollmentsAndCourses(AClient_code: string);
begin
  if FSelectFromEnrollmentsAndCoursesCommand = nil then
  begin
    FSelectFromEnrollmentsAndCoursesCommand := FDBXConnection.CreateCommand;
    FSelectFromEnrollmentsAndCoursesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSelectFromEnrollmentsAndCoursesCommand.Text := 'TServerMethods12.SelectFromEnrollmentsAndCourses';
    FSelectFromEnrollmentsAndCoursesCommand.Prepare;
  end;
  FSelectFromEnrollmentsAndCoursesCommand.Parameters[0].Value.SetWideString(AClient_code);
  FSelectFromEnrollmentsAndCoursesCommand.ExecuteUpdate;
end;

constructor TServerMethods12Client.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;

constructor TServerMethods12Client.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;

destructor TServerMethods12Client.Destroy;
begin
  FEchoStringCommand.DisposeOf;
  FReverseStringCommand.DisposeOf;
  FGetCodeCommand.DisposeOf;
  FInsertClientCommand.DisposeOf;
  FInsertCoachCommand.DisposeOf;
  FInsertCourseCommand.DisposeOf;
  FEnrollCommand.DisposeOf;
  FDropEnrollCommand.DisposeOf;
  FReEnrollCommand.DisposeOf;
  FSelectByFieldAndValueClientCommand.DisposeOf;
  FSelectByFieldAndValueCoachCommand.DisposeOf;
  FSelectByFieldAndValueCourseCommand.DisposeOf;
  FSelectByFieldAndValueEnrollmentCommand.DisposeOf;
  FSelectFromEnrollmentsAndCoursesCommand.DisposeOf;
  inherited;
end;

end.
