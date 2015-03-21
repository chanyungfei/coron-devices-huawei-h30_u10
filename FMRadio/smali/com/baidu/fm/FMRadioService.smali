.class public Lcom/baidu/fm/FMRadioService;
.super Landroid/app/Service;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/fm/FMRadioService$ServiceStub;,
        Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;
    }
.end annotation


# static fields
.field public static final ACTION_FROMATVSERVICE_POWERUP:Ljava/lang/String; = "com.mediatek.app.mtv.POWER_ON"

.field public static final ACTION_TOATVSERVICE_POWERDOWN:Ljava/lang/String; = "com.mediatek.app.mtv.ACTION_REQUEST_SHUTDOWN"

.field public static final ACTION_TOFMSERVICE_POWERDOWN:Ljava/lang/String; = "com.baidu.fm.FMRadioService.ACTION_TOFMSERVICE_POWERDOWN"

.field public static final ACTION_TOFMTXSERVICE_POWERDOWN:Ljava/lang/String; = "com.mediatek.FMTransmitter.FMTransmitterService.ACTION_TOFMTXSERVICE_POWERDOWN"

.field public static final ACTION_TOMUSICSERVICE_POWERDOWN:Ljava/lang/String; = "com.android.music.musicservicecommand.pause"

.field private static final FMRADIOSERVICE_STATUS:I = 0x65

.field public static final FM_AUTO_CLOSE_CMD:Ljava/lang/String; = "com.baidu.fm.auto.close"

.field public static final FM_SERVICE_AUDIO_CHANGE_EXTRA:Ljava/lang/String; = "fm_audio_state_extra"

.field public static final FM_SERVICE_AUDIO_STATE_CHANGE:Ljava/lang/String; = "com.baidu.fm.audio_state_change"

.field public static final FM_SERVICE_HEADSET_STATE:Ljava/lang/String; = "com.baidu.fm.headset"

.field public static final FM_SERVICE_KILL_CMD:Ljava/lang/String; = "com.baidu.fm.app_kill"

.field public static final FM_SERVICE_OTHER_MEDIA_INTENT:Ljava/lang/String; = "com.baidu.fm.other_media_intent"

.field public static final FM_SERVICE_POWER_STATE_CHANGE:Ljava/lang/String; = "com.baidu.fm.power_state_change"

.field public static final FM_SERVICE_POWER_STATE_CHANGE_EXTRA:Ljava/lang/String; = "fm_power_state_extra"

.field private static final FOR_PROPRIETARY:I = 0x5

.field public static final FROM_APP:Ljava/lang/String; = "from_app"

.field private static final IDLE_DELAY:I = 0x1388

.field private static final LOGTAG:Ljava/lang/String; = "FMService"

.field public static final MSG_FM_POWER_DOWN:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERDOWN"

.field public static final MSG_FM_POWER_UP:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERUP"

.field public static final MUSIC_CMDNAME:Ljava/lang/String; = "command"

.field public static final MUSIC_CMDPAUSE:Ljava/lang/String; = "pause"

.field public static final MUSIC_SERVICECMD:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field public static final MY_NAME:Ljava/lang/String; = "FM"

.field private static mIsSeeking:Z


# instance fields
.field private AUDIO_PATH_EARPHONE:Ljava/lang/String;

.field private AUDIO_PATH_LOUDSPEAKER:Ljava/lang/String;

.field private FM_AUDIO_DISABLE:Ljava/lang/String;

.field private FM_AUDIO_ENABLE:Ljava/lang/String;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmPendingIntent:Landroid/app/PendingIntent;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoCloseIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mBinder:Lcom/baidu/fm/IFMRadioService$Stub;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mEventReceiver:Landroid/content/BroadcastReceiver;

.field mForcedUseForMedia:I

.field final mHandler:Landroid/os/Handler;

.field private mHeadsetPlugged:Z

.field final mHeadsetPluginHandler:Ljava/lang/Runnable;

.field private mIsMuted:Z

.field private mMP:Landroid/media/MediaPlayer;

.field private mMediaButtonComponentName:Landroid/content/ComponentName;

.field private mMediaButtonEventHandler:Landroid/os/Handler;

.field final mMusicIntentHandler:Ljava/lang/Runnable;

.field final mNotificationHandler:Ljava/lang/Runnable;

.field private mPersistence:Lcom/baidu/fm/FMPersistence;

.field private mPhoneStateListener1:Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;

.field private mPhoneStateListener2:Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;

.field private mServiceInUse:Z

.field private mServiceStartId:I

.field private mTurningOn:Z

.field private mUsingFMViaBTController:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mbAFEnabled:Z

.field private mbEarphoneUsed:Z

.field private mbIsDeviceOpen:Z

.field private mbIsPowerUp:Z

.field private mbPSRTEnabled:Z

.field private mbResumeAfterCall:Z

.field private mbSIM1Idle:Z

.field private mbSIM2Idle:Z

.field private mbSearching:Z

.field private mbStopScanCalled:Z

.field private mbTAEnabled:Z

.field private miCurrentStation:I

.field private msLRText:Ljava/lang/String;

.field private msPS:Ljava/lang/String;

.field private playerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/fm/FMRadioService;->mIsSeeking:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 94
    const-string v0, "AudioSetForceToSpeaker=1"

    iput-object v0, p0, Lcom/baidu/fm/FMRadioService;->AUDIO_PATH_LOUDSPEAKER:Ljava/lang/String;

    .line 95
    const-string v0, "AudioSetForceToSpeaker=0"

    iput-object v0, p0, Lcom/baidu/fm/FMRadioService;->AUDIO_PATH_EARPHONE:Ljava/lang/String;

    .line 96
    const-string v0, "AudioSetFmEnable=1"

    iput-object v0, p0, Lcom/baidu/fm/FMRadioService;->FM_AUDIO_ENABLE:Ljava/lang/String;

    .line 97
    const-string v0, "AudioSetFmEnable=0"

    iput-object v0, p0, Lcom/baidu/fm/FMRadioService;->FM_AUDIO_DISABLE:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/fm/FMRadioService;->msPS:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/fm/FMRadioService;->msLRText:Ljava/lang/String;

    .line 121
    iput-object v2, p0, Lcom/baidu/fm/FMRadioService;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    iput-boolean v1, p0, Lcom/baidu/fm/FMRadioService;->mHeadsetPlugged:Z

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/fm/FMRadioService;->mServiceStartId:I

    .line 126
    iput-boolean v1, p0, Lcom/baidu/fm/FMRadioService;->mServiceInUse:Z

    .line 127
    iput-boolean v1, p0, Lcom/baidu/fm/FMRadioService;->mIsMuted:Z

    .line 128
    iput-boolean v1, p0, Lcom/baidu/fm/FMRadioService;->mUsingFMViaBTController:Z

    .line 130
    iput-boolean v1, p0, Lcom/baidu/fm/FMRadioService;->mTurningOn:Z

    .line 131
    iput-boolean v1, p0, Lcom/baidu/fm/FMRadioService;->mbSearching:Z

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/fm/FMRadioService;->mHandler:Landroid/os/Handler;

    .line 139
    iput-object v2, p0, Lcom/baidu/fm/FMRadioService;->mPersistence:Lcom/baidu/fm/FMPersistence;

    .line 141
    iput-object v2, p0, Lcom/baidu/fm/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 142
    iput-object v2, p0, Lcom/baidu/fm/FMRadioService;->mMediaButtonComponentName:Landroid/content/ComponentName;

    .line 145
    iput-boolean v3, p0, Lcom/baidu/fm/FMRadioService;->mbEarphoneUsed:Z

    .line 146
    iput-boolean v1, p0, Lcom/baidu/fm/FMRadioService;->mbIsDeviceOpen:Z

    .line 147
    iput-boolean v1, p0, Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z

    .line 148
    iput v1, p0, Lcom/baidu/fm/FMRadioService;->miCurrentStation:I

    .line 149
    iput-boolean v1, p0, Lcom/baidu/fm/FMRadioService;->mbStopScanCalled:Z

    .line 151
    iput-boolean v3, p0, Lcom/baidu/fm/FMRadioService;->mbSIM1Idle:Z

    .line 152
    iput-boolean v3, p0, Lcom/baidu/fm/FMRadioService;->mbSIM2Idle:Z

    .line 153
    iput-boolean v1, p0, Lcom/baidu/fm/FMRadioService;->mbResumeAfterCall:Z

    .line 154
    iput-object v2, p0, Lcom/baidu/fm/FMRadioService;->mPhoneStateListener1:Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;

    .line 155
    iput-object v2, p0, Lcom/baidu/fm/FMRadioService;->mPhoneStateListener2:Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;

    .line 157
    iput-object v2, p0, Lcom/baidu/fm/FMRadioService;->mMP:Landroid/media/MediaPlayer;

    .line 162
    iput-boolean v1, p0, Lcom/baidu/fm/FMRadioService;->mbPSRTEnabled:Z

    .line 163
    iput-boolean v1, p0, Lcom/baidu/fm/FMRadioService;->mbAFEnabled:Z

    .line 164
    iput-boolean v1, p0, Lcom/baidu/fm/FMRadioService;->mbTAEnabled:Z

    .line 298
    new-instance v0, Lcom/baidu/fm/FMRadioService$1;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadioService$1;-><init>(Lcom/baidu/fm/FMRadioService;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadioService;->mAutoCloseIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 315
    new-instance v0, Lcom/baidu/fm/FMRadioService$2;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadioService$2;-><init>(Lcom/baidu/fm/FMRadioService;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 345
    new-instance v0, Lcom/baidu/fm/FMRadioService$3;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadioService$3;-><init>(Lcom/baidu/fm/FMRadioService;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadioService;->playerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 382
    new-instance v0, Lcom/baidu/fm/FMRadioService$4;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadioService$4;-><init>(Lcom/baidu/fm/FMRadioService;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadioService;->mMusicIntentHandler:Ljava/lang/Runnable;

    .line 423
    new-instance v0, Lcom/baidu/fm/FMRadioService$5;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadioService$5;-><init>(Lcom/baidu/fm/FMRadioService;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadioService;->mHeadsetPluginHandler:Ljava/lang/Runnable;

    .line 648
    new-instance v0, Lcom/baidu/fm/FMRadioService$6;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadioService$6;-><init>(Lcom/baidu/fm/FMRadioService;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 866
    new-instance v0, Lcom/baidu/fm/FMRadioService$ServiceStub;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadioService$ServiceStub;-><init>(Lcom/baidu/fm/FMRadioService;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadioService;->mBinder:Lcom/baidu/fm/IFMRadioService$Stub;

    .line 1356
    new-instance v0, Lcom/baidu/fm/FMRadioService$8;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadioService$8;-><init>(Lcom/baidu/fm/FMRadioService;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadioService;->mNotificationHandler:Ljava/lang/Runnable;

    .line 1376
    new-instance v0, Lcom/baidu/fm/FMRadioService$9;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadioService$9;-><init>(Lcom/baidu/fm/FMRadioService;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadioService;->mMediaButtonEventHandler:Landroid/os/Handler;

    .line 168
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/fm/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/baidu/fm/FMRadioService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/baidu/fm/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/baidu/fm/FMRadioService;->mHeadsetPlugged:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/baidu/fm/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/baidu/fm/FMRadioService;->mHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/baidu/fm/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/baidu/fm/FMRadioService;->showAntennaInvailable()V

    return-void
.end method

.method static synthetic access$1300(Lcom/baidu/fm/FMRadioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/baidu/fm/FMRadioService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$1400(Lcom/baidu/fm/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/baidu/fm/FMRadioService;->mbSIM1Idle:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/baidu/fm/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/baidu/fm/FMRadioService;->mbSIM1Idle:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/baidu/fm/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/baidu/fm/FMRadioService;->mbSIM2Idle:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/baidu/fm/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/baidu/fm/FMRadioService;->mbSIM2Idle:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/baidu/fm/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/baidu/fm/FMRadioService;->isAntennaAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/baidu/fm/FMRadioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/baidu/fm/FMRadioService;->miCurrentStation:I

    return v0
.end method

.method static synthetic access$1702(Lcom/baidu/fm/FMRadioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/baidu/fm/FMRadioService;->miCurrentStation:I

    return p1
.end method

.method static synthetic access$1800(Lcom/baidu/fm/FMRadioService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService;->mMediaButtonEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/baidu/fm/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/baidu/fm/FMRadioService;->mbIsDeviceOpen:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/baidu/fm/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/baidu/fm/FMRadioService;->mbIsDeviceOpen:Z

    return p1
.end method

.method static synthetic access$200(Lcom/baidu/fm/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/baidu/fm/FMRadioService;->mTurningOn:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/baidu/fm/FMRadioService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService;->msPS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/baidu/fm/FMRadioService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService;->msLRText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/baidu/fm/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/baidu/fm/FMRadioService;->mIsMuted:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/baidu/fm/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/baidu/fm/FMRadioService;->mIsMuted:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/baidu/fm/FMRadioService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/baidu/fm/FMRadioService;->enableFMAudio(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/baidu/fm/FMRadioService;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/baidu/fm/FMRadioService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/baidu/fm/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/baidu/fm/FMRadioService;->mbEarphoneUsed:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/baidu/fm/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/baidu/fm/FMRadioService;->mbPSRTEnabled:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/baidu/fm/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/baidu/fm/FMRadioService;->mbPSRTEnabled:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/baidu/fm/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/baidu/fm/FMRadioService;->mbAFEnabled:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/baidu/fm/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/baidu/fm/FMRadioService;->mbAFEnabled:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/baidu/fm/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/baidu/fm/FMRadioService;->mbTAEnabled:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/baidu/fm/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/baidu/fm/FMRadioService;->mbTAEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/baidu/fm/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/baidu/fm/FMRadioService;->mbResumeAfterCall:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/baidu/fm/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/baidu/fm/FMRadioService;->mUsingFMViaBTController:Z

    return v0
.end method

.method static synthetic access$302(Lcom/baidu/fm/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/baidu/fm/FMRadioService;->mbResumeAfterCall:Z

    return p1
.end method

.method static synthetic access$3100()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/baidu/fm/FMRadioService;->mIsSeeking:Z

    return v0
.end method

.method static synthetic access$400(Lcom/baidu/fm/FMRadioService;)Lcom/baidu/fm/FMPersistence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService;->mPersistence:Lcom/baidu/fm/FMPersistence;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/fm/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/baidu/fm/FMRadioService;->mbSearching:Z

    return v0
.end method

.method static synthetic access$502(Lcom/baidu/fm/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/baidu/fm/FMRadioService;->mbSearching:Z

    return p1
.end method

.method static synthetic access$600(Lcom/baidu/fm/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/baidu/fm/FMRadioService;->mbStopScanCalled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/baidu/fm/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/baidu/fm/FMRadioService;->mbStopScanCalled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/baidu/fm/FMRadioService;)Lcom/baidu/fm/IFMRadioService$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService;->mBinder:Lcom/baidu/fm/IFMRadioService$Stub;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/fm/FMRadioService;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService;->mMP:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$802(Lcom/baidu/fm/FMRadioService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/baidu/fm/FMRadioService;->mMP:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$900(Lcom/baidu/fm/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/baidu/fm/FMRadioService;->mServiceInUse:Z

    return v0
.end method

.method private enableFMAudio(Z)V
    .locals 4
    .parameter "bEnable"

    .prologue
    .line 517
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.enableFMAudio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService;->mMP:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 543
    :goto_0
    return-void

    .line 521
    :cond_0
    if-eqz p1, :cond_2

    .line 522
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService;->mMP:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 523
    const-string v1, "FMService"

    const-string v2, "Error: FM audio is already enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 527
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService;->mMP:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :goto_1
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService;->mMP:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FMService"

    const-string v2, "Exception: Cannot call MediaPlayer prepare."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 536
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService;->mMP:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 537
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService;->mMP:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_0

    .line 540
    :cond_3
    const-string v1, "FMService"

    const-string v2, "Error: FM audio is already disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getTunedFrequencyString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f070044

    invoke-virtual {p0, v1}, Lcom/baidu/fm/FMRadioService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/fm/FMRadioService;->miCurrentStation:I

    div-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Lcom/baidu/fm/FMStationInfo;->intFreqToStringFreq(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f070045

    invoke-virtual {p0, v1}, Lcom/baidu/fm/FMRadioService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isAntennaAvailable()Z
    .locals 5

    .prologue
    .line 818
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/baidu/fm/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 819
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v1, 0x0

    .line 821
    .local v1, bAvailable:Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 822
    const/4 v1, 0x1

    .line 825
    :cond_0
    const-string v2, "FMService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAntennaAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    return v1
.end method

.method private isPhoneCalling()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1347
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 1348
    .local v0, state:I
    if-ne v0, v1, :cond_0

    .line 1352
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPhoneInCall()Z
    .locals 2

    .prologue
    .line 1337
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 1338
    .local v0, state:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1339
    const/4 v1, 0x1

    .line 1342
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private pauseOtherMediaPlayback()V
    .locals 3

    .prologue
    .line 509
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 510
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    const-string v1, "from_app"

    const-string v2, "FM"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    invoke-virtual {p0, v0}, Lcom/baidu/fm/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 514
    return-void
.end method

.method private showAntennaInvailable()V
    .locals 4

    .prologue
    .line 855
    const v1, 0x7f070028

    invoke-virtual {p0, v1}, Lcom/baidu/fm/FMRadioService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 857
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x31

    const/4 v2, 0x0

    const/16 v3, 0xf0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 858
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 859
    return-void
.end method

.method private stopNotification()V
    .locals 1

    .prologue
    .line 847
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/fm/FMRadioService;->stopForeground(Z)V

    .line 852
    return-void
.end method


# virtual methods
.method public doPowerDown()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1274
    const-string v2, "FMService"

    const-string v3, ">>> FMRadioService.doPowerDown"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    const/4 v0, 0x0

    .line 1276
    .local v0, bRet:Z
    iget-boolean v2, p0, Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z

    if-eqz v2, :cond_2

    .line 1277
    invoke-direct {p0, v4}, Lcom/baidu/fm/FMRadioService;->enableFMAudio(Z)V

    .line 1278
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioNative;->powerdown(I)Z

    move-result v0

    .line 1279
    if-eqz v0, :cond_1

    .line 1280
    iput-boolean v4, p0, Lcom/baidu/fm/FMRadioService;->mUsingFMViaBTController:Z

    .line 1283
    invoke-direct {p0}, Lcom/baidu/fm/FMRadioService;->stopNotification()V

    .line 1285
    iput-boolean v4, p0, Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z

    .line 1287
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 1288
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1292
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.fm.power_state_change"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1293
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "fm_power_state_extra"

    iget-boolean v3, p0, Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1294
    invoke-virtual {p0, v1}, Lcom/baidu/fm/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1332
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    const-string v2, "FMService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioService.doPowerDown: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    return v0

    .line 1325
    :cond_1
    const-string v2, "FMService"

    const-string v3, "Error: powerdown failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1329
    :cond_2
    const-string v2, "FMService"

    const-string v3, "Error: device is already power down."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public doPowerUp(F)Z
    .locals 10
    .parameter "frequency"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1180
    const-string v5, "FMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>> FMRadioService.doPowerUp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    const/4 v1, 0x0

    .line 1182
    .local v1, bRet:Z
    const/high16 v5, 0x4120

    mul-float/2addr v5, p1

    float-to-int v5, v5

    iput v5, p0, Lcom/baidu/fm/FMRadioService;->miCurrentStation:I

    .line 1184
    iput-boolean v8, p0, Lcom/baidu/fm/FMRadioService;->mTurningOn:Z

    .line 1186
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.mediatek.FMTransmitter.FMTransmitterService.ACTION_TOFMTXSERVICE_POWERDOWN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1187
    .local v4, intentToFMTx:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/baidu/fm/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1190
    iget-boolean v5, p0, Lcom/baidu/fm/FMRadioService;->mbSIM1Idle:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/baidu/fm/FMRadioService;->mbSIM2Idle:Z

    if-eqz v5, :cond_3

    .line 1191
    iget-boolean v5, p0, Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z

    if-eqz v5, :cond_0

    .line 1192
    const-string v5, "FMService"

    const-string v6, "Error: device is already power up."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    const/4 v1, 0x1

    .line 1265
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/baidu/fm/FMRadioService;->mBinder:Lcom/baidu/fm/IFMRadioService$Stub;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/baidu/fm/IFMRadioService$Stub;->setMute(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1268
    :goto_1
    iput-boolean v9, p0, Lcom/baidu/fm/FMRadioService;->mTurningOn:Z

    .line 1269
    const-string v5, "FMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<<< FMRadioService.doPowerUp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    return v1

    .line 1199
    :cond_0
    const-wide/16 v5, 0xa

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1206
    :goto_2
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->powerup(F)Z

    move-result v1

    .line 1208
    if-eqz v1, :cond_2

    .line 1211
    invoke-virtual {p0}, Lcom/baidu/fm/FMRadioService;->startNotification()V

    .line 1213
    invoke-direct {p0}, Lcom/baidu/fm/FMRadioService;->pauseOtherMediaPlayback()V

    .line 1214
    iget-object v5, p0, Lcom/baidu/fm/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v6, p0, Lcom/baidu/fm/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7, v8}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 1216
    .local v0, audioFocus:I
    iput-boolean v8, p0, Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z

    .line 1218
    iget-object v5, p0, Lcom/baidu/fm/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v5, :cond_1

    .line 1219
    iget-object v5, p0, Lcom/baidu/fm/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1224
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.baidu.fm.power_state_change"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1225
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "fm_power_state_extra"

    iget-boolean v6, p0, Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1226
    invoke-virtual {p0, v3}, Lcom/baidu/fm/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1201
    .end local v0           #audioFocus:I
    .end local v3           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 1202
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1203
    const-string v5, "FMService"

    const-string v6, "Exception: Thread.sleep."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1257
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_2
    const-string v5, "FMService"

    const-string v6, "Error: powerup failed."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1262
    :cond_3
    const-string v5, "FMService"

    const-string v6, "Phone call is ongoing."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1266
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 462
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind, mServiceInUse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/fm/FMRadioService;->mServiceInUse:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/fm/FMRadioService;->mServiceInUse:Z

    .line 466
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService;->mBinder:Lcom/baidu/fm/IFMRadioService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x20

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 173
    const-string v4, "FMService"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 177
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/baidu/fm/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/baidu/fm/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 180
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/baidu/fm/FMRadioService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/baidu/fm/FMMediaButtonIntentReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/baidu/fm/FMRadioService;->mMediaButtonComponentName:Landroid/content/ComponentName;

    .line 182
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/baidu/fm/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 184
    .local v3, tm:Landroid/telephony/TelephonyManager;
    const-string v4, "FMService"

    const-string v5, "Dual SIM phone"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v4, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;

    invoke-direct {v4, p0, v10}, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;-><init>(Lcom/baidu/fm/FMRadioService;Lcom/baidu/fm/FMRadioService$1;)V

    iput-object v4, p0, Lcom/baidu/fm/FMRadioService;->mPhoneStateListener1:Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;

    .line 186
    iget-object v4, p0, Lcom/baidu/fm/FMRadioService;->mPhoneStateListener1:Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;

    invoke-virtual {v4, v7}, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;->setSIMID(I)V

    .line 187
    iget-object v4, p0, Lcom/baidu/fm/FMRadioService;->mPhoneStateListener1:Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;

    invoke-virtual {v3, v4, v9, v7}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 188
    new-instance v4, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;

    invoke-direct {v4, p0, v10}, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;-><init>(Lcom/baidu/fm/FMRadioService;Lcom/baidu/fm/FMRadioService$1;)V

    iput-object v4, p0, Lcom/baidu/fm/FMRadioService;->mPhoneStateListener2:Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;

    .line 189
    iget-object v4, p0, Lcom/baidu/fm/FMRadioService;->mPhoneStateListener2:Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;

    invoke-virtual {v4, v8}, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;->setSIMID(I)V

    .line 190
    iget-object v4, p0, Lcom/baidu/fm/FMRadioService;->mPhoneStateListener2:Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;

    invoke-virtual {v3, v4, v9, v8}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 198
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/baidu/fm/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 200
    .local v2, pm:Landroid/os/PowerManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v8, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/fm/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 201
    iget-object v4, p0, Lcom/baidu/fm/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 203
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/baidu/fm/FMRadioService;->mMP:Landroid/media/MediaPlayer;

    .line 204
    iget-object v4, p0, Lcom/baidu/fm/FMRadioService;->mMP:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/baidu/fm/FMRadioService;->playerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 206
    :try_start_0
    iget-object v4, p0, Lcom/baidu/fm/FMRadioService;->mMP:Landroid/media/MediaPlayer;

    const-string v5, "MEDIATEK://MEDIAPLAYER_PLAYERTYPE_FM"

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 217
    iget-object v4, p0, Lcom/baidu/fm/FMRadioService;->mMP:Landroid/media/MediaPlayer;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 219
    invoke-virtual {p0}, Lcom/baidu/fm/FMRadioService;->registerEventListener()V

    .line 220
    invoke-virtual {p0}, Lcom/baidu/fm/FMRadioService;->registerAutoCLoseListener()V

    .line 222
    new-instance v4, Lcom/baidu/fm/FMPersistence;

    invoke-direct {v4, p0}, Lcom/baidu/fm/FMPersistence;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/baidu/fm/FMRadioService;->mPersistence:Lcom/baidu/fm/FMPersistence;

    .line 227
    iget-object v4, p0, Lcom/baidu/fm/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 228
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/baidu/fm/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 230
    iput-boolean v7, p0, Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z

    .line 231
    sput-boolean v7, Lcom/baidu/fm/FMRadioService;->mIsSeeking:Z

    .line 232
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, ex:Ljava/io/IOException;
    const-string v4, "FMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDataSource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 211
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v4, "FMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDataSource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 214
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v4, "FMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDataSource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 237
    const-string v2, "FMService"

    const-string v3, "onDestroy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-boolean v2, p0, Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z

    if-eqz v2, :cond_0

    .line 241
    const-string v2, "FMService"

    const-string v3, "Service destroyed while playing. close FM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/fm/FMRadioService;->doPowerDown()Z

    .line 244
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService;->mBinder:Lcom/baidu/fm/IFMRadioService$Stub;

    invoke-virtual {v2}, Lcom/baidu/fm/IFMRadioService$Stub;->closeDevice()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/fm/FMRadioService;->requestFMAppExit()V

    .line 252
    invoke-virtual {p0}, Lcom/baidu/fm/FMRadioService;->unRegisterEventListener()V

    .line 255
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/baidu/fm/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 258
    iput-boolean v5, p0, Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z

    .line 259
    sput-boolean v5, Lcom/baidu/fm/FMRadioService;->mIsSeeking:Z

    .line 261
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/baidu/fm/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 263
    .local v1, tm:Landroid/telephony/TelephonyManager;
    const-string v2, "FMService"

    const-string v3, "Dual SIM phone"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService;->mPhoneStateListener1:Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;

    invoke-virtual {v1, v2, v5, v5}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 265
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService;->mPhoneStateListener2:Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v5, v3}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 273
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService;->mMP:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    .line 274
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService;->mMP:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 275
    iput-object v4, p0, Lcom/baidu/fm/FMRadioService;->mMP:Landroid/media/MediaPlayer;

    .line 279
    :cond_1
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 280
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 281
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService;->mMediaButtonEventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 283
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 286
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService;->mMediaButtonComponentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    .line 287
    iput-object v4, p0, Lcom/baidu/fm/FMRadioService;->mMediaButtonComponentName:Landroid/content/ComponentName;

    .line 290
    :cond_2
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService;->mPersistence:Lcom/baidu/fm/FMPersistence;

    if-eqz v2, :cond_3

    .line 291
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService;->mPersistence:Lcom/baidu/fm/FMPersistence;

    iget v3, p0, Lcom/baidu/fm/FMRadioService;->miCurrentStation:I

    div-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Lcom/baidu/fm/FMPersistence;->setCurrentStation(I)V

    .line 292
    iput-object v4, p0, Lcom/baidu/fm/FMRadioService;->mPersistence:Lcom/baidu/fm/FMPersistence;

    .line 295
    :cond_3
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 296
    return-void

    .line 246
    .end local v1           #tm:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMService"

    const-string v3, "Exception: Cannot call binder function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 472
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRebind, mServiceInUse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/fm/FMRadioService;->mServiceInUse:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/fm/FMRadioService;->mServiceInUse:Z

    .line 476
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 481
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStart, startId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iput p2, p0, Lcom/baidu/fm/FMRadioService;->mServiceStartId:I

    .line 487
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 488
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 489
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 490
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/fm/FMRadioService;->mServiceInUse:Z

    .line 496
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnbind, isFMon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTurningOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/fm/FMRadioService;->mTurningOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-boolean v0, p0, Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/fm/FMRadioService;->mTurningOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/fm/FMRadioService;->mbResumeAfterCall:Z

    if-eqz v0, :cond_1

    .line 505
    :cond_0
    :goto_0
    return v3

    .line 503
    :cond_1
    const-string v0, "FMService"

    const-string v1, "onUnbind, exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget v0, p0, Lcom/baidu/fm/FMRadioService;->mServiceStartId:I

    invoke-virtual {p0, v0}, Lcom/baidu/fm/FMRadioService;->stopSelf(I)V

    goto :goto_0
.end method

.method public registerAutoCLoseListener()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 663
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.fm.auto.close"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 664
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/fm/FMRadioService;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    .line 665
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/baidu/fm/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/baidu/fm/FMRadioService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 667
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 668
    .local v0, autocloseFilter:Landroid/content/IntentFilter;
    const-string v2, "com.baidu.fm.auto.close"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 669
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService;->mAutoCloseIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/baidu/fm/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 670
    return-void
.end method

.method public registerEventListener()V
    .locals 2

    .prologue
    .line 673
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 674
    new-instance v1, Lcom/baidu/fm/FMRadioService$7;

    invoke-direct {v1, p0}, Lcom/baidu/fm/FMRadioService$7;-><init>(Lcom/baidu/fm/FMRadioService;)V

    iput-object v1, p0, Lcom/baidu/fm/FMRadioService;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 798
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 799
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 800
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 801
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 802
    const-string v1, "com.baidu.yi.fm.service.MediaButtonIntent"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 806
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/baidu/fm/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 808
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public requestFMAppExit()V
    .locals 2

    .prologue
    .line 378
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.fm.app_kill"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 379
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/baidu/fm/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 380
    return-void
.end method

.method public startNotification()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 831
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 832
    .local v0, status:Landroid/app/Notification;
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 833
    const v1, 0x7f0200b8

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 834
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 835
    const v1, 0x7f070043

    invoke-virtual {p0, v1}, Lcom/baidu/fm/FMRadioService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/baidu/fm/FMRadioService;->getTunedFrequencyString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.baidu.yi.fm.FMRADIO_ACTIVITY"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v5, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 838
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/baidu/fm/FMRadioService;->startForeground(ILandroid/app/Notification;)V

    .line 843
    return-void
.end method

.method public unRegisterEventListener()V
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/baidu/fm/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 813
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/fm/FMRadioService;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 815
    :cond_0
    return-void
.end method
