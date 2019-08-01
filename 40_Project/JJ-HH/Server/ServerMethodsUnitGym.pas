unit ServerMethodsUnitGym;

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
  TServerMethodsGym = class(TDSServerModule)
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
    procedure DSServerModuleCreate(Sender: TObject);
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
    function AttendByClient(AClient_Code, ACourse_Code, ADate_of_course : string) : Boolean;
    function InsertNotPresent(AClient_Code, ACourse_Code, ADate_of_course : string) : Boolean;

    procedure SelectByFieldAndValueClient(AFieldName, AValue : string);
    procedure SelectByFieldAndValueCoach(AFieldName, AValue : string);
    procedure SelectByFieldAndValueCourse(AFieldName, AValue : string);
    procedure SelectByFieldAndValueEnrollment(AFieldName, AValue : string);
    procedure SelectFromEnrollmentsAndCourses(AClient_code : string);
    procedure SelectCourseToAttend(AYearAndMonth, ASports, AWeekdays: string);
    procedure SelectAttendanceByCourseAndDate(ADate_of_course, ACourse_code: string);
    procedure SelectAttendanceByClientAndCourse(AClient_Code, ACourse_Code, AYearAndMonth: string);
  end;

implementation


{$R *.dfm}


uses
  System.StrUtils, Vcl.Dialogs, System.Generics.Collections;

var
  DaysDict : TDictionary<Integer, string>;


// Param에 Flag 추가
function TServerMethodsGym.AttendByClient(AClient_Code,
  ACourse_Code, ADate_of_course : string): Boolean;
begin
  fdtblAttendances.Filtered := False;
  fdtblAttendances.Filter := 'client_code = ' + AClient_Code +
                             ' AND course_code = ' + ACourse_Code;

  fdtblAttendances.Filtered := True;

  while not fdtblAttendances.Eof do
  begin
    if DateToStr(fdtblAttendancesDATE_OF_COURSE.Value)=ADate_of_course then
    begin
      fdtblAttendances.Edit;

      fdtblAttendancesIS_PRESENT.Value := 'Y';

      fdtblAttendances.Post;
      fdtblAttendances.ApplyUpdates(-1);
      fdtblAttendances.CommitUpdates;
    end;
    fdtblAttendances.Next;
  end;

  fdtblAttendances.Refresh;
  fdtblAttendances.Filtered := False;

  Result := True;
end;

function TServerMethodsGym.DropEnroll(AClient_Code,
  ACourse_Code: string): Boolean;
begin
  fdtblEnrollments.Filtered := False;
  fdtblEnrollments.Filter := 'client_code = ' + QuotedStr(AClient_Code) +
                            ' AND course_code = ' +QuotedStr(ACourse_Code);
  fdtblEnrollments.Filtered := True;
  fdtblEnrollments.Delete;
  fdtblEnrollments.ApplyUpdates(-1);
  fdtblEnrollments.CommitUpdates;
//  fdcnGYM.Commit;

  Result := True;
end;

procedure TServerMethodsGym.DSServerModuleCreate(Sender: TObject);
begin
  DaysDict := TDictionary<Integer, string>.Create(0);
  DaysDict.AddOrSetValue(DaySunday, '일');
  DaysDict.AddOrSetValue(DayMonday, '월');
  DaysDict.AddOrSetValue(DayTuesday, '화');
  DaysDict.AddOrSetValue(DayWednesday, '수');
  DaysDict.AddOrSetValue(DayThursday, '목');
  DaysDict.AddOrSetValue(DayFriday, '금');
  DaysDict.AddOrSetValue(DaySaturday, '토');
end;

function TServerMethodsGym.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethodsGym.Enroll(AClient_Code,
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
//  fdcnGYM.Commit;
  fdtblEnrollments.Refresh;

  fdtblCourses.Edit;
  fdtblCoursesCURRENT_ENROLL.Value := fdtblCoursesCURRENT_ENROLL.Value + 1;
  fdtblCourses.Post;
  fdtblCourses.ApplyUpdates(-1);
  fdtblCourses.CommitUpdates;
//  fdcnGYM.Commit;
  fdtblCourses.Refresh;

  Result := True;
end;

function TServerMethodsGym.GetCode(AName, ADate_Of_Birth: string): Integer;
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

function TServerMethodsGym.InsertClient(AName_, AMobile, ABirth_Date, AAddress_,
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
//  fdcnGYM.Commit;
  fdtblClients.Refresh;

  fdtblClients.Locate('Mobile',AMobile,[]);
  Result := fdtblClientsCODE.Value;
end;

function TServerMethodsGym.InsertCoach(AName_, AMobile, ABirth_Date,
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
//  fdcnGYM.Commit;
  fdtblCoaches.Refresh;

  fdtblCoaches.Locate('Mobile',AMobile,[]);
  Result := fdtblCoachesCODE.Value;
end;

function TServerMethodsGym.InsertCourse(ACoach_Code, AName_, AWeekdays,
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
//  fdcnGYM.Commit;
  fdtblCourses.Refresh;

  fdtblCourses.Last;

  Result := fdtblCoursesCODE.Value;
end;

function TServerMethodsGym.InsertNotPresent(AClient_Code, ACourse_Code, ADate_of_course : string) : Boolean;
begin

 fdtblAttendances.Insert;

 fdtblAttendancesCLIENT_CODE.Value := StrToInt(AClient_Code);
 fdtblAttendancesCOURSE_CODE.Value := StrToInt(ACourse_Code);

 fdtblCourses.Locate('code', StrToInt(ACourse_Code),[]);
 fdtblAttendancesCOACH_CODE.Value := fdtblCoursesCOACH_CODE.Value;

 fdtblAttendancesDATE_OF_COURSE.Value := StrToDateTime(ADate_of_course);
 fdtblAttendancesIS_PRESENT.Value := 'N';

 fdtblAttendances.Post;
 fdtblAttendances.ApplyUpdates(-1);
 fdtblAttendances.CommitUpdates;
// fdcnGYM.Commit;
 fdtblAttendances.Refresh;

 Result := True;
end;

function TServerMethodsGym.ReEnroll(AClient_Code,
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

  if fdtblClientsCODE.Value = 0 then
    exit(False);

  Enroll(AClient_Code, IntToStr(fdqryEnrollments.Fields[0].Value));

  Result := True;
end;

function TServerMethodsGym.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

procedure TServerMethodsGym.SelectAttendanceByClientAndCourse(AClient_Code, ACourse_Code,
  AYearAndMonth: string);
var
  OutStr : string;
begin
  fdqryAttendances.Close;
  fdqryAttendances.Open('SELECT Attendances.Date_of_course, '+
                          'Courses.Name_, Courses.begin_time, Courses.weekdays, '+
                          'Courses.code, Attendances.is_present ' +
                        'FROM Attendances, courses ' +
                        'WHERE Attendances.client_code = ' + QuotedStr(AClient_Code) +
                        ' AND Attendances.course_code = ' + QuotedStr(ACourse_Code) +
                        ' AND courses.year_and_month = ' + QuotedStr(AYearAndMonth) +
                        ' AND Attendances.course_code = courses.code'
                        );
end;

procedure TServerMethodsGym.SelectAttendanceByCourseAndDate(ADate_of_course,
  ACourse_code: string);
begin
  fdqryAttendances.Close;
  fdqryAttendances.Open( 'SELECT Attendances.client_code, Clients.name_, ' +
                          'courses.Name_, courses.year_and_month, courses.weekdays, courses.begin_time ' +
                        'FROM Attendances, courses, clients ' +
                        'WHERE Attendances.Date_of_course = ' + QuotedStr(ADate_of_course) +
                        ' AND courses.code = ' + QuotedStr(ACourse_code) +
                        ' AND Attendances.client_code = clients.code' +
                        ' AND Attendances.course_code = courses.code');
end;

procedure TServerMethodsGym.SelectByFieldAndValueClient(AFieldName, AValue: string);
begin
  fdqryClients.Close;
  fdqryClients.Open('SELECT * FROM clients WHERE ' +
                    AFieldName + ' = ' + '''' + AValue + '''');
end;

procedure TServerMethodsGym.SelectByFieldAndValueCoach(AFieldName,
  AValue: string);
begin
  fdqryCoaches.Close;
  fdqryCoaches.Open('SELECT * FROM coaches WHERE ' +
                    AFieldName + ' = ' + '''' + AValue + '''');
end;

procedure TServerMethodsGym.SelectByFieldAndValueCourse(AFieldName,
  AValue: string);
begin
  fdqryCourses.Close;
  fdqryCourses.Open('SELECT * FROM courses WHERE ' +
                    AFieldName + ' = ' + '''' + AValue + '''');
end;

procedure TServerMethodsGym.SelectByFieldAndValueEnrollment(AFieldName,
  AValue: string);
begin
  fdqryEnrollments.Close;
  fdqryEnrollments.Open('SELECT * FROM enrollments WHERE ' +
                    AFieldName + ' = ' + '''' + AValue + '''');
end;

procedure TServerMethodsGym.SelectCourseToAttend(AYearAndMonth, ASports, AWeekdays: string);
begin
//  fdqryEnrollments.Close;
//  fdqryEnrollments.Open( 'SELECT enrollments.client_code, enrollments.course_code, ' +
//                            'courses.Name_, courses.weekdays, courses.year_and_month, courses.begin_time ' +
//                        'FROM enrollments, courses ' +
//                        'WHERE courses.year_and_month = ' + QuotedStr(AYearAndMonth) +
//                        ' AND courses.name_ = ' + QuotedStr(ASports) +
//                        ' AND courses.weekdays = ' + QuotedStr(Aweekdays) +
//                        ' AND enrollments.course_code = courses.code');

  fdqryCourses.Close;
  fdqryCourses.Open( 'SELECT * FROM courses ' +
                    'WHERE year_and_month = ' + QuotedStr(AYearAndMonth) +
                    ' AND name_ = ' + QuotedStr(ASports) +
                    ' AND weekdays = ' + QuotedStr(Aweekdays));

end;

procedure TServerMethodsGym.SelectFromEnrollmentsAndCourses(AClient_code : string);
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

