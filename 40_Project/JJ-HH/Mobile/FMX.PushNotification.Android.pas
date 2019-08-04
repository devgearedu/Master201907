{*******************************************************}
{                                                       }
{              Delphi FireMonkey Platform               }
{                                                       }
{ Copyright(c) 2011-2019 Embarcadero Technologies, Inc. }
{              All rights reserved                      }
{                                                       }
{*******************************************************}
unit FMX.PushNotification.Android;

interface

{$SCOPEDENUMS ON}

{$HPPEMIT LINKUNIT}

implementation

uses
  System.SysUtils, System.Classes, System.JSON, System.PushNotification, System.Messaging, Androidapi.JNI.Embarcadero,
  Androidapi.Helpers, Androidapi.JNIBridge, Androidapi.JNI.JavaTypes, Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.Os, FMX.Platform.Android;

type

{$REGION 'Android api headers'}

  JTask = interface;
  JFirebaseApp = interface;
  JFirebaseInstanceId = interface;

  [JavaSignature('com/embarcadero/firebase/PushNotificationListener')]
  JPushNotificationListener = interface(IJavaInstance)
    ['{F53C16C0-C547-4827-8DAF-22110902E95D}']
    procedure onNotificationReceived(notification: JBundle); cdecl;
    procedure onNewTokenReceived(token: JString); cdecl;
  end;

  JProxyFirebaseMessagingServiceClass = interface(IJavaClass)
    ['{2FDF8176-2B9A-4C5E-B981-95419CC9D78F}']
    procedure setListener(const listener: JPushNotificationListener);  cdecl;
  end;

  [JavaSignature('com/embarcadero/firebase/ProxyFirebaseMessagingService')]
  JProxyFirebaseMessagingService = interface(IJavaInstance)
    ['{E18B6246-AA62-4BA7-8E9A-3055C2C412CA}']
  end;
  TJProxyFirebaseMessagingService = class(TJavaGenericImport<JProxyFirebaseMessagingServiceClass, JProxyFirebaseMessagingService>) end;

  [JavaSignature('com/google/android/gms/tasks/OnCompleteListener')]
  JOnCompleteListener = interface(IJavaInstance)
    ['{FF916F32-193F-4C91-9EC5-577ACA24C3CD}']
    procedure onComplete(P1: JTask); cdecl;
  end;

  [JavaSignature('com/google/android/gms/tasks/Task')]
  JTask = interface(JObject)
    ['{E40A69F5-90F8-48C6-973C-8890073D2C97}']
    function addOnCompleteListener(P1: JOnCompleteListener): JTask; cdecl; overload;
    function getException: JException; cdecl;
    function getResult: JObject; cdecl; overload;
    function isSuccessful: Boolean; cdecl;
  end;

  JFirebaseAppClass = interface(JObjectClass)
    ['{7C824D35-7285-477A-8261-DEA5AE42CD34}']
    {class} function getInstance: JFirebaseApp; cdecl; overload;
  end;

  [JavaSignature('com/google/firebase/FirebaseApp')]
  JFirebaseApp = interface(JObject)
    ['{5A1CE1F7-0450-4D05-9967-F7D72AD972D6}']
    procedure delete; cdecl;
  end;
  TJFirebaseApp = class(TJavaGenericImport<JFirebaseAppClass, JFirebaseApp>) end;

  JFirebaseInstanceIdClass = interface(JObjectClass)
    ['{C2EE81F8-D1D8-4273-AAFE-BAF649C944E4}']
    {class} function getInstance(P1: JFirebaseApp): JFirebaseInstanceId; cdecl; overload;
  end;

  [JavaSignature('com/google/firebase/iid/FirebaseInstanceId')]
  JFirebaseInstanceId = interface(JObject)
    ['{FBF959C6-6293-48EB-914D-426FC130B847}']
    function getInstanceId: JTask; cdecl;
  end;
  TJFirebaseInstanceId = class(TJavaGenericImport<JFirebaseInstanceIdClass, JFirebaseInstanceId>) end;

  JInstanceIdResultClass = interface(IJavaClass)
    ['{B91A2ACD-3C1A-4834-A19B-5EBC2D8D885B}']
  end;

  [JavaSignature('com/google/firebase/iid/InstanceIdResult')]
  JInstanceIdResult = interface(IJavaInstance)
    ['{D30630CB-840D-4484-83FF-1EFE74D3C17B}']
    function getToken: JString; cdecl;
  end;
  TJInstanceIdResult = class(TJavaGenericImport<JInstanceIdResultClass, JInstanceIdResult>) end;

{$ENDREGION}

{ Firebase implementation }

  TFirebasePushServiceNotification = class(TPushServiceNotification)
  private
    FRawData: TJSONObject;
  protected
    function GetDataKey: string; override;
    function GetJson: TJSONObject; override;
    function GetDataObject: TJSONObject; override;
  public
    constructor Create(const ABundle: JBundle); overload;
  end;

  TTaskCompleteCallback = reference to procedure (task: JTask);

  TFirebasePushService = class(TPushService)
  private type
    /// <summary>Listener for receiving result of requesting Firebase Token.</summary>
    TTokenTaskCompleteListener = class(TJavaLocal, JOnCompleteListener)
    private
      FCompleteCallback: TTaskCompleteCallback;
    public
      constructor Create(const ACompleteCallback: TTaskCompleteCallback);

      { JOnCompleteListener }
      procedure onComplete(task: JTask); cdecl;
    end;

    // <summary>Listeners for receiving new token and Push notification, when application is in foreground.</summary>
    TAndroidPushNotificationListener = class(TJavaLocal, JPushNotificationListener)
    private
      [Weak] FService: TFirebasePushService;
    public
      constructor Create(const AService: TFirebasePushService);

      { JPushNotificationListener }
      procedure onNotificationReceived(notification: JBundle); cdecl;
      procedure onNewTokenReceived(token: JString); cdecl;
    end;
  private
    FDeviceToken: string;
    FDeviceID: string;
    FStatus: TPushService.TStatus;
    FStartupError: string;
    FFirebaseApp: JFirebaseApp;
    FTokenTaskCompleteListener: TTokenTaskCompleteListener;
    FPushNotificationListener: TAndroidPushNotificationListener;
    procedure Register(const LGCMAppId: string);
    procedure Unregister;
    procedure MessageReceivedListener(const Sender: TObject; const M: TMessage);
  protected
    constructor Create; reintroduce;
    function GetStatus: TPushService.TStatus; override;
    procedure StartService; override;
    procedure StopService; override;
    function GetDeviceToken: TPushService.TPropArray; override;
    function GetDeviceID: TPushService.TPropArray; override;
    function GetStartupNotifications: TArray<TPushServiceNotification>; override;
    function GetStartupError: string; override;
  public
    destructor Destroy; override;
  end;

var
  FirebasePushService: TFirebasePushService;

procedure RegisterPushServices;
begin
  FirebasePushService :=  TFirebasePushService.Create;
end;

procedure UnregisterPushServices;
begin
  FirebasePushService.DisposeOf;
  FirebasePushService := nil;
end;

function GetAndroidDeviceID: string;
begin
  Result := JStringToString(MainActivity.getDeviceID);
end;

{ TGCMPushService }

procedure TFirebasePushService.Register(const LGCMAppId: string);
var
  FirebaseInstanceId: JFirebaseInstanceId;
begin
  FFirebaseApp := TJFirebaseApp.JavaClass.getInstance;
  FirebaseInstanceId := TJFirebaseInstanceId.JavaClass.getInstance(FFirebaseApp);
  if FirebaseInstanceId <> nil then
  begin
    FTokenTaskCompleteListener := TTokenTaskCompleteListener.Create(procedure (task: JTask) begin
      if task.isSuccessful then
      begin
        FDeviceToken := JStringToString(TJInstanceIdResult.Wrap(task.getResult).getToken);
        FStatus := TPushService.TStatus.Started;
        DoChange([TPushService.TChange.Status, TPushService.TChange.DeviceToken]);
      end
      else
      begin
        FStartupError := JStringToString(task.getException.getMessage);
        FStatus := TPushService.TStatus.StartupError;
        DoChange([TPushService.TChange.Status]);
      end;
    end);
    FirebaseInstanceId.getInstanceId.addOnCompleteListener(FTokenTaskCompleteListener);
  end
  else
  begin
    FStartupError := 'FirebaseInstanceId service is not available';
    FStatus := TPushService.TStatus.StartupError;
    DoChange([TPushService.TChange.Status]);
  end;
end;

procedure TFirebasePushService.StartService;
var
  LAppID: string;
begin
  if FDeviceToken.IsEmpty then
  begin
    LAppID := AppProps[TPushService.TAppPropNames.GCMAppID];
    Register(LAppID);
  end;
end;

procedure TFirebasePushService.StopService;
begin
  if not FDeviceToken.IsEmpty then
  begin
    Unregister;
    FDeviceToken := string.Empty;
    FStatus := TPushService.TStatus.Stopped;
    FStartupError := string.Empty;
    FStatus := TStatus.Stopped;
    DoChange([TChange.Status]);
  end;
end;

constructor TFirebasePushService.Create;
begin
  inherited Create(TPushServiceManager.Instance, TPushService.TServiceNames.GCM);
  TMessageManager.DefaultManager.SubscribeToMessage(TMessageReceivedNotification, MessageReceivedListener);

  FPushNotificationListener := TAndroidPushNotificationListener.Create(Self);
  TJProxyFirebaseMessagingService.JavaClass.setListener(FPushNotificationListener);
end;

destructor TFirebasePushService.Destroy;
begin
  TMessageManager.DefaultManager.Unsubscribe(TMessageReceivedNotification, MessageReceivedListener);

  TJProxyFirebaseMessagingService.JavaClass.setListener(nil);
  FreeAndNil(FPushNotificationListener);
   inherited;
end;

function TFirebasePushService.GetDeviceID: TPushService.TPropArray;
begin
  if FDeviceID.IsEmpty then
    FDeviceID := GetAndroidDeviceID;
  Result := TPushService.TPropArray.Create(TPushService.TPropPair.Create(TPushService.TDeviceIDNames.DeviceID, FDeviceID));
end;

function TFirebasePushService.GetDeviceToken: TPushService.TPropArray;
begin
  Result := TPushService.TPropArray.Create(TPushService.TPropPair.Create(
    TPushService.TDeviceTokenNames.DeviceToken, FDeviceToken));
end;

function TFirebasePushService.GetStartupError: string;
begin
  Result := FStartupError;
end;

function TFirebasePushService.GetStartupNotifications: TArray<TPushServiceNotification>;
var
  LBundle: JBundle;
begin
  LBundle := MainActivity.getStartupGCM;
  if LBundle <> nil then
    Result := TArray<TPushServiceNotification>.Create(TFirebasePushServiceNotification.Create(LBundle))
  else
    Result := nil;
end;

function TFirebasePushService.GetStatus: TPushService.TStatus;
begin
  Result := FStatus;
end;

procedure TFirebasePushService.Unregister;
begin
  if FFirebaseApp <> nil then
  begin
    FDeviceToken := string.Empty;
    FFirebaseApp.delete;
    FFirebaseApp := nil;
  end;
end;

procedure TFirebasePushService.MessageReceivedListener(const Sender: TObject; const M: TMessage);

  function IsIntentWithNotification(Intent: JIntent): Boolean;
  begin
    Result := (Intent <> nil) and (Intent.getAction <> nil) and
               Intent.getAction.equals(TJNotificationPublisher.JavaClass.ACTION_GCM_NOTIFICATION);
  end;

  procedure ProcessBundle(const ANotification: JBundle);
  var
    LNotificationObject: TFirebasePushServiceNotification;
  begin
    if FirebasePushService <> nil then
    begin
      LNotificationObject := TFirebasePushServiceNotification.Create(ANotification);
      // Notifications come in on secondary thread
      TThread.Queue(nil,
      procedure
      begin
        // Handle notifications on firemonkey thread
        if FirebasePushService <> nil then
          FirebasePushService.DoReceiveNotification(LNotificationObject);
      end);
    end;
  end;

  procedure ProcessIntent(const AIntent: JIntent);
  var
    LBundle: JBundle;
  begin
    if AIntent <> nil then
    begin
      LBundle := AIntent.getBundleExtra(StringToJString('gcm'));
      if LBundle = nil then
        LBundle := AIntent.getExtras();

      if LBundle <> nil then
        ProcessBundle(LBundle);
    end;
  end;

var
  InputIntent: JIntent;
begin
  if M is TMessageReceivedNotification then
  begin
    InputIntent := TMessageReceivedNotification(M).Value;
    if IsIntentWithNotification(InputIntent) then
      ProcessIntent(InputIntent);
  end;
end;

{ TFMXPushNotificationAndroid }

function TFirebasePushServiceNotification.GetDataObject: TJSONObject;
var
  LValue: TJSONValue;
begin
  // The message /can/ be prefaced with "gcm", but this is not required
  Result := FRawData;  // take raw JSON as default
  if not GetDataKey.IsEmpty and (FRawData <> nil) then
  begin
    LValue := FRawData.Values[GetDataKey];
    if LValue <> nil then
      Result := LValue as TJSONObject;
  end;
end;

constructor TFirebasePushServiceNotification.Create(const ABundle: JBundle);
var
  LJSONObject: TJSONObject;
  LIterator: JIterator;
  LValue: JString;
  LKey: JString;
begin
  LJSONObject := TJSONObject.Create;
  LIterator := ABundle.KeySet.iterator;
  while LIterator.hasNext do
  begin
    LKey := LIterator.next.toString;
    LValue := ABundle.&get(LKey).ToString;
    LJSONObject.AddPair(JStringToString(LKey), JStringToString(LValue));
  end;
  Assert(LJSONObject.Count = ABundle.keySet.size);
  FRawData := LJSONObject;
end;

function TFirebasePushServiceNotification.GetDataKey: string;
begin
  Result := 'gcm'; // Do not localize
end;

function TFirebasePushServiceNotification.GetJson: TJSONObject;
begin
  Result := FRawData;
end;

{ TFirebasePushService.TTokenTaskCompleteListener }

constructor TFirebasePushService.TTokenTaskCompleteListener.Create(const ACompleteCallback: TTaskCompleteCallback);
begin
  inherited Create;
  FCompleteCallback := ACompleteCallback;
end;

procedure TFirebasePushService.TTokenTaskCompleteListener.onComplete(task: JTask);
begin
  if Assigned(FCompleteCallback) then
    FCompleteCallback(task);
end;

{ TFirebasePushService.TAndroidPushNotificationListener }

constructor TFirebasePushService.TAndroidPushNotificationListener.Create(const AService: TFirebasePushService);
begin
  inherited Create;
  FService := AService;
end;

procedure TFirebasePushService.TAndroidPushNotificationListener.onNewTokenReceived(token: JString);
begin
  FService.FDeviceToken := JStringToString(token);
end;

procedure TFirebasePushService.TAndroidPushNotificationListener.onNotificationReceived(notification: JBundle);
var
  Intent: JIntent;
begin
  Intent := TJIntent.JavaClass.init(TJNotificationPublisher.JavaClass.ACTION_GCM_NOTIFICATION);
  Intent.putExtra(StringToJString('gcm'), notification);

  TMessageManager.DefaultManager.SendMessage(nil, TMessageReceivedNotification.Create(Intent));
end;

initialization
  RegisterPushServices;

finalization
  UnregisterPushServices;
end.
