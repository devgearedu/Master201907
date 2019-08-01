unit HomeScreenForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  System.Beacon, System.Bluetooth, System.Beacon.Components, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.MultiView, FMX.Objects, FMX.Effects,
  FMX.Ani, Data.DB, Data.SqlExpr, Data.DBXDataSnap, Data.DBXCommon,
  IPPeerClient, Datasnap.DBClient, Datasnap.DSConnect, Datasnap.Provider,
  ServerMethodsUnitGym_MobileClientClass, System.DateUtils, FMX.ScrollBox,
  FMX.Memo, System.PushNotification;

type
  TfrmHomeScreen = class(TForm)
    tlbrHomeScreen: TToolBar;
    BcnGym: TBeacon;
    Switch1: TSwitch;
    btnShowMenu: TButton;
    pnlScreen: TPanel;
    mvClientMenu: TMultiView;
    imgctrlHome: TImageControl;
    btnCourse: TButton;
    effctShdwInfoBtn: TShadowEffect;
    btnFacility: TButton;
    effctShdwFacilityBtn: TShadowEffect;
    btnCloseMenu: TButton;
    btnLogOut: TButton;
    btnAttend: TButton;
    effctShdwAttendBtn: TShadowEffect;
    SQLcnMobile: TSQLConnection;
    DSpcnMobile: TDSProviderConnection;
    dsQryMAttend: TDataSource;
    cdsQryMAttend: TClientDataSet;
    dspQryMAttend: TDataSetProvider;
    btnNotification: TButton;
    mvNotification: TMultiView;
    MemoLog: TMemo;
    procedure BcnGymBeaconEnter(const Sender: TObject;
      const ABeacon: IBeacon; const CurrentBeaconList: TBeaconList);
    procedure Switch1Switch(Sender: TObject);
    procedure btnAttendClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BcnGymBeaconExit(const Sender: TObject;
      const ABeacon: IBeacon; const CurrentBeaconList: TBeaconList);
  private
    { Private declarations }
    FBeacon : IBeacon;
  public
    { Public declarations }
  end;

var
  frmHomeScreen: TfrmHomeScreen;
  serverClient : TServerMethodsGymClient;

implementation

uses
  System.Permissions,
{$IFDEF ANDROID}
  Androidapi.JNI.Os,
  Androidapi.JNI.JavaTypes,
  Androidapi.Helpers,
{$ENDIF}
  FMX.DialogService;
{$R *.fmx}

procedure TfrmHomeScreen.BcnGymBeaconEnter(const Sender: TObject;
  const ABeacon: IBeacon; const CurrentBeaconList: TBeaconList);
var
  btnTagAsString, FWeekdays : string;
begin
  ShowMessage('체육관 입장');
  FBeacon := ABeacon;
end;

procedure TfrmHomeScreen.BcnGymBeaconExit(const Sender: TObject;
  const ABeacon: IBeacon; const CurrentBeaconList: TBeaconList);
begin
  FBeacon := nil;
  ShowMessage('쳬육관 퇴장');
end;

procedure TfrmHomeScreen.btnAttendClick(Sender: TObject);
var
  btnTagAsString, FWeekdays : string;
  DateStr: string;
begin

  if Assigned(FBeacon) then
  begin
    DateStr := FormatDateTime('YYYY-MM-DD', Today);
    btnTagAsString := IntToStr(btnAttend.Tag);

    cdsQryMAttend.Close;
    serverClient.SelectFromEnrollmentsAndCourses(btnTagAsString);
    cdsQryMAttend.Open;

    if (DayOfTheWeek(Today) = 2) or (DayOfTheWeek(Today) = 4) then
      FWeekdays := '화목'
    else
      FWeekdays := '월수금';

    cdsQryMAttend.Filtered := False;
    cdsQryMAttend.Filter := 'weekdays = ' + QuotedStr(FWeekdays);
    cdsQryMAttend.Filtered := True;

    cdsQryMAttend.IndexFieldNames := 'begin_time';
    cdsQryMAttend.FindNearest([Now]);

    if serverClient.AttendByClient(btnTagAsString, IntToStr(cdsQryMAttend.Fields[1].Value), DateStr) then
    begin
      ShowMessage('출석 완료');
    end;

    cdsQryMAttend.Filtered := False;

  end
  else
    ShowMessage('입장 후 다시 시도해주세요');
end;

procedure TfrmHomeScreen.FormCreate(Sender: TObject);
begin
  serverClient := ServerMethodsUnitGym_MobileClientClass.TServerMethodsGymClient.Create(SQLcnMobile.DBXConnection);
end;


procedure TfrmHomeScreen.Switch1Switch(Sender: TObject);
begin
{$IFDEF ANDROID}
  if Switch1.IsChecked then
  begin
    PermissionsService.RequestPermissions(
      [JStringToString(TJManifest_permission.JavaClass.BLUETOOTH),
      JStringToString(TJManifest_permission.JavaClass.BLUETOOTH_ADMIN)],
      procedure(const APermissions: TArray<string>; const AGrantResults: TArray<TPermissionStatus>)
        begin
          if (Length(AGrantResults) = 2)
          and (AGrantResults[0] = TPermissionStatus.Granted)
          and (AGrantResults[1] = TPermissionStatus.Granted) then

{ activate or deactivate the location sensor }
            BcnGym.Enabled := True
          else
          begin
            Switch1.IsChecked := False;
            TDialogService.ShowMessage('블루투스 권한이 없습니다.');
          end;
        end);
  end
  else
    BcnGym.Enabled := False;
{$ELSE}
  BcnGym.Enabled := Switch1.IsChecked;
{$ENDIF}

end;

end.
