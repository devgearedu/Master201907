unit ServerMethodsUnit12;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB, FireDAC.Phys.IBDef,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Datasnap.Provider, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase,
  System.DateUtils;

type
  TServerMethods12 = class(TDSServerModule)
    fdcnGYM: TFDConnection;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    fdtblClients: TFDTable;
    dspClients: TDataSetProvider;
    fdqryClients: TFDQuery;
    fdtblClientsCODE: TIntegerField;
    fdtblClientsNAME_: TWideStringField;
    fdtblClientsBIRTH_DATE: TDateField;
    fdtblClientsMOBILE: TStringField;
    fdtblClientsDATE_OF_SIGN_UP: TDateField;
    fdtblClientsEMAIL: TStringField;
    fdtblClientsADDRESS_: TWideStringField;
    fdtblClientsFAVORITE_BRANCH: TWideStringField;
    fdtblClientsVEHICLE_PLATE: TWideStringField;
    fdtblClientsPASSWORD_: TStringField;
    fdtblClientsDATE_OF_WITHDRAWAL: TDateField;
    dspQryClients: TDataSetProvider;
    fdtblCoaches: TFDTable;
    dspCoaches: TDataSetProvider;
    fdqryCoaches: TFDQuery;
    dspQryCoaches: TDataSetProvider;
    fdtblCoachesCODE: TIntegerField;
    fdtblCoachesNAME_: TWideStringField;
    fdtblCoachesBIRTH_DATE: TDateField;
    fdtblCoachesMOBILE: TStringField;
    fdtblCoachesSPORTS: TWideStringField;
    fdtblCoachesDATE_OF_ENTER: TDateField;
    fdtblCoachesEMAIL: TStringField;
    fdtblCoachesADDRESS_: TWideStringField;
    fdtblCoachesVEHICLE_PLATE: TWideStringField;
    fdtblCoachesPASSWORD_: TStringField;
    fdtblCoachesPICTURE: TBlobField;
    fdtblCoachesDATE_OF_RESIGN: TDateField;
    fdqryCoachesCODE: TIntegerField;
    fdqryCoachesNAME_: TWideStringField;
    fdqryCoachesBIRTH_DATE: TDateField;
    fdqryCoachesMOBILE: TStringField;
    fdqryCoachesSPORTS: TWideStringField;
    fdqryCoachesDATE_OF_ENTER: TDateField;
    fdqryCoachesEMAIL: TStringField;
    fdqryCoachesADDRESS_: TWideStringField;
    fdqryCoachesVEHICLE_PLATE: TWideStringField;
    fdqryCoachesPASSWORD_: TStringField;
    fdqryCoachesPICTURE: TBlobField;
    fdqryCoachesDATE_OF_RESIGN: TDateField;
    fdqryClientsCODE: TIntegerField;
    fdqryClientsNAME_: TWideStringField;
    fdqryClientsBIRTH_DATE: TDateField;
    fdqryClientsMOBILE: TStringField;
    fdqryClientsDATE_OF_SIGN_UP: TDateField;
    fdqryClientsEMAIL: TStringField;
    fdqryClientsADDRESS_: TWideStringField;
    fdqryClientsFAVORITE_BRANCH: TWideStringField;
    fdqryClientsVEHICLE_PLATE: TWideStringField;
    fdqryClientsPASSWORD_: TStringField;
    fdqryClientsDATE_OF_WITHDRAWAL: TDateField;
    fdtblCourses: TFDTable;
    fdqryCourses: TFDQuery;
    dspCourses: TDataSetProvider;
    dspQryCourses: TDataSetProvider;
    fdtblCoursesCODE: TIntegerField;
    fdtblCoursesCOACH_CODE: TIntegerField;
    fdtblCoursesNAME_: TWideStringField;
    fdtblCoursesWEEKDAYS: TWideStringField;
    fdtblCoursesYEAR_AND_MONTH: TStringField;
    fdtblCoursesBEGIN_TIME: TTimeField;
    fdtblCoursesLOCATION_: TWideStringField;
    fdtblCoursesMINIMUM_ENROLL: TIntegerField;
    fdtblCoursesCURRENT_ENROLL: TIntegerField;
    fdtblCoursesMAXIMUM_ENROLL: TIntegerField;
    fdtblCoursesPRICE: TIntegerField;
    fdtblCoursesEND_TIME: TTimeField;
    fdtblCoursesIS_CANCELED: TStringField;
    fdtblEnrollments: TFDTable;
    fdqryEnrollments: TFDQuery;
    dspEnrollments: TDataSetProvider;
    dspQryEnrollments: TDataSetProvider;
    fdtblEnrollmentsCLIENT_CODE: TIntegerField;
    fdtblEnrollmentsCOURSE_CODE: TIntegerField;
    fdtblEnrollmentsCOACH_CODE: TIntegerField;
    fdtblEnrollmentsTIME_OF_ENROLLMENT: TSQLTimeStampField;
    fdtblAttendances: TFDTable;
    fdqryAttendances: TFDQuery;
    dspAttendances: TDataSetProvider;
    dspQryAttendances: TDataSetProvider;
    fdtblAttendancesCLIENT_CODE: TIntegerField;
    fdtblAttendancesCOURSE_CODE: TIntegerField;
    fdtblAttendancesCOACH_CODE: TIntegerField;
    fdtblAttendancesDATE_OF_COURSE: TDateField;
    fdtblAttendancesIS_PRESENT: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;

    function GetCode(AName, ADate_Of_Birth: string) : Integer;
    function InsertClient(AName_, AMobile, ABirth_Date, AAddress_, AFavorite_Branch,
                          AEmail, AVehicle_Plate : string) : Integer;
    function InsertCoach(AName_, AMobile, ABirth_Date, AAddress_, ASports,
                          AEmail, AVehicle_Plate : string) : Integer;
    function InsertCourse(ACoach_Code, AName_, AWeekdays, ABegin_Time, ALocation_, AMax_Enroll,
                          APrice, AEnd_Time : string) : Integer;
    function Enroll(AClient_Code, ACourse_Code : string) : Boolean;
    function DropEnroll(AClient_Code, ACourse_Code : string) : Boolean;
    function ReEnroll(AClient_Code, ACourse_Code : string) : Boolean;
    function Attend(AClient_Code, ACourse_Code : string) : Boolean;

    procedure SelectByFieldAndValueClient(AFieldName, AValue : string);
    procedure SelectByFieldAndValueCoach(AFieldName, AValue : string);
    procedure SelectByFieldAndValueCourse(AFieldName, AValue : string);
    procedure SelectByFieldAndValueEnrollment(AFieldName, AValue : string);
    procedure SelectFromEnrollmentsAndCourses(AClient_code : string);
  end;

implementation


{$R *.dfm}


uses System.StrUtils, Vcl.Dialogs;


function TServerMethods12.Attend(AClient_Code,
  ACourse_Code: string): Boolean;
begin


  fdtblAttendances.Insert;

  fdtblAttendancesCLIENT_CODE.Value := AClient_Code;
  fdtblAttendancesCOURSE_CODE.Value := ACourse_Code;
  fdtblCourses.Locate('code', ACourse_Code,[]);
  fdtblAttendancesCOACH_CODE.Value := fdtblCoursesCOACH_CODE.Value;
  fdtblAttendancesDATE_OF_COURSE := Today;
  fdtblAttendancesIS_PRESENT := 'Y';

  fdtblAttendances.Post;
  fdtblAttendances.ApplyUpdates(-1);
  fdtblAttendances.CommitUpdates;
  fdcnGYM.Commit;

  fdtblAttendances.Refresh;
end;

function TServerMethods12.DropEnroll(AClient_Code,
  ACourse_Code: string): Boolean;
begin
  fdtblEnrollments.Filtered := False;
  fdtblEnrollments.Filter := 'client_code = ' + QuotedStr(AClient_Code) +
                            ' AND course_code = ' +QuotedStr(ACourse_Code);
  fdtblEnrollments.Filtered := True;
  fdtblEnrollments.Delete;
  fdtblEnrollments.ApplyUpdates(-1);
  fdtblEnrollments.CommitUpdates;
  fdcnGYM.Commit;

  Result := True;
end;

function TServerMethods12.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods12.Enroll(AClient_Code,
  ACourse_Code: string): Boolean;
begin
  fdtblEnrollments.Insert;

  fdtblEnrollments.FieldByName('client_code').AsInteger := StrToInt(AClient_Code);
  fdtblEnrollments.FieldByName('course_code').AsInteger := StrToInt(ACourse_Code);
  fdtblCourses.Locate('code', ACourse_Code,[]);
  fdtblEnrollments.FieldByName('coach_code').AsInteger := fdtblCoursesCOACH_CODE.Value;
  fdtblEnrollments.FieldByName('time_Of_enrollment').AsDateTime := Now;

  fdtblEnrollments.Post;
  fdtblEnrollments.ApplyUpdates(-1);
  fdtblEnrollments.CommitUpdates;
  fdcnGYM.Commit;
  fdtblEnrollments.Refresh;

  Result := True;
end;

function TServerMethods12.GetCode(AName, ADate_Of_Birth: string): Integer;
var
  ReturnCode : Integer;
begin
  ReturnCode := 0;

  fdqryClients.Close;
  fdqryClients.Open('SELECT code FROM clients WHERE name_ = '+''''+AName+'''' +
                    ' AND birth_date = '+''''+ADate_Of_Birth+'''');
  ReturnCode := fdqryClients.FieldByName('code').AsInteger;

  Result := ReturnCode;
end;

function TServerMethods12.InsertClient(AName_, AMobile, ABirth_Date, AAddress_,
  AFavorite_Branch, AEmail, AVehicle_Plate: string): Integer;
begin
  fdtblClients.Insert;

  fdtblClients.FieldByName('Name_').AsString := AName_;
  fdtblClients.FieldByName('Mobile').AsString := AMobile;
  fdtblClients.FieldByName('Birth_Date').AsDateTime := StrToDate(ABirth_Date);
  fdtblClients.FieldByName('Date_Of_Sign_Up').AsDateTime := Today;
  fdtblClients.FieldByName('Password_').AsString := FormatDateTime('yymmdd',StrTODate(ABirth_Date));
  fdtblClients.FieldByName('Address_').AsString := AAddress_;
  fdtblClients.FieldByName('Favorite_Branch').AsString := AFavorite_Branch;
  if not (AEmail = '') then
    fdtblClients.FieldByName('Email').AsString := AEmail;
  if not (AVehicle_Plate = '') then
    fdtblClients.FieldByName('Vehicle_Plate').AsString := AVehicle_Plate;


  fdtblClients.Post;
  fdtblClients.ApplyUpdates(-1);
  fdtblClients.CommitUpdates;
  fdcnGYM.Commit;
  fdtblClients.Refresh;

  fdtblClients.Locate('Mobile',AMobile,[]);
  Result := fdtblClientsCODE.Value;
end;

function TServerMethods12.InsertCoach(AName_, AMobile, ABirth_Date,
  AAddress_, ASports, AEmail, AVehicle_Plate: string): Integer;
begin
  fdtblCoaches.Insert;

  fdtblCoaches.FieldByName('Name_').AsString := AName_;
  fdtblCoaches.FieldByName('Mobile').AsString := AMobile;
  fdtblCoaches.FieldByName('Birth_Date').AsDateTIme := StrToDate(ABirth_Date);
  fdtblCoaches.FieldByName('Address_').AsString := AAddress_;
  fdtblCoaches.FieldByName('Sports').AsString := ASports;
  fdtblCoaches.FieldByName('Date_Of_Enter').AsDateTime := Today;
  fdtblCoaches.FieldByName('Email').AsString := AEmail;
  fdtblCoaches.FieldByName('Password_').AsString := FormatDateTime('yymmdd',StrTODate(ABirth_Date));

  if not (AVehicle_Plate = '') then
    fdtblCoaches.FieldByName('Vehicle_Plate').AsString := AVehicle_Plate;

  fdtblCoaches.Post;
  fdtblCoaches.ApplyUpdates(-1);
  fdtblCoaches.CommitUpdates;
  fdcnGYM.Commit;
  fdtblCoaches.Refresh;

  fdtblCoaches.Locate('Mobile',AMobile,[]);
  Result := fdtblCoachesCODE.Value;
end;

function TServerMethods12.InsertCourse(ACoach_Code, AName_, AWeekdays,
  ABegin_Time, ALocation_, AMax_Enroll, APrice,
  AEnd_Time: string): Integer;
begin
  fdtblCourses.Insert;

  fdtblCourses.FieldByName('Coach_Code').AsInteger := StrToInt(ACoach_Code);
  fdtblCourses.FieldByName('Name_').AsString := AName_;
  fdtblCourses.FieldByName('Weekdays').AsString := AWeekdays;
  fdtblCourses.FieldByName('Year_And_Month').AsString := FormatDateTime('yyyymm', IncMonth(Today));//Today);
  fdtblCourses.FieldByName('Begin_Time').AsDateTime := StrToTime(ABegin_Time);
  fdtblCourses.FieldByName('Location_').AsString := ALocation_;
  fdtblCourses.FieldByName('Maximum_Enroll').AsInteger := StrToInt(AMax_Enroll);
  fdtblCourses.FieldByName('Minimum_Enroll').AsInteger := StrToInt(AMax_Enroll) div 5;
  fdtblCourses.FieldByName('Current_Enroll').AsInteger := 0;
  fdtblCourses.FieldByName('Price').AsInteger := StrToInt(APrice);
  fdtblCourses.FieldByName('End_Time').AsDateTime := StrToTime(AEnd_Time);

  fdtblCourses.Post;
  fdtblCourses.ApplyUpdates(-1);
  fdtblCourses.CommitUpdates;
  fdcnGYM.Commit;
  fdtblCourses.Refresh;

  fdtblCourses.Last;

  Result := fdtblCoursesCODE.Value;
end;

function TServerMethods12.ReEnroll(AClient_Code,
  ACourse_Code: string): Boolean;
var
  VarBegin_Time, VarName_, VarWeekdays : string;
  VarField : TField;
begin
  fdqryEnrollments.Close;
  fdqryEnrollments.Open('Select name_, weekdays, begin_time '+
                        'FROM courses WHERE code = ' + QuotedStr(ACourse_Code));
  VarName_ := fdqryEnrollments.FieldByName('name_').AsString;
  VarWeekdays := fdqryEnrollments.FieldByName('weekdays').AsString;
  VarBegin_Time := fdqryEnrollments.FieldByName('begin_time').AsString;

  fdqryEnrollments.Close;
  fdqryEnrollments.Open( 'SELECT * FROM courses' +
                        ' WHERE year_and_month = ' + QuotedStr(FormatDateTime('yyyymm',IncMonth(Today))) +
                        ' AND name_ = ' + QuotedStr(VarName_));
  fdqryEnrollments.First;
  while not (fdqryEnrollments.Eof) do
  begin
    if (fdqryEnrollments.FieldByName('weekdays').AsString = VarWeekdays)
    and (fdqryEnrollments.FieldByName('begin_time').AsString = VarBegin_time) then
      break;

    fdqryEnrollments.Next;
  end;

  ShowMessage(IntToStr(fdqryEnrollments.Fields[0].Value));
  if fdtblClientsCODE.Value = 0 then
    exit(False);

  Enroll(AClient_Code, IntToStr(fdqryEnrollments.Fields[0].Value));

  Result := True;
end;

function TServerMethods12.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

procedure TServerMethods12.SelectByFieldAndValueClient(AFieldName, AValue: string);
begin
  fdqryClients.Close;
  fdqryClients.Open('SELECT * FROM clients WHERE ' +
                    AFieldName + ' = ' + '''' + AValue + '''');
end;

procedure TServerMethods12.SelectByFieldAndValueCoach(AFieldName,
  AValue: string);
begin
  fdqryCoaches.Close;
  fdqryCoaches.Open('SELECT * FROM coaches WHERE ' +
                    AFieldName + ' = ' + '''' + AValue + '''');
end;

procedure TServerMethods12.SelectByFieldAndValueCourse(AFieldName,
  AValue: string);
begin
  fdqryCourses.Close;
  fdqryCourses.Open('SELECT * FROM courses WHERE ' +
                    AFieldName + ' = ' + '''' + AValue + '''');
end;

procedure TServerMethods12.SelectByFieldAndValueEnrollment(AFieldName,
  AValue: string);
begin
  fdqryEnrollments.Close;
  fdqryEnrollments.Open('SELECT * FROM enrollments WHERE ' +
                    AFieldName + ' = ' + '''' + AValue + '''');
end;

procedure TServerMethods12.SelectFromEnrollmentsAndCourses(AClient_code : string);
begin
  fdqryEnrollments.Close;
  fdqryEnrollments.Open( 'SELECT enrollments.client_code, enrollments.course_code, ' +
                            'courses.Name_, courses.weekdays, courses.year_and_month, courses.begin_time ' +
                        'FROM enrollments, courses ' +
                        'WHERE courses.year_and_month = ' + QuotedStr(FormatDateTime('yyyymm',Today)) +
                        ' AND enrollments.client_code = ' + QuotedStr(AClient_code) +
                        ' AND enrollments.course_code = courses.code');
end;

end.

