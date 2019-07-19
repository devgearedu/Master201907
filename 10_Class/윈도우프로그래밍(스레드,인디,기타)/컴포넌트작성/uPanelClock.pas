unit uPanelClock;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.ExtCtrls;

type
  TPanelClock = class(TPanel)
  private
     T:TTimer;
     FFormat: string;
    FClockInterval: integer;
    FClockEnabled: boolean;
    FSetTime: string;
    FOnAlarm: TnotifyEvent;
     procedure DisplayTime(Sender:TObject);
     procedure SetFormat(const Value: string);
    procedure SetClockInterval(const Value: integer);
    procedure SetClockEnabled(const Value: boolean);
    procedure SetSetTime(const Value: string);
    procedure SetOnAlarm(const Value: TnotifyEvent);
    { Private declarations }
  protected
    { Protected declarations }
  public
    constructor create(aowner:TComponent); override;
    destructor destroy; override;
    { Public declarations }
  published
    property OnAlarm:TnotifyEvent read FOnAlarm write SetOnAlarm;
    property SetTime:string read FSetTime write SetSetTime;
    property ClockEnabled:boolean read FClockEnabled write SetClockEnabled;
    property ClockInterval:integer read FClockInterval write SetClockInterval;
    property Format:string read FFormat write SetFormat;
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TPanelClock]);
end;

{ TPanelClock }

constructor TPanelClock.create(aowner: TComponent);
begin
  inherited;
  T := TTimer.create(self);
  T.onTimer := DisplayTime;
  Setformat('hh:nn:ss');
  SetClockInterval(1000);
  SetClockEnabled(true);
end;

destructor TPanelClock.destroy;
begin
  t.free;
  inherited;
end;

procedure TPanelClock.DisplayTime(Sender: TObject);
begin
  caption := FormatdateTime(fformat, now);
  if fSetTime <> '' then
     if Formatdatetime('hh:nn:ss', time) =fsettime then
        if Assigned(FOnAlarm) then FonAlarm(self);

end;

procedure TPanelClock.SetClockEnabled(const Value: boolean);
begin
  fClockEnabled := Value;
  t.Enabled := value;
end;

procedure TPanelClock.SetClockInterval(const Value: integer);
begin
  FClockInterval := Value;
  t.Interval := value;
end;

procedure TPanelClock.SetFormat(const Value: string);
begin
  FFormat := Value;
end;

procedure TPanelClock.SetOnAlarm(const Value: TnotifyEvent);
begin
  FOnAlarm := Value;
end;

procedure TPanelClock.SetSetTime(const Value: string);
begin
  FSetTime := Value;
end;

end.
