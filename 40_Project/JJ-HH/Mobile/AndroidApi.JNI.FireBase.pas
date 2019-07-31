unit AndroidApi.JNI.FireBase;

interface

uses
  Androidapi.JNIBridge,
  Androidapi.JNI.App,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.Java.Security,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Net,
  Androidapi.JNI.Os,
  Androidapi.JNI.Util;

type
// ===== Forward declarations =====

  JAnimator = interface;//android.animation.Animator
  JAnimator_AnimatorListener = interface;//android.animation.Animator$AnimatorListener
  JAnimator_AnimatorPauseListener = interface;//android.animation.Animator$AnimatorPauseListener
  JKeyframe = interface;//android.animation.Keyframe
  JLayoutTransition = interface;//android.animation.LayoutTransition
  JLayoutTransition_TransitionListener = interface;//android.animation.LayoutTransition$TransitionListener
  JPropertyValuesHolder = interface;//android.animation.PropertyValuesHolder
  JStateListAnimator = interface;//android.animation.StateListAnimator
  JTimeInterpolator = interface;//android.animation.TimeInterpolator
  JTypeConverter = interface;//android.animation.TypeConverter
  JTypeEvaluator = interface;//android.animation.TypeEvaluator
  JValueAnimator = interface;//android.animation.ValueAnimator
  JValueAnimator_AnimatorUpdateListener = interface;//android.animation.ValueAnimator$AnimatorUpdateListener
  JStatusBarNotification = interface;//android.service.notification.StatusBarNotification
  JPathMotion = interface;//android.transition.PathMotion
  JScene = interface;//android.transition.Scene
  JTransition = interface;//android.transition.Transition
  JTransition_EpicenterCallback = interface;//android.transition.Transition$EpicenterCallback
  JTransition_TransitionListener = interface;//android.transition.Transition$TransitionListener
  JTransitionManager = interface;//android.transition.TransitionManager
  JTransitionPropagation = interface;//android.transition.TransitionPropagation
  JTransitionValues = interface;//android.transition.TransitionValues
  JInterpolator = interface;//android.view.animation.Interpolator
  JToolbar_LayoutParams = interface;//android.widget.Toolbar$LayoutParams
  Jfirebase_messaging_zza = interface;//com.google.android.gms.internal.firebase_messaging.zza
  Jzzz = interface;//com.google.android.gms.internal.firebase_messaging.zzz
  Jzzaa = interface;//com.google.android.gms.internal.firebase_messaging.zzaa
  Jzzab = interface;//com.google.android.gms.internal.firebase_messaging.zzab
  Jzzac = interface;//com.google.android.gms.internal.firebase_messaging.zzac
  Jfirebase_messaging_zzb = interface;//com.google.android.gms.internal.firebase_messaging.zzb
  Jfirebase_messaging_zzc = interface;//com.google.android.gms.internal.firebase_messaging.zzc
  Jfirebase_messaging_zzd = interface;//com.google.android.gms.internal.firebase_messaging.zzd
  Jfirebase_messaging_zze = interface;//com.google.android.gms.internal.firebase_messaging.zze
  Jfirebase_messaging_zzf = interface;//com.google.android.gms.internal.firebase_messaging.zzf
  Jfirebase_messaging_zzg = interface;//com.google.android.gms.internal.firebase_messaging.zzg
  Jfirebase_messaging_zzh = interface;//com.google.android.gms.internal.firebase_messaging.zzh
  Jfirebase_messaging_zzi = interface;//com.google.android.gms.internal.firebase_messaging.zzi
  Jzzh_zza = interface;//com.google.android.gms.internal.firebase_messaging.zzh$zza
  Jfirebase_messaging_zzj = interface;//com.google.android.gms.internal.firebase_messaging.zzj
  JReference = interface;//java.lang.ref.Reference
  JWeakReference = interface;//java.lang.ref.WeakReference
  Jfirebase_messaging_zzk = interface;//com.google.android.gms.internal.firebase_messaging.zzk
  Jfirebase_messaging_zzl = interface;//com.google.android.gms.internal.firebase_messaging.zzl
  Jfirebase_messaging_zzm = interface;//com.google.android.gms.internal.firebase_messaging.zzm
  Jfirebase_messaging_zzv = interface;//com.google.android.gms.internal.firebase_messaging.zzv
  Jfirebase_messaging_zzn = interface;//com.google.android.gms.internal.firebase_messaging.zzn
  Jfirebase_messaging_zzw = interface;//com.google.android.gms.internal.firebase_messaging.zzw
  Jfirebase_messaging_zzo = interface;//com.google.android.gms.internal.firebase_messaging.zzo
  Jzzy = interface;//com.google.android.gms.internal.firebase_messaging.zzy
  Jfirebase_messaging_zzp = interface;//com.google.android.gms.internal.firebase_messaging.zzp
  Jfirebase_messaging_zzq = interface;//com.google.android.gms.internal.firebase_messaging.zzq
  Jfirebase_messaging_zzr = interface;//com.google.android.gms.internal.firebase_messaging.zzr
  Jfirebase_messaging_zzs = interface;//com.google.android.gms.internal.firebase_messaging.zzs
  Jfirebase_messaging_zzt = interface;//com.google.android.gms.internal.firebase_messaging.zzt
  Jfirebase_messaging_zzu = interface;//com.google.android.gms.internal.firebase_messaging.zzu
  Jfirebase_messaging_zzx = interface;//com.google.android.gms.internal.firebase_messaging.zzx
  JCancellationToken = interface;//com.google.android.gms.tasks.CancellationToken
  JCancellationTokenSource = interface;//com.google.android.gms.tasks.CancellationTokenSource
  JContinuation = interface;//com.google.android.gms.tasks.Continuation
  JOnCanceledListener = interface;//com.google.android.gms.tasks.OnCanceledListener
  JOnCompleteListener = interface;//com.google.android.gms.tasks.OnCompleteListener
  JOnFailureListener = interface;//com.google.android.gms.tasks.OnFailureListener
  JOnSuccessListener = interface;//com.google.android.gms.tasks.OnSuccessListener
  JOnTokenCanceledListener = interface;//com.google.android.gms.tasks.OnTokenCanceledListener
  JRuntimeExecutionException = interface;//com.google.android.gms.tasks.RuntimeExecutionException
  JSuccessContinuation = interface;//com.google.android.gms.tasks.SuccessContinuation
  JTask = interface;//com.google.android.gms.tasks.Task
  JTaskCompletionSource = interface;//com.google.android.gms.tasks.TaskCompletionSource
  JTaskExecutors = interface;//com.google.android.gms.tasks.TaskExecutors
  JTaskExecutors_zza = interface;//com.google.android.gms.tasks.TaskExecutors$zza
  JTasks = interface;//com.google.android.gms.tasks.Tasks
  JTasks_zzb = interface;//com.google.android.gms.tasks.Tasks$zzb
  JTasks_zza = interface;//com.google.android.gms.tasks.Tasks$zza
  JTasks_zzc = interface;//com.google.android.gms.tasks.Tasks$zzc
  Jgms_tasks_zza = interface;//com.google.android.gms.tasks.zza
  Jzzb = interface;//com.google.android.gms.tasks.zzb
  Jzzq = interface;//com.google.android.gms.tasks.zzq
  Jzzc = interface;//com.google.android.gms.tasks.zzc
  Jzzd = interface;//com.google.android.gms.tasks.zzd
  Jzze = interface;//com.google.android.gms.tasks.zze
  Jzzf = interface;//com.google.android.gms.tasks.zzf
  Jzzg = interface;//com.google.android.gms.tasks.zzg
  Jzzh = interface;//com.google.android.gms.tasks.zzh
  Jzzi = interface;//com.google.android.gms.tasks.zzi
  Jzzj = interface;//com.google.android.gms.tasks.zzj
  Jzzk = interface;//com.google.android.gms.tasks.zzk
  Jzzl = interface;//com.google.android.gms.tasks.zzl
  Jzzm = interface;//com.google.android.gms.tasks.zzm
  Jzzn = interface;//com.google.android.gms.tasks.zzn
  Jzzo = interface;//com.google.android.gms.tasks.zzo
  Jzzp = interface;//com.google.android.gms.tasks.zzp
  Jzzr = interface;//com.google.android.gms.tasks.zzr
  Jzzs = interface;//com.google.android.gms.tasks.zzs
  Jzzt = interface;//com.google.android.gms.tasks.zzt
  Jzzu = interface;//com.google.android.gms.tasks.zzu
  //Jzzu_zza = interface;//com.google.android.gms.tasks.zzu$zza
  Jzzv = interface;//com.google.android.gms.tasks.zzv
  Jzzw = interface;//com.google.android.gms.tasks.zzw
  Jzzx = interface;//com.google.android.gms.tasks.zzx
  Jfirebase_BuildConfig = interface;//com.google.firebase.BuildConfig
  JDataCollectionDefaultChange = interface;//com.google.firebase.DataCollectionDefaultChange
  JFirebaseApp = interface;//com.google.firebase.FirebaseApp
  JFirebaseApp_1 = interface;//com.google.firebase.FirebaseApp$1
  JFirebaseApp_BackgroundStateChangeListener = interface;//com.google.firebase.FirebaseApp$BackgroundStateChangeListener
  //JFirebaseApp_GlobalBackgroundStateListener = interface;//com.google.firebase.FirebaseApp$GlobalBackgroundStateListener
  JFirebaseApp_IdTokenListener = interface;//com.google.firebase.FirebaseApp$IdTokenListener
  JFirebaseApp_IdTokenListenersCountChangedListener = interface;//com.google.firebase.FirebaseApp$IdTokenListenersCountChangedListener
  JFirebaseApp_UiExecutor = interface;//com.google.firebase.FirebaseApp$UiExecutor
  JFirebaseApp_UserUnlockReceiver = interface;//com.google.firebase.FirebaseApp$UserUnlockReceiver
  JFirebaseAppLifecycleListener = interface;//com.google.firebase.FirebaseAppLifecycleListener
  JFirebaseError = interface;//com.google.firebase.FirebaseError
  //JFirebaseNetworkException = interface;//com.google.firebase.FirebaseNetworkException
  JFirebaseOptions = interface;//com.google.firebase.FirebaseOptions
  JFirebaseOptions_1 = interface;//com.google.firebase.FirebaseOptions$1
  JFirebaseOptions_Builder = interface;//com.google.firebase.FirebaseOptions$Builder
  //JFirebaseTooManyRequestsException = interface;//com.google.firebase.FirebaseTooManyRequestsException
  JPublicApi = interface;//com.google.firebase.annotations.PublicApi
  //JFirebaseAuthException = interface;//com.google.firebase.auth.FirebaseAuthException
  JGetTokenResult = interface;//com.google.firebase.auth.GetTokenResult
  JComponentContainer = interface;//com.google.firebase.components.ComponentContainer
  JAbstractComponentContainer = interface;//com.google.firebase.components.AbstractComponentContainer
  JComponent = interface;//com.google.firebase.components.Component
  JComponentFactory = interface;//com.google.firebase.components.ComponentFactory
  JLambda_1 = interface;//com.google.firebase.components.Component$$Lambda$1
  JLambda_2 = interface;//com.google.firebase.components.Component$$Lambda$2
  JLambda_3 = interface;//com.google.firebase.components.Component$$Lambda$3
  JComponent_1 = interface;//com.google.firebase.components.Component$1
  JComponent_Builder = interface;//com.google.firebase.components.Component$Builder
  JComponentDiscovery = interface;//com.google.firebase.components.ComponentDiscovery
  JComponentDiscovery_1 = interface;//com.google.firebase.components.ComponentDiscovery$1
  JComponentDiscovery_RegistrarNameRetriever = interface;//com.google.firebase.components.ComponentDiscovery$RegistrarNameRetriever
  JComponentDiscovery_MetadataRegistrarNameRetriever = interface;//com.google.firebase.components.ComponentDiscovery$MetadataRegistrarNameRetriever
  JComponentDiscoveryService = interface;//com.google.firebase.components.ComponentDiscoveryService
  JComponentRegistrar = interface;//com.google.firebase.components.ComponentRegistrar
  JComponentRuntime = interface;//com.google.firebase.components.ComponentRuntime
  Jinject_Provider = interface;//com.google.firebase.inject.Provider
  J_Lambda_1 = interface;//com.google.firebase.components.ComponentRuntime$$Lambda$1
  JLambda_4 = interface;//com.google.firebase.components.ComponentRuntime$$Lambda$4
  JLambda_5 = interface;//com.google.firebase.components.ComponentRuntime$$Lambda$5
  JCycleDetector = interface;//com.google.firebase.components.CycleDetector
  JCycleDetector_1 = interface;//com.google.firebase.components.CycleDetector$1
  JCycleDetector_ComponentNode = interface;//com.google.firebase.components.CycleDetector$ComponentNode
  JCycleDetector_Dep = interface;//com.google.firebase.components.CycleDetector$Dep
  JDependency = interface;//com.google.firebase.components.Dependency
  JDependencyException = interface;//com.google.firebase.components.DependencyException
  JDependencyCycleException = interface;//com.google.firebase.components.DependencyCycleException
  JSubscriber = interface;//com.google.firebase.events.Subscriber
  JEventBus = interface;//com.google.firebase.components.EventBus
  JEventBus__Lambda_1 = interface;//com.google.firebase.components.EventBus$$Lambda$1
  JLazy = interface;//com.google.firebase.components.Lazy
  JMissingDependencyException = interface;//com.google.firebase.components.MissingDependencyException
  JRestrictedComponentContainer = interface;//com.google.firebase.components.RestrictedComponentContainer
  JPublisher = interface;//com.google.firebase.events.Publisher
  JRestrictedComponentContainer_RestrictedPublisher = interface;//com.google.firebase.components.RestrictedComponentContainer$RestrictedPublisher
  JEvent = interface;//com.google.firebase.events.Event
  JEventHandler = interface;//com.google.firebase.events.EventHandler
  JFirebaseInstanceId = interface;//com.google.firebase.iid.FirebaseInstanceId
  JFirebaseInstanceId_zza = interface;//com.google.firebase.iid.FirebaseInstanceId$zza
  //JFirebaseInstanceIdReceiver = interface;//com.google.firebase.iid.FirebaseInstanceIdReceiver
  Jiid_zzb = interface;//com.google.firebase.iid.zzb
  JFirebaseInstanceIdService = interface;//com.google.firebase.iid.FirebaseInstanceIdService
  JInstanceIdResult = interface;//com.google.firebase.iid.InstanceIdResult
  JMessagingChannel = interface;//com.google.firebase.iid.MessagingChannel
  JRegistrar = interface;//com.google.firebase.iid.Registrar
  //JRegistrar_zza = interface;//com.google.firebase.iid.Registrar$zza
  Jiid_zza = interface;//com.google.firebase.iid.zza
  Jiid_zzaa = interface;//com.google.firebase.iid.zzaa
  Jiid_zzab = interface;//com.google.firebase.iid.zzab
  Jiid_zzac = interface;//com.google.firebase.iid.zzac
  Jzzad = interface;//com.google.firebase.iid.zzad
  Jzzae = interface;//com.google.firebase.iid.zzae
  Jzzaf = interface;//com.google.firebase.iid.zzaf
  Jzzag = interface;//com.google.firebase.iid.zzag
  Jzzah = interface;//com.google.firebase.iid.zzah
  Jzzai = interface;//com.google.firebase.iid.zzai
  Jzzak = interface;//com.google.firebase.iid.zzak
  Jzzaj = interface;//com.google.firebase.iid.zzaj
  Jzzal = interface;//com.google.firebase.iid.zzal
  Jzzam = interface;//com.google.firebase.iid.zzam
  Jzzan = interface;//com.google.firebase.iid.zzan
  Jzzao = interface;//com.google.firebase.iid.zzao
  Jzzap = interface;//com.google.firebase.iid.zzap
  Jzzaq = interface;//com.google.firebase.iid.zzaq
  Jzzar = interface;//com.google.firebase.iid.zzar
  Jzzas = interface;//com.google.firebase.iid.zzas
  Jiid_zzat = interface;//com.google.firebase.iid.zzat
  Jzzau = interface;//com.google.firebase.iid.zzau
  Jzzav = interface;//com.google.firebase.iid.zzav
  Jzzaw = interface;//com.google.firebase.iid.zzaw
  Jzzax = interface;//com.google.firebase.iid.zzax
  Jzzay = interface;//com.google.firebase.iid.zzay
  Jzzaz = interface;//com.google.firebase.iid.zzaz
  Jzzba = interface;//com.google.firebase.iid.zzba
  Jiid_zzc = interface;//com.google.firebase.iid.zzc
  Jiid_zzd = interface;//com.google.firebase.iid.zzd
  Jiid_zze = interface;//com.google.firebase.iid.zze
  Jiid_zzf = interface;//com.google.firebase.iid.zzf
  Jiid_zzg = interface;//com.google.firebase.iid.zzg
  Jiid_zzh = interface;//com.google.firebase.iid.zzh
  Jiid_zzi = interface;//com.google.firebase.iid.zzi
  Jiid_zzj = interface;//com.google.firebase.iid.zzj
  Jiid_zzk = interface;//com.google.firebase.iid.zzk
  Jiid_zzl = interface;//com.google.firebase.iid.zzl
  Jzzl_zza = interface;//com.google.firebase.iid.zzl$zza
  Jiid_zzm = interface;//com.google.firebase.iid.zzm
  Jiid_zzn = interface;//com.google.firebase.iid.zzn
  Jiid_zzo = interface;//com.google.firebase.iid.zzo
  Jiid_zzp = interface;//com.google.firebase.iid.zzp
  Jiid_zzq = interface;//com.google.firebase.iid.zzq
  Jiid_zzr = interface;//com.google.firebase.iid.zzr
  Jiid_zzs = interface;//com.google.firebase.iid.zzs
  Jiid_zzt = interface;//com.google.firebase.iid.zzt
  Jiid_zzu = interface;//com.google.firebase.iid.zzu
  Jiid_zzv = interface;//com.google.firebase.iid.zzv
  Jiid_zzw = interface;//com.google.firebase.iid.zzw
  Jiid_zzx = interface;//com.google.firebase.iid.zzx
  Jiid_zzy = interface;//com.google.firebase.iid.zzy
  Jiid_zzz = interface;//com.google.firebase.iid.zzz
  JDefaultIdTokenListenersCountChangedListener = interface;//com.google.firebase.internal.DefaultIdTokenListenersCountChangedListener
  JFirebaseAppHelper = interface;//com.google.firebase.internal.FirebaseAppHelper
  JInternalTokenProvider = interface;//com.google.firebase.internal.InternalTokenProvider
  JInternalTokenResult = interface;//com.google.firebase.internal.InternalTokenResult
  //JFirebaseNoSignedInUserException = interface;//com.google.firebase.internal.api.FirebaseNoSignedInUserException
  JFirebaseMessaging = interface;//com.google.firebase.messaging.FirebaseMessaging
  JFirebaseMessagingService = interface;//com.google.firebase.messaging.FirebaseMessagingService
  JMessagingAnalytics = interface;//com.google.firebase.messaging.MessagingAnalytics
  //JRemoteMessage = interface;//com.google.firebase.messaging.RemoteMessage
  JRemoteMessage_Builder = interface;//com.google.firebase.messaging.RemoteMessage$Builder
  JRemoteMessage_MessagePriority = interface;//com.google.firebase.messaging.RemoteMessage$MessagePriority
  JRemoteMessage_Notification = interface;//com.google.firebase.messaging.RemoteMessage$Notification
  JSendException = interface;//com.google.firebase.messaging.SendException
  Jmessaging_zza = interface;//com.google.firebase.messaging.zza
  Jmessaging_zzb = interface;//com.google.firebase.messaging.zzb
  Jmessaging_zzc = interface;//com.google.firebase.messaging.zzc
  JLibraryVersion = interface;//com.google.firebase.platforminfo.LibraryVersion
  JAutoValue_LibraryVersion = interface;//com.google.firebase.platforminfo.AutoValue_LibraryVersion
  JUserAgentPublisher = interface;//com.google.firebase.platforminfo.UserAgentPublisher
  JDefaultUserAgentPublisher = interface;//com.google.firebase.platforminfo.DefaultUserAgentPublisher
  JDefaultUserAgentPublisher__Lambda_1 = interface;//com.google.firebase.platforminfo.DefaultUserAgentPublisher$$Lambda$1
  JGlobalLibraryVersionRegistrar = interface;//com.google.firebase.platforminfo.GlobalLibraryVersionRegistrar
  JLibraryVersionComponent = interface;//com.google.firebase.platforminfo.LibraryVersionComponent
  JFirebaseInitProvider = interface;//com.google.firebase.provider.FirebaseInitProvider
  JReferenceQueue = interface;//java.lang.ref.ReferenceQueue
  JKeyPair = interface;//java.security.KeyPair
  JScheduledExecutorService = interface;//java.util.concurrent.ScheduledExecutorService

// ===== Interface declarations =====

  JAnimatorClass = interface(JObjectClass)
    ['{3F76A5DF-389E-4BD3-9861-04C5B00CEADE}']
    {class} function init: JAnimator; cdecl;
  end;

  [JavaSignature('android/animation/Animator')]
  JAnimator = interface(JObject)
    ['{FA13E56D-1B6D-4A3D-8327-9E5BA785CF21}']
    procedure addListener(listener: JAnimator_AnimatorListener); cdecl;
    procedure addPauseListener(listener: JAnimator_AnimatorPauseListener); cdecl;
    procedure cancel; cdecl;
    function clone: JAnimator; cdecl;
    procedure &end; cdecl;
    function getDuration: Int64; cdecl;
    function getInterpolator: JTimeInterpolator; cdecl;
    function getListeners: JArrayList; cdecl;
    function getStartDelay: Int64; cdecl;
    function isPaused: Boolean; cdecl;
    function isRunning: Boolean; cdecl;
    function isStarted: Boolean; cdecl;
    procedure pause; cdecl;
    procedure removeAllListeners; cdecl;
    procedure removeListener(listener: JAnimator_AnimatorListener); cdecl;
    procedure removePauseListener(listener: JAnimator_AnimatorPauseListener); cdecl;
    procedure resume; cdecl;
    function setDuration(duration: Int64): JAnimator; cdecl;
    procedure setInterpolator(value: JTimeInterpolator); cdecl;
    procedure setStartDelay(startDelay: Int64); cdecl;
    procedure setTarget(target: JObject); cdecl;
    procedure setupEndValues; cdecl;
    procedure setupStartValues; cdecl;
    procedure start; cdecl;
  end;
  TJAnimator = class(TJavaGenericImport<JAnimatorClass, JAnimator>) end;

  JAnimator_AnimatorListenerClass = interface(IJavaClass)
    ['{5ED6075A-B997-469C-B8D9-0AA8FB7E4798}']
  end;

  [JavaSignature('android/animation/Animator$AnimatorListener')]
  JAnimator_AnimatorListener = interface(IJavaInstance)
    ['{E2DE8DD6-628B-4D84-AA46-8A1E3F00FF13}']
    procedure onAnimationCancel(animation: JAnimator); cdecl;
    procedure onAnimationEnd(animation: JAnimator); cdecl;
    procedure onAnimationRepeat(animation: JAnimator); cdecl;
    procedure onAnimationStart(animation: JAnimator); cdecl;
  end;
  TJAnimator_AnimatorListener = class(TJavaGenericImport<JAnimator_AnimatorListenerClass, JAnimator_AnimatorListener>) end;

  JAnimator_AnimatorPauseListenerClass = interface(IJavaClass)
    ['{CB0DC3F0-63BC-4284-ADD0-2ED367AE11E5}']
  end;

  [JavaSignature('android/animation/Animator$AnimatorPauseListener')]
  JAnimator_AnimatorPauseListener = interface(IJavaInstance)
    ['{43C9C106-65EA-4A7D-A958-FAB9E43FA4A6}']
    procedure onAnimationPause(animation: JAnimator); cdecl;
    procedure onAnimationResume(animation: JAnimator); cdecl;
  end;
  TJAnimator_AnimatorPauseListener = class(TJavaGenericImport<JAnimator_AnimatorPauseListenerClass, JAnimator_AnimatorPauseListener>) end;

  JKeyframeClass = interface(JObjectClass)
    ['{D383116E-5CCF-48D8-9EA1-B26FBF24BA39}']
    {class} function init: JKeyframe; cdecl;
    {class} function ofFloat(fraction: Single; value: Single): JKeyframe; cdecl; overload;
    {class} function ofFloat(fraction: Single): JKeyframe; cdecl; overload;
    {class} function ofInt(fraction: Single; value: Integer): JKeyframe; cdecl; overload;
    {class} function ofInt(fraction: Single): JKeyframe; cdecl; overload;
    {class} function ofObject(fraction: Single; value: JObject): JKeyframe; cdecl; overload;
    {class} function ofObject(fraction: Single): JKeyframe; cdecl; overload;
  end;

  [JavaSignature('android/animation/Keyframe')]
  JKeyframe = interface(JObject)
    ['{9D0687A4-669E-440F-8290-154739405019}']
    function clone: JKeyframe; cdecl;
    function getFraction: Single; cdecl;
    function getInterpolator: JTimeInterpolator; cdecl;
    function getType: Jlang_Class; cdecl;
    function getValue: JObject; cdecl;
    function hasValue: Boolean; cdecl;
    procedure setFraction(fraction: Single); cdecl;
    procedure setInterpolator(interpolator: JTimeInterpolator); cdecl;
    procedure setValue(value: JObject); cdecl;
  end;
  TJKeyframe = class(TJavaGenericImport<JKeyframeClass, JKeyframe>) end;

  JLayoutTransitionClass = interface(JObjectClass)
    ['{433C5359-0A96-4796-AD7B-8084EF7EF7C4}']
    {class} function _GetAPPEARING: Integer; cdecl;
    {class} function _GetCHANGE_APPEARING: Integer; cdecl;
    {class} function _GetCHANGE_DISAPPEARING: Integer; cdecl;
    {class} function _GetCHANGING: Integer; cdecl;
    {class} function _GetDISAPPEARING: Integer; cdecl;
    {class} function init: JLayoutTransition; cdecl;
    {class} property APPEARING: Integer read _GetAPPEARING;
    {class} property CHANGE_APPEARING: Integer read _GetCHANGE_APPEARING;
    {class} property CHANGE_DISAPPEARING: Integer read _GetCHANGE_DISAPPEARING;
    {class} property CHANGING: Integer read _GetCHANGING;
    {class} property DISAPPEARING: Integer read _GetDISAPPEARING;
  end;

  [JavaSignature('android/animation/LayoutTransition')]
  JLayoutTransition = interface(JObject)
    ['{42450BEE-EBF2-4954-B9B7-F8DAE7DF0EC1}']
    procedure addChild(parent: JViewGroup; child: JView); cdecl;
    procedure addTransitionListener(listener: JLayoutTransition_TransitionListener); cdecl;
    procedure disableTransitionType(transitionType: Integer); cdecl;
    procedure enableTransitionType(transitionType: Integer); cdecl;
    function getAnimator(transitionType: Integer): JAnimator; cdecl;
    function getDuration(transitionType: Integer): Int64; cdecl;
    function getInterpolator(transitionType: Integer): JTimeInterpolator; cdecl;
    function getStagger(transitionType: Integer): Int64; cdecl;
    function getStartDelay(transitionType: Integer): Int64; cdecl;
    function getTransitionListeners: JList; cdecl;
    procedure hideChild(parent: JViewGroup; child: JView); cdecl; overload;//Deprecated
    procedure hideChild(parent: JViewGroup; child: JView; newVisibility: Integer); cdecl; overload;
    function isChangingLayout: Boolean; cdecl;
    function isRunning: Boolean; cdecl;
    function isTransitionTypeEnabled(transitionType: Integer): Boolean; cdecl;
    procedure removeChild(parent: JViewGroup; child: JView); cdecl;
    procedure removeTransitionListener(listener: JLayoutTransition_TransitionListener); cdecl;
    procedure setAnimateParentHierarchy(animateParentHierarchy: Boolean); cdecl;
    procedure setAnimator(transitionType: Integer; animator: JAnimator); cdecl;
    procedure setDuration(duration: Int64); cdecl; overload;
    procedure setDuration(transitionType: Integer; duration: Int64); cdecl; overload;
    procedure setInterpolator(transitionType: Integer; interpolator: JTimeInterpolator); cdecl;
    procedure setStagger(transitionType: Integer; duration: Int64); cdecl;
    procedure setStartDelay(transitionType: Integer; delay: Int64); cdecl;
    procedure showChild(parent: JViewGroup; child: JView); cdecl; overload;//Deprecated
    procedure showChild(parent: JViewGroup; child: JView; oldVisibility: Integer); cdecl; overload;
  end;
  TJLayoutTransition = class(TJavaGenericImport<JLayoutTransitionClass, JLayoutTransition>) end;

  JLayoutTransition_TransitionListenerClass = interface(IJavaClass)
    ['{9FA6F1EC-8EDB-4A05-AF58-B55A525AE114}']
  end;

  [JavaSignature('android/animation/LayoutTransition$TransitionListener')]
  JLayoutTransition_TransitionListener = interface(IJavaInstance)
    ['{0FBE048F-FCDA-4692-B6F1-DE0F07FAE885}']
    procedure endTransition(transition: JLayoutTransition; container: JViewGroup; view: JView; transitionType: Integer); cdecl;
    procedure startTransition(transition: JLayoutTransition; container: JViewGroup; view: JView; transitionType: Integer); cdecl;
  end;
  TJLayoutTransition_TransitionListener = class(TJavaGenericImport<JLayoutTransition_TransitionListenerClass, JLayoutTransition_TransitionListener>) end;

  JPropertyValuesHolderClass = interface(JObjectClass)
    ['{36C77AFF-9C3F-42B6-88F3-320FE8CF9B25}']
    {class} function ofMultiFloat(propertyName: JString; values: TJavaBiArray<Single>): JPropertyValuesHolder; cdecl; overload;
    {class} function ofMultiFloat(propertyName: JString; path: JPath): JPropertyValuesHolder; cdecl; overload;
    {class} function ofMultiInt(propertyName: JString; values: TJavaBiArray<Integer>): JPropertyValuesHolder; cdecl; overload;
    {class} function ofMultiInt(propertyName: JString; path: JPath): JPropertyValuesHolder; cdecl; overload;
    {class} function ofObject(propertyName: JString; converter: JTypeConverter; path: JPath): JPropertyValuesHolder; cdecl; overload;
    {class} function ofObject(property_: JProperty; converter: JTypeConverter; path: JPath): JPropertyValuesHolder; cdecl; overload;
  end;

  [JavaSignature('android/animation/PropertyValuesHolder')]
  JPropertyValuesHolder = interface(JObject)
    ['{12B4ABFD-CBCA-4636-AF2D-C386EF895DC3}']
    function clone: JPropertyValuesHolder; cdecl;
    function getPropertyName: JString; cdecl;
    procedure setConverter(converter: JTypeConverter); cdecl;
    procedure setEvaluator(evaluator: JTypeEvaluator); cdecl;
    procedure setProperty(property_: JProperty); cdecl;
    procedure setPropertyName(propertyName: JString); cdecl;
    function toString: JString; cdecl;
  end;
  TJPropertyValuesHolder = class(TJavaGenericImport<JPropertyValuesHolderClass, JPropertyValuesHolder>) end;

  JStateListAnimatorClass = interface(JObjectClass)
    ['{109E4067-E218-47B1-93EB-65B8916A98D8}']
    {class} function init: JStateListAnimator; cdecl;
  end;

  [JavaSignature('android/animation/StateListAnimator')]
  JStateListAnimator = interface(JObject)
    ['{CA2A9587-26AA-4DC2-8DFF-A1305A37608F}']
    procedure addState(specs: TJavaArray<Integer>; animator: JAnimator); cdecl;
    function clone: JStateListAnimator; cdecl;
    procedure jumpToCurrentState; cdecl;
  end;
  TJStateListAnimator = class(TJavaGenericImport<JStateListAnimatorClass, JStateListAnimator>) end;

  JTimeInterpolatorClass = interface(IJavaClass)
    ['{1E682A1C-9102-461D-A3CA-5596683F1D66}']
  end;

  [JavaSignature('android/animation/TimeInterpolator')]
  JTimeInterpolator = interface(IJavaInstance)
    ['{639F8A83-7D9B-49AF-A19E-96B27E46D2AB}']
    function getInterpolation(input: Single): Single; cdecl;
  end;
  TJTimeInterpolator = class(TJavaGenericImport<JTimeInterpolatorClass, JTimeInterpolator>) end;

  JTypeConverterClass = interface(JObjectClass)
    ['{BE2DD177-6D79-4B0C-B4F5-4E4CD9D7436D}']
    {class} function init(fromClass: Jlang_Class; toClass: Jlang_Class): JTypeConverter; cdecl;
  end;

  [JavaSignature('android/animation/TypeConverter')]
  JTypeConverter = interface(JObject)
    ['{BFEA4116-0766-4AD9-AA8F-4C15A583EB2E}']
    function convert(value: JObject): JObject; cdecl;
  end;
  TJTypeConverter = class(TJavaGenericImport<JTypeConverterClass, JTypeConverter>) end;

  JTypeEvaluatorClass = interface(IJavaClass)
    ['{15B67CAF-6F50-4AA3-A88F-C5AF78D62FD4}']
  end;

  [JavaSignature('android/animation/TypeEvaluator')]
  JTypeEvaluator = interface(IJavaInstance)
    ['{F436383D-6F44-40D8-ACDD-9057777691FC}']
    function evaluate(fraction: Single; startValue: JObject; endValue: JObject): JObject; cdecl;
  end;
  TJTypeEvaluator = class(TJavaGenericImport<JTypeEvaluatorClass, JTypeEvaluator>) end;

  JValueAnimatorClass = interface(JAnimatorClass)
    ['{FF3B71ED-5A33-45B0-8500-7672B0B98E2C}']
    {class} function _GetINFINITE: Integer; cdecl;
    {class} function _GetRESTART: Integer; cdecl;
    {class} function _GetREVERSE: Integer; cdecl;
    {class} function init: JValueAnimator; cdecl;
    {class} function getFrameDelay: Int64; cdecl;
    {class} procedure setFrameDelay(frameDelay: Int64); cdecl;
    {class} property INFINITE: Integer read _GetINFINITE;
    {class} property RESTART: Integer read _GetRESTART;
    {class} property REVERSE: Integer read _GetREVERSE;
  end;

  [JavaSignature('android/animation/ValueAnimator')]
  JValueAnimator = interface(JAnimator)
    ['{70F92B14-EFD4-4DC7-91DE-6617417AE194}']
    procedure addUpdateListener(listener: JValueAnimator_AnimatorUpdateListener); cdecl;
    procedure cancel; cdecl;
    function clone: JValueAnimator; cdecl;
    procedure &end; cdecl;
    function getAnimatedFraction: Single; cdecl;
    function getAnimatedValue: JObject; cdecl; overload;
    function getAnimatedValue(propertyName: JString): JObject; cdecl; overload;
    function getCurrentPlayTime: Int64; cdecl;
    function getDuration: Int64; cdecl;
    function getInterpolator: JTimeInterpolator; cdecl;
    function getRepeatCount: Integer; cdecl;
    function getRepeatMode: Integer; cdecl;
    function getStartDelay: Int64; cdecl;
    function getValues: TJavaObjectArray<JPropertyValuesHolder>; cdecl;
    function isRunning: Boolean; cdecl;
    function isStarted: Boolean; cdecl;
    procedure pause; cdecl;
    procedure removeAllUpdateListeners; cdecl;
    procedure removeUpdateListener(listener: JValueAnimator_AnimatorUpdateListener); cdecl;
    procedure resume; cdecl;
    procedure reverse; cdecl;
    procedure setCurrentFraction(fraction: Single); cdecl;
    procedure setCurrentPlayTime(playTime: Int64); cdecl;
    function setDuration(duration: Int64): JValueAnimator; cdecl;
    procedure setEvaluator(value: JTypeEvaluator); cdecl;
    procedure setInterpolator(value: JTimeInterpolator); cdecl;
    procedure setRepeatCount(value: Integer); cdecl;
    procedure setRepeatMode(value: Integer); cdecl;
    procedure setStartDelay(startDelay: Int64); cdecl;
    procedure start; cdecl;
    function toString: JString; cdecl;
  end;
  TJValueAnimator = class(TJavaGenericImport<JValueAnimatorClass, JValueAnimator>) end;

  JValueAnimator_AnimatorUpdateListenerClass = interface(IJavaClass)
    ['{9CA50CBF-4462-4445-82CD-13CE985E2DE4}']
  end;

  [JavaSignature('android/animation/ValueAnimator$AnimatorUpdateListener')]
  JValueAnimator_AnimatorUpdateListener = interface(IJavaInstance)
    ['{0F883491-52EF-4A40-B7D2-FC23E11E46FE}']
    procedure onAnimationUpdate(animation: JValueAnimator); cdecl;
  end;
  TJValueAnimator_AnimatorUpdateListener = class(TJavaGenericImport<JValueAnimator_AnimatorUpdateListenerClass, JValueAnimator_AnimatorUpdateListener>) end;

  JStatusBarNotificationClass = interface(JObjectClass)
    ['{23B8DD57-D1D2-4DE1-B1BA-1E720B0596D5}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init(pkg: JString; opPkg: JString; id: Integer; tag: JString; uid: Integer; initialPid: Integer; score: Integer; notification: JNotification; user: JUserHandle; postTime: Int64): JStatusBarNotification; cdecl; overload;
    {class} function init(in_: JParcel): JStatusBarNotification; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('android/service/notification/StatusBarNotification')]
  JStatusBarNotification = interface(JObject)
    ['{EAE5EBE9-22B1-42CE-A988-FC57161B85FB}']
    function clone: JStatusBarNotification; cdecl;
    function describeContents: Integer; cdecl;
    function getGroupKey: JString; cdecl;
    function getId: Integer; cdecl;
    function getKey: JString; cdecl;
    function getNotification: JNotification; cdecl;
    function getPackageName: JString; cdecl;
    function getPostTime: Int64; cdecl;
    function getTag: JString; cdecl;
    function getUser: JUserHandle; cdecl;
    function getUserId: Integer; cdecl;//Deprecated
    function isClearable: Boolean; cdecl;
    function isOngoing: Boolean; cdecl;
    function toString: JString; cdecl;
    procedure writeToParcel(out_: JParcel; flags: Integer); cdecl;
  end;
  TJStatusBarNotification = class(TJavaGenericImport<JStatusBarNotificationClass, JStatusBarNotification>) end;

  JPathMotionClass = interface(JObjectClass)
    ['{E1CD1A94-115C-492C-A490-37F0E72956EB}']
    {class} function init: JPathMotion; cdecl; overload;
    {class} function init(context: JContext; attrs: JAttributeSet): JPathMotion; cdecl; overload;
  end;

  [JavaSignature('android/transition/PathMotion')]
  JPathMotion = interface(JObject)
    ['{BDC08353-C9FB-42D7-97CC-C35837D2F536}']
    function getPath(startX: Single; startY: Single; endX: Single; endY: Single): JPath; cdecl;
  end;
  TJPathMotion = class(TJavaGenericImport<JPathMotionClass, JPathMotion>) end;

  JSceneClass = interface(JObjectClass)
    ['{8B9120CA-AEEA-4DE3-BDC9-15CFD23A7B07}']
    {class} function init(sceneRoot: JViewGroup): JScene; cdecl; overload;
    {class} function init(sceneRoot: JViewGroup; layout: JView): JScene; cdecl; overload;
    {class} function init(sceneRoot: JViewGroup; layout: JViewGroup): JScene; cdecl; overload;//Deprecated
    {class} function getSceneForLayout(sceneRoot: JViewGroup; layoutId: Integer; context: JContext): JScene; cdecl;
  end;

  [JavaSignature('android/transition/Scene')]
  JScene = interface(JObject)
    ['{85A60B99-5837-4F1F-A344-C627DD586B82}']
    procedure enter; cdecl;
    procedure exit; cdecl;
    function getSceneRoot: JViewGroup; cdecl;
    procedure setEnterAction(action: JRunnable); cdecl;
    procedure setExitAction(action: JRunnable); cdecl;
  end;
  TJScene = class(TJavaGenericImport<JSceneClass, JScene>) end;

  JTransitionClass = interface(JObjectClass)
    ['{60EC06BC-8F7A-4416-A04B-5B57987EB18E}']
    {class} function _GetMATCH_ID: Integer; cdecl;
    {class} function _GetMATCH_INSTANCE: Integer; cdecl;
    {class} function _GetMATCH_ITEM_ID: Integer; cdecl;
    {class} function _GetMATCH_NAME: Integer; cdecl;
    {class} function init: JTransition; cdecl; overload;
    {class} function init(context: JContext; attrs: JAttributeSet): JTransition; cdecl; overload;
    {class} property MATCH_ID: Integer read _GetMATCH_ID;
    {class} property MATCH_INSTANCE: Integer read _GetMATCH_INSTANCE;
    {class} property MATCH_ITEM_ID: Integer read _GetMATCH_ITEM_ID;
    {class} property MATCH_NAME: Integer read _GetMATCH_NAME;
  end;

  [JavaSignature('android/transition/Transition')]
  JTransition = interface(JObject)
    ['{C2F8200F-1C83-40AE-8C5B-C0C8BFF17F88}']
    function addListener(listener: JTransition_TransitionListener): JTransition; cdecl;
    function addTarget(targetId: Integer): JTransition; cdecl; overload;
    function addTarget(targetName: JString): JTransition; cdecl; overload;
    function addTarget(targetType: Jlang_Class): JTransition; cdecl; overload;
    function addTarget(target: JView): JTransition; cdecl; overload;
    function canRemoveViews: Boolean; cdecl;
    procedure captureEndValues(transitionValues: JTransitionValues); cdecl;
    procedure captureStartValues(transitionValues: JTransitionValues); cdecl;
    function clone: JTransition; cdecl;
    function createAnimator(sceneRoot: JViewGroup; startValues: JTransitionValues; endValues: JTransitionValues): JAnimator; cdecl;
    function excludeChildren(targetId: Integer; exclude: Boolean): JTransition; cdecl; overload;
    function excludeChildren(target: JView; exclude: Boolean): JTransition; cdecl; overload;
    function excludeChildren(type_: Jlang_Class; exclude: Boolean): JTransition; cdecl; overload;
    function excludeTarget(targetId: Integer; exclude: Boolean): JTransition; cdecl; overload;
    function excludeTarget(targetName: JString; exclude: Boolean): JTransition; cdecl; overload;
    function excludeTarget(target: JView; exclude: Boolean): JTransition; cdecl; overload;
    function excludeTarget(type_: Jlang_Class; exclude: Boolean): JTransition; cdecl; overload;
    function getDuration: Int64; cdecl;
    function getEpicenter: JRect; cdecl;
    function getEpicenterCallback: JTransition_EpicenterCallback; cdecl;
    function getInterpolator: JTimeInterpolator; cdecl;
    function getName: JString; cdecl;
    function getPathMotion: JPathMotion; cdecl;
    function getPropagation: JTransitionPropagation; cdecl;
    function getStartDelay: Int64; cdecl;
    function getTargetIds: JList; cdecl;
    function getTargetNames: JList; cdecl;
    function getTargetTypes: JList; cdecl;
    function getTargets: JList; cdecl;
    function getTransitionProperties: TJavaObjectArray<JString>; cdecl;
    function getTransitionValues(view: JView; start: Boolean): JTransitionValues; cdecl;
    function isTransitionRequired(startValues: JTransitionValues; endValues: JTransitionValues): Boolean; cdecl;
    function removeListener(listener: JTransition_TransitionListener): JTransition; cdecl;
    function removeTarget(targetId: Integer): JTransition; cdecl; overload;
    function removeTarget(targetName: JString): JTransition; cdecl; overload;
    function removeTarget(target: JView): JTransition; cdecl; overload;
    function removeTarget(target: Jlang_Class): JTransition; cdecl; overload;
    function setDuration(duration: Int64): JTransition; cdecl;
    procedure setEpicenterCallback(epicenterCallback: JTransition_EpicenterCallback); cdecl;
    function setInterpolator(interpolator: JTimeInterpolator): JTransition; cdecl;
    procedure setPathMotion(pathMotion: JPathMotion); cdecl;
    procedure setPropagation(transitionPropagation: JTransitionPropagation); cdecl;
    function setStartDelay(startDelay: Int64): JTransition; cdecl;
    function toString: JString; cdecl;
  end;
  TJTransition = class(TJavaGenericImport<JTransitionClass, JTransition>) end;

  JTransition_EpicenterCallbackClass = interface(JObjectClass)
    ['{8141257A-130B-466C-A08D-AA3A00946F4C}']
    {class} function init: JTransition_EpicenterCallback; cdecl;
  end;

  [JavaSignature('android/transition/Transition$EpicenterCallback')]
  JTransition_EpicenterCallback = interface(JObject)
    ['{CE004917-266F-4076-8913-F23184824FBA}']
    function onGetEpicenter(transition: JTransition): JRect; cdecl;
  end;
  TJTransition_EpicenterCallback = class(TJavaGenericImport<JTransition_EpicenterCallbackClass, JTransition_EpicenterCallback>) end;

  JTransition_TransitionListenerClass = interface(IJavaClass)
    ['{D5083752-E8A6-46DF-BE40-AE11073C387E}']
  end;

  [JavaSignature('android/transition/Transition$TransitionListener')]
  JTransition_TransitionListener = interface(IJavaInstance)
    ['{C32BE107-6E05-4898-AF0A-FAD970D66E29}']
    procedure onTransitionCancel(transition: JTransition); cdecl;
    procedure onTransitionEnd(transition: JTransition); cdecl;
    procedure onTransitionPause(transition: JTransition); cdecl;
    procedure onTransitionResume(transition: JTransition); cdecl;
    procedure onTransitionStart(transition: JTransition); cdecl;
  end;
  TJTransition_TransitionListener = class(TJavaGenericImport<JTransition_TransitionListenerClass, JTransition_TransitionListener>) end;

  JTransitionManagerClass = interface(JObjectClass)
    ['{4160EFA0-3499-4964-817E-46497BB5B957}']
    {class} function init: JTransitionManager; cdecl;
    {class} procedure beginDelayedTransition(sceneRoot: JViewGroup); cdecl; overload;
    {class} procedure beginDelayedTransition(sceneRoot: JViewGroup; transition: JTransition); cdecl; overload;
    {class} procedure endTransitions(sceneRoot: JViewGroup); cdecl;
    {class} procedure go(scene: JScene); cdecl; overload;
    {class} procedure go(scene: JScene; transition: JTransition); cdecl; overload;
  end;

  [JavaSignature('android/transition/TransitionManager')]
  JTransitionManager = interface(JObject)
    ['{FF5E1210-1F04-4F81-9CAC-3D7A5C4E972B}']
    procedure setTransition(scene: JScene; transition: JTransition); cdecl; overload;
    procedure setTransition(fromScene: JScene; toScene: JScene; transition: JTransition); cdecl; overload;
    procedure transitionTo(scene: JScene); cdecl;
  end;
  TJTransitionManager = class(TJavaGenericImport<JTransitionManagerClass, JTransitionManager>) end;

  JTransitionPropagationClass = interface(JObjectClass)
    ['{A881388A-C877-4DD9-9BAD-1BA4F56133EE}']
    {class} function init: JTransitionPropagation; cdecl;
  end;

  [JavaSignature('android/transition/TransitionPropagation')]
  JTransitionPropagation = interface(JObject)
    ['{7595B7EF-6BCE-4281-BC67-335E2FB6C091}']
    procedure captureValues(transitionValues: JTransitionValues); cdecl;
    function getPropagationProperties: TJavaObjectArray<JString>; cdecl;
    function getStartDelay(sceneRoot: JViewGroup; transition: JTransition; startValues: JTransitionValues; endValues: JTransitionValues): Int64; cdecl;
  end;
  TJTransitionPropagation = class(TJavaGenericImport<JTransitionPropagationClass, JTransitionPropagation>) end;

  JTransitionValuesClass = interface(JObjectClass)
    ['{3BF98CFA-6A4D-4815-8D42-15E97C916D91}']
    {class} function init: JTransitionValues; cdecl;
  end;

  [JavaSignature('android/transition/TransitionValues')]
  JTransitionValues = interface(JObject)
    ['{178E09E6-D32C-48A9-ADCF-8CCEA804052A}']
    function _Getvalues: JMap; cdecl;
    function _Getview: JView; cdecl;
    procedure _Setview(Value: JView); cdecl;
    function equals(other: JObject): Boolean; cdecl;
    function hashCode: Integer; cdecl;
    function toString: JString; cdecl;
    property values: JMap read _Getvalues;
    property view: JView read _Getview write _Setview;
  end;
  TJTransitionValues = class(TJavaGenericImport<JTransitionValuesClass, JTransitionValues>) end;

  JInterpolatorClass = interface(JTimeInterpolatorClass)
    ['{A575B46A-E489-409C-807A-1B8F2BE092E8}']
  end;

  [JavaSignature('android/view/animation/Interpolator')]
  JInterpolator = interface(JTimeInterpolator)
    ['{F1082403-52DA-4AF0-B017-DAB334325FC7}']
  end;
  TJInterpolator = class(TJavaGenericImport<JInterpolatorClass, JInterpolator>) end;

  JToolbar_LayoutParamsClass = interface(JActionBar_LayoutParamsClass)
    ['{6D43796C-C163-4084-BB30-6FE68AFD7ABB}']
    {class} function init(c: JContext; attrs: JAttributeSet): JToolbar_LayoutParams; cdecl; overload;
    {class} function init(width: Integer; height: Integer): JToolbar_LayoutParams; cdecl; overload;
    {class} function init(width: Integer; height: Integer; gravity: Integer): JToolbar_LayoutParams; cdecl; overload;
    {class} function init(gravity: Integer): JToolbar_LayoutParams; cdecl; overload;
    {class} function init(source: JToolbar_LayoutParams): JToolbar_LayoutParams; cdecl; overload;
    {class} function init(source: JActionBar_LayoutParams): JToolbar_LayoutParams; cdecl; overload;
    {class} function init(source: JViewGroup_MarginLayoutParams): JToolbar_LayoutParams; cdecl; overload;
    {class} function init(source: JViewGroup_LayoutParams): JToolbar_LayoutParams; cdecl; overload;
  end;

  [JavaSignature('android/widget/Toolbar$LayoutParams')]
  JToolbar_LayoutParams = interface(JActionBar_LayoutParams)
    ['{BCD101F9-B7B7-4B2F-9460-056B3EA7B9F0}']
  end;
  TJToolbar_LayoutParams = class(TJavaGenericImport<JToolbar_LayoutParamsClass, JToolbar_LayoutParams>) end;

  Jfirebase_messaging_zzaClass = interface(IJavaClass)
    ['{259BA85F-1DC6-45B8-BAE8-8FCE71313880}']
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zza')]
  Jfirebase_messaging_zza = interface(IJavaInstance)
    ['{64B1524B-3DBF-4B7B-B1C9-C6B4982A6CC6}']
    function zza(P1: JThreadFactory; P2: Integer): JExecutorService; cdecl; overload;
    function zza(P1: Integer; P2: JThreadFactory; P3: Integer): JScheduledExecutorService; cdecl; overload;
  end;
  TJfirebase_messaging_zza = class(TJavaGenericImport<Jfirebase_messaging_zzaClass, Jfirebase_messaging_zza>) end;

  JzzzClass = interface(JObjectClass)
    ['{A04D5476-4CEC-4537-9D42-04AFB5176955}']
    {class} function init: Jzzz; cdecl;
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zzz')]
  Jzzz = interface(JObject)
    ['{5A3FB491-F99F-47F9-80F6-A2991D5B7B0E}']
    function getChannelId: JString; cdecl;
    function getSound: Jnet_Uri; cdecl;
    function getTag: JString; cdecl;
    function getTitle: JCharSequence; cdecl;
    function zzbf: JCharSequence; cdecl;
    function zzbg: JInteger; cdecl;
    function zzbh: JPendingIntent; cdecl;
    function zzbi: JPendingIntent; cdecl;
    function zzbj: JInteger; cdecl;
  end;
  TJzzz = class(TJavaGenericImport<JzzzClass, Jzzz>) end;

  JzzaaClass = interface(JzzzClass)
    ['{5BBB1610-6C43-4913-88E1-2B9277B46649}']
    {class} function init(P1: Jfirebase_messaging_zzs; P2: Jfirebase_messaging_zzq): Jzzaa; cdecl;
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zzaa')]
  Jzzaa = interface(Jzzz)
    ['{5F5EF5DE-35BD-47F8-B269-E176B787A85E}']
    function getChannelId: JString; cdecl;
    function getSound: Jnet_Uri; cdecl;
    function getTag: JString; cdecl;
    function getTitle: JCharSequence; cdecl;
    function zzbf: JCharSequence; cdecl;
    function zzbg: JInteger; cdecl;
    function zzbh: JPendingIntent; cdecl;
    function zzbi: JPendingIntent; cdecl;
    function zzbj: JInteger; cdecl;
  end;
  TJzzaa = class(TJavaGenericImport<JzzaaClass, Jzzaa>) end;

  JzzabClass = interface(JObjectClass)
    ['{19B3E617-217A-44AA-A1AE-6E3B871A5667}']
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zzab')]
  Jzzab = interface(JObject)
    ['{1621BAA4-5A4E-4F1E-8809-BFDBB641A83D}']
    function _Getid: Integer; cdecl;
    function _Gettag: JString; cdecl;
    //function _Getzzfd: JNotificationCompat_Builder; cdecl;
    property id: Integer read _Getid;
    property tag: JString read _Gettag;
    //property zzfd: JNotificationCompat_Builder read _Getzzfd;
  end;
  TJzzab = class(TJavaGenericImport<JzzabClass, Jzzab>) end;

  JzzacClass = interface(JObjectClass)
    ['{DCB356A5-7BBB-4AD3-BE12-FB5458B7A4D8}']
    {class} function zzj(P1: JBundle): Boolean; cdecl;
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zzac')]
  Jzzac = interface(JObject)
    ['{F116B5FC-839E-46E9-8C58-3E3DABBF078B}']
  end;
  TJzzac = class(TJavaGenericImport<JzzacClass, Jzzac>) end;

  Jfirebase_messaging_zzbClass = interface(JObjectClass)
    ['{26933BE1-BB4D-4053-A792-E62F05FB3F4B}']
    {class} function zza: Jfirebase_messaging_zza; cdecl;
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zzb')]
  Jfirebase_messaging_zzb = interface(JObject)
    ['{6D8EF4E3-6774-42CF-8C08-BC32B89EFB84}']
  end;
  TJfirebase_messaging_zzb = class(TJavaGenericImport<Jfirebase_messaging_zzbClass, Jfirebase_messaging_zzb>) end;

  Jfirebase_messaging_zzcClass = interface(JObjectClass)
    ['{4A4DEAC6-2B20-49FF-809C-02C5D5AE96D3}']
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zzc')]
  Jfirebase_messaging_zzc = interface(JObject)
    ['{54F787E8-AF2C-4F22-A402-E8407AE5914F}']
  end;
  TJfirebase_messaging_zzc = class(TJavaGenericImport<Jfirebase_messaging_zzcClass, Jfirebase_messaging_zzc>) end;

  Jfirebase_messaging_zzdClass = interface(Jfirebase_messaging_zzaClass)
    ['{C843B082-AC31-4726-B8C8-0F16BDDCF510}']
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zzd')]
  Jfirebase_messaging_zzd = interface(Jfirebase_messaging_zza)
    ['{CC906095-1750-48A5-886D-56A36341BF40}']
    function zza(P1: JThreadFactory; P2: Integer): JExecutorService; cdecl; overload;
    function zza(P1: Integer; P2: JThreadFactory; P3: Integer): JScheduledExecutorService; cdecl; overload;
  end;
  TJfirebase_messaging_zzd = class(TJavaGenericImport<Jfirebase_messaging_zzdClass, Jfirebase_messaging_zzd>) end;

  Jfirebase_messaging_zzeClass = interface(JObjectClass)
    ['{3FD9E500-FA4B-4318-82FE-DCCD089B1844}']
    {class} function _Getzzd: Integer; cdecl;
    {class} property zzd: Integer read _Getzzd;
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zze')]
  Jfirebase_messaging_zze = interface(JObject)
    ['{132C75B9-CCBF-4406-AE39-57F515B61CA4}']
  end;
  TJfirebase_messaging_zze = class(TJavaGenericImport<Jfirebase_messaging_zzeClass, Jfirebase_messaging_zze>) end;

  Jfirebase_messaging_zzfClass = interface(JHandlerClass)
    ['{D12E0EA4-CADA-42B9-93C9-EE479C4545A9}']
    {class} function init: Jfirebase_messaging_zzf; cdecl; overload;
    {class} function init(P1: JLooper): Jfirebase_messaging_zzf; cdecl; overload;
    {class} function init(P1: JLooper; P2: JHandler_Callback): Jfirebase_messaging_zzf; cdecl; overload;
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zzf')]
  Jfirebase_messaging_zzf = interface(JHandler)
    ['{29002810-4098-49C1-95B4-352DC2901303}']
    procedure dispatchMessage(P1: JMessage); cdecl;
  end;
  TJfirebase_messaging_zzf = class(TJavaGenericImport<Jfirebase_messaging_zzfClass, Jfirebase_messaging_zzf>) end;

  Jfirebase_messaging_zzgClass = interface(IJavaClass)
    ['{66D17036-DDC5-4CA7-92DC-39675855CF06}']
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zzg')]
  Jfirebase_messaging_zzg = interface(IJavaInstance)
    ['{F444DEC1-8545-4ABC-A80D-30D0DDC7E30A}']
  end;
  TJfirebase_messaging_zzg = class(TJavaGenericImport<Jfirebase_messaging_zzgClass, Jfirebase_messaging_zzg>) end;

  Jfirebase_messaging_zzhClass = interface(JObjectClass)
    ['{12EA0ED1-8560-4D84-A2DA-DF509D686964}']
    {class} procedure zza(P1: JThrowable; P2: JThrowable); cdecl;
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zzh')]
  Jfirebase_messaging_zzh = interface(JObject)
    ['{F78A1ED3-638F-4CEB-90BE-60B5318962BA}']
  end;
  TJfirebase_messaging_zzh = class(TJavaGenericImport<Jfirebase_messaging_zzhClass, Jfirebase_messaging_zzh>) end;

  Jfirebase_messaging_zziClass = interface(JObjectClass)
    ['{0A490BFC-4714-49DC-82D7-5A91BC4929B6}']
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zzi')]
  Jfirebase_messaging_zzi = interface(JObject)
    ['{14E856C6-1087-4A1A-8193-B9DF8665E21A}']
    procedure zza(P1: JThrowable; P2: JThrowable); cdecl;
  end;
  TJfirebase_messaging_zzi = class(TJavaGenericImport<Jfirebase_messaging_zziClass, Jfirebase_messaging_zzi>) end;

  Jzzh_zzaClass = interface(Jfirebase_messaging_zziClass)
    ['{08C28749-2FCB-4CD3-A02E-FC6A23644314}']
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zzh$zza')]
  Jzzh_zza = interface(Jfirebase_messaging_zzi)
    ['{7B6B1876-AE14-4500-ABBD-761379746F5B}']
    procedure zza(P1: JThrowable; P2: JThrowable); cdecl;
  end;
  TJzzh_zza = class(TJavaGenericImport<Jzzh_zzaClass, Jzzh_zza>) end;

  Jfirebase_messaging_zzjClass = interface(JObjectClass)
    ['{FED8C1CE-C4A3-40C2-B51D-CE9800CD25E4}']
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zzj')]
  Jfirebase_messaging_zzj = interface(JObject)
    ['{FF692635-5B3F-4933-A253-6F8F70646398}']
    function zza(P1: JThrowable; P2: Boolean): JList; cdecl;
  end;
  TJfirebase_messaging_zzj = class(TJavaGenericImport<Jfirebase_messaging_zzjClass, Jfirebase_messaging_zzj>) end;

  JReferenceClass = interface(JObjectClass)
    ['{FEA7F960-447F-40F4-A111-4E6DE419D421}']
  end;

  [JavaSignature('java/lang/ref/Reference')]
  JReference = interface(JObject)
    ['{436E8966-B520-46D5-9060-715AC4AD614A}']
    procedure clear; cdecl;
    function enqueue: Boolean; cdecl;
    function &get: JObject; cdecl;
    function isEnqueued: Boolean; cdecl;
  end;
  TJReference = class(TJavaGenericImport<JReferenceClass, JReference>) end;

  JWeakReferenceClass = interface(JReferenceClass)
    ['{3BB2477E-E24C-46BB-92E5-6ACEE8161549}']
    {class} function init(r: JObject): JWeakReference; cdecl; overload;
    {class} function init(r: JObject; q: JReferenceQueue): JWeakReference; cdecl; overload;
  end;

  [JavaSignature('java/lang/ref/WeakReference')]
  JWeakReference = interface(JReference)
    ['{B5776146-B336-43A8-8A26-CB7EDD8C1A2A}']
  end;
  TJWeakReference = class(TJavaGenericImport<JWeakReferenceClass, JWeakReference>) end;

  Jfirebase_messaging_zzkClass = interface(JWeakReferenceClass)
    ['{9003AFD4-67AE-4529-80A9-BB84AD9A1C4F}']
    {class} function init(P1: JThrowable; P2: JReferenceQueue): Jfirebase_messaging_zzk; cdecl;
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zzk')]
  Jfirebase_messaging_zzk = interface(JWeakReference)
    ['{D35D186B-F75C-4210-8460-4C68B20F3C79}']
    function equals(P1: JObject): Boolean; cdecl;
    function hashCode: Integer; cdecl;
  end;
  TJfirebase_messaging_zzk = class(TJavaGenericImport<Jfirebase_messaging_zzkClass, Jfirebase_messaging_zzk>) end;

  Jfirebase_messaging_zzlClass = interface(Jfirebase_messaging_zziClass)
    ['{1838B994-C47C-43C3-99E2-89CFECB68BA8}']
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zzl')]
  Jfirebase_messaging_zzl = interface(Jfirebase_messaging_zzi)
    ['{3CFEA721-31FC-47F5-BA92-AE39386F963D}']
    procedure zza(P1: JThrowable; P2: JThrowable); cdecl;
  end;
  TJfirebase_messaging_zzl = class(TJavaGenericImport<Jfirebase_messaging_zzlClass, Jfirebase_messaging_zzl>) end;

  Jfirebase_messaging_zzmClass = interface(Jfirebase_messaging_zziClass)
    ['{DFEF6408-0587-42B4-82BA-40FDE1B9757E}']
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zzm')]
  Jfirebase_messaging_zzm = interface(Jfirebase_messaging_zzi)
    ['{54825923-808C-4A98-84C4-9F8E86707C31}']
    procedure zza(P1: JThrowable; P2: JThrowable); cdecl;
  end;
  TJfirebase_messaging_zzm = class(TJavaGenericImport<Jfirebase_messaging_zzmClass, Jfirebase_messaging_zzm>) end;

  Jfirebase_messaging_zzvClass = interface(IJavaClass)
    ['{12033140-CE6B-444C-B747-4FA3FE85F28F}']
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zzv')]
  Jfirebase_messaging_zzv = interface(IJavaInstance)
    ['{2A19A263-4D45-46C5-A5FF-8D8B0F19D8E5}']
    function zzb(P1: Integer): JInteger; cdecl;
  end;
  TJfirebase_messaging_zzv = class(TJavaGenericImport<Jfirebase_messaging_zzvClass, Jfirebase_messaging_zzv>) end;

  Jfirebase_messaging_zznClass = interface(Jfirebase_messaging_zzvClass)
    ['{C865C288-D9B7-4894-A267-E11CA6ABC157}']
    {class} function init(P1: JContext): Jfirebase_messaging_zzn; cdecl;
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zzn')]
  Jfirebase_messaging_zzn = interface(Jfirebase_messaging_zzv)
    ['{F38848E3-18CD-4AF5-AC30-754781D85320}']
    function zzb(P1: Integer): JInteger; cdecl;
  end;
  TJfirebase_messaging_zzn = class(TJavaGenericImport<Jfirebase_messaging_zznClass, Jfirebase_messaging_zzn>) end;

  Jfirebase_messaging_zzwClass = interface(IJavaClass)
    ['{A4DC3EF7-0A17-4323-81BB-C6BD74F47454}']
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zzw')]
  Jfirebase_messaging_zzw = interface(IJavaInstance)
    ['{A5219A38-4FDA-492F-A8A4-6081EE28CAFC}']
    function zzat: JString; cdecl;
  end;
  TJfirebase_messaging_zzw = class(TJavaGenericImport<Jfirebase_messaging_zzwClass, Jfirebase_messaging_zzw>) end;

  Jfirebase_messaging_zzoClass = interface(Jfirebase_messaging_zzwClass)
    ['{02549BFE-0C05-44A5-80EC-3E9374250D98}']
    {class} function init(P1: JContext): Jfirebase_messaging_zzo; cdecl;
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zzo')]
  Jfirebase_messaging_zzo = interface(Jfirebase_messaging_zzw)
    ['{0DFBE7D7-547A-45AE-8FCA-6DCB122B4985}']
    function zzat: JString; cdecl;
  end;
  TJfirebase_messaging_zzo = class(TJavaGenericImport<Jfirebase_messaging_zzoClass, Jfirebase_messaging_zzo>) end;

  JzzyClass = interface(IJavaClass)
    ['{087ACAE5-A565-4216-A71A-A69F0BF0970A}']
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zzy')]
  Jzzy = interface(IJavaInstance)
    ['{B561EFAC-CD81-4B4A-9E49-5269E37B5F56}']
    function zzau: JPendingIntent; cdecl;
    function zze(P1: JIntent): JPendingIntent; cdecl;
  end;
  TJzzy = class(TJavaGenericImport<JzzyClass, Jzzy>) end;

  Jfirebase_messaging_zzpClass = interface(JzzyClass)
    ['{C0B5AD2E-C142-435D-AB1F-F2BE7D8509B3}']
    {class} function init(P1: JContext; P2: JBundle): Jfirebase_messaging_zzp; cdecl;
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zzp')]
  Jfirebase_messaging_zzp = interface(Jzzy)
    ['{C84CF61E-480D-4E67-A1E1-27B27C020A82}']
    function zzau: JPendingIntent; cdecl;
    function zze(P1: JIntent): JPendingIntent; cdecl;
  end;
  TJfirebase_messaging_zzp = class(TJavaGenericImport<Jfirebase_messaging_zzpClass, Jfirebase_messaging_zzp>) end;

  Jfirebase_messaging_zzqClass = interface(JObjectClass)
    ['{62606C57-B07E-4C5C-B655-7DB622247584}']
    {class} function init(P1: JString; P2: JBundle): Jfirebase_messaging_zzq; cdecl;
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zzq')]
  Jfirebase_messaging_zzq = interface(JObject)
    ['{2F047F46-8665-4147-8D73-E62398AF31D6}']
    function getString(P1: JString): JString; cdecl;
    function zzav: JString; cdecl;
    function zzaw: Jnet_Uri; cdecl;
    function zzn(P1: JString): TJavaObjectArray<JString>; cdecl;
    function zzp(P1: JString): JString; cdecl;
  end;
  TJfirebase_messaging_zzq = class(TJavaGenericImport<Jfirebase_messaging_zzqClass, Jfirebase_messaging_zzq>) end;

  Jfirebase_messaging_zzrClass = interface(JObjectClass)
    ['{82B6D49E-7D56-4A6D-842B-9C7ABA9E0CAD}']
    {class} function init(P1: JContext; P2: Jzzz): Jfirebase_messaging_zzr; cdecl;
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zzr')]
  Jfirebase_messaging_zzr = interface(JObject)
    ['{310406E8-915C-40DA-91DC-52D93779614D}']
    function zzax: Jzzab; cdecl;
  end;
  TJfirebase_messaging_zzr = class(TJavaGenericImport<Jfirebase_messaging_zzrClass, Jfirebase_messaging_zzr>) end;

  Jfirebase_messaging_zzsClass = interface(JObjectClass)
    ['{6B337F2D-788E-4601-88A6-25D764BEDE2C}']
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zzs')]
  Jfirebase_messaging_zzs = interface(JObject)
    ['{D7AEC484-3C2F-4E9D-AEBA-AAC077FA70D0}']
    function getAppLabel: JCharSequence; cdecl;
    function getData: JBundle; cdecl;
    function getPackageName: JString; cdecl;
    function zzay: JResources; cdecl;
    function zzaz: JBundle; cdecl;
    function zzb(P1: Integer): JInteger; cdecl;
    function zzba: JIntent; cdecl;
    function zzbb: Integer; cdecl;
    function zzbc: Integer; cdecl;
    function zzbd: JString; cdecl;
    function zzl(P1: JString): Boolean; cdecl;
  end;
  TJfirebase_messaging_zzs = class(TJavaGenericImport<Jfirebase_messaging_zzsClass, Jfirebase_messaging_zzs>) end;

  Jfirebase_messaging_zztClass = interface(JObjectClass)
    ['{C7394ABD-009D-498C-9321-63CBD0C35372}']
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zzt')]
  Jfirebase_messaging_zzt = interface(JObject)
    ['{1129519C-ACA1-4D83-A3FD-66634E11BC77}']
  end;
  TJfirebase_messaging_zzt = class(TJavaGenericImport<Jfirebase_messaging_zztClass, Jfirebase_messaging_zzt>) end;

  Jfirebase_messaging_zzuClass = interface(JObjectClass)
    ['{316A77DF-640C-474F-9A54-50B94A78970C}']
    {class} function init(P1: JBundle; P2: JString): Jfirebase_messaging_zzu; cdecl;
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zzu')]
  Jfirebase_messaging_zzu = interface(JObject)
    ['{FF7613D0-4DC0-4AA7-B8F6-15CFDA12D497}']
    function zza(P1: Jfirebase_messaging_zzv): Jfirebase_messaging_zzu; cdecl; overload;
    function zza(P1: Jfirebase_messaging_zzx): Jfirebase_messaging_zzu; cdecl; overload;
    function zza(P1: Jzzy): Jfirebase_messaging_zzu; cdecl; overload;
    function zza(P1: Jfirebase_messaging_zzw): Jfirebase_messaging_zzu; cdecl; overload;
    function zza(P1: JResources): Jfirebase_messaging_zzu; cdecl; overload;
    function zza(P1: JCharSequence): Jfirebase_messaging_zzu; cdecl; overload;
    function zzbe: Jfirebase_messaging_zzs; cdecl;
    function zzc(P1: Integer): Jfirebase_messaging_zzu; cdecl; overload;
    function zzd(P1: Integer): Jfirebase_messaging_zzu; cdecl; overload;
    function zzf(P1: JIntent): Jfirebase_messaging_zzu; cdecl; overload;
    function zzi(P1: JBundle): Jfirebase_messaging_zzu; cdecl; overload;
    function zzq(P1: JString): Jfirebase_messaging_zzu; cdecl;
  end;
  TJfirebase_messaging_zzu = class(TJavaGenericImport<Jfirebase_messaging_zzuClass, Jfirebase_messaging_zzu>) end;

  Jfirebase_messaging_zzxClass = interface(IJavaClass)
    ['{2AEB2B43-FF79-454D-8514-E6C1F685B2CA}']
  end;

  [JavaSignature('com/google/android/gms/internal/firebase_messaging/zzx')]
  Jfirebase_messaging_zzx = interface(IJavaInstance)
    ['{13911CF7-A623-4621-9F6C-26E8985BF478}']
    function zzl(P1: JString): Boolean; cdecl;
  end;
  TJfirebase_messaging_zzx = class(TJavaGenericImport<Jfirebase_messaging_zzxClass, Jfirebase_messaging_zzx>) end;

  JCancellationTokenClass = interface(JObjectClass)
    ['{3FFA67C4-CA52-485C-A672-CCEB5FA58F21}']
    {class} function init: JCancellationToken; cdecl;
  end;

  [JavaSignature('com/google/android/gms/tasks/CancellationToken')]
  JCancellationToken = interface(JObject)
    ['{F35BC32E-F383-460B-8276-CC8DF4BB64A4}']
    function isCancellationRequested: Boolean; cdecl;
    function onCanceledRequested(P1: JOnTokenCanceledListener): JCancellationToken; cdecl;
  end;
  TJCancellationToken = class(TJavaGenericImport<JCancellationTokenClass, JCancellationToken>) end;

  JCancellationTokenSourceClass = interface(JObjectClass)
    ['{FAF104E7-A568-4E5C-B90E-C404AB42CF74}']
    {class} function init: JCancellationTokenSource; cdecl;
  end;

  [JavaSignature('com/google/android/gms/tasks/CancellationTokenSource')]
  JCancellationTokenSource = interface(JObject)
    ['{CA1AE121-FF06-4BA3-B955-782CA55BD111}']
    procedure cancel; cdecl;
    function getToken: JCancellationToken; cdecl;
  end;
  TJCancellationTokenSource = class(TJavaGenericImport<JCancellationTokenSourceClass, JCancellationTokenSource>) end;

  JContinuationClass = interface(IJavaClass)
    ['{5483EACA-136A-4A0F-94B9-A7971013E893}']
  end;

  [JavaSignature('com/google/android/gms/tasks/Continuation')]
  JContinuation = interface(IJavaInstance)
    ['{3D9E62D7-175C-41EC-83FD-F32231E00599}']
    //function then(P1: JTask): J; cdecl;
  end;
  TJContinuation = class(TJavaGenericImport<JContinuationClass, JContinuation>) end;

  JOnCanceledListenerClass = interface(IJavaClass)
    ['{7052760F-885F-4980-BB45-8FD95C326C7A}']
  end;

  [JavaSignature('com/google/android/gms/tasks/OnCanceledListener')]
  JOnCanceledListener = interface(IJavaInstance)
    ['{BCAC4E43-08A6-4DDA-A6C1-AFBC501B3943}']
    procedure onCanceled; cdecl;
  end;
  TJOnCanceledListener = class(TJavaGenericImport<JOnCanceledListenerClass, JOnCanceledListener>) end;

  JOnCompleteListenerClass = interface(IJavaClass)
    ['{D9A1764A-7488-4BD4-8F45-6F795A1DB2E0}']
  end;

  [JavaSignature('com/google/android/gms/tasks/OnCompleteListener')]
  JOnCompleteListener = interface(IJavaInstance)
    ['{FF916F32-193F-4C91-9EC5-577ACA24C3CD}']
    procedure onComplete(P1: JTask); cdecl;
  end;
  TJOnCompleteListener = class(TJavaGenericImport<JOnCompleteListenerClass, JOnCompleteListener>) end;

  JOnFailureListenerClass = interface(IJavaClass)
    ['{2154B461-4DD0-4DAA-97D1-BCADE1A90A24}']
  end;

  [JavaSignature('com/google/android/gms/tasks/OnFailureListener')]
  JOnFailureListener = interface(IJavaInstance)
    ['{AE79FE73-864C-4CDB-B1CF-F209B2527931}']
    procedure onFailure(P1: JException); cdecl;
  end;
  TJOnFailureListener = class(TJavaGenericImport<JOnFailureListenerClass, JOnFailureListener>) end;

  JOnSuccessListenerClass = interface(IJavaClass)
    ['{941F2EEA-181E-450F-A187-D7724E4731D4}']
  end;

  [JavaSignature('com/google/android/gms/tasks/OnSuccessListener')]
  JOnSuccessListener = interface(IJavaInstance)
    ['{F1CB1059-4BD5-4A95-97AF-EA65A3DF3A5D}']
    //procedure onSuccess(P1: J); cdecl;
  end;
  TJOnSuccessListener = class(TJavaGenericImport<JOnSuccessListenerClass, JOnSuccessListener>) end;

  JOnTokenCanceledListenerClass = interface(IJavaClass)
    ['{35D03A52-3CA2-4C25-B0CF-B36ED29FDE07}']
  end;

  [JavaSignature('com/google/android/gms/tasks/OnTokenCanceledListener')]
  JOnTokenCanceledListener = interface(IJavaInstance)
    ['{CB916539-58DA-43C2-9410-79F13ED26098}']
    procedure onCanceled; cdecl;
  end;
  TJOnTokenCanceledListener = class(TJavaGenericImport<JOnTokenCanceledListenerClass, JOnTokenCanceledListener>) end;

  JRuntimeExecutionExceptionClass = interface(JRuntimeExceptionClass)
    ['{623B1093-E7D5-47D9-BBB4-59DC2AE0888D}']
    {class} function init(P1: JThrowable): JRuntimeExecutionException; cdecl;
  end;

  [JavaSignature('com/google/android/gms/tasks/RuntimeExecutionException')]
  JRuntimeExecutionException = interface(JRuntimeException)
    ['{81106DAE-0074-4EC5-A5A0-B0A18CFCF790}']
  end;
  TJRuntimeExecutionException = class(TJavaGenericImport<JRuntimeExecutionExceptionClass, JRuntimeExecutionException>) end;

  JSuccessContinuationClass = interface(IJavaClass)
    ['{0E443325-CE25-430A-94EB-56F9A0CB879B}']
  end;

  [JavaSignature('com/google/android/gms/tasks/SuccessContinuation')]
  JSuccessContinuation = interface(IJavaInstance)
    ['{7E89C673-3584-4E27-BC69-B096E58A0637}']
    //function then(P1: J): JTask; cdecl;
  end;
  TJSuccessContinuation = class(TJavaGenericImport<JSuccessContinuationClass, JSuccessContinuation>) end;

  JTaskClass = interface(JObjectClass)
    ['{410A903C-D0BA-4AE3-8100-69CFD4033D2B}']
    {class} function init: JTask; cdecl;
  end;

  [JavaSignature('com/google/android/gms/tasks/Task')]
  JTask = interface(JObject)
    ['{E40A69F5-90F8-48C6-973C-8890073D2C97}']
    function addOnCanceledListener(P1: JOnCanceledListener): JTask; cdecl; overload;
    function addOnCanceledListener(P1: JExecutor; P2: JOnCanceledListener): JTask; cdecl; overload;
    function addOnCanceledListener(P1: JActivity; P2: JOnCanceledListener): JTask; cdecl; overload;
    function addOnCompleteListener(P1: JOnCompleteListener): JTask; cdecl; overload;
    function addOnCompleteListener(P1: JExecutor; P2: JOnCompleteListener): JTask; cdecl; overload;
    function addOnCompleteListener(P1: JActivity; P2: JOnCompleteListener): JTask; cdecl; overload;
    function addOnFailureListener(P1: JOnFailureListener): JTask; cdecl; overload;
    function addOnFailureListener(P1: JExecutor; P2: JOnFailureListener): JTask; cdecl; overload;
    function addOnFailureListener(P1: JActivity; P2: JOnFailureListener): JTask; cdecl; overload;
    function addOnSuccessListener(P1: JOnSuccessListener): JTask; cdecl; overload;
    function addOnSuccessListener(P1: JActivity; P2: JOnSuccessListener): JTask; cdecl; overload;
    function addOnSuccessListener(P1: JExecutor; P2: JOnSuccessListener): JTask; cdecl; overload;
    function continueWith(P1: JContinuation): JTask; cdecl; overload;
    function continueWith(P1: JExecutor; P2: JContinuation): JTask; cdecl; overload;
    function continueWithTask(P1: JContinuation): JTask; cdecl; overload;
    function continueWithTask(P1: JExecutor; P2: JContinuation): JTask; cdecl; overload;
    function getException: JException; cdecl;
    function getResult: JObject; cdecl; overload;
    //function getResult(P1: Jlang_Class): J; cdecl; overload;
    function isCanceled: Boolean; cdecl;
    function isComplete: Boolean; cdecl;
    function isSuccessful: Boolean; cdecl;
    function onSuccessTask(P1: JSuccessContinuation): JTask; cdecl; overload;
    function onSuccessTask(P1: JExecutor; P2: JSuccessContinuation): JTask; cdecl; overload;
  end;
  TJTask = class(TJavaGenericImport<JTaskClass, JTask>) end;

  JTaskCompletionSourceClass = interface(JObjectClass)
    ['{ED1B8A03-C734-4833-990F-EF57BC277170}']
    {class} function init: JTaskCompletionSource; cdecl; overload;
    {class} function init(P1: JCancellationToken): JTaskCompletionSource; cdecl; overload;
  end;

  [JavaSignature('com/google/android/gms/tasks/TaskCompletionSource')]
  JTaskCompletionSource = interface(JObject)
    ['{EA579059-C928-4DF2-9124-90B76C5D56A7}']
    function getTask: JTask; cdecl;
    procedure setException(P1: JException); cdecl;
    //procedure setResult(P1: J); cdecl;
    function trySetException(P1: JException): Boolean; cdecl;
    //function trySetResult(P1: J): Boolean; cdecl;
  end;
  TJTaskCompletionSource = class(TJavaGenericImport<JTaskCompletionSourceClass, JTaskCompletionSource>) end;

  JTaskExecutorsClass = interface(JObjectClass)
    ['{8B1CD487-98FC-4A1B-A970-B854B30BBA6B}']
    {class} function _GetMAIN_THREAD: JExecutor; cdecl;
    {class} property MAIN_THREAD: JExecutor read _GetMAIN_THREAD;
  end;

  [JavaSignature('com/google/android/gms/tasks/TaskExecutors')]
  JTaskExecutors = interface(JObject)
    ['{9AE7F6E2-1C56-46A0-A37F-EEFA5006E093}']
  end;
  TJTaskExecutors = class(TJavaGenericImport<JTaskExecutorsClass, JTaskExecutors>) end;

  JTaskExecutors_zzaClass = interface(JExecutorClass)
    ['{2C57FD98-AFE9-4212-A9EC-9A3BE26C7952}']
    {class} function init: JTaskExecutors_zza; cdecl;
  end;

  [JavaSignature('com/google/android/gms/tasks/TaskExecutors$zza')]
  JTaskExecutors_zza = interface(JExecutor)
    ['{458CF4D8-B2BC-4A2F-9DD2-052A04FEB885}']
    procedure execute(P1: JRunnable); cdecl;
  end;
  TJTaskExecutors_zza = class(TJavaGenericImport<JTaskExecutors_zzaClass, JTaskExecutors_zza>) end;

  JTasksClass = interface(JObjectClass)
    ['{C63E57FE-B15A-4235-A1EA-F6ECEE92B256}']
    {class} //function await(P1: JTask): J; cdecl; overload;
    {class} //function await(P1: JTask; P2: Int64; P3: JTimeUnit): J; cdecl; overload;
    {class} function call(P1: JCallable): JTask; cdecl; overload;
    {class} function call(P1: JExecutor; P2: JCallable): JTask; cdecl; overload;
    {class} function forCanceled: JTask; cdecl;
    {class} function forException(P1: JException): JTask; cdecl;
    {class} //function forResult(P1: J): JTask; cdecl;
    {class} function whenAll(P1: JCollection): JTask; cdecl; overload;
    {class} function whenAllComplete(P1: JCollection): JTask; cdecl; overload;
    {class} function whenAllSuccess(P1: JCollection): JTask; cdecl; overload;
  end;

  [JavaSignature('com/google/android/gms/tasks/Tasks')]
  JTasks = interface(JObject)
    ['{8BEF42B7-DC30-487D-91BC-F3039C842663}']
  end;
  TJTasks = class(TJavaGenericImport<JTasksClass, JTasks>) end;

  JTasks_zzbClass = interface(JOnCanceledListenerClass)
    ['{16CADA6A-9862-4841-9A3F-ADB1FC3D3E57}']
  end;

  [JavaSignature('com/google/android/gms/tasks/Tasks$zzb')]
  JTasks_zzb = interface(JOnCanceledListener)
    ['{C67F0BAD-4273-4475-AB74-51D064021D0C}']
  end;
  TJTasks_zzb = class(TJavaGenericImport<JTasks_zzbClass, JTasks_zzb>) end;

  JTasks_zzaClass = interface(JTasks_zzbClass)
    ['{5E50A2AB-B16C-4EAA-B64D-6BFBEC6DAACA}']
  end;

  [JavaSignature('com/google/android/gms/tasks/Tasks$zza')]
  JTasks_zza = interface(JTasks_zzb)
    ['{E14FDF33-0667-4B50-95A6-1ADC35F9C5C7}']
    procedure await; cdecl; overload;
    function await(P1: Int64; P2: JTimeUnit): Boolean; cdecl; overload;
    procedure onCanceled; cdecl;
    procedure onFailure(P1: JException); cdecl;
    procedure onSuccess(P1: JObject); cdecl;
  end;
  TJTasks_zza = class(TJavaGenericImport<JTasks_zzaClass, JTasks_zza>) end;

  JTasks_zzcClass = interface(JTasks_zzbClass)
    ['{6C158867-20E5-4DB6-A3D2-C5CA7570B136}']
    {class} function init(P1: Integer; P2: Jzzu): JTasks_zzc; cdecl;
  end;

  [JavaSignature('com/google/android/gms/tasks/Tasks$zzc')]
  JTasks_zzc = interface(JTasks_zzb)
    ['{567B1785-03C0-4693-9B04-4EB02D31D160}']
    procedure onCanceled; cdecl;
    procedure onFailure(P1: JException); cdecl;
    procedure onSuccess(P1: JObject); cdecl;
  end;
  TJTasks_zzc = class(TJavaGenericImport<JTasks_zzcClass, JTasks_zzc>) end;

  Jgms_tasks_zzaClass = interface(JCancellationTokenClass)
    ['{2EA0C4BB-418E-4F20-A8C7-3E1AF686DD8E}']
  end;

  [JavaSignature('com/google/android/gms/tasks/zza')]
  Jgms_tasks_zza = interface(JCancellationToken)
    ['{B88F8369-1D9A-4A1E-A067-E2195F0B6FBF}']
    procedure cancel; cdecl;
    function isCancellationRequested: Boolean; cdecl;
    function onCanceledRequested(P1: JOnTokenCanceledListener): JCancellationToken; cdecl;
  end;
  TJgms_tasks_zza = class(TJavaGenericImport<Jgms_tasks_zzaClass, Jgms_tasks_zza>) end;

  JzzbClass = interface(JOnSuccessListenerClass)
    ['{6374DD03-BDDB-4BD8-A561-BB0D9A05E74F}']
  end;

  [JavaSignature('com/google/android/gms/tasks/zzb')]
  Jzzb = interface(JOnSuccessListener)
    ['{B1D80930-BC3A-45F6-A06C-4CF810AF00A0}']
    procedure onSuccess(P1: JObject); cdecl;
  end;
  TJzzb = class(TJavaGenericImport<JzzbClass, Jzzb>) end;

  JzzqClass = interface(IJavaClass)
    ['{CDFACA78-57AF-4AB5-962B-6C66CEB2D572}']
  end;

  [JavaSignature('com/google/android/gms/tasks/zzq')]
  Jzzq = interface(IJavaInstance)
    ['{03EE9E04-F452-446F-868F-465A5DDD3119}']
    procedure cancel; cdecl;
    procedure onComplete(P1: JTask); cdecl;
  end;
  TJzzq = class(TJavaGenericImport<JzzqClass, Jzzq>) end;

  JzzcClass = interface(JzzqClass)
    ['{6C6A7061-95CF-4E5C-8FA9-ABCD59C10B69}']
    {class} function init(P1: JExecutor; P2: JContinuation; P3: Jzzu): Jzzc; cdecl;
  end;

  [JavaSignature('com/google/android/gms/tasks/zzc')]
  Jzzc = interface(Jzzq)
    ['{E760EF53-2414-4D0E-9A8B-C821B9A3C671}']
    procedure cancel; cdecl;
    procedure onComplete(P1: JTask); cdecl;
  end;
  TJzzc = class(TJavaGenericImport<JzzcClass, Jzzc>) end;

  JzzdClass = interface(JRunnableClass)
    ['{DF84108F-DE14-46ED-BDCE-0617FA9F31FE}']
  end;

  [JavaSignature('com/google/android/gms/tasks/zzd')]
  Jzzd = interface(JRunnable)
    ['{37F21C72-E119-4AB5-8863-473F911993FD}']
    procedure run; cdecl;
  end;
  TJzzd = class(TJavaGenericImport<JzzdClass, Jzzd>) end;

  JzzeClass = interface(JOnCanceledListenerClass)
    ['{062D32CD-5991-4FC3-8850-1DE8FEE798A0}']
    {class} function init(P1: JExecutor; P2: JContinuation; P3: Jzzu): Jzze; cdecl;
  end;

  [JavaSignature('com/google/android/gms/tasks/zze')]
  Jzze = interface(JOnCanceledListener)
    ['{DB8E54AF-2956-4D12-8B7D-7655A76D7737}']
    procedure cancel; cdecl;
    procedure onCanceled; cdecl;
    procedure onComplete(P1: JTask); cdecl;
    procedure onFailure(P1: JException); cdecl;
    //procedure onSuccess(P1: J); cdecl;
  end;
  TJzze = class(TJavaGenericImport<JzzeClass, Jzze>) end;

  JzzfClass = interface(JRunnableClass)
    ['{48CD98DF-ABE6-44FE-A558-4051FD89E57A}']
  end;

  [JavaSignature('com/google/android/gms/tasks/zzf')]
  Jzzf = interface(JRunnable)
    ['{E8C8A1C2-C46F-483D-8A3B-F0157273F313}']
    procedure run; cdecl;
  end;
  TJzzf = class(TJavaGenericImport<JzzfClass, Jzzf>) end;

  JzzgClass = interface(JzzqClass)
    ['{324EC293-4C8F-4FDD-9FE7-CCF42E3B8C7A}']
    {class} function init(P1: JExecutor; P2: JOnCanceledListener): Jzzg; cdecl;
  end;

  [JavaSignature('com/google/android/gms/tasks/zzg')]
  Jzzg = interface(Jzzq)
    ['{907FC8BC-CBAC-422F-BC90-99971C0F09C5}']
    procedure cancel; cdecl;
    procedure onComplete(P1: JTask); cdecl;
  end;
  TJzzg = class(TJavaGenericImport<JzzgClass, Jzzg>) end;

  JzzhClass = interface(JRunnableClass)
    ['{8EE0DC4F-63E7-499B-BE71-FECA1C2AF796}']
  end;

  [JavaSignature('com/google/android/gms/tasks/zzh')]
  Jzzh = interface(JRunnable)
    ['{F281A3B2-E9AF-46CE-9035-ADE4EF828D8A}']
    procedure run; cdecl;
  end;
  TJzzh = class(TJavaGenericImport<JzzhClass, Jzzh>) end;

  JzziClass = interface(JzzqClass)
    ['{F8723A14-1C74-4617-B121-1F634ABC78B6}']
    {class} function init(P1: JExecutor; P2: JOnCompleteListener): Jzzi; cdecl;
  end;

  [JavaSignature('com/google/android/gms/tasks/zzi')]
  Jzzi = interface(Jzzq)
    ['{CAAA2A6D-DB09-492D-8562-F69F2291B718}']
    procedure cancel; cdecl;
    procedure onComplete(P1: JTask); cdecl;
  end;
  TJzzi = class(TJavaGenericImport<JzziClass, Jzzi>) end;

  JzzjClass = interface(JRunnableClass)
    ['{F994EA27-B595-445C-9653-CF49EB512511}']
  end;

  [JavaSignature('com/google/android/gms/tasks/zzj')]
  Jzzj = interface(JRunnable)
    ['{1EE18F9F-3162-4B79-BA13-07A5FD3B1C58}']
    procedure run; cdecl;
  end;
  TJzzj = class(TJavaGenericImport<JzzjClass, Jzzj>) end;

  JzzkClass = interface(JzzqClass)
    ['{938FDF4A-EF79-47E7-9567-8C338399662C}']
    {class} function init(P1: JExecutor; P2: JOnFailureListener): Jzzk; cdecl;
  end;

  [JavaSignature('com/google/android/gms/tasks/zzk')]
  Jzzk = interface(Jzzq)
    ['{F9042C5F-22AF-40FE-8606-68380938E2A6}']
    procedure cancel; cdecl;
    procedure onComplete(P1: JTask); cdecl;
  end;
  TJzzk = class(TJavaGenericImport<JzzkClass, Jzzk>) end;

  JzzlClass = interface(JRunnableClass)
    ['{57E89469-396B-4B70-ABE1-459C3E3EB733}']
  end;

  [JavaSignature('com/google/android/gms/tasks/zzl')]
  Jzzl = interface(JRunnable)
    ['{5F2E82C1-46CF-4773-8510-F8F0064DD868}']
    procedure run; cdecl;
  end;
  TJzzl = class(TJavaGenericImport<JzzlClass, Jzzl>) end;

  JzzmClass = interface(JzzqClass)
    ['{D6BFD168-9BEE-4AD7-B533-C722F83E2BAE}']
    {class} function init(P1: JExecutor; P2: JOnSuccessListener): Jzzm; cdecl;
  end;

  [JavaSignature('com/google/android/gms/tasks/zzm')]
  Jzzm = interface(Jzzq)
    ['{DB904AE1-E1E8-4AD8-A072-3E91C8C4E087}']
    procedure cancel; cdecl;
    procedure onComplete(P1: JTask); cdecl;
  end;
  TJzzm = class(TJavaGenericImport<JzzmClass, Jzzm>) end;

  JzznClass = interface(JRunnableClass)
    ['{80A14B67-41FB-4353-808E-B3F77850533F}']
  end;

  [JavaSignature('com/google/android/gms/tasks/zzn')]
  Jzzn = interface(JRunnable)
    ['{3CDB54AA-CA58-4755-9182-46E339C9DF5B}']
    procedure run; cdecl;
  end;
  TJzzn = class(TJavaGenericImport<JzznClass, Jzzn>) end;

  JzzoClass = interface(JOnCanceledListenerClass)
    ['{F6B80AAB-136F-48F6-9657-8A74C7C1F47C}']
    {class} function init(P1: JExecutor; P2: JSuccessContinuation; P3: Jzzu): Jzzo; cdecl;
  end;

  [JavaSignature('com/google/android/gms/tasks/zzo')]
  Jzzo = interface(JOnCanceledListener)
    ['{22B8B7E8-7241-470B-9CB5-C9F752BD46BE}']
    procedure cancel; cdecl;
    procedure onCanceled; cdecl;
    procedure onComplete(P1: JTask); cdecl;
    procedure onFailure(P1: JException); cdecl;
    //procedure onSuccess(P1: J); cdecl;
  end;
  TJzzo = class(TJavaGenericImport<JzzoClass, Jzzo>) end;

  JzzpClass = interface(JRunnableClass)
    ['{A2A40C2E-E054-4295-9E0E-AA7B79A1DEA2}']
  end;

  [JavaSignature('com/google/android/gms/tasks/zzp')]
  Jzzp = interface(JRunnable)
    ['{F79445B1-C9DC-4949-9A1B-28B044B03D4C}']
    procedure run; cdecl;
  end;
  TJzzp = class(TJavaGenericImport<JzzpClass, Jzzp>) end;

  JzzrClass = interface(JObjectClass)
    ['{8E10FB9F-A9A8-4D5B-B93F-90663858A7F3}']
  end;

  [JavaSignature('com/google/android/gms/tasks/zzr')]
  Jzzr = interface(JObject)
    ['{B80B4D3E-C0CB-40B9-B491-6E4F93B2CEF8}']
    procedure zza(P1: JTask); cdecl; overload;
    procedure zza(P1: Jzzq); cdecl; overload;
  end;
  TJzzr = class(TJavaGenericImport<JzzrClass, Jzzr>) end;

  JzzsClass = interface(JOnTokenCanceledListenerClass)
    ['{9D38929D-D864-469F-8640-18A4A7433775}']
  end;

  [JavaSignature('com/google/android/gms/tasks/zzs')]
  Jzzs = interface(JOnTokenCanceledListener)
    ['{0E78779A-2FEB-436C-8D42-C759C4898A96}']
    procedure onCanceled; cdecl;
  end;
  TJzzs = class(TJavaGenericImport<JzzsClass, Jzzs>) end;

  JzztClass = interface(JExecutorClass)
    ['{9CE378F7-8496-4CFD-A3FE-C1F64749E68F}']
  end;

  [JavaSignature('com/google/android/gms/tasks/zzt')]
  Jzzt = interface(JExecutor)
    ['{FCE54B89-76BB-472A-A7E4-73A06CB73DA6}']
    procedure execute(P1: JRunnable); cdecl;
  end;
  TJzzt = class(TJavaGenericImport<JzztClass, Jzzt>) end;

  JzzuClass = interface(JTaskClass)
    ['{817318D0-57F9-4323-AF08-B04BF62BE025}']
  end;

  [JavaSignature('com/google/android/gms/tasks/zzu')]
  Jzzu = interface(JTask)
    ['{801F326E-F3BF-43DA-AD54-F0BE81322E5E}']
    function addOnCanceledListener(P1: JOnCanceledListener): JTask; cdecl; overload;
    function addOnCanceledListener(P1: JActivity; P2: JOnCanceledListener): JTask; cdecl; overload;
    function addOnCanceledListener(P1: JExecutor; P2: JOnCanceledListener): JTask; cdecl; overload;
    function addOnCompleteListener(P1: JOnCompleteListener): JTask; cdecl; overload;
    function addOnCompleteListener(P1: JExecutor; P2: JOnCompleteListener): JTask; cdecl; overload;
    function addOnCompleteListener(P1: JActivity; P2: JOnCompleteListener): JTask; cdecl; overload;
    function addOnFailureListener(P1: JOnFailureListener): JTask; cdecl; overload;
    function addOnFailureListener(P1: JActivity; P2: JOnFailureListener): JTask; cdecl; overload;
    function addOnFailureListener(P1: JExecutor; P2: JOnFailureListener): JTask; cdecl; overload;
    function addOnSuccessListener(P1: JOnSuccessListener): JTask; cdecl; overload;
    function addOnSuccessListener(P1: JExecutor; P2: JOnSuccessListener): JTask; cdecl; overload;
    function addOnSuccessListener(P1: JActivity; P2: JOnSuccessListener): JTask; cdecl; overload;
    function continueWith(P1: JContinuation): JTask; cdecl; overload;
    function continueWith(P1: JExecutor; P2: JContinuation): JTask; cdecl; overload;
    function continueWithTask(P1: JContinuation): JTask; cdecl; overload;
    function continueWithTask(P1: JExecutor; P2: JContinuation): JTask; cdecl; overload;
    function getException: JException; cdecl;
    //function getResult: J; cdecl; overload;
    //function getResult(P1: Jlang_Class): J; cdecl; overload;
    function isCanceled: Boolean; cdecl;
    function isComplete: Boolean; cdecl;
    function isSuccessful: Boolean; cdecl;
    function onSuccessTask(P1: JSuccessContinuation): JTask; cdecl; overload;
    function onSuccessTask(P1: JExecutor; P2: JSuccessContinuation): JTask; cdecl; overload;
    procedure setException(P1: JException); cdecl;
    //procedure setResult(P1: J); cdecl;
    function trySetException(P1: JException): Boolean; cdecl;
    //function trySetResult(P1: J): Boolean; cdecl;
    function zza: Boolean; cdecl;
  end;
  TJzzu = class(TJavaGenericImport<JzzuClass, Jzzu>) end;

  // com.google.android.gms.tasks.zzu$zza
  JzzvClass = interface(JRunnableClass)
    ['{E61A6A2D-98ED-4D50-AEF0-71F75A053E37}']
  end;

  [JavaSignature('com/google/android/gms/tasks/zzv')]
  Jzzv = interface(JRunnable)
    ['{0AB43B87-B73E-48F5-A9F5-539CB6E0F5A2}']
    procedure run; cdecl;
  end;
  TJzzv = class(TJavaGenericImport<JzzvClass, Jzzv>) end;

  JzzwClass = interface(JContinuationClass)
    ['{76AB0A64-17BC-4C54-884B-A08F023959E7}']
  end;

  [JavaSignature('com/google/android/gms/tasks/zzw')]
  Jzzw = interface(JContinuation)
    ['{5F907E80-3B2F-473E-BA60-48E99BDFF96E}']
    function &then(P1: JTask): JObject; cdecl;
  end;
  TJzzw = class(TJavaGenericImport<JzzwClass, Jzzw>) end;

  JzzxClass = interface(JContinuationClass)
    ['{EAAB4B79-2692-454C-96DB-0E06469DFB46}']
  end;

  [JavaSignature('com/google/android/gms/tasks/zzx')]
  Jzzx = interface(JContinuation)
    ['{8B572D48-5289-4B2A-A9CD-0D104A5F8BCF}']
    function &then(P1: JTask): JObject; cdecl;
  end;
  TJzzx = class(TJavaGenericImport<JzzxClass, Jzzx>) end;

  Jfirebase_BuildConfigClass = interface(JObjectClass)
    ['{EEEFB30C-2B45-4543-A7B2-AA44B04F94C6}']
    {class} function _GetAPPLICATION_ID: JString; cdecl;
    {class} function _GetBUILD_TYPE: JString; cdecl;
    {class} function _GetDEBUG: Boolean; cdecl;
    {class} function _GetFLAVOR: JString; cdecl;
    {class} function _GetVERSION_CODE: Integer; cdecl;
    {class} function _GetVERSION_NAME: JString; cdecl;
    {class} function init: Jfirebase_BuildConfig; cdecl;
    {class} property APPLICATION_ID: JString read _GetAPPLICATION_ID;
    {class} property BUILD_TYPE: JString read _GetBUILD_TYPE;
    {class} property DEBUG: Boolean read _GetDEBUG;
    {class} property FLAVOR: JString read _GetFLAVOR;
    {class} property VERSION_CODE: Integer read _GetVERSION_CODE;
    {class} property VERSION_NAME: JString read _GetVERSION_NAME;
  end;

  [JavaSignature('com/google/firebase/BuildConfig')]
  Jfirebase_BuildConfig = interface(JObject)
    ['{F2807105-6D22-467B-8073-D3E3DED5DF1F}']
  end;
  TJfirebase_BuildConfig = class(TJavaGenericImport<Jfirebase_BuildConfigClass, Jfirebase_BuildConfig>) end;

  JDataCollectionDefaultChangeClass = interface(JObjectClass)
    ['{63AF5B01-EF4F-4EFB-9C64-AF4E519205CD}']
    {class} function init(P1: Boolean): JDataCollectionDefaultChange; cdecl;
  end;

  [JavaSignature('com/google/firebase/DataCollectionDefaultChange')]
  JDataCollectionDefaultChange = interface(JObject)
    ['{5D5FA4C9-B04D-4F2A-AA2F-2331AECAB597}']
    function _Getenabled: Boolean; cdecl;
    property enabled: Boolean read _Getenabled;
  end;
  TJDataCollectionDefaultChange = class(TJavaGenericImport<JDataCollectionDefaultChangeClass, JDataCollectionDefaultChange>) end;

  JFirebaseAppClass = interface(JObjectClass)
    ['{7C824D35-7285-477A-8261-DEA5AE42CD34}']
    {class} function _GetDEFAULT_APP_NAME: JString; cdecl;
    {class} procedure clearInstancesForTest; cdecl;
    {class} function getApps(P1: JContext): JList; cdecl;
    {class} function getInstance: JFirebaseApp; cdecl; overload;
    {class} function getInstance(P1: JString): JFirebaseApp; cdecl; overload;
    {class} function getPersistenceKey(P1: JString; P2: JFirebaseOptions): JString; cdecl; overload;
    {class} function initializeApp(P1: JContext): JFirebaseApp; cdecl; overload;
    {class} function initializeApp(P1: JContext; P2: JFirebaseOptions): JFirebaseApp; cdecl; overload;
    {class} function initializeApp(P1: JContext; P2: JFirebaseOptions; P3: JString): JFirebaseApp; cdecl; overload;
    {class} property DEFAULT_APP_NAME: JString read _GetDEFAULT_APP_NAME;
  end;

  [JavaSignature('com/google/firebase/FirebaseApp')]
  JFirebaseApp = interface(JObject)
    ['{5A1CE1F7-0450-4D05-9967-F7D72AD972D6}']
    procedure addBackgroundStateChangeListener(P1: JFirebaseApp_BackgroundStateChangeListener); cdecl;
    procedure addIdTokenListener(P1: JFirebaseApp_IdTokenListener); cdecl;
    procedure addLifecycleEventListener(P1: JFirebaseAppLifecycleListener); cdecl;
    procedure delete; cdecl;
    function equals(P1: JObject): Boolean; cdecl;
    function &get(P1: Jlang_Class): JObject; cdecl;
    function getApplicationContext: JContext; cdecl;
    function getListeners: JList; cdecl;
    function getName: JString; cdecl;
    function getOptions: JFirebaseOptions; cdecl;
    function getPersistenceKey: JString; cdecl; overload;
    function getToken(P1: Boolean): JTask; cdecl;
    function getUid: JString; cdecl;
    function hashCode: Integer; cdecl;
    function isDataCollectionDefaultEnabled: Boolean; cdecl;
    function isDefaultApp: Boolean; cdecl;
    procedure notifyIdTokenListeners(P1: JInternalTokenResult); cdecl;
    procedure removeBackgroundStateChangeListener(P1: JFirebaseApp_BackgroundStateChangeListener); cdecl;
    procedure removeIdTokenListener(P1: JFirebaseApp_IdTokenListener); cdecl;
    procedure removeLifecycleEventListener(P1: JFirebaseAppLifecycleListener); cdecl;
    procedure setAutomaticResourceManagementEnabled(P1: Boolean); cdecl;
    procedure setDataCollectionDefaultEnabled(P1: Boolean); cdecl;
    procedure setIdTokenListenersCountChangedListener(P1: JFirebaseApp_IdTokenListenersCountChangedListener); cdecl;
    procedure setTokenProvider(P1: JInternalTokenProvider); cdecl;
    function toString: JString; cdecl;
  end;
  TJFirebaseApp = class(TJavaGenericImport<JFirebaseAppClass, JFirebaseApp>) end;

  JFirebaseApp_1Class = interface(JObjectClass)
    ['{51CB3FF8-178A-4C11-BFC8-7122B7A49E56}']
  end;

  [JavaSignature('com/google/firebase/FirebaseApp$1')]
  JFirebaseApp_1 = interface(JObject)
    ['{AA82206E-AA2E-4905-B52F-7CAF9AC85FAC}']
  end;
  TJFirebaseApp_1 = class(TJavaGenericImport<JFirebaseApp_1Class, JFirebaseApp_1>) end;

  JFirebaseApp_BackgroundStateChangeListenerClass = interface(IJavaClass)
    ['{5CBE0A97-36BC-434B-AA3C-F43D550EDD81}']
  end;

  [JavaSignature('com/google/firebase/FirebaseApp$BackgroundStateChangeListener')]
  JFirebaseApp_BackgroundStateChangeListener = interface(IJavaInstance)
    ['{AE0EDC6A-8E6A-46AF-9493-7B3BC0396558}']
    procedure onBackgroundStateChanged(P1: Boolean); cdecl;
  end;
  TJFirebaseApp_BackgroundStateChangeListener = class(TJavaGenericImport<JFirebaseApp_BackgroundStateChangeListenerClass, JFirebaseApp_BackgroundStateChangeListener>) end;

  // com.google.firebase.FirebaseApp$GlobalBackgroundStateListener
  JFirebaseApp_IdTokenListenerClass = interface(IJavaClass)
    ['{E1DECE2A-6B46-4256-AB93-748591774647}']
  end;

  [JavaSignature('com/google/firebase/FirebaseApp$IdTokenListener')]
  JFirebaseApp_IdTokenListener = interface(IJavaInstance)
    ['{ACDE71F8-01B1-4D0C-961A-4AA300A4F8EB}']
    procedure onIdTokenChanged(P1: JInternalTokenResult); cdecl;
  end;
  TJFirebaseApp_IdTokenListener = class(TJavaGenericImport<JFirebaseApp_IdTokenListenerClass, JFirebaseApp_IdTokenListener>) end;

  JFirebaseApp_IdTokenListenersCountChangedListenerClass = interface(IJavaClass)
    ['{C06950BF-B3AB-474F-8BFB-8EF1C5700B38}']
  end;

  [JavaSignature('com/google/firebase/FirebaseApp$IdTokenListenersCountChangedListener')]
  JFirebaseApp_IdTokenListenersCountChangedListener = interface(IJavaInstance)
    ['{206FCED1-F33B-40A9-9EA5-F344746BBA1B}']
    procedure onListenerCountChanged(P1: Integer); cdecl;
  end;
  TJFirebaseApp_IdTokenListenersCountChangedListener = class(TJavaGenericImport<JFirebaseApp_IdTokenListenersCountChangedListenerClass, JFirebaseApp_IdTokenListenersCountChangedListener>) end;

  JFirebaseApp_UiExecutorClass = interface(JExecutorClass)
    ['{AABE6870-FFFD-4F65-8C13-90C5C93B0DBC}']
  end;

  [JavaSignature('com/google/firebase/FirebaseApp$UiExecutor')]
  JFirebaseApp_UiExecutor = interface(JExecutor)
    ['{D716A639-577A-4845-BE80-3B3C057DA7B9}']
    procedure execute(P1: JRunnable); cdecl;
  end;
  TJFirebaseApp_UiExecutor = class(TJavaGenericImport<JFirebaseApp_UiExecutorClass, JFirebaseApp_UiExecutor>) end;

  JFirebaseApp_UserUnlockReceiverClass = interface(JBroadcastReceiverClass)
    ['{DB1B2144-D7EB-4464-8115-47009296A5AD}']
    {class} function init(P1: JContext): JFirebaseApp_UserUnlockReceiver; cdecl;
  end;

  [JavaSignature('com/google/firebase/FirebaseApp$UserUnlockReceiver')]
  JFirebaseApp_UserUnlockReceiver = interface(JBroadcastReceiver)
    ['{8BE0E45C-F5D7-4771-B21B-FB2DB8A86FD0}']
    procedure onReceive(P1: JContext; P2: JIntent); cdecl;
    procedure unregister; cdecl;
  end;
  TJFirebaseApp_UserUnlockReceiver = class(TJavaGenericImport<JFirebaseApp_UserUnlockReceiverClass, JFirebaseApp_UserUnlockReceiver>) end;

  JFirebaseAppLifecycleListenerClass = interface(IJavaClass)
    ['{6AC3DC5F-A94D-4AA6-B469-20EAA15FA429}']
  end;

  [JavaSignature('com/google/firebase/FirebaseAppLifecycleListener')]
  JFirebaseAppLifecycleListener = interface(IJavaInstance)
    ['{CCC50A2B-E331-4522-AF00-5702FF3729B8}']
    procedure onDeleted(P1: JString; P2: JFirebaseOptions); cdecl;
  end;
  TJFirebaseAppLifecycleListener = class(TJavaGenericImport<JFirebaseAppLifecycleListenerClass, JFirebaseAppLifecycleListener>) end;

  JFirebaseErrorClass = interface(JObjectClass)
    ['{5E1A6447-1011-4CDE-850E-7DDD8F9BC5D4}']
    {class} function _GetERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL: Integer; cdecl;
    {class} function _GetERROR_APP_NOT_AUTHORIZED: Integer; cdecl;
    {class} function _GetERROR_CREDENTIAL_ALREADY_IN_USE: Integer; cdecl;
    {class} function _GetERROR_CUSTOM_TOKEN_MISMATCH: Integer; cdecl;
    {class} function _GetERROR_EMAIL_ALREADY_IN_USE: Integer; cdecl;
    {class} function _GetERROR_INTERNAL_ERROR: Integer; cdecl;
    {class} function _GetERROR_INVALID_API_KEY: Integer; cdecl;
    {class} function _GetERROR_INVALID_CREDENTIAL: Integer; cdecl;
    {class} function _GetERROR_INVALID_CUSTOM_TOKEN: Integer; cdecl;
    {class} function _GetERROR_INVALID_EMAIL: Integer; cdecl;
    {class} function _GetERROR_INVALID_USER_TOKEN: Integer; cdecl;
    {class} function _GetERROR_NETWORK_REQUEST_FAILED: Integer; cdecl;
    {class} function _GetERROR_NO_SIGNED_IN_USER: Integer; cdecl;
    {class} function _GetERROR_NO_SUCH_PROVIDER: Integer; cdecl;
    {class} function _GetERROR_OPERATION_NOT_ALLOWED: Integer; cdecl;
    {class} function _GetERROR_PROVIDER_ALREADY_LINKED: Integer; cdecl;
    {class} function _GetERROR_REQUIRES_RECENT_LOGIN: Integer; cdecl;
    {class} function _GetERROR_TOO_MANY_REQUESTS: Integer; cdecl;
    {class} function _GetERROR_USER_DISABLED: Integer; cdecl;
    {class} function _GetERROR_USER_MISMATCH: Integer; cdecl;
    {class} function _GetERROR_USER_NOT_FOUND: Integer; cdecl;
    {class} function _GetERROR_USER_TOKEN_EXPIRED: Integer; cdecl;
    {class} function _GetERROR_WEAK_PASSWORD: Integer; cdecl;
    {class} function _GetERROR_WRONG_PASSWORD: Integer; cdecl;
    {class} function init(P1: Integer): JFirebaseError; cdecl;
    {class} property ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL: Integer read _GetERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL;
    {class} property ERROR_APP_NOT_AUTHORIZED: Integer read _GetERROR_APP_NOT_AUTHORIZED;
    {class} property ERROR_CREDENTIAL_ALREADY_IN_USE: Integer read _GetERROR_CREDENTIAL_ALREADY_IN_USE;
    {class} property ERROR_CUSTOM_TOKEN_MISMATCH: Integer read _GetERROR_CUSTOM_TOKEN_MISMATCH;
    {class} property ERROR_EMAIL_ALREADY_IN_USE: Integer read _GetERROR_EMAIL_ALREADY_IN_USE;
    {class} property ERROR_INTERNAL_ERROR: Integer read _GetERROR_INTERNAL_ERROR;
    {class} property ERROR_INVALID_API_KEY: Integer read _GetERROR_INVALID_API_KEY;
    {class} property ERROR_INVALID_CREDENTIAL: Integer read _GetERROR_INVALID_CREDENTIAL;
    {class} property ERROR_INVALID_CUSTOM_TOKEN: Integer read _GetERROR_INVALID_CUSTOM_TOKEN;
    {class} property ERROR_INVALID_EMAIL: Integer read _GetERROR_INVALID_EMAIL;
    {class} property ERROR_INVALID_USER_TOKEN: Integer read _GetERROR_INVALID_USER_TOKEN;
    {class} property ERROR_NETWORK_REQUEST_FAILED: Integer read _GetERROR_NETWORK_REQUEST_FAILED;
    {class} property ERROR_NO_SIGNED_IN_USER: Integer read _GetERROR_NO_SIGNED_IN_USER;
    {class} property ERROR_NO_SUCH_PROVIDER: Integer read _GetERROR_NO_SUCH_PROVIDER;
    {class} property ERROR_OPERATION_NOT_ALLOWED: Integer read _GetERROR_OPERATION_NOT_ALLOWED;
    {class} property ERROR_PROVIDER_ALREADY_LINKED: Integer read _GetERROR_PROVIDER_ALREADY_LINKED;
    {class} property ERROR_REQUIRES_RECENT_LOGIN: Integer read _GetERROR_REQUIRES_RECENT_LOGIN;
    {class} property ERROR_TOO_MANY_REQUESTS: Integer read _GetERROR_TOO_MANY_REQUESTS;
    {class} property ERROR_USER_DISABLED: Integer read _GetERROR_USER_DISABLED;
    {class} property ERROR_USER_MISMATCH: Integer read _GetERROR_USER_MISMATCH;
    {class} property ERROR_USER_NOT_FOUND: Integer read _GetERROR_USER_NOT_FOUND;
    {class} property ERROR_USER_TOKEN_EXPIRED: Integer read _GetERROR_USER_TOKEN_EXPIRED;
    {class} property ERROR_WEAK_PASSWORD: Integer read _GetERROR_WEAK_PASSWORD;
    {class} property ERROR_WRONG_PASSWORD: Integer read _GetERROR_WRONG_PASSWORD;
  end;

  [JavaSignature('com/google/firebase/FirebaseError')]
  JFirebaseError = interface(JObject)
    ['{B37EF123-2D88-41C0-8255-0BAB9AA04E27}']
    function getErrorCode: Integer; cdecl;
  end;
  TJFirebaseError = class(TJavaGenericImport<JFirebaseErrorClass, JFirebaseError>) end;

  // com.google.firebase.FirebaseNetworkException
  JFirebaseOptionsClass = interface(JObjectClass)
    ['{61BE75A7-F1C0-4116-8612-DA06E62EF04B}']
    {class} function fromResource(P1: JContext): JFirebaseOptions; cdecl;
  end;

  [JavaSignature('com/google/firebase/FirebaseOptions')]
  JFirebaseOptions = interface(JObject)
    ['{E413D059-8F4E-4C01-8208-B40C3A316446}']
    function equals(P1: JObject): Boolean; cdecl;
    function getApiKey: JString; cdecl;
    function getApplicationId: JString; cdecl;
    function getDatabaseUrl: JString; cdecl;
    function getGaTrackingId: JString; cdecl;
    function getGcmSenderId: JString; cdecl;
    function getProjectId: JString; cdecl;
    function getStorageBucket: JString; cdecl;
    function hashCode: Integer; cdecl;
    function toString: JString; cdecl;
  end;
  TJFirebaseOptions = class(TJavaGenericImport<JFirebaseOptionsClass, JFirebaseOptions>) end;

  JFirebaseOptions_1Class = interface(JObjectClass)
    ['{877397E1-4EB5-4DFA-B8CB-4BC751EEB6D5}']
  end;

  [JavaSignature('com/google/firebase/FirebaseOptions$1')]
  JFirebaseOptions_1 = interface(JObject)
    ['{3EAAF5F3-8C5C-48DD-ADFF-4D284669F8EA}']
  end;
  TJFirebaseOptions_1 = class(TJavaGenericImport<JFirebaseOptions_1Class, JFirebaseOptions_1>) end;

  JFirebaseOptions_BuilderClass = interface(JObjectClass)
    ['{14868704-4718-456A-9A12-2F5B1A0DC676}']
    {class} function init: JFirebaseOptions_Builder; cdecl; overload;
    {class} function init(P1: JFirebaseOptions): JFirebaseOptions_Builder; cdecl; overload;
  end;

  [JavaSignature('com/google/firebase/FirebaseOptions$Builder')]
  JFirebaseOptions_Builder = interface(JObject)
    ['{6D52580E-E321-40B1-8D42-0553456169E4}']
    function build: JFirebaseOptions; cdecl;
    function setApiKey(P1: JString): JFirebaseOptions_Builder; cdecl;
    function setApplicationId(P1: JString): JFirebaseOptions_Builder; cdecl;
    function setDatabaseUrl(P1: JString): JFirebaseOptions_Builder; cdecl;
    function setGaTrackingId(P1: JString): JFirebaseOptions_Builder; cdecl;
    function setGcmSenderId(P1: JString): JFirebaseOptions_Builder; cdecl;
    function setProjectId(P1: JString): JFirebaseOptions_Builder; cdecl;
    function setStorageBucket(P1: JString): JFirebaseOptions_Builder; cdecl;
  end;
  TJFirebaseOptions_Builder = class(TJavaGenericImport<JFirebaseOptions_BuilderClass, JFirebaseOptions_Builder>) end;

  // com.google.firebase.FirebaseTooManyRequestsException
  JPublicApiClass = interface(JAnnotationClass)
    ['{E3CBB6E0-5257-475E-964A-6132B524BCC8}']
  end;

  [JavaSignature('com/google/firebase/annotations/PublicApi')]
  JPublicApi = interface(JAnnotation)
    ['{84C64C81-1354-4C3B-A601-3D3B8B2C46BC}']
  end;
  TJPublicApi = class(TJavaGenericImport<JPublicApiClass, JPublicApi>) end;

  // com.google.firebase.auth.FirebaseAuthException
  JGetTokenResultClass = interface(JObjectClass)
    ['{183CCCA7-911D-42FE-A1AD-FADECEBCA10E}']
    {class} function init(P1: JString; P2: JMap): JGetTokenResult; cdecl;
  end;

  [JavaSignature('com/google/firebase/auth/GetTokenResult')]
  JGetTokenResult = interface(JObject)
    ['{33AD5AE4-0F01-4882-98F4-DD67E5DF1BC2}']
    function getAuthTimestamp: Int64; cdecl;
    function getClaims: JMap; cdecl;
    function getExpirationTimestamp: Int64; cdecl;
    function getIssuedAtTimestamp: Int64; cdecl;
    function getSignInProvider: JString; cdecl;
    function getToken: JString; cdecl;
  end;
  TJGetTokenResult = class(TJavaGenericImport<JGetTokenResultClass, JGetTokenResult>) end;

  JComponentContainerClass = interface(IJavaClass)
    ['{B4EBC345-FC41-402F-9C24-2A986195CDE8}']
  end;

  [JavaSignature('com/google/firebase/components/ComponentContainer')]
  JComponentContainer = interface(IJavaInstance)
    ['{B160A2C7-E736-46AE-A476-E038B65C2BF8}']
    function &get(P1: Jlang_Class): JObject; cdecl;
    function getProvider(P1: Jlang_Class): Jinject_Provider; cdecl;
    function setOf(P1: Jlang_Class): JSet; cdecl;
    function setOfProvider(P1: Jlang_Class): Jinject_Provider; cdecl;
  end;
  TJComponentContainer = class(TJavaGenericImport<JComponentContainerClass, JComponentContainer>) end;

  JAbstractComponentContainerClass = interface(JComponentContainerClass)
    ['{37BE29F2-56D2-43F6-9C7E-A2B09FF92C30}']
  end;

  [JavaSignature('com/google/firebase/components/AbstractComponentContainer')]
  JAbstractComponentContainer = interface(JComponentContainer)
    ['{6A733303-A787-4B57-9054-05E07717E839}']
    function &get(P1: Jlang_Class): JObject; cdecl;
    function setOf(P1: Jlang_Class): JSet; cdecl;
  end;
  TJAbstractComponentContainer = class(TJavaGenericImport<JAbstractComponentContainerClass, JAbstractComponentContainer>) end;

  JComponentClass = interface(JObjectClass)
    ['{4D81AFC6-9D82-46C9-AC0F-F674773052AE}']
    {class} function builder(P1: Jlang_Class): JComponent_Builder; cdecl; overload;
    {class} function intoSet(P1: JObject; P2: Jlang_Class): JComponent; cdecl;
    {class} function intoSetBuilder(P1: Jlang_Class): JComponent_Builder; cdecl;
    {class} function &of(P1: Jlang_Class; P2: JObject): JComponent; cdecl; overload;
  end;

  [JavaSignature('com/google/firebase/components/Component')]
  JComponent = interface(JObject)
    ['{20ED9DD4-B056-47F7-80F2-B214DD640DB1}']
    function getDependencies: JSet; cdecl;
    function getFactory: JComponentFactory; cdecl;
    function getProvidedInterfaces: JSet; cdecl;
    function getPublishedEvents: JSet; cdecl;
    function isAlwaysEager: Boolean; cdecl;
    function isEagerInDefaultApp: Boolean; cdecl;
    function isLazy: Boolean; cdecl;
    function isValue: Boolean; cdecl;
    function toString: JString; cdecl;
  end;
  TJComponent = class(TJavaGenericImport<JComponentClass, JComponent>) end;

  JComponentFactoryClass = interface(IJavaClass)
    ['{A1A4A792-8F88-4493-838F-FE74D89F3FD9}']
  end;

  [JavaSignature('com/google/firebase/components/ComponentFactory')]
  JComponentFactory = interface(IJavaInstance)
    ['{27938968-D493-4878-A736-380BA6FBB158}']
    function create(P1: JComponentContainer): JObject; cdecl;
  end;
  TJComponentFactory = class(TJavaGenericImport<JComponentFactoryClass, JComponentFactory>) end;

  JLambda_1Class = interface(JComponentFactoryClass)
    ['{740375E4-7A02-4356-829F-561DF977BB6C}']
  end;

  [JavaSignature('com/google/firebase/components/Component$$Lambda$1')]
  JLambda_1 = interface(JComponentFactory)
    ['{4937C455-074F-4813-B9B9-ABBD2305B3DB}']
    function create(P1: JComponentContainer): JObject; cdecl;
  end;
  TJLambda_1 = class(TJavaGenericImport<JLambda_1Class, JLambda_1>) end;

  JLambda_2Class = interface(JComponentFactoryClass)
    ['{CDE7B635-B894-48AF-B24A-F94468AE1607}']
  end;

  [JavaSignature('com/google/firebase/components/Component$$Lambda$2')]
  JLambda_2 = interface(JComponentFactory)
    ['{410D01E7-7516-4A26-855A-3B98E23A3354}']
    function create(P1: JComponentContainer): JObject; cdecl;
  end;
  TJLambda_2 = class(TJavaGenericImport<JLambda_2Class, JLambda_2>) end;

  JLambda_3Class = interface(JComponentFactoryClass)
    ['{4A1D18B8-2EAF-440E-BF80-6ED6F7341639}']
  end;

  [JavaSignature('com/google/firebase/components/Component$$Lambda$3')]
  JLambda_3 = interface(JComponentFactory)
    ['{6641F067-4E29-4723-8A06-7B34A2A6D8D6}']
    function create(P1: JComponentContainer): JObject; cdecl;
  end;
  TJLambda_3 = class(TJavaGenericImport<JLambda_3Class, JLambda_3>) end;

  JComponent_1Class = interface(JObjectClass)
    ['{1455CCAD-945C-403C-B827-F0B134292E7C}']
  end;

  [JavaSignature('com/google/firebase/components/Component$1')]
  JComponent_1 = interface(JObject)
    ['{3B337F25-74E2-4234-BBA3-272BEC9BC011}']
  end;
  TJComponent_1 = class(TJavaGenericImport<JComponent_1Class, JComponent_1>) end;

  JComponent_BuilderClass = interface(JObjectClass)
    ['{C1F243AF-14C8-41C5-BF3B-D7C5B5074DEE}']
  end;

  [JavaSignature('com/google/firebase/components/Component$Builder')]
  JComponent_Builder = interface(JObject)
    ['{F5E16FD0-71A6-443D-B070-20C05CCB4C43}']
    function add(P1: JDependency): JComponent_Builder; cdecl;
    function alwaysEager: JComponent_Builder; cdecl;
    function build: JComponent; cdecl;
    function eagerInDefaultApp: JComponent_Builder; cdecl;
    function factory(P1: JComponentFactory): JComponent_Builder; cdecl;
    function publishes(P1: Jlang_Class): JComponent_Builder; cdecl;
  end;
  TJComponent_Builder = class(TJavaGenericImport<JComponent_BuilderClass, JComponent_Builder>) end;

  JComponentDiscoveryClass = interface(JObjectClass)
    ['{8727343B-A563-414F-A3F0-74767EFCACC7}']
    {class} function forContext(P1: JContext): JComponentDiscovery; cdecl;
  end;

  [JavaSignature('com/google/firebase/components/ComponentDiscovery')]
  JComponentDiscovery = interface(JObject)
    ['{885FA213-9420-447B-AFEA-62ED8EB080D9}']
    function discover: JList; cdecl;
  end;
  TJComponentDiscovery = class(TJavaGenericImport<JComponentDiscoveryClass, JComponentDiscovery>) end;

  JComponentDiscovery_1Class = interface(JObjectClass)
    ['{A1C10FFE-48A0-44DF-9BDA-2D56127DF18A}']
  end;

  [JavaSignature('com/google/firebase/components/ComponentDiscovery$1')]
  JComponentDiscovery_1 = interface(JObject)
    ['{450293F0-EDC4-4A34-82DB-E4BD329988E1}']
  end;
  TJComponentDiscovery_1 = class(TJavaGenericImport<JComponentDiscovery_1Class, JComponentDiscovery_1>) end;

  JComponentDiscovery_RegistrarNameRetrieverClass = interface(IJavaClass)
    ['{6C2C62B7-B10B-4184-AF37-3B2DF63023EE}']
  end;

  [JavaSignature('com/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever')]
  JComponentDiscovery_RegistrarNameRetriever = interface(IJavaInstance)
    ['{8C38FA99-BB73-45AC-902C-EF57AD01B763}']
    function retrieve(P1: JObject): JList; cdecl;
  end;
  TJComponentDiscovery_RegistrarNameRetriever = class(TJavaGenericImport<JComponentDiscovery_RegistrarNameRetrieverClass, JComponentDiscovery_RegistrarNameRetriever>) end;

  JComponentDiscovery_MetadataRegistrarNameRetrieverClass = interface(JComponentDiscovery_RegistrarNameRetrieverClass)
    ['{8D0B883C-7D64-4113-B5F1-D104B077BA91}']
  end;

  [JavaSignature('com/google/firebase/components/ComponentDiscovery$MetadataRegistrarNameRetriever')]
  JComponentDiscovery_MetadataRegistrarNameRetriever = interface(JComponentDiscovery_RegistrarNameRetriever)
    ['{5E97933C-D62D-4A20-B91A-9787BBB3C44C}']
    function retrieve(P1: JObject): JList; cdecl; overload;
    function retrieve(P1: JContext): JList; cdecl; overload;
  end;
  TJComponentDiscovery_MetadataRegistrarNameRetriever = class(TJavaGenericImport<JComponentDiscovery_MetadataRegistrarNameRetrieverClass, JComponentDiscovery_MetadataRegistrarNameRetriever>) end;

  JComponentDiscoveryServiceClass = interface(JServiceClass)
    ['{E9D79CD9-2AEA-4DAD-9D6E-53A741EBB0B4}']
    {class} function init: JComponentDiscoveryService; cdecl;
  end;

  [JavaSignature('com/google/firebase/components/ComponentDiscoveryService')]
  JComponentDiscoveryService = interface(JService)
    ['{D82C189A-C12B-4CF8-91F3-C58C686E51AD}']
    function onBind(P1: JIntent): JIBinder; cdecl;
  end;
  TJComponentDiscoveryService = class(TJavaGenericImport<JComponentDiscoveryServiceClass, JComponentDiscoveryService>) end;

  JComponentRegistrarClass = interface(IJavaClass)
    ['{34684B82-7237-4114-BB38-08699559C4C0}']
  end;

  [JavaSignature('com/google/firebase/components/ComponentRegistrar')]
  JComponentRegistrar = interface(IJavaInstance)
    ['{3B70813F-F199-4BFA-8F49-9B64F28DA013}']
    function getComponents: JList; cdecl;
  end;
  TJComponentRegistrar = class(TJavaGenericImport<JComponentRegistrarClass, JComponentRegistrar>) end;

  JComponentRuntimeClass = interface(JAbstractComponentContainerClass)
    ['{2A88CE98-BA7B-47A6-88B0-B0F930D084CA}']
  end;

  [JavaSignature('com/google/firebase/components/ComponentRuntime')]
  JComponentRuntime = interface(JAbstractComponentContainer)
    ['{AB73EC45-A000-4DB0-86BB-40E388B86DA5}']
    function &get(P1: Jlang_Class): JObject; cdecl;
    function getProvider(P1: Jlang_Class): Jinject_Provider; cdecl;
    procedure initializeEagerComponents(P1: Boolean); cdecl;
    function setOf(P1: Jlang_Class): JSet; cdecl;
    function setOfProvider(P1: Jlang_Class): Jinject_Provider; cdecl;
  end;
  TJComponentRuntime = class(TJavaGenericImport<JComponentRuntimeClass, JComponentRuntime>) end;

  Jinject_ProviderClass = interface(IJavaClass)
    ['{2BB00D64-FC1C-438D-87EE-9B67245696F9}']
  end;

  [JavaSignature('com/google/firebase/inject/Provider')]
  Jinject_Provider = interface(IJavaInstance)
    ['{015E0945-2938-48B6-A8AE-EE6BD07361C7}']
    function &get: JObject; cdecl;
  end;
  TJinject_Provider = class(TJavaGenericImport<Jinject_ProviderClass, Jinject_Provider>) end;

  J_Lambda_1Class = interface(Jinject_ProviderClass)
    ['{5F3156FB-602E-42A5-A22D-4DE2C886E205}']
  end;

  [JavaSignature('com/google/firebase/components/ComponentRuntime$$Lambda$1')]
  J_Lambda_1 = interface(Jinject_Provider)
    ['{E7F76092-CE00-40D8-BB2E-919A5B5DC18B}']
    function &get: JObject; cdecl;
  end;
  TJ_Lambda_1 = class(TJavaGenericImport<J_Lambda_1Class, J_Lambda_1>) end;

  JLambda_4Class = interface(Jinject_ProviderClass)
    ['{7136BB51-37FE-4FC1-AA52-A3143DD1163E}']
  end;

  [JavaSignature('com/google/firebase/components/ComponentRuntime$$Lambda$4')]
  JLambda_4 = interface(Jinject_Provider)
    ['{6A48108C-564C-4E22-AD8B-54B9C0897503}']
    function &get: JObject; cdecl;
  end;
  TJLambda_4 = class(TJavaGenericImport<JLambda_4Class, JLambda_4>) end;

  JLambda_5Class = interface(Jinject_ProviderClass)
    ['{EF28BE1E-F7DB-48D8-8A42-8A221A83F2C3}']
  end;

  [JavaSignature('com/google/firebase/components/ComponentRuntime$$Lambda$5')]
  JLambda_5 = interface(Jinject_Provider)
    ['{DA572F2A-1952-4EA3-B519-F475A954DD1C}']
    function &get: JObject; cdecl;
  end;
  TJLambda_5 = class(TJavaGenericImport<JLambda_5Class, JLambda_5>) end;

  JCycleDetectorClass = interface(JObjectClass)
    ['{3B1B4C94-6D80-40C9-A94E-FA78DC036BBB}']
  end;

  [JavaSignature('com/google/firebase/components/CycleDetector')]
  JCycleDetector = interface(JObject)
    ['{E8947B7A-42F7-4AFB-93EB-09984F6B9A21}']
  end;
  TJCycleDetector = class(TJavaGenericImport<JCycleDetectorClass, JCycleDetector>) end;

  JCycleDetector_1Class = interface(JObjectClass)
    ['{B43D3A12-9FAD-4B54-8EBE-D876217BF5DA}']
  end;

  [JavaSignature('com/google/firebase/components/CycleDetector$1')]
  JCycleDetector_1 = interface(JObject)
    ['{B5FFAC8B-26F9-4290-9FFC-6F1B0808A694}']
  end;
  TJCycleDetector_1 = class(TJavaGenericImport<JCycleDetector_1Class, JCycleDetector_1>) end;

  JCycleDetector_ComponentNodeClass = interface(JObjectClass)
    ['{245CABDC-8B41-46AE-B622-00156E28CC0B}']
  end;

  [JavaSignature('com/google/firebase/components/CycleDetector$ComponentNode')]
  JCycleDetector_ComponentNode = interface(JObject)
    ['{B3FF94DB-5CC0-4EC7-8A19-44C326E22C6F}']
  end;
  TJCycleDetector_ComponentNode = class(TJavaGenericImport<JCycleDetector_ComponentNodeClass, JCycleDetector_ComponentNode>) end;

  JCycleDetector_DepClass = interface(JObjectClass)
    ['{A4657646-C61A-4F30-8452-480114822CAD}']
  end;

  [JavaSignature('com/google/firebase/components/CycleDetector$Dep')]
  JCycleDetector_Dep = interface(JObject)
    ['{4057ADF6-7629-45C4-8722-3AAD4C413AB9}']
    function equals(P1: JObject): Boolean; cdecl;
    function hashCode: Integer; cdecl;
  end;
  TJCycleDetector_Dep = class(TJavaGenericImport<JCycleDetector_DepClass, JCycleDetector_Dep>) end;

  JDependencyClass = interface(JObjectClass)
    ['{B8488A25-1CA4-4998-AE53-798BB6202EBE}']
    {class} function optional(P1: Jlang_Class): JDependency; cdecl;
    {class} function optionalProvider(P1: Jlang_Class): JDependency; cdecl;
    {class} function required(P1: Jlang_Class): JDependency; cdecl;
    {class} function requiredProvider(P1: Jlang_Class): JDependency; cdecl;
    {class} function setOf(P1: Jlang_Class): JDependency; cdecl;
    {class} function setOfProvider(P1: Jlang_Class): JDependency; cdecl;
  end;

  [JavaSignature('com/google/firebase/components/Dependency')]
  JDependency = interface(JObject)
    ['{A7B48ACB-C8F1-4072-B078-77922271BF99}']
    function equals(P1: JObject): Boolean; cdecl;
    function getInterface: Jlang_Class; cdecl;
    function hashCode: Integer; cdecl;
    function isDirectInjection: Boolean; cdecl;
    function isRequired: Boolean; cdecl;
    function isSet: Boolean; cdecl;
    function toString: JString; cdecl;
  end;
  TJDependency = class(TJavaGenericImport<JDependencyClass, JDependency>) end;

  JDependencyExceptionClass = interface(JRuntimeExceptionClass)
    ['{6789FB60-E2A3-4B01-BA76-B600858BE13E}']
    {class} function init(P1: JString): JDependencyException; cdecl;
  end;

  [JavaSignature('com/google/firebase/components/DependencyException')]
  JDependencyException = interface(JRuntimeException)
    ['{6C5A84E9-1A27-48AA-9DF3-BED9035199B3}']
  end;
  TJDependencyException = class(TJavaGenericImport<JDependencyExceptionClass, JDependencyException>) end;

  JDependencyCycleExceptionClass = interface(JDependencyExceptionClass)
    ['{B0B021C4-8BA5-4190-9753-63ADE68B67A6}']
    {class} function init(P1: JList): JDependencyCycleException; cdecl;
  end;

  [JavaSignature('com/google/firebase/components/DependencyCycleException')]
  JDependencyCycleException = interface(JDependencyException)
    ['{D64ED672-DF39-4FF1-A2D6-FBAB51C95FB6}']
    function getComponentsInCycle: JList; cdecl;
  end;
  TJDependencyCycleException = class(TJavaGenericImport<JDependencyCycleExceptionClass, JDependencyCycleException>) end;

  JSubscriberClass = interface(IJavaClass)
    ['{30D02BF1-4EE8-422D-B0DC-513CF02A1D2E}']
  end;

  [JavaSignature('com/google/firebase/events/Subscriber')]
  JSubscriber = interface(IJavaInstance)
    ['{BDD52EF8-D7A1-4D40-880D-416A48340ACE}']
    procedure subscribe(P1: Jlang_Class; P2: JEventHandler); cdecl; overload;
    procedure subscribe(P1: Jlang_Class; P2: JExecutor; P3: JEventHandler); cdecl; overload;
    procedure unsubscribe(P1: Jlang_Class; P2: JEventHandler); cdecl;
  end;
  TJSubscriber = class(TJavaGenericImport<JSubscriberClass, JSubscriber>) end;

  JEventBusClass = interface(JSubscriberClass)
    ['{C27C5F78-6DD2-4129-A9DC-A8DE9C385F21}']
  end;

  [JavaSignature('com/google/firebase/components/EventBus')]
  JEventBus = interface(JSubscriber)
    ['{5A9D5B4E-B5CD-45CF-88CD-40D40E65C9A5}']
    procedure publish(P1: JEvent); cdecl;
    procedure subscribe(P1: Jlang_Class; P2: JEventHandler); cdecl; overload;
    procedure subscribe(P1: Jlang_Class; P2: JExecutor; P3: JEventHandler); cdecl; overload;
    procedure unsubscribe(P1: Jlang_Class; P2: JEventHandler); cdecl;
  end;
  TJEventBus = class(TJavaGenericImport<JEventBusClass, JEventBus>) end;

  JEventBus__Lambda_1Class = interface(JRunnableClass)
    ['{4F0777AE-C810-49B3-B1A4-7037AF36FAAA}']
  end;

  [JavaSignature('com/google/firebase/components/EventBus$$Lambda$1')]
  JEventBus__Lambda_1 = interface(JRunnable)
    ['{DD6E303A-93D4-48D7-ABE5-215CF5071D4F}']
    procedure run; cdecl;
  end;
  TJEventBus__Lambda_1 = class(TJavaGenericImport<JEventBus__Lambda_1Class, JEventBus__Lambda_1>) end;

  JLazyClass = interface(Jinject_ProviderClass)
    ['{A8C21B70-D08C-4098-9C7C-ADFFFDC262A5}']
  end;

  [JavaSignature('com/google/firebase/components/Lazy')]
  JLazy = interface(Jinject_Provider)
    ['{0BE38CBE-EBE7-4B9C-B791-E32D25651083}']
    function &get: JObject; cdecl;
  end;
  TJLazy = class(TJavaGenericImport<JLazyClass, JLazy>) end;

  JMissingDependencyExceptionClass = interface(JDependencyExceptionClass)
    ['{23AE8969-7DBD-4E54-8C5B-8ED61B2812BB}']
    {class} function init(P1: JString): JMissingDependencyException; cdecl;
  end;

  [JavaSignature('com/google/firebase/components/MissingDependencyException')]
  JMissingDependencyException = interface(JDependencyException)
    ['{53E33C0D-BB00-4EA5-8EA8-5FF7ECCD0A25}']
  end;
  TJMissingDependencyException = class(TJavaGenericImport<JMissingDependencyExceptionClass, JMissingDependencyException>) end;

  JRestrictedComponentContainerClass = interface(JAbstractComponentContainerClass)
    ['{C2722F90-6F44-4A8B-854B-70597372842E}']
  end;

  [JavaSignature('com/google/firebase/components/RestrictedComponentContainer')]
  JRestrictedComponentContainer = interface(JAbstractComponentContainer)
    ['{18DE535E-05F2-4A19-914F-58EEE43CF4AB}']
    function &get(P1: Jlang_Class): JObject; cdecl;
    function getProvider(P1: Jlang_Class): Jinject_Provider; cdecl;
    function setOf(P1: Jlang_Class): JSet; cdecl;
    function setOfProvider(P1: Jlang_Class): Jinject_Provider; cdecl;
  end;
  TJRestrictedComponentContainer = class(TJavaGenericImport<JRestrictedComponentContainerClass, JRestrictedComponentContainer>) end;

  JPublisherClass = interface(IJavaClass)
    ['{0991C0DA-F972-4759-A9BC-8E90D09F3939}']
  end;

  [JavaSignature('com/google/firebase/events/Publisher')]
  JPublisher = interface(IJavaInstance)
    ['{3BFE8FA3-81D5-4BA8-8BD4-67CC8FCEE795}']
    procedure publish(P1: JEvent); cdecl;
  end;
  TJPublisher = class(TJavaGenericImport<JPublisherClass, JPublisher>) end;

  JRestrictedComponentContainer_RestrictedPublisherClass = interface(JPublisherClass)
    ['{1E4BE179-C9F2-4555-9AB0-B80A0F98BA68}']
    {class} function init(P1: JSet; P2: JPublisher): JRestrictedComponentContainer_RestrictedPublisher; cdecl;
  end;

  [JavaSignature('com/google/firebase/components/RestrictedComponentContainer$RestrictedPublisher')]
  JRestrictedComponentContainer_RestrictedPublisher = interface(JPublisher)
    ['{1EA3A511-383C-4EBA-83B2-5943909C21C7}']
    procedure publish(P1: JEvent); cdecl;
  end;
  TJRestrictedComponentContainer_RestrictedPublisher = class(TJavaGenericImport<JRestrictedComponentContainer_RestrictedPublisherClass, JRestrictedComponentContainer_RestrictedPublisher>) end;

  JEventClass = interface(JObjectClass)
    ['{D4474E22-8C37-474A-A872-505247DEBCDB}']
    {class} function init(P1: Jlang_Class; P2: JObject): JEvent; cdecl;
  end;

  [JavaSignature('com/google/firebase/events/Event')]
  JEvent = interface(JObject)
    ['{98299257-ED02-48AB-8605-708B5BA51C7B}']
    function getPayload: JObject; cdecl;
    function getType: Jlang_Class; cdecl;
    function toString: JString; cdecl;
  end;
  TJEvent = class(TJavaGenericImport<JEventClass, JEvent>) end;

  JEventHandlerClass = interface(IJavaClass)
    ['{0B3E37FB-F7BF-4D22-9B96-316EFE1D93F9}']
  end;

  [JavaSignature('com/google/firebase/events/EventHandler')]
  JEventHandler = interface(IJavaInstance)
    ['{03E2C688-44B3-4DE9-91C5-246D27472739}']
    procedure handle(P1: JEvent); cdecl;
  end;
  TJEventHandler = class(TJavaGenericImport<JEventHandlerClass, JEventHandler>) end;

  JFirebaseInstanceIdClass = interface(JObjectClass)
    ['{C2EE81F8-D1D8-4273-AAFE-BAF649C944E4}']
    {class} function getInstance: JFirebaseInstanceId; cdecl; overload;
    {class} function getInstance(P1: JFirebaseApp): JFirebaseInstanceId; cdecl; overload;
  end;

  [JavaSignature('com/google/firebase/iid/FirebaseInstanceId')]
  JFirebaseInstanceId = interface(JObject)
    ['{FBF959C6-6293-48EB-914D-426FC130B847}']
    procedure deleteInstanceId; cdecl;
    procedure deleteToken(P1: JString; P2: JString); cdecl;
    function getCreationTime: Int64; cdecl;
    function getId: JString; cdecl;
    function getInstanceId: JTask; cdecl;
    function getToken: JString; cdecl; overload;
    function getToken(P1: JString; P2: JString): JString; cdecl; overload;
  end;
  TJFirebaseInstanceId = class(TJavaGenericImport<JFirebaseInstanceIdClass, JFirebaseInstanceId>) end;

  JFirebaseInstanceId_zzaClass = interface(JObjectClass)
    ['{18C407E9-6F6D-45C0-B7A9-603DAF2C6512}']
  end;

  [JavaSignature('com/google/firebase/iid/FirebaseInstanceId$zza')]
  JFirebaseInstanceId_zza = interface(JObject)
    ['{A63716E9-1956-4B2F-96D9-ABE8DA4E15F7}']
  end;
  TJFirebaseInstanceId_zza = class(TJavaGenericImport<JFirebaseInstanceId_zzaClass, JFirebaseInstanceId_zza>) end;

  // com.google.firebase.iid.FirebaseInstanceIdReceiver
  Jiid_zzbClass = interface(JServiceClass)
    ['{534ADE42-CCBC-40B4-9691-647BE4723DF2}']
    {class} function init: Jiid_zzb; cdecl;
  end;

  [JavaSignature('com/google/firebase/iid/zzb')]
  Jiid_zzb = interface(JService)
    ['{78920C36-1C4F-4A82-877E-C64F4FB290EB}']
    function onBind(P1: JIntent): JIBinder; cdecl;
    function onStartCommand(P1: JIntent; P2: Integer; P3: Integer): Integer; cdecl;
    function zzc(P1: JIntent): Boolean; cdecl;
    procedure zzd(P1: JIntent); cdecl;
  end;
  TJiid_zzb = class(TJavaGenericImport<Jiid_zzbClass, Jiid_zzb>) end;

  JFirebaseInstanceIdServiceClass = interface(Jiid_zzbClass)
    ['{19A3A0C1-9027-4AAE-A119-741C295DF070}']
    {class} function init: JFirebaseInstanceIdService; cdecl;
  end;

  [JavaSignature('com/google/firebase/iid/FirebaseInstanceIdService')]
  JFirebaseInstanceIdService = interface(Jiid_zzb)
    ['{3FE40827-DF6A-4FD1-9E7E-77C8E3CB99DB}']
    procedure onTokenRefresh; cdecl;
    procedure zzd(P1: JIntent); cdecl;
  end;
  TJFirebaseInstanceIdService = class(TJavaGenericImport<JFirebaseInstanceIdServiceClass, JFirebaseInstanceIdService>) end;

  JInstanceIdResultClass = interface(IJavaClass)
    ['{B91A2ACD-3C1A-4834-A19B-5EBC2D8D885B}']
  end;

  [JavaSignature('com/google/firebase/iid/InstanceIdResult')]
  JInstanceIdResult = interface(IJavaInstance)
    ['{D30630CB-840D-4484-83FF-1EFE74D3C17B}']
    function getId: JString; cdecl;
    function getToken: JString; cdecl;
  end;
  TJInstanceIdResult = class(TJavaGenericImport<JInstanceIdResultClass, JInstanceIdResult>) end;

  JMessagingChannelClass = interface(IJavaClass)
    ['{8C0BB7F0-F2D0-4E19-AFE8-FC26228DFD56}']
  end;

  [JavaSignature('com/google/firebase/iid/MessagingChannel')]
  JMessagingChannel = interface(IJavaInstance)
    ['{14102789-40D2-4A9C-AAF9-AABAF67350A5}']
    function ackMessage(P1: JString): JTask; cdecl;
    function buildChannel(P1: JString; P2: JString): JTask; cdecl;
    function deleteInstanceId(P1: JString): JTask; cdecl;
    function deleteToken(P1: JString; P2: JString; P3: JString; P4: JString): JTask; cdecl;
    function getToken(P1: JString; P2: JString; P3: JString; P4: JString): JTask; cdecl;
    function isAvailable: Boolean; cdecl;
    function isChannelBuilt: Boolean; cdecl;
    function needsRefresh: Boolean; cdecl;
    function subscribeToTopic(P1: JString; P2: JString; P3: JString): JTask; cdecl;
    function unsubscribeFromTopic(P1: JString; P2: JString; P3: JString): JTask; cdecl;
  end;
  TJMessagingChannel = class(TJavaGenericImport<JMessagingChannelClass, JMessagingChannel>) end;

  JRegistrarClass = interface(JComponentRegistrarClass)
    ['{345263D6-F271-422E-83CE-208B27C046CA}']
    {class} function init: JRegistrar; cdecl;
  end;

  [JavaSignature('com/google/firebase/iid/Registrar')]
  JRegistrar = interface(JComponentRegistrar)
    ['{AD2FBC8A-72B5-48C6-902C-1D34C0441A94}']
    function getComponents: JList; cdecl;
  end;
  TJRegistrar = class(TJavaGenericImport<JRegistrarClass, JRegistrar>) end;

  // com.google.firebase.iid.Registrar$zza
  Jiid_zzaClass = interface(JObjectClass)
    ['{36C54C29-DD78-4984-8FF2-D43147842D9B}']
    {class} function zzc: JKeyPair; cdecl;
  end;

  [JavaSignature('com/google/firebase/iid/zza')]
  Jiid_zza = interface(JObject)
    ['{3F43EF76-CD40-4819-91A3-B2EFE5F2E7BF}']
  end;
  TJiid_zza = class(TJavaGenericImport<Jiid_zzaClass, Jiid_zza>) end;

  Jiid_zzaaClass = interface(JExceptionClass)
    ['{C879CB36-32CC-4CAC-9BD9-DC7D6D814A73}']
  end;

  [JavaSignature('com/google/firebase/iid/zzaa')]
  Jiid_zzaa = interface(JException)
    ['{9B626EDC-87CB-4FD6-8643-C00B9BBF232E}']
  end;
  TJiid_zzaa = class(TJavaGenericImport<Jiid_zzaaClass, Jiid_zzaa>) end;

  Jiid_zzabClass = interface(JObjectClass)
    ['{E9D3E707-31AD-4DEA-BA4E-0CED0AFA2536}']
    {class} function zzc(P1: JContext): Jiid_zzab; cdecl;
  end;

  [JavaSignature('com/google/firebase/iid/zzab')]
  Jiid_zzab = interface(JObject)
    ['{DF3F9F70-2701-49C2-95E3-6733855EA9D7}']
    function zza(P1: Integer; P2: JBundle): JTask; cdecl; overload;
    function zzb(P1: Integer; P2: JBundle): JTask; cdecl; overload;
  end;
  TJiid_zzab = class(TJavaGenericImport<Jiid_zzabClass, Jiid_zzab>) end;

  Jiid_zzacClass = interface(JObjectClass)
    ['{587A91EB-7188-4A5B-80C7-951C05B04E85}']
  end;

  [JavaSignature('com/google/firebase/iid/zzac')]
  Jiid_zzac = interface(JObject)
    ['{250FF4D9-2C86-4B0F-96CB-C1A8860B8F78}']
  end;
  TJiid_zzac = class(TJavaGenericImport<Jiid_zzacClass, Jiid_zzac>) end;

  JzzadClass = interface(JServiceConnectionClass)
    ['{0CE4C99E-5DFE-4D4F-8F6D-2214E9D2EBA5}']
  end;

  [JavaSignature('com/google/firebase/iid/zzad')]
  Jzzad = interface(JServiceConnection)
    ['{7497BB8D-DA51-4264-8593-E66EC8A4AF39}']
    procedure onServiceConnected(P1: JComponentName; P2: JIBinder); cdecl;
    procedure onServiceDisconnected(P1: JComponentName); cdecl;
  end;
  TJzzad = class(TJavaGenericImport<JzzadClass, Jzzad>) end;

  JzzaeClass = interface(JHandler_CallbackClass)
    ['{A7483410-C22C-44BB-86C8-AB9C4135CEC0}']
  end;

  [JavaSignature('com/google/firebase/iid/zzae')]
  Jzzae = interface(JHandler_Callback)
    ['{17172A14-86D7-494F-8EF9-400776D7111E}']
    function handleMessage(P1: JMessage): Boolean; cdecl;
  end;
  TJzzae = class(TJavaGenericImport<JzzaeClass, Jzzae>) end;

  JzzafClass = interface(JRunnableClass)
    ['{5A8B9482-13DB-4601-A8B7-E1CFD3B891A3}']
  end;

  [JavaSignature('com/google/firebase/iid/zzaf')]
  Jzzaf = interface(JRunnable)
    ['{0700BE76-9B35-436A-B53C-C11E5852354F}']
    procedure run; cdecl;
  end;
  TJzzaf = class(TJavaGenericImport<JzzafClass, Jzzaf>) end;

  JzzagClass = interface(JRunnableClass)
    ['{8521AE0B-9BEE-4267-B5AB-E49184AD5346}']
  end;

  [JavaSignature('com/google/firebase/iid/zzag')]
  Jzzag = interface(JRunnable)
    ['{9E5A2458-5B2A-419A-A749-09A7537DC248}']
    procedure run; cdecl;
  end;
  TJzzag = class(TJavaGenericImport<JzzagClass, Jzzag>) end;

  JzzahClass = interface(JRunnableClass)
    ['{E4AE58A3-D9FF-4945-9119-65B1902C373A}']
  end;

  [JavaSignature('com/google/firebase/iid/zzah')]
  Jzzah = interface(JRunnable)
    ['{EF847281-85FF-412D-A572-CE9FDE9FEBA0}']
    procedure run; cdecl;
  end;
  TJzzah = class(TJavaGenericImport<JzzahClass, Jzzah>) end;

  JzzaiClass = interface(JObjectClass)
    ['{19E67676-B456-4703-BFB9-615181DC76E2}']
  end;

  [JavaSignature('com/google/firebase/iid/zzai')]
  Jzzai = interface(JObject)
    ['{0BA91F82-1F23-437A-B7D7-0DF9C0C85687}']
  end;
  TJzzai = class(TJavaGenericImport<JzzaiClass, Jzzai>) end;

  JzzakClass = interface(JObjectClass)
    ['{63761603-3112-4EEF-B337-28BCF31F779A}']
  end;

  [JavaSignature('com/google/firebase/iid/zzak')]
  Jzzak = interface(JObject)
    ['{3E8A3C6E-00E8-49C3-9C9D-F6906CD9EE8E}']
    function toString: JString; cdecl;
  end;
  TJzzak = class(TJavaGenericImport<JzzakClass, Jzzak>) end;

  JzzajClass = interface(JzzakClass)
    ['{32B21499-188A-47F9-B88F-B34536A3D9DA}']
  end;

  [JavaSignature('com/google/firebase/iid/zzaj')]
  Jzzaj = interface(Jzzak)
    ['{CB6184D6-CEE5-4737-B932-ADB5DE9A89C2}']
  end;
  TJzzaj = class(TJavaGenericImport<JzzajClass, Jzzaj>) end;

  JzzalClass = interface(JExceptionClass)
    ['{AC9F2DD9-75B8-47DB-917A-F8F125CD3818}']
    {class} function init(P1: Integer; P2: JString): Jzzal; cdecl;
  end;

  [JavaSignature('com/google/firebase/iid/zzal')]
  Jzzal = interface(JException)
    ['{54EA253C-EFE3-458B-8C8F-B5F5F8A14862}']
    function getErrorCode: Integer; cdecl;
  end;
  TJzzal = class(TJavaGenericImport<JzzalClass, Jzzal>) end;

  JzzamClass = interface(JzzakClass)
    ['{68D959DB-BE4E-4B66-A36A-4BCB88DF1BD3}']
  end;

  [JavaSignature('com/google/firebase/iid/zzam')]
  Jzzam = interface(Jzzak)
    ['{17C78995-328A-487C-BA9A-4B23F4533879}']
  end;
  TJzzam = class(TJavaGenericImport<JzzamClass, Jzzam>) end;

  JzzanClass = interface(JObjectClass)
    ['{50E4024B-708A-4B99-9B46-BAB86B658F9E}']
    {class} function init(P1: JContext): Jzzan; cdecl;
    {class} function zza(P1: JKeyPair): JString; cdecl; overload;
    {class} function zza(P1: JFirebaseApp): JString; cdecl; overload;
  end;

  [JavaSignature('com/google/firebase/iid/zzan')]
  Jzzan = interface(JObject)
    ['{C91376D7-FDF0-4946-8DFD-A996CE0D8C35}']
    function zzac: Integer; cdecl;
    function zzad: JString; cdecl;
    function zzae: JString; cdecl;
    function zzaf: Integer; cdecl;
  end;
  TJzzan = class(TJavaGenericImport<JzzanClass, Jzzan>) end;

  JzzaoClass = interface(JComponentFactoryClass)
    ['{545F341F-6553-4FDC-A567-582359F05DD9}']
  end;

  [JavaSignature('com/google/firebase/iid/zzao')]
  Jzzao = interface(JComponentFactory)
    ['{9381C268-77A4-46BD-A2CA-53BC0000B710}']
    function create(P1: JComponentContainer): JObject; cdecl;
  end;
  TJzzao = class(TJavaGenericImport<JzzaoClass, Jzzao>) end;

  JzzapClass = interface(JComponentFactoryClass)
    ['{7B3720FA-8D88-4E54-8D74-5C14F37CBFD9}']
  end;

  [JavaSignature('com/google/firebase/iid/zzap')]
  Jzzap = interface(JComponentFactory)
    ['{868CEBB7-CDAA-4386-BC54-D15C491406B3}']
    function create(P1: JComponentContainer): JObject; cdecl;
  end;
  TJzzap = class(TJavaGenericImport<JzzapClass, Jzzap>) end;

  JzzaqClass = interface(JObjectClass)
    ['{27B9AC01-A74B-4B85-BDD5-4EA1F6B3570C}']
  end;

  [JavaSignature('com/google/firebase/iid/zzaq')]
  Jzzaq = interface(JObject)
    ['{836B87EF-8A49-4070-AF06-1A3C2EDBE443}']
  end;
  TJzzaq = class(TJavaGenericImport<JzzaqClass, Jzzaq>) end;

  JzzarClass = interface(JContinuationClass)
    ['{DDC5C43B-FC6B-4D7B-809A-2ABEBCB1BD7B}']
  end;

  [JavaSignature('com/google/firebase/iid/zzar')]
  Jzzar = interface(JContinuation)
    ['{ACB436F7-CE0E-4023-9AFD-D47501ADA8A9}']
    function &then(P1: JTask): JObject; cdecl;
  end;
  TJzzar = class(TJavaGenericImport<JzzarClass, Jzzar>) end;

  JzzasClass = interface(IJavaClass)
    ['{8C460416-11E5-4641-B965-469DD81566E7}']
  end;

  [JavaSignature('com/google/firebase/iid/zzas')]
  Jzzas = interface(IJavaInstance)
    ['{7257E93C-D884-42FB-A1DF-4F88F34668F7}']
    function zzs: JTask; cdecl;
  end;
  TJzzas = class(TJavaGenericImport<JzzasClass, Jzzas>) end;

  Jiid_zzatClass = interface(JObjectClass)
    ['{3C68B949-1999-4DF4-AA09-47CF94463361}']
    {class} function init(P1: JContext; P2: Jzzan): Jiid_zzat; cdecl;
  end;

  [JavaSignature('com/google/firebase/iid/zzat')]
  Jiid_zzat = interface(JObject)
    ['{F532DC46-0E3C-4283-9336-CAAD96EDF7E1}']
  end;
  TJiid_zzat = class(TJavaGenericImport<Jiid_zzatClass, Jiid_zzat>) end;

  JzzauClass = interface(Jfirebase_messaging_zzfClass)
    ['{21D2CCC7-0055-456A-897E-CE20F7400156}']
  end;

  [JavaSignature('com/google/firebase/iid/zzau')]
  Jzzau = interface(Jfirebase_messaging_zzf)
    ['{4CEA152F-2D90-4397-86A8-828E31E83FFA}']
    procedure handleMessage(P1: JMessage); cdecl;
  end;
  TJzzau = class(TJavaGenericImport<JzzauClass, Jzzau>) end;

  JzzavClass = interface(JObjectClass)
    ['{6EFB378C-D63D-4420-9120-159600D16112}']
    {class} function zzai: Jzzav; cdecl;
    {class} procedure zzb(P1: JContext; P2: JIntent); cdecl; overload;
    {class} procedure zzc(P1: JContext; P2: JIntent); cdecl;
  end;

  [JavaSignature('com/google/firebase/iid/zzav')]
  Jzzav = interface(JObject)
    ['{B36631A2-C3C0-45FB-A9DF-8719B9B9FDCD}']
    function zzaj: JIntent; cdecl;
    function zzb(P1: JContext; P2: JString; P3: JIntent): Integer; cdecl; overload;
  end;
  TJzzav = class(TJavaGenericImport<JzzavClass, Jzzav>) end;

  JzzawClass = interface(JObjectClass)
    ['{9714B97E-DF75-419B-AD2D-0C416BB97C61}']
    {class} function init(P1: JContext): Jzzaw; cdecl;
  end;

  [JavaSignature('com/google/firebase/iid/zzaw')]
  Jzzaw = interface(JObject)
    ['{D685D765-DD5C-478A-937C-5EB5CD93958F}']
    procedure zza(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString); cdecl;
    function zzak: JString; cdecl;
    procedure zzal; cdecl;
    function zzb(P1: JString; P2: JString; P3: JString): Jzzax; cdecl;
    procedure zzc(P1: JString; P2: JString; P3: JString); cdecl;
    procedure zzf(P1: JString); cdecl;
    function zzg(P1: JString): Jiid_zzz; cdecl;
    procedure zzh(P1: JString); cdecl;
  end;
  TJzzaw = class(TJavaGenericImport<JzzawClass, Jzzaw>) end;

  JzzaxClass = interface(JObjectClass)
    ['{56343F12-65BE-4D3A-8465-229A8A80CC96}']
  end;

  [JavaSignature('com/google/firebase/iid/zzax')]
  Jzzax = interface(JObject)
    ['{3183CC21-07CB-47CB-9F4B-C8DDE7377B29}']
  end;
  TJzzax = class(TJavaGenericImport<JzzaxClass, Jzzax>) end;

  JzzayClass = interface(JRunnableClass)
    ['{6D164E04-010E-4C00-BD09-74C06EE57340}']
  end;

  [JavaSignature('com/google/firebase/iid/zzay')]
  Jzzay = interface(JRunnable)
    ['{FB86D014-30B2-44F5-BFF9-A6E5E38630D2}']
    procedure run; cdecl;
  end;
  TJzzay = class(TJavaGenericImport<JzzayClass, Jzzay>) end;

  JzzazClass = interface(JBroadcastReceiverClass)
    ['{C57CA05A-A509-48C4-A1F1-EEA110474B1E}']
    {class} function init(P1: Jzzay): Jzzaz; cdecl;
  end;

  [JavaSignature('com/google/firebase/iid/zzaz')]
  Jzzaz = interface(JBroadcastReceiver)
    ['{166976E1-9287-4596-AB18-8FFA9726AC59}']
    procedure onReceive(P1: JContext; P2: JIntent); cdecl;
    procedure zzao; cdecl;
  end;
  TJzzaz = class(TJavaGenericImport<JzzazClass, Jzzaz>) end;

  JzzbaClass = interface(JObjectClass)
    ['{D9376E9D-838B-4795-98A0-5F8E20F8FFE0}']
  end;

  [JavaSignature('com/google/firebase/iid/zzba')]
  Jzzba = interface(JObject)
    ['{5ABC4AFD-C092-48F8-83E4-65A346F2CFD5}']
  end;
  TJzzba = class(TJavaGenericImport<JzzbaClass, Jzzba>) end;

  Jiid_zzcClass = interface(JRunnableClass)
    ['{984ED0A1-D4E5-4622-B94D-31C8EBAA98BF}']
  end;

  [JavaSignature('com/google/firebase/iid/zzc')]
  Jiid_zzc = interface(JRunnable)
    ['{D3D52996-1A40-47D7-83D6-51F069B9AC45}']
    procedure run; cdecl;
  end;
  TJiid_zzc = class(TJavaGenericImport<Jiid_zzcClass, Jiid_zzc>) end;

  Jiid_zzdClass = interface(JObjectClass)
    ['{0C9C988F-51E5-406D-A9CE-AD0520BB4F12}']
  end;

  [JavaSignature('com/google/firebase/iid/zzd')]
  Jiid_zzd = interface(JObject)
    ['{BE36A4A8-EEF6-4905-AF64-E703E359A44A}']
  end;
  TJiid_zzd = class(TJavaGenericImport<Jiid_zzdClass, Jiid_zzd>) end;

  Jiid_zzeClass = interface(JRunnableClass)
    ['{1FBE77D0-442F-436E-A9C3-C93818E88FAD}']
  end;

  [JavaSignature('com/google/firebase/iid/zze')]
  Jiid_zze = interface(JRunnable)
    ['{62DD860A-73A6-4EAC-B000-48244BA1DB6F}']
    procedure run; cdecl;
  end;
  TJiid_zze = class(TJavaGenericImport<Jiid_zzeClass, Jiid_zze>) end;

  Jiid_zzfClass = interface(JBinderClass)
    ['{2B2DD1B9-DCBF-455D-BCC2-2F005D339E56}']
  end;

  [JavaSignature('com/google/firebase/iid/zzf')]
  Jiid_zzf = interface(JBinder)
    ['{6388D319-5E10-43F9-AE27-07B7CD3C3C2C}']
    procedure zza(P1: Jiid_zzd); cdecl; overload;
  end;
  TJiid_zzf = class(TJavaGenericImport<Jiid_zzfClass, Jiid_zzf>) end;

  Jiid_zzgClass = interface(JRunnableClass)
    ['{1B5A4120-41D7-4B9A-B254-2FD545E87E1D}']
  end;

  [JavaSignature('com/google/firebase/iid/zzg')]
  Jiid_zzg = interface(JRunnable)
    ['{865862E1-5552-44A5-B3BE-8E684CA9AB07}']
    procedure run; cdecl;
  end;
  TJiid_zzg = class(TJavaGenericImport<Jiid_zzgClass, Jiid_zzg>) end;

  Jiid_zzhClass = interface(JServiceConnectionClass)
    ['{DDE22D01-6402-4D3E-B556-55590AF3E6F5}']
    {class} function init(P1: JContext; P2: JString): Jiid_zzh; cdecl;
  end;

  [JavaSignature('com/google/firebase/iid/zzh')]
  Jiid_zzh = interface(JServiceConnection)
    ['{C7E14846-4ADE-4493-835B-4DBCA617A9FB}']
    procedure onServiceConnected(P1: JComponentName; P2: JIBinder); cdecl;
    procedure onServiceDisconnected(P1: JComponentName); cdecl;
    procedure zza(P1: JIntent; P2: JBroadcastReceiver_PendingResult); cdecl;
  end;
  TJiid_zzh = class(TJavaGenericImport<Jiid_zzhClass, Jiid_zzh>) end;

  Jiid_zziClass = interface(JObjectClass)
    ['{9EDCA305-252E-45C0-86A5-1BE6076ACCBC}']
  end;

  [JavaSignature('com/google/firebase/iid/zzi')]
  Jiid_zzi = interface(JObject)
    ['{B7CAD2DE-DCC9-4474-8C50-1738B38B491D}']
  end;
  TJiid_zzi = class(TJavaGenericImport<Jiid_zziClass, Jiid_zzi>) end;

  Jiid_zzjClass = interface(JThreadFactoryClass)
    ['{471A8FD7-250C-47A5-8A86-EDEB53AA48E1}']
  end;

  [JavaSignature('com/google/firebase/iid/zzj')]
  Jiid_zzj = interface(JThreadFactory)
    ['{530EF8AF-F6C4-406B-9C4A-6750DBB6E2E5}']
    function newThread(P1: JRunnable): JThread; cdecl;
  end;
  TJiid_zzj = class(TJavaGenericImport<Jiid_zzjClass, Jiid_zzj>) end;

  Jiid_zzkClass = interface(JExecutorClass)
    ['{87031231-6636-4051-870B-01AEA081D386}']
  end;

  [JavaSignature('com/google/firebase/iid/zzk')]
  Jiid_zzk = interface(JExecutor)
    ['{EA368065-DF33-4545-8C90-D13E02742AC6}']
    procedure execute(P1: JRunnable); cdecl;
  end;
  TJiid_zzk = class(TJavaGenericImport<Jiid_zzkClass, Jiid_zzk>) end;

  Jiid_zzlClass = interface(JParcelableClass)
    ['{7E6FD492-14FB-42C2-9C51-D529382C6D40}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init(P1: JIBinder): Jiid_zzl; cdecl;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/google/firebase/iid/zzl')]
  Jiid_zzl = interface(JParcelable)
    ['{2FAC91A2-3C52-43C4-9773-DD55CDADB0E1}']
    function describeContents: Integer; cdecl;
    function equals(P1: JObject): Boolean; cdecl;
    function hashCode: Integer; cdecl;
    procedure send(P1: JMessage); cdecl;
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;
  end;
  TJiid_zzl = class(TJavaGenericImport<Jiid_zzlClass, Jiid_zzl>) end;

  Jzzl_zzaClass = interface(JClassLoaderClass)
    ['{270BD873-BF47-4C96-8BAE-6B28C4B14216}']
    {class} function init: Jzzl_zza; cdecl;
  end;

  [JavaSignature('com/google/firebase/iid/zzl$zza')]
  Jzzl_zza = interface(JClassLoader)
    ['{BD5599A9-7DBD-4E74-A7A6-7BE1B453DFC1}']
  end;
  TJzzl_zza = class(TJavaGenericImport<Jzzl_zzaClass, Jzzl_zza>) end;

  Jiid_zzmClass = interface(JParcelable_CreatorClass)
    ['{CB020CB2-E737-447D-9C86-CE0C910EA935}']
  end;

  [JavaSignature('com/google/firebase/iid/zzm')]
  Jiid_zzm = interface(JParcelable_Creator)
    ['{A71DAECC-48E3-4EE6-A043-673AE2FC4A8E}']
    function createFromParcel(P1: JParcel): JObject; cdecl;
    function newArray(P1: Integer): TJavaObjectArray<JObject>; cdecl;
  end;
  TJiid_zzm = class(TJavaGenericImport<Jiid_zzmClass, Jiid_zzm>) end;

  Jiid_zznClass = interface(JContinuationClass)
    ['{94582FCB-7E77-4CBD-B2CD-C59C347C7CDF}']
  end;

  [JavaSignature('com/google/firebase/iid/zzn')]
  Jiid_zzn = interface(JContinuation)
    ['{5FE8F94A-4D6F-4345-BFF4-77E815677C5E}']
    function &then(P1: JTask): JObject; cdecl;
  end;
  TJiid_zzn = class(TJavaGenericImport<Jiid_zznClass, Jiid_zzn>) end;

  Jiid_zzoClass = interface(JzzasClass)
    ['{6BD2191C-B434-43EF-894A-4B13F0591F1E}']
  end;

  [JavaSignature('com/google/firebase/iid/zzo')]
  Jiid_zzo = interface(Jzzas)
    ['{FE7577E7-A5B8-4CF5-B52E-6074E36C86EF}']
    function zzs: JTask; cdecl;
  end;
  TJiid_zzo = class(TJavaGenericImport<Jiid_zzoClass, Jiid_zzo>) end;

  Jiid_zzpClass = interface(JSuccessContinuationClass)
    ['{D61C0F87-C804-4B8E-8B20-9857BCBDA5A7}']
  end;

  [JavaSignature('com/google/firebase/iid/zzp')]
  Jiid_zzp = interface(JSuccessContinuation)
    ['{1CF155B8-F6B0-4D0C-964F-82F25D510E4A}']
    function &then(P1: JObject): JTask; cdecl;
  end;
  TJiid_zzp = class(TJavaGenericImport<Jiid_zzpClass, Jiid_zzp>) end;

  Jiid_zzqClass = interface(JEventHandlerClass)
    ['{88EDE21A-8538-42EB-91C6-7484B70561C3}']
  end;

  [JavaSignature('com/google/firebase/iid/zzq')]
  Jiid_zzq = interface(JEventHandler)
    ['{B2806D03-4D49-4473-BCEA-8794A3BEF1D8}']
    procedure handle(P1: JEvent); cdecl;
  end;
  TJiid_zzq = class(TJavaGenericImport<Jiid_zzqClass, Jiid_zzq>) end;

  Jiid_zzrClass = interface(JMessagingChannelClass)
    ['{70B6B0BC-D033-4829-8DD6-2F4A05844772}']
  end;

  [JavaSignature('com/google/firebase/iid/zzr')]
  Jiid_zzr = interface(JMessagingChannel)
    ['{8B5541DC-50EC-4152-930A-F95ED9C21D76}']
    function ackMessage(P1: JString): JTask; cdecl;
    function buildChannel(P1: JString; P2: JString): JTask; cdecl;
    function deleteInstanceId(P1: JString): JTask; cdecl;
    function deleteToken(P1: JString; P2: JString; P3: JString; P4: JString): JTask; cdecl;
    function getToken(P1: JString; P2: JString; P3: JString; P4: JString): JTask; cdecl;
    function isAvailable: Boolean; cdecl;
    function isChannelBuilt: Boolean; cdecl;
    function needsRefresh: Boolean; cdecl;
    function subscribeToTopic(P1: JString; P2: JString; P3: JString): JTask; cdecl;
    function unsubscribeFromTopic(P1: JString; P2: JString; P3: JString): JTask; cdecl;
  end;
  TJiid_zzr = class(TJavaGenericImport<Jiid_zzrClass, Jiid_zzr>) end;

  Jiid_zzsClass = interface(JRunnableClass)
    ['{6AB4F8AF-994F-422E-B236-E6379E9E27D9}']
  end;

  [JavaSignature('com/google/firebase/iid/zzs')]
  Jiid_zzs = interface(JRunnable)
    ['{515EE943-82D5-4BC3-A4C9-69C59059A9BD}']
    procedure run; cdecl;
  end;
  TJiid_zzs = class(TJavaGenericImport<Jiid_zzsClass, Jiid_zzs>) end;

  Jiid_zztClass = interface(JContinuationClass)
    ['{544D7F0D-D73F-4035-9385-A1A9AFF5707F}']
  end;

  [JavaSignature('com/google/firebase/iid/zzt')]
  Jiid_zzt = interface(JContinuation)
    ['{8260BE54-1E39-4F2D-B1A2-6D57B167A24E}']
    function &then(P1: JTask): JObject; cdecl;
  end;
  TJiid_zzt = class(TJavaGenericImport<Jiid_zztClass, Jiid_zzt>) end;

  Jiid_zzuClass = interface(JContinuationClass)
    ['{59EED89F-301E-4F2C-B784-A63A97E29816}']
  end;

  [JavaSignature('com/google/firebase/iid/zzu')]
  Jiid_zzu = interface(JContinuation)
    ['{78FCA6E0-248B-47C0-916E-392C14BC79A7}']
    function &then(P1: JTask): JObject; cdecl;
  end;
  TJiid_zzu = class(TJavaGenericImport<Jiid_zzuClass, Jiid_zzu>) end;

  Jiid_zzvClass = interface(JIInterfaceClass)
    ['{2C42A5A6-4485-4613-9204-951AC3415445}']
  end;

  [JavaSignature('com/google/firebase/iid/zzv')]
  Jiid_zzv = interface(JIInterface)
    ['{DD1EB70C-4823-479C-99B3-6B3B89666298}']
    procedure send(P1: JMessage); cdecl;
  end;
  TJiid_zzv = class(TJavaGenericImport<Jiid_zzvClass, Jiid_zzv>) end;

  Jiid_zzwClass = interface(Jiid_zzvClass)
    ['{A505BED7-2172-4754-8EDF-FF29B5A3C0F4}']
  end;

  [JavaSignature('com/google/firebase/iid/zzw')]
  Jiid_zzw = interface(Jiid_zzv)
    ['{5158D4E8-DDC6-4414-B096-8089833FFF45}']
    function asBinder: JIBinder; cdecl;
    procedure send(P1: JMessage); cdecl;
  end;
  TJiid_zzw = class(TJavaGenericImport<Jiid_zzwClass, Jiid_zzw>) end;

  Jiid_zzxClass = interface(JInstanceIdResultClass)
    ['{4B474D7F-F62A-47A1-A050-BB677DA58D55}']
  end;

  [JavaSignature('com/google/firebase/iid/zzx')]
  Jiid_zzx = interface(JInstanceIdResult)
    ['{68B44283-7370-4C92-B7D4-D5905D6EB949}']
    function getId: JString; cdecl;
    function getToken: JString; cdecl;
  end;
  TJiid_zzx = class(TJavaGenericImport<Jiid_zzxClass, Jiid_zzx>) end;

  Jiid_zzyClass = interface(JObjectClass)
    ['{3DA1591C-AADA-4292-8424-2D405AF575BF}']
  end;

  [JavaSignature('com/google/firebase/iid/zzy')]
  Jiid_zzy = interface(JObject)
    ['{515C2418-C659-47EF-96B7-91CC93358DEC}']
  end;
  TJiid_zzy = class(TJavaGenericImport<Jiid_zzyClass, Jiid_zzy>) end;

  Jiid_zzzClass = interface(JObjectClass)
    ['{615109F9-5D38-469D-AF42-674F4891FF8B}']
  end;

  [JavaSignature('com/google/firebase/iid/zzz')]
  Jiid_zzz = interface(JObject)
    ['{2E81088A-9D71-4506-8CAC-B41056CE9455}']
    function equals(P1: JObject): Boolean; cdecl;
    function hashCode: Integer; cdecl;
  end;
  TJiid_zzz = class(TJavaGenericImport<Jiid_zzzClass, Jiid_zzz>) end;

  JDefaultIdTokenListenersCountChangedListenerClass = interface(JFirebaseApp_IdTokenListenersCountChangedListenerClass)
    ['{BA24485F-11E7-4761-B31B-6B4F99D66D19}']
    {class} function init: JDefaultIdTokenListenersCountChangedListener; cdecl;
  end;

  [JavaSignature('com/google/firebase/internal/DefaultIdTokenListenersCountChangedListener')]
  JDefaultIdTokenListenersCountChangedListener = interface(JFirebaseApp_IdTokenListenersCountChangedListener)
    ['{D58507F8-5D40-4AF8-92A9-95A51889BBFE}']
    procedure onListenerCountChanged(P1: Integer); cdecl;
  end;
  TJDefaultIdTokenListenersCountChangedListener = class(TJavaGenericImport<JDefaultIdTokenListenersCountChangedListenerClass, JDefaultIdTokenListenersCountChangedListener>) end;

  JFirebaseAppHelperClass = interface(JObjectClass)
    ['{92942911-07D3-4296-A9EE-A62C6CEB06AC}']
    {class} procedure addIdTokenListener(P1: JFirebaseApp; P2: JFirebaseApp_IdTokenListener); cdecl;
    {class} function getToken(P1: JFirebaseApp; P2: Boolean): JTask; cdecl;
    {class} function getUid(P1: JFirebaseApp): JString; cdecl;
    {class} function init: JFirebaseAppHelper; cdecl;
    {class} procedure removeIdTokenListener(P1: JFirebaseApp; P2: JFirebaseApp_IdTokenListener); cdecl;
  end;

  [JavaSignature('com/google/firebase/internal/FirebaseAppHelper')]
  JFirebaseAppHelper = interface(JObject)
    ['{BAB9ACED-F245-4DFF-9BD1-4CEDC6CE266F}']
  end;
  TJFirebaseAppHelper = class(TJavaGenericImport<JFirebaseAppHelperClass, JFirebaseAppHelper>) end;

  JInternalTokenProviderClass = interface(IJavaClass)
    ['{31E712FB-D8EA-4D6C-9E62-53786B63D19E}']
  end;

  [JavaSignature('com/google/firebase/internal/InternalTokenProvider')]
  JInternalTokenProvider = interface(IJavaInstance)
    ['{84BACAC9-626C-448A-A78E-DE170B22CF81}']
    function getAccessToken(P1: Boolean): JTask; cdecl;
    function getUid: JString; cdecl;
  end;
  TJInternalTokenProvider = class(TJavaGenericImport<JInternalTokenProviderClass, JInternalTokenProvider>) end;

  JInternalTokenResultClass = interface(JObjectClass)
    ['{A5F4E58A-B085-4446-95C7-61551C33E791}']
    {class} function init(P1: JString): JInternalTokenResult; cdecl;
  end;

  [JavaSignature('com/google/firebase/internal/InternalTokenResult')]
  JInternalTokenResult = interface(JObject)
    ['{057C6D78-EDEA-47B6-83A6-0AD939C55081}']
    function equals(P1: JObject): Boolean; cdecl;
    function getToken: JString; cdecl;
    function hashCode: Integer; cdecl;
    function toString: JString; cdecl;
  end;
  TJInternalTokenResult = class(TJavaGenericImport<JInternalTokenResultClass, JInternalTokenResult>) end;

  // com.google.firebase.internal.api.FirebaseNoSignedInUserException
  JFirebaseMessagingClass = interface(JObjectClass)
    ['{FE2C5030-3C42-4110-9C95-2966E1CEACD6}']
    {class} function _GetINSTANCE_ID_SCOPE: JString; cdecl;
    {class} function getInstance: JFirebaseMessaging; cdecl;
    {class} property INSTANCE_ID_SCOPE: JString read _GetINSTANCE_ID_SCOPE;
  end;

  [JavaSignature('com/google/firebase/messaging/FirebaseMessaging')]
  JFirebaseMessaging = interface(JObject)
    ['{C906D1EC-6ED8-4A39-AB03-E2984D26CFD1}']
    function isAutoInitEnabled: Boolean; cdecl;
    //procedure send(P1: JRemoteMessage); cdecl;
    procedure setAutoInitEnabled(P1: Boolean); cdecl;
    function subscribeToTopic(P1: JString): JTask; cdecl;
    function unsubscribeFromTopic(P1: JString): JTask; cdecl;
  end;
  TJFirebaseMessaging = class(TJavaGenericImport<JFirebaseMessagingClass, JFirebaseMessaging>) end;

  JFirebaseMessagingServiceClass = interface(Jiid_zzbClass)
    ['{F0ECBFF8-F537-4C9A-911B-9B607557CB96}']
    {class} function init: JFirebaseMessagingService; cdecl;
  end;

  [JavaSignature('com/google/firebase/messaging/FirebaseMessagingService')]
  JFirebaseMessagingService = interface(Jiid_zzb)
    ['{6C1EB767-5CEE-4FDC-9A3B-4DA8A38532EE}']
    procedure onDeletedMessages; cdecl;
    //procedure onMessageReceived(P1: JRemoteMessage); cdecl;
    procedure onMessageSent(P1: JString); cdecl;
    procedure onNewToken(P1: JString); cdecl;
    procedure onSendError(P1: JString; P2: JException); cdecl;
    function zzc(P1: JIntent): Boolean; cdecl;
    procedure zzd(P1: JIntent); cdecl;
  end;
  TJFirebaseMessagingService = class(TJavaGenericImport<JFirebaseMessagingServiceClass, JFirebaseMessagingService>) end;

  JMessagingAnalyticsClass = interface(JObjectClass)
    ['{76E74AE6-CF97-4943-AFB9-2706AB886ABF}']
    {class} function init: JMessagingAnalytics; cdecl;
    {class} procedure logNotificationDismiss(P1: JIntent); cdecl;
    {class} procedure logNotificationForeground(P1: JIntent); cdecl;
    {class} procedure logNotificationOpen(P1: JIntent); cdecl;
    {class} procedure logNotificationReceived(P1: JIntent); cdecl;
    {class} function shouldUploadMetrics(P1: JIntent): Boolean; cdecl;
  end;

  [JavaSignature('com/google/firebase/messaging/MessagingAnalytics')]
  JMessagingAnalytics = interface(JObject)
    ['{6F5CD1F4-0A50-4D45-81A6-9C64E58CE166}']
  end;
  TJMessagingAnalytics = class(TJavaGenericImport<JMessagingAnalyticsClass, JMessagingAnalytics>) end;

  // com.google.firebase.messaging.RemoteMessage
  JRemoteMessage_BuilderClass = interface(JObjectClass)
    ['{2B47468C-0D90-4B91-98F0-B60E5322579D}']
    {class} function init(P1: JString): JRemoteMessage_Builder; cdecl;
  end;

  [JavaSignature('com/google/firebase/messaging/RemoteMessage$Builder')]
  JRemoteMessage_Builder = interface(JObject)
    ['{6744CA65-C6C2-479E-A2C0-E4C035AA5075}']
    function addData(P1: JString; P2: JString): JRemoteMessage_Builder; cdecl;
    //function build: JRemoteMessage; cdecl;
    function clearData: JRemoteMessage_Builder; cdecl;
    function setCollapseKey(P1: JString): JRemoteMessage_Builder; cdecl;
    function setData(P1: JMap): JRemoteMessage_Builder; cdecl;
    function setMessageId(P1: JString): JRemoteMessage_Builder; cdecl;
    function setMessageType(P1: JString): JRemoteMessage_Builder; cdecl;
    function setTtl(P1: Integer): JRemoteMessage_Builder; cdecl;
  end;
  TJRemoteMessage_Builder = class(TJavaGenericImport<JRemoteMessage_BuilderClass, JRemoteMessage_Builder>) end;

  JRemoteMessage_MessagePriorityClass = interface(JAnnotationClass)
    ['{613C986B-2D46-46AE-98F9-49814C0F5AFE}']
  end;

  [JavaSignature('com/google/firebase/messaging/RemoteMessage$MessagePriority')]
  JRemoteMessage_MessagePriority = interface(JAnnotation)
    ['{1DEAEC32-3F30-4FBC-A553-EDE3E0328204}']
  end;
  TJRemoteMessage_MessagePriority = class(TJavaGenericImport<JRemoteMessage_MessagePriorityClass, JRemoteMessage_MessagePriority>) end;

  JRemoteMessage_NotificationClass = interface(JObjectClass)
    ['{FC65443F-1063-45D3-94D2-CDF8B9440CCD}']
  end;

  [JavaSignature('com/google/firebase/messaging/RemoteMessage$Notification')]
  JRemoteMessage_Notification = interface(JObject)
    ['{05DA014D-7366-45D1-8C2B-D4DFE8D88200}']
    function getBody: JString; cdecl;
    function getBodyLocalizationArgs: TJavaObjectArray<JString>; cdecl;
    function getBodyLocalizationKey: JString; cdecl;
    function getChannelId: JString; cdecl;
    function getClickAction: JString; cdecl;
    function getColor: JString; cdecl;
    function getIcon: JString; cdecl;
    function getLink: Jnet_Uri; cdecl;
    function getSound: JString; cdecl;
    function getTag: JString; cdecl;
    function getTitle: JString; cdecl;
    function getTitleLocalizationArgs: TJavaObjectArray<JString>; cdecl;
    function getTitleLocalizationKey: JString; cdecl;
  end;
  TJRemoteMessage_Notification = class(TJavaGenericImport<JRemoteMessage_NotificationClass, JRemoteMessage_Notification>) end;

  JSendExceptionClass = interface(JExceptionClass)
    ['{FB1E6200-C173-4C51-98A8-9B7F03986812}']
    {class} function _GetERROR_INVALID_PARAMETERS: Integer; cdecl;
    {class} function _GetERROR_SIZE: Integer; cdecl;
    {class} function _GetERROR_TOO_MANY_MESSAGES: Integer; cdecl;
    {class} function _GetERROR_TTL_EXCEEDED: Integer; cdecl;
    {class} function _GetERROR_UNKNOWN: Integer; cdecl;
    {class} property ERROR_INVALID_PARAMETERS: Integer read _GetERROR_INVALID_PARAMETERS;
    {class} property ERROR_SIZE: Integer read _GetERROR_SIZE;
    {class} property ERROR_TOO_MANY_MESSAGES: Integer read _GetERROR_TOO_MANY_MESSAGES;
    {class} property ERROR_TTL_EXCEEDED: Integer read _GetERROR_TTL_EXCEEDED;
    {class} property ERROR_UNKNOWN: Integer read _GetERROR_UNKNOWN;
  end;

  [JavaSignature('com/google/firebase/messaging/SendException')]
  JSendException = interface(JException)
    ['{D69BBCE4-571D-4C7E-8304-7B03D26A004B}']
    function getErrorCode: Integer; cdecl;
  end;
  TJSendException = class(TJavaGenericImport<JSendExceptionClass, JSendException>) end;

  Jmessaging_zzaClass = interface(JObjectClass)
    ['{27B64F7D-D401-4B1B-8F04-F17839ECD915}']
    {class} function init(P1: JContext; P2: JBundle): Jmessaging_zza; cdecl;
  end;

  [JavaSignature('com/google/firebase/messaging/zza')]
  Jmessaging_zza = interface(JObject)
    ['{853DF270-0CD2-4031-87F7-462CD0D8C1BC}']
  end;
  TJmessaging_zza = class(TJavaGenericImport<Jmessaging_zzaClass, Jmessaging_zza>) end;

  Jmessaging_zzbClass = interface(Jfirebase_messaging_zzxClass)
    ['{D9EC9515-3E45-4D30-B4BE-99F001C4A8B5}']
  end;

  [JavaSignature('com/google/firebase/messaging/zzb')]
  Jmessaging_zzb = interface(Jfirebase_messaging_zzx)
    ['{80F81A7F-4C2D-4470-8EE3-983BDD584C37}']
    function zzl(P1: JString): Boolean; cdecl;
  end;
  TJmessaging_zzb = class(TJavaGenericImport<Jmessaging_zzbClass, Jmessaging_zzb>) end;

  Jmessaging_zzcClass = interface(JParcelable_CreatorClass)
    ['{814ABF55-54FD-4BE6-BDAD-FD1ECE685544}']
    {class} function init: Jmessaging_zzc; cdecl;
  end;

  [JavaSignature('com/google/firebase/messaging/zzc')]
  Jmessaging_zzc = interface(JParcelable_Creator)
    ['{CB67C595-09A0-43FE-A4CF-731ED21F127F}']
    function createFromParcel(P1: JParcel): JObject; cdecl;
    function newArray(P1: Integer): TJavaObjectArray<JObject>; cdecl;
  end;
  TJmessaging_zzc = class(TJavaGenericImport<Jmessaging_zzcClass, Jmessaging_zzc>) end;

  JLibraryVersionClass = interface(JObjectClass)
    ['{D1C33357-FE18-4AF8-8623-9F7B727BD270}']
  end;

  [JavaSignature('com/google/firebase/platforminfo/LibraryVersion')]
  JLibraryVersion = interface(JObject)
    ['{2EFBD048-B824-4284-920E-B66E65CC7CFB}']
    function getLibraryName: JString; cdecl;
    function getVersion: JString; cdecl;
  end;
  TJLibraryVersion = class(TJavaGenericImport<JLibraryVersionClass, JLibraryVersion>) end;

  JAutoValue_LibraryVersionClass = interface(JLibraryVersionClass)
    ['{399968C6-F4F0-40C3-823C-60B485C62DE9}']
  end;

  [JavaSignature('com/google/firebase/platforminfo/AutoValue_LibraryVersion')]
  JAutoValue_LibraryVersion = interface(JLibraryVersion)
    ['{343ED3F4-2A14-4518-9401-EF4907E14FDD}']
    function equals(P1: JObject): Boolean; cdecl;
    function getLibraryName: JString; cdecl;
    function getVersion: JString; cdecl;
    function hashCode: Integer; cdecl;
    function toString: JString; cdecl;
  end;
  TJAutoValue_LibraryVersion = class(TJavaGenericImport<JAutoValue_LibraryVersionClass, JAutoValue_LibraryVersion>) end;

  JUserAgentPublisherClass = interface(IJavaClass)
    ['{97D7929C-B3CF-44ED-807E-80F6A6302F32}']
  end;

  [JavaSignature('com/google/firebase/platforminfo/UserAgentPublisher')]
  JUserAgentPublisher = interface(IJavaInstance)
    ['{5C4E8F96-F5BD-4231-A12A-C9D3C736C1F3}']
    function getUserAgent: JString; cdecl;
  end;
  TJUserAgentPublisher = class(TJavaGenericImport<JUserAgentPublisherClass, JUserAgentPublisher>) end;

  JDefaultUserAgentPublisherClass = interface(JUserAgentPublisherClass)
    ['{565DBD93-C315-4390-B592-F3361D96B404}']
    {class} function component: JComponent; cdecl;
  end;

  [JavaSignature('com/google/firebase/platforminfo/DefaultUserAgentPublisher')]
  JDefaultUserAgentPublisher = interface(JUserAgentPublisher)
    ['{0A491E04-B5AE-4EB8-A031-AF155DD28662}']
    function getUserAgent: JString; cdecl;
  end;
  TJDefaultUserAgentPublisher = class(TJavaGenericImport<JDefaultUserAgentPublisherClass, JDefaultUserAgentPublisher>) end;

  JDefaultUserAgentPublisher__Lambda_1Class = interface(JComponentFactoryClass)
    ['{5D765E3B-A49D-44C7-BA2D-3F5CFEF9ABAB}']
  end;

  [JavaSignature('com/google/firebase/platforminfo/DefaultUserAgentPublisher$$Lambda$1')]
  JDefaultUserAgentPublisher__Lambda_1 = interface(JComponentFactory)
    ['{EAA28BA0-658E-4388-BA48-02C7FC9B1118}']
    function create(P1: JComponentContainer): JObject; cdecl;
  end;
  TJDefaultUserAgentPublisher__Lambda_1 = class(TJavaGenericImport<JDefaultUserAgentPublisher__Lambda_1Class, JDefaultUserAgentPublisher__Lambda_1>) end;

  JGlobalLibraryVersionRegistrarClass = interface(JObjectClass)
    ['{FFC1FE68-280B-4631-8CD5-4910E46638DD}']
    {class} function getInstance: JGlobalLibraryVersionRegistrar; cdecl;
  end;

  [JavaSignature('com/google/firebase/platforminfo/GlobalLibraryVersionRegistrar')]
  JGlobalLibraryVersionRegistrar = interface(JObject)
    ['{D5F869E5-3DFA-4107-9562-E7A5BD41C66D}']
    procedure registerVersion(P1: JString; P2: JString); cdecl;
  end;
  TJGlobalLibraryVersionRegistrar = class(TJavaGenericImport<JGlobalLibraryVersionRegistrarClass, JGlobalLibraryVersionRegistrar>) end;

  JLibraryVersionComponentClass = interface(JObjectClass)
    ['{4C3A5D67-3AB1-4E70-8450-11C7B2ED52B1}']
    {class} function create(P1: JString; P2: JString): JComponent; cdecl;
  end;

  [JavaSignature('com/google/firebase/platforminfo/LibraryVersionComponent')]
  JLibraryVersionComponent = interface(JObject)
    ['{A1320A70-2B71-416E-A733-8197E3E9C571}']
  end;
  TJLibraryVersionComponent = class(TJavaGenericImport<JLibraryVersionComponentClass, JLibraryVersionComponent>) end;

  JFirebaseInitProviderClass = interface(JContentProviderClass)
    ['{F8E9F3D1-5123-4645-AAE0-72B178E79BC4}']
    {class} function init: JFirebaseInitProvider; cdecl;
  end;

  [JavaSignature('com/google/firebase/provider/FirebaseInitProvider')]
  JFirebaseInitProvider = interface(JContentProvider)
    ['{B307693C-F596-402B-9E31-9ADD41FA5DB5}']
    procedure attachInfo(P1: JContext; P2: JProviderInfo); cdecl;
    function delete(P1: Jnet_Uri; P2: JString; P3: TJavaObjectArray<JString>): Integer; cdecl;
    function getType(P1: Jnet_Uri): JString; cdecl;
    function insert(P1: Jnet_Uri; P2: JContentValues): Jnet_Uri; cdecl;
    function onCreate: Boolean; cdecl;
    function query(P1: Jnet_Uri; P2: TJavaObjectArray<JString>; P3: JString; P4: TJavaObjectArray<JString>; P5: JString): JCursor; cdecl;
    function update(P1: Jnet_Uri; P2: JContentValues; P3: JString; P4: TJavaObjectArray<JString>): Integer; cdecl;
  end;
  TJFirebaseInitProvider = class(TJavaGenericImport<JFirebaseInitProviderClass, JFirebaseInitProvider>) end;

  JReferenceQueueClass = interface(JObjectClass)
    ['{43F3971B-C98A-4506-9112-969B64C0C1FE}']
    {class} function init: JReferenceQueue; cdecl;
  end;

  [JavaSignature('java/lang/ref/ReferenceQueue')]
  JReferenceQueue = interface(JObject)
    ['{C10A5B57-8627-4D31-B8FB-7809C3B6916F}']
    function poll: JReference; cdecl;
    function remove: JReference; cdecl; overload;
    function remove(timeoutMillis: Int64): JReference; cdecl; overload;
  end;
  TJReferenceQueue = class(TJavaGenericImport<JReferenceQueueClass, JReferenceQueue>) end;

  JKeyPairClass = interface(JObjectClass)
    ['{C0293E87-3E5F-4171-984E-F5F333DEB3E2}']
    {class} function init(publicKey: JPublicKey; privateKey: JPrivateKey): JKeyPair; cdecl;
  end;

  [JavaSignature('java/security/KeyPair')]
  JKeyPair = interface(JObject)
    ['{EB83B9DE-0DDE-4AE9-A1B8-E925BB45F620}']
    function getPrivate: JPrivateKey; cdecl;
    function getPublic: JPublicKey; cdecl;
  end;
  TJKeyPair = class(TJavaGenericImport<JKeyPairClass, JKeyPair>) end;

  JScheduledExecutorServiceClass = interface(JExecutorServiceClass)
    ['{057BDF49-F119-4D46-AFBB-0C1DCDB3A707}']
  end;

  [JavaSignature('java/util/concurrent/ScheduledExecutorService')]
  JScheduledExecutorService = interface(JExecutorService)
    ['{795DF9C0-CF18-441D-AE55-297456C076E1}']
    function schedule(command: JRunnable; delay: Int64; unit_: JTimeUnit): JScheduledFuture; cdecl; overload;
    function schedule(callable: JCallable; delay: Int64; unit_: JTimeUnit): JScheduledFuture; cdecl; overload;
    function scheduleAtFixedRate(command: JRunnable; initialDelay: Int64; period: Int64; unit_: JTimeUnit): JScheduledFuture; cdecl;
    function scheduleWithFixedDelay(command: JRunnable; initialDelay: Int64; delay: Int64; unit_: JTimeUnit): JScheduledFuture; cdecl;
  end;
  TJScheduledExecutorService = class(TJavaGenericImport<JScheduledExecutorServiceClass, JScheduledExecutorService>) end;

implementation

procedure RegisterTypes;
begin
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JAnimator', TypeInfo(AndroidApi.JNI.FireBase.JAnimator));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JAnimator_AnimatorListener', TypeInfo(AndroidApi.JNI.FireBase.JAnimator_AnimatorListener));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JAnimator_AnimatorPauseListener', TypeInfo(AndroidApi.JNI.FireBase.JAnimator_AnimatorPauseListener));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JKeyframe', TypeInfo(AndroidApi.JNI.FireBase.JKeyframe));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JLayoutTransition', TypeInfo(AndroidApi.JNI.FireBase.JLayoutTransition));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JLayoutTransition_TransitionListener', TypeInfo(AndroidApi.JNI.FireBase.JLayoutTransition_TransitionListener));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JPropertyValuesHolder', TypeInfo(AndroidApi.JNI.FireBase.JPropertyValuesHolder));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JStateListAnimator', TypeInfo(AndroidApi.JNI.FireBase.JStateListAnimator));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JTimeInterpolator', TypeInfo(AndroidApi.JNI.FireBase.JTimeInterpolator));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JTypeConverter', TypeInfo(AndroidApi.JNI.FireBase.JTypeConverter));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JTypeEvaluator', TypeInfo(AndroidApi.JNI.FireBase.JTypeEvaluator));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JValueAnimator', TypeInfo(AndroidApi.JNI.FireBase.JValueAnimator));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JValueAnimator_AnimatorUpdateListener', TypeInfo(AndroidApi.JNI.FireBase.JValueAnimator_AnimatorUpdateListener));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JStatusBarNotification', TypeInfo(AndroidApi.JNI.FireBase.JStatusBarNotification));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JPathMotion', TypeInfo(AndroidApi.JNI.FireBase.JPathMotion));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JScene', TypeInfo(AndroidApi.JNI.FireBase.JScene));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JTransition', TypeInfo(AndroidApi.JNI.FireBase.JTransition));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JTransition_EpicenterCallback', TypeInfo(AndroidApi.JNI.FireBase.JTransition_EpicenterCallback));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JTransition_TransitionListener', TypeInfo(AndroidApi.JNI.FireBase.JTransition_TransitionListener));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JTransitionManager', TypeInfo(AndroidApi.JNI.FireBase.JTransitionManager));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JTransitionPropagation', TypeInfo(AndroidApi.JNI.FireBase.JTransitionPropagation));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JTransitionValues', TypeInfo(AndroidApi.JNI.FireBase.JTransitionValues));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JInterpolator', TypeInfo(AndroidApi.JNI.FireBase.JInterpolator));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JToolbar_LayoutParams', TypeInfo(AndroidApi.JNI.FireBase.JToolbar_LayoutParams));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jfirebase_messaging_zza', TypeInfo(AndroidApi.JNI.FireBase.Jfirebase_messaging_zza));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzz', TypeInfo(AndroidApi.JNI.FireBase.Jzzz));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzaa', TypeInfo(AndroidApi.JNI.FireBase.Jzzaa));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzab', TypeInfo(AndroidApi.JNI.FireBase.Jzzab));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzac', TypeInfo(AndroidApi.JNI.FireBase.Jzzac));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jfirebase_messaging_zzb', TypeInfo(AndroidApi.JNI.FireBase.Jfirebase_messaging_zzb));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jfirebase_messaging_zzc', TypeInfo(AndroidApi.JNI.FireBase.Jfirebase_messaging_zzc));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jfirebase_messaging_zzd', TypeInfo(AndroidApi.JNI.FireBase.Jfirebase_messaging_zzd));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jfirebase_messaging_zze', TypeInfo(AndroidApi.JNI.FireBase.Jfirebase_messaging_zze));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jfirebase_messaging_zzf', TypeInfo(AndroidApi.JNI.FireBase.Jfirebase_messaging_zzf));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jfirebase_messaging_zzg', TypeInfo(AndroidApi.JNI.FireBase.Jfirebase_messaging_zzg));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jfirebase_messaging_zzh', TypeInfo(AndroidApi.JNI.FireBase.Jfirebase_messaging_zzh));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jfirebase_messaging_zzi', TypeInfo(AndroidApi.JNI.FireBase.Jfirebase_messaging_zzi));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzh_zza', TypeInfo(AndroidApi.JNI.FireBase.Jzzh_zza));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jfirebase_messaging_zzj', TypeInfo(AndroidApi.JNI.FireBase.Jfirebase_messaging_zzj));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JReference', TypeInfo(AndroidApi.JNI.FireBase.JReference));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JWeakReference', TypeInfo(AndroidApi.JNI.FireBase.JWeakReference));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jfirebase_messaging_zzk', TypeInfo(AndroidApi.JNI.FireBase.Jfirebase_messaging_zzk));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jfirebase_messaging_zzl', TypeInfo(AndroidApi.JNI.FireBase.Jfirebase_messaging_zzl));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jfirebase_messaging_zzm', TypeInfo(AndroidApi.JNI.FireBase.Jfirebase_messaging_zzm));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jfirebase_messaging_zzv', TypeInfo(AndroidApi.JNI.FireBase.Jfirebase_messaging_zzv));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jfirebase_messaging_zzn', TypeInfo(AndroidApi.JNI.FireBase.Jfirebase_messaging_zzn));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jfirebase_messaging_zzw', TypeInfo(AndroidApi.JNI.FireBase.Jfirebase_messaging_zzw));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jfirebase_messaging_zzo', TypeInfo(AndroidApi.JNI.FireBase.Jfirebase_messaging_zzo));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzy', TypeInfo(AndroidApi.JNI.FireBase.Jzzy));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jfirebase_messaging_zzp', TypeInfo(AndroidApi.JNI.FireBase.Jfirebase_messaging_zzp));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jfirebase_messaging_zzq', TypeInfo(AndroidApi.JNI.FireBase.Jfirebase_messaging_zzq));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jfirebase_messaging_zzr', TypeInfo(AndroidApi.JNI.FireBase.Jfirebase_messaging_zzr));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jfirebase_messaging_zzs', TypeInfo(AndroidApi.JNI.FireBase.Jfirebase_messaging_zzs));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jfirebase_messaging_zzt', TypeInfo(AndroidApi.JNI.FireBase.Jfirebase_messaging_zzt));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jfirebase_messaging_zzu', TypeInfo(AndroidApi.JNI.FireBase.Jfirebase_messaging_zzu));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jfirebase_messaging_zzx', TypeInfo(AndroidApi.JNI.FireBase.Jfirebase_messaging_zzx));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JCancellationToken', TypeInfo(AndroidApi.JNI.FireBase.JCancellationToken));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JCancellationTokenSource', TypeInfo(AndroidApi.JNI.FireBase.JCancellationTokenSource));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JContinuation', TypeInfo(AndroidApi.JNI.FireBase.JContinuation));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JOnCanceledListener', TypeInfo(AndroidApi.JNI.FireBase.JOnCanceledListener));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JOnCompleteListener', TypeInfo(AndroidApi.JNI.FireBase.JOnCompleteListener));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JOnFailureListener', TypeInfo(AndroidApi.JNI.FireBase.JOnFailureListener));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JOnSuccessListener', TypeInfo(AndroidApi.JNI.FireBase.JOnSuccessListener));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JOnTokenCanceledListener', TypeInfo(AndroidApi.JNI.FireBase.JOnTokenCanceledListener));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JRuntimeExecutionException', TypeInfo(AndroidApi.JNI.FireBase.JRuntimeExecutionException));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JSuccessContinuation', TypeInfo(AndroidApi.JNI.FireBase.JSuccessContinuation));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JTask', TypeInfo(AndroidApi.JNI.FireBase.JTask));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JTaskCompletionSource', TypeInfo(AndroidApi.JNI.FireBase.JTaskCompletionSource));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JTaskExecutors', TypeInfo(AndroidApi.JNI.FireBase.JTaskExecutors));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JTaskExecutors_zza', TypeInfo(AndroidApi.JNI.FireBase.JTaskExecutors_zza));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JTasks', TypeInfo(AndroidApi.JNI.FireBase.JTasks));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JTasks_zzb', TypeInfo(AndroidApi.JNI.FireBase.JTasks_zzb));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JTasks_zza', TypeInfo(AndroidApi.JNI.FireBase.JTasks_zza));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JTasks_zzc', TypeInfo(AndroidApi.JNI.FireBase.JTasks_zzc));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jgms_tasks_zza', TypeInfo(AndroidApi.JNI.FireBase.Jgms_tasks_zza));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzb', TypeInfo(AndroidApi.JNI.FireBase.Jzzb));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzq', TypeInfo(AndroidApi.JNI.FireBase.Jzzq));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzc', TypeInfo(AndroidApi.JNI.FireBase.Jzzc));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzd', TypeInfo(AndroidApi.JNI.FireBase.Jzzd));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzze', TypeInfo(AndroidApi.JNI.FireBase.Jzze));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzf', TypeInfo(AndroidApi.JNI.FireBase.Jzzf));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzg', TypeInfo(AndroidApi.JNI.FireBase.Jzzg));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzh', TypeInfo(AndroidApi.JNI.FireBase.Jzzh));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzi', TypeInfo(AndroidApi.JNI.FireBase.Jzzi));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzj', TypeInfo(AndroidApi.JNI.FireBase.Jzzj));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzk', TypeInfo(AndroidApi.JNI.FireBase.Jzzk));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzl', TypeInfo(AndroidApi.JNI.FireBase.Jzzl));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzm', TypeInfo(AndroidApi.JNI.FireBase.Jzzm));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzn', TypeInfo(AndroidApi.JNI.FireBase.Jzzn));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzo', TypeInfo(AndroidApi.JNI.FireBase.Jzzo));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzp', TypeInfo(AndroidApi.JNI.FireBase.Jzzp));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzr', TypeInfo(AndroidApi.JNI.FireBase.Jzzr));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzs', TypeInfo(AndroidApi.JNI.FireBase.Jzzs));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzt', TypeInfo(AndroidApi.JNI.FireBase.Jzzt));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzu', TypeInfo(AndroidApi.JNI.FireBase.Jzzu));
  //TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzu_zza', TypeInfo(AndroidApi.JNI.FireBase.Jzzu_zza));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzv', TypeInfo(AndroidApi.JNI.FireBase.Jzzv));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzw', TypeInfo(AndroidApi.JNI.FireBase.Jzzw));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzx', TypeInfo(AndroidApi.JNI.FireBase.Jzzx));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jfirebase_BuildConfig', TypeInfo(AndroidApi.JNI.FireBase.Jfirebase_BuildConfig));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JDataCollectionDefaultChange', TypeInfo(AndroidApi.JNI.FireBase.JDataCollectionDefaultChange));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JFirebaseApp', TypeInfo(AndroidApi.JNI.FireBase.JFirebaseApp));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JFirebaseApp_1', TypeInfo(AndroidApi.JNI.FireBase.JFirebaseApp_1));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JFirebaseApp_BackgroundStateChangeListener', TypeInfo(AndroidApi.JNI.FireBase.JFirebaseApp_BackgroundStateChangeListener));
  //TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JFirebaseApp_GlobalBackgroundStateListener', TypeInfo(AndroidApi.JNI.FireBase.JFirebaseApp_GlobalBackgroundStateListener));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JFirebaseApp_IdTokenListener', TypeInfo(AndroidApi.JNI.FireBase.JFirebaseApp_IdTokenListener));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JFirebaseApp_IdTokenListenersCountChangedListener', TypeInfo(AndroidApi.JNI.FireBase.JFirebaseApp_IdTokenListenersCountChangedListener));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JFirebaseApp_UiExecutor', TypeInfo(AndroidApi.JNI.FireBase.JFirebaseApp_UiExecutor));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JFirebaseApp_UserUnlockReceiver', TypeInfo(AndroidApi.JNI.FireBase.JFirebaseApp_UserUnlockReceiver));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JFirebaseAppLifecycleListener', TypeInfo(AndroidApi.JNI.FireBase.JFirebaseAppLifecycleListener));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JFirebaseError', TypeInfo(AndroidApi.JNI.FireBase.JFirebaseError));
  //TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JFirebaseNetworkException', TypeInfo(AndroidApi.JNI.FireBase.JFirebaseNetworkException));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JFirebaseOptions', TypeInfo(AndroidApi.JNI.FireBase.JFirebaseOptions));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JFirebaseOptions_1', TypeInfo(AndroidApi.JNI.FireBase.JFirebaseOptions_1));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JFirebaseOptions_Builder', TypeInfo(AndroidApi.JNI.FireBase.JFirebaseOptions_Builder));
  //TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JFirebaseTooManyRequestsException', TypeInfo(AndroidApi.JNI.FireBase.JFirebaseTooManyRequestsException));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JPublicApi', TypeInfo(AndroidApi.JNI.FireBase.JPublicApi));
  //TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JFirebaseAuthException', TypeInfo(AndroidApi.JNI.FireBase.JFirebaseAuthException));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JGetTokenResult', TypeInfo(AndroidApi.JNI.FireBase.JGetTokenResult));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JComponentContainer', TypeInfo(AndroidApi.JNI.FireBase.JComponentContainer));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JAbstractComponentContainer', TypeInfo(AndroidApi.JNI.FireBase.JAbstractComponentContainer));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JComponent', TypeInfo(AndroidApi.JNI.FireBase.JComponent));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JComponentFactory', TypeInfo(AndroidApi.JNI.FireBase.JComponentFactory));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JLambda_1', TypeInfo(AndroidApi.JNI.FireBase.JLambda_1));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JLambda_2', TypeInfo(AndroidApi.JNI.FireBase.JLambda_2));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JLambda_3', TypeInfo(AndroidApi.JNI.FireBase.JLambda_3));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JComponent_1', TypeInfo(AndroidApi.JNI.FireBase.JComponent_1));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JComponent_Builder', TypeInfo(AndroidApi.JNI.FireBase.JComponent_Builder));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JComponentDiscovery', TypeInfo(AndroidApi.JNI.FireBase.JComponentDiscovery));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JComponentDiscovery_1', TypeInfo(AndroidApi.JNI.FireBase.JComponentDiscovery_1));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JComponentDiscovery_RegistrarNameRetriever', TypeInfo(AndroidApi.JNI.FireBase.JComponentDiscovery_RegistrarNameRetriever));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JComponentDiscovery_MetadataRegistrarNameRetriever', TypeInfo(AndroidApi.JNI.FireBase.JComponentDiscovery_MetadataRegistrarNameRetriever));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JComponentDiscoveryService', TypeInfo(AndroidApi.JNI.FireBase.JComponentDiscoveryService));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JComponentRegistrar', TypeInfo(AndroidApi.JNI.FireBase.JComponentRegistrar));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JComponentRuntime', TypeInfo(AndroidApi.JNI.FireBase.JComponentRuntime));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jinject_Provider', TypeInfo(AndroidApi.JNI.FireBase.Jinject_Provider));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.J_Lambda_1', TypeInfo(AndroidApi.JNI.FireBase.J_Lambda_1));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JLambda_4', TypeInfo(AndroidApi.JNI.FireBase.JLambda_4));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JLambda_5', TypeInfo(AndroidApi.JNI.FireBase.JLambda_5));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JCycleDetector', TypeInfo(AndroidApi.JNI.FireBase.JCycleDetector));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JCycleDetector_1', TypeInfo(AndroidApi.JNI.FireBase.JCycleDetector_1));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JCycleDetector_ComponentNode', TypeInfo(AndroidApi.JNI.FireBase.JCycleDetector_ComponentNode));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JCycleDetector_Dep', TypeInfo(AndroidApi.JNI.FireBase.JCycleDetector_Dep));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JDependency', TypeInfo(AndroidApi.JNI.FireBase.JDependency));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JDependencyException', TypeInfo(AndroidApi.JNI.FireBase.JDependencyException));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JDependencyCycleException', TypeInfo(AndroidApi.JNI.FireBase.JDependencyCycleException));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JSubscriber', TypeInfo(AndroidApi.JNI.FireBase.JSubscriber));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JEventBus', TypeInfo(AndroidApi.JNI.FireBase.JEventBus));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JEventBus__Lambda_1', TypeInfo(AndroidApi.JNI.FireBase.JEventBus__Lambda_1));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JLazy', TypeInfo(AndroidApi.JNI.FireBase.JLazy));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JMissingDependencyException', TypeInfo(AndroidApi.JNI.FireBase.JMissingDependencyException));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JRestrictedComponentContainer', TypeInfo(AndroidApi.JNI.FireBase.JRestrictedComponentContainer));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JPublisher', TypeInfo(AndroidApi.JNI.FireBase.JPublisher));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JRestrictedComponentContainer_RestrictedPublisher', TypeInfo(AndroidApi.JNI.FireBase.JRestrictedComponentContainer_RestrictedPublisher));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JEvent', TypeInfo(AndroidApi.JNI.FireBase.JEvent));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JEventHandler', TypeInfo(AndroidApi.JNI.FireBase.JEventHandler));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JFirebaseInstanceId', TypeInfo(AndroidApi.JNI.FireBase.JFirebaseInstanceId));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JFirebaseInstanceId_zza', TypeInfo(AndroidApi.JNI.FireBase.JFirebaseInstanceId_zza));
  //TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JFirebaseInstanceIdReceiver', TypeInfo(AndroidApi.JNI.FireBase.JFirebaseInstanceIdReceiver));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zzb', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zzb));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JFirebaseInstanceIdService', TypeInfo(AndroidApi.JNI.FireBase.JFirebaseInstanceIdService));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JInstanceIdResult', TypeInfo(AndroidApi.JNI.FireBase.JInstanceIdResult));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JMessagingChannel', TypeInfo(AndroidApi.JNI.FireBase.JMessagingChannel));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JRegistrar', TypeInfo(AndroidApi.JNI.FireBase.JRegistrar));
  //TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JRegistrar_zza', TypeInfo(AndroidApi.JNI.FireBase.JRegistrar_zza));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zza', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zza));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zzaa', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zzaa));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zzab', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zzab));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zzac', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zzac));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzad', TypeInfo(AndroidApi.JNI.FireBase.Jzzad));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzae', TypeInfo(AndroidApi.JNI.FireBase.Jzzae));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzaf', TypeInfo(AndroidApi.JNI.FireBase.Jzzaf));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzag', TypeInfo(AndroidApi.JNI.FireBase.Jzzag));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzah', TypeInfo(AndroidApi.JNI.FireBase.Jzzah));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzai', TypeInfo(AndroidApi.JNI.FireBase.Jzzai));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzak', TypeInfo(AndroidApi.JNI.FireBase.Jzzak));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzaj', TypeInfo(AndroidApi.JNI.FireBase.Jzzaj));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzal', TypeInfo(AndroidApi.JNI.FireBase.Jzzal));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzam', TypeInfo(AndroidApi.JNI.FireBase.Jzzam));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzan', TypeInfo(AndroidApi.JNI.FireBase.Jzzan));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzao', TypeInfo(AndroidApi.JNI.FireBase.Jzzao));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzap', TypeInfo(AndroidApi.JNI.FireBase.Jzzap));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzaq', TypeInfo(AndroidApi.JNI.FireBase.Jzzaq));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzar', TypeInfo(AndroidApi.JNI.FireBase.Jzzar));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzas', TypeInfo(AndroidApi.JNI.FireBase.Jzzas));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zzat', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zzat));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzau', TypeInfo(AndroidApi.JNI.FireBase.Jzzau));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzav', TypeInfo(AndroidApi.JNI.FireBase.Jzzav));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzaw', TypeInfo(AndroidApi.JNI.FireBase.Jzzaw));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzax', TypeInfo(AndroidApi.JNI.FireBase.Jzzax));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzay', TypeInfo(AndroidApi.JNI.FireBase.Jzzay));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzaz', TypeInfo(AndroidApi.JNI.FireBase.Jzzaz));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzba', TypeInfo(AndroidApi.JNI.FireBase.Jzzba));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zzc', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zzc));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zzd', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zzd));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zze', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zze));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zzf', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zzf));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zzg', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zzg));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zzh', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zzh));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zzi', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zzi));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zzj', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zzj));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zzk', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zzk));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zzl', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zzl));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jzzl_zza', TypeInfo(AndroidApi.JNI.FireBase.Jzzl_zza));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zzm', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zzm));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zzn', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zzn));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zzo', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zzo));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zzp', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zzp));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zzq', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zzq));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zzr', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zzr));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zzs', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zzs));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zzt', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zzt));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zzu', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zzu));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zzv', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zzv));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zzw', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zzw));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zzx', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zzx));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zzy', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zzy));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jiid_zzz', TypeInfo(AndroidApi.JNI.FireBase.Jiid_zzz));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JDefaultIdTokenListenersCountChangedListener', TypeInfo(AndroidApi.JNI.FireBase.JDefaultIdTokenListenersCountChangedListener));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JFirebaseAppHelper', TypeInfo(AndroidApi.JNI.FireBase.JFirebaseAppHelper));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JInternalTokenProvider', TypeInfo(AndroidApi.JNI.FireBase.JInternalTokenProvider));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JInternalTokenResult', TypeInfo(AndroidApi.JNI.FireBase.JInternalTokenResult));
  //TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JFirebaseNoSignedInUserException', TypeInfo(AndroidApi.JNI.FireBase.JFirebaseNoSignedInUserException));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JFirebaseMessaging', TypeInfo(AndroidApi.JNI.FireBase.JFirebaseMessaging));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JFirebaseMessagingService', TypeInfo(AndroidApi.JNI.FireBase.JFirebaseMessagingService));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JMessagingAnalytics', TypeInfo(AndroidApi.JNI.FireBase.JMessagingAnalytics));
  //TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JRemoteMessage', TypeInfo(AndroidApi.JNI.FireBase.JRemoteMessage));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JRemoteMessage_Builder', TypeInfo(AndroidApi.JNI.FireBase.JRemoteMessage_Builder));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JRemoteMessage_MessagePriority', TypeInfo(AndroidApi.JNI.FireBase.JRemoteMessage_MessagePriority));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JRemoteMessage_Notification', TypeInfo(AndroidApi.JNI.FireBase.JRemoteMessage_Notification));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JSendException', TypeInfo(AndroidApi.JNI.FireBase.JSendException));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jmessaging_zza', TypeInfo(AndroidApi.JNI.FireBase.Jmessaging_zza));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jmessaging_zzb', TypeInfo(AndroidApi.JNI.FireBase.Jmessaging_zzb));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.Jmessaging_zzc', TypeInfo(AndroidApi.JNI.FireBase.Jmessaging_zzc));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JLibraryVersion', TypeInfo(AndroidApi.JNI.FireBase.JLibraryVersion));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JAutoValue_LibraryVersion', TypeInfo(AndroidApi.JNI.FireBase.JAutoValue_LibraryVersion));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JUserAgentPublisher', TypeInfo(AndroidApi.JNI.FireBase.JUserAgentPublisher));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JDefaultUserAgentPublisher', TypeInfo(AndroidApi.JNI.FireBase.JDefaultUserAgentPublisher));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JDefaultUserAgentPublisher__Lambda_1', TypeInfo(AndroidApi.JNI.FireBase.JDefaultUserAgentPublisher__Lambda_1));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JGlobalLibraryVersionRegistrar', TypeInfo(AndroidApi.JNI.FireBase.JGlobalLibraryVersionRegistrar));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JLibraryVersionComponent', TypeInfo(AndroidApi.JNI.FireBase.JLibraryVersionComponent));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JFirebaseInitProvider', TypeInfo(AndroidApi.JNI.FireBase.JFirebaseInitProvider));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JReferenceQueue', TypeInfo(AndroidApi.JNI.FireBase.JReferenceQueue));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JKeyPair', TypeInfo(AndroidApi.JNI.FireBase.JKeyPair));
  TRegTypes.RegisterType('AndroidApi.JNI.FireBase.JScheduledExecutorService', TypeInfo(AndroidApi.JNI.FireBase.JScheduledExecutorService));
end;

initialization
  RegisterTypes;
end.

