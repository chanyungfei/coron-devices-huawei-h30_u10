.class public Lcom/baidu/fm/FMRadio;
.super Landroid/app/Activity;
.source "FMRadio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/fm/FMRadio$TuneRadioTask;,
        Lcom/baidu/fm/FMRadio$scanTask;,
        Lcom/baidu/fm/FMRadio$seekTask;,
        Lcom/baidu/fm/FMRadio$tuneTask;,
        Lcom/baidu/fm/FMRadio$openTask;,
        Lcom/baidu/fm/FMRadio$ServiceBinder;,
        Lcom/baidu/fm/FMRadio$FrequencyIndicator;,
        Lcom/baidu/fm/FMRadio$FMRadioButtonsListener;,
        Lcom/baidu/fm/FMRadio$TextFreqButtonHandler;,
        Lcom/baidu/fm/FMRadio$FreqTextTwoEditWatcher;
    }
.end annotation


# static fields
.field public static final CMD_CANCELSEARCH:I = 0xa

.field public static final CMD_FMCONFIGURE:I = 0x4

.field public static final CMD_FMOFF:I = 0x3

.field public static final CMD_FMON:I = 0x2

.field public static final CMD_GET_INTERNALANTENNA_MODE:I = 0xe

.field public static final CMD_MUTE:I = 0x5

.field public static final CMD_NONE:I = 0x0

.field public static final CMD_SCAN:I = 0x7

.field public static final CMD_SEARCHLIST:I = 0x9

.field public static final CMD_SEEK:I = 0x6

.field public static final CMD_SEEKPI:I = 0x8

.field public static final CMD_SET_AUDIO_MODE:I = 0xc

.field public static final CMD_SET_AUTOAF:I = 0xd

.field public static final CMD_SET_POWER_MODE:I = 0xb

.field public static final CMD_TIMEOUT_DELAY_MS:I = 0x2ee0

.field public static final CMD_TUNE:I = 0x1

.field private static final DIALOG_CMD_FAILED:I = 0x5

.field private static final DIALOG_CMD_TIMEOUT:I = 0x4

.field private static final DIALOG_NO_ANTENNA:I = 0x8

.field private static final DIALOG_POWERON_FAILED:I = 0x7

.field private static final DIALOG_PROGRESS_PROGRESS:I = 0x2

.field private static final DIALOG_SEARCHING:I = 0x1

.field private static final DIALOG_SEARCH_ALERT:I = 0x9

.field private static final DIALOG_SWITCH_SPEAKER:I = 0x6

.field private static final DIALOG_TURNON_PROGRESS:I = 0x3

.field private static final FMRADIO_UI_STATION_AUDIO_MONO:I = 0x2

.field private static final FMRADIO_UI_STATION_AUDIO_STEREO:I = 0x1

.field public static final FM_REQUEST_ACTIVITY_CODE:I = 0x3e9

.field public static final FM_RESULT_CODE_SCAN:I = 0x66

.field public static final FM_RESULT_CODE_TUNE:I = 0x65

.field public static final FULL_SCAN_TIMEOUT_DELAY_MS:I = 0x61a8

.field private static final LOGTAG:Ljava/lang/String; = "FMRadioApp"

.field public static final MSG_CMD_TIMEOUT:I = 0x65

.field private static final PREVIEW_TIME_MS:I = 0x64

.field public static final TIME_OUT_CMD:Ljava/lang/String; = "TIME_OUT_CMD"

.field private static mService:Lcom/baidu/fm/IFMRadioService;

.field private static mVolume:I

.field private static sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/baidu/fm/FMRadio$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoCloseTimeIndex:I

.field private mButtonsClickListener:Landroid/view/View$OnClickListener;

.field private mCommandTimeoutHandler:Landroid/os/Handler;

.field private mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;

.field private mCurrentFrequencyInt:I

.field private mCurrentStationInfo:Lcom/baidu/fm/FMStationInfo;

.field private mFMServiceReceiver:Landroid/content/BroadcastReceiver;

.field private mFavoriteBtn:Landroid/widget/ImageView;

.field private mFineTuneBtn:Lcom/baidu/fm/ImageViewButton$RepeatListener;

.field private mFineTuneClickListener:Lcom/baidu/fm/widget/TunnerView$OnButtonClickListener;

.field private mFineTuneRepeatListener:Lcom/baidu/fm/widget/TunnerView$OnButtonRepeatListener;

.field final mHandler:Landroid/os/Handler;

.field private mInitialBtState:Z

.field private mInputDoneTwoEditNegativeListener:Landroid/content/DialogInterface$OnClickListener;

.field private mInputDoneTwoEditPositiveListener:Landroid/content/DialogInterface$OnClickListener;

.field private mInputTextFreqDialogLayout:Landroid/view/View;

.field private mIsScaning:Z

.field private mIsSeeking:Z

.field private mIsShowNoAntenna:Z

.field private mIsTuning:Z

.field private mMenuBtn:Lcom/baidu/fm/ImageViewButton;

.field final mOnAntStatusChange:Ljava/lang/Runnable;

.field final mOnAudioMuteUnmute:Ljava/lang/Runnable;

.field final mOnMediaButtonNext:Ljava/lang/Runnable;

.field final mOnMediaButtonPause:Ljava/lang/Runnable;

.field final mOnMediaButtonPrevious:Ljava/lang/Runnable;

.field final mOnPhoneCallStateChange:Ljava/lang/Runnable;

.field final mOnStereo:Ljava/lang/Runnable;

.field private mOpenTask:Lcom/baidu/fm/FMRadio$openTask;

.field private mPersistence:Lcom/baidu/fm/FMPersistence;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mScanDialog:Landroid/app/ProgressDialog;

.field private mScanTask:Lcom/baidu/fm/FMRadio$scanTask;

.field private mScreenBoardView:Lcom/baidu/fm/widget/ScreenBoardView;

.field private mSeekTask:Lcom/baidu/fm/FMRadio$seekTask;

.field private mSeekTuneNextBtn:Lcom/baidu/fm/ImageViewButton;

.field private mSeekTunePrevBtn:Lcom/baidu/fm/ImageViewButton;

.field private mStationInfoArray:[Lcom/baidu/fm/FMStationInfo;

.field private mStationListBtn:Lcom/baidu/fm/ImageViewButton;

.field private mStereo:I

.field private mTitleBtnTouchListener:Landroid/view/View$OnTouchListener;

.field private mToast:Landroid/widget/Toast;

.field private mTuneScrollListener:Lcom/baidu/fm/widget/TunnerView$OnTunnerScrollListener;

.field private mTuneTask:Lcom/baidu/fm/FMRadio$TuneRadioTask;

.field private mTunnerView:Lcom/baidu/fm/widget/TunnerView;

.field private mTurnOnDialog:Landroid/app/ProgressDialog;

.field final mUpdateProgramService:Ljava/lang/Runnable;

.field final mUpdateRadioText:Ljava/lang/Runnable;

.field private mUseEarPhone:Z

.field private final onFinishActivity:Ljava/lang/Runnable;

.field private final onSeekNextStation:Ljava/lang/Runnable;

.field private final onSeekPrevStation:Ljava/lang/Runnable;

.field private final onStartScan:Ljava/lang/Runnable;

.field private osc:Landroid/content/ServiceConnection;

.field private searchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private startScanFreq:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    .line 181
    const/4 v0, 0x0

    sput v0, Lcom/baidu/fm/FMRadio;->mVolume:I

    .line 1769
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/fm/FMRadio;->sConnectionMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 112
    iput-object v1, p0, Lcom/baidu/fm/FMRadio;->mScreenBoardView:Lcom/baidu/fm/widget/ScreenBoardView;

    .line 113
    iput-object v1, p0, Lcom/baidu/fm/FMRadio;->mTunnerView:Lcom/baidu/fm/widget/TunnerView;

    .line 115
    iput-object v1, p0, Lcom/baidu/fm/FMRadio;->mSeekTunePrevBtn:Lcom/baidu/fm/ImageViewButton;

    .line 116
    iput-object v1, p0, Lcom/baidu/fm/FMRadio;->mSeekTuneNextBtn:Lcom/baidu/fm/ImageViewButton;

    .line 117
    iput-object v1, p0, Lcom/baidu/fm/FMRadio;->mStationListBtn:Lcom/baidu/fm/ImageViewButton;

    .line 118
    iput-object v1, p0, Lcom/baidu/fm/FMRadio;->mMenuBtn:Lcom/baidu/fm/ImageViewButton;

    .line 119
    iput-object v1, p0, Lcom/baidu/fm/FMRadio;->mFavoriteBtn:Landroid/widget/ImageView;

    .line 120
    iput-object v1, p0, Lcom/baidu/fm/FMRadio;->mButtonsClickListener:Landroid/view/View$OnClickListener;

    .line 121
    iput-object v1, p0, Lcom/baidu/fm/FMRadio;->mTitleBtnTouchListener:Landroid/view/View$OnTouchListener;

    .line 122
    iput-object v1, p0, Lcom/baidu/fm/FMRadio;->mInputTextFreqDialogLayout:Landroid/view/View;

    .line 126
    iput-object v1, p0, Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    .line 127
    iput-object v1, p0, Lcom/baidu/fm/FMRadio;->mCurrentStationInfo:Lcom/baidu/fm/FMStationInfo;

    .line 130
    iput-object v1, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    .line 133
    iput-object v1, p0, Lcom/baidu/fm/FMRadio;->mStationInfoArray:[Lcom/baidu/fm/FMStationInfo;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->searchList:Ljava/util/ArrayList;

    .line 138
    iput v2, p0, Lcom/baidu/fm/FMRadio;->startScanFreq:I

    .line 165
    iput-boolean v2, p0, Lcom/baidu/fm/FMRadio;->mInitialBtState:Z

    .line 170
    iput-boolean v2, p0, Lcom/baidu/fm/FMRadio;->mIsScaning:Z

    .line 171
    iput-boolean v2, p0, Lcom/baidu/fm/FMRadio;->mIsSeeking:Z

    .line 172
    iput-boolean v2, p0, Lcom/baidu/fm/FMRadio;->mIsTuning:Z

    .line 173
    iput-boolean v2, p0, Lcom/baidu/fm/FMRadio;->mIsShowNoAntenna:Z

    .line 175
    iput-object v1, p0, Lcom/baidu/fm/FMRadio;->mScanTask:Lcom/baidu/fm/FMRadio$scanTask;

    .line 176
    iput-object v1, p0, Lcom/baidu/fm/FMRadio;->mSeekTask:Lcom/baidu/fm/FMRadio$seekTask;

    .line 177
    iput-object v1, p0, Lcom/baidu/fm/FMRadio;->mOpenTask:Lcom/baidu/fm/FMRadio$openTask;

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/fm/FMRadio;->mUseEarPhone:Z

    .line 196
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mHandler:Landroid/os/Handler;

    .line 199
    iput-object v1, p0, Lcom/baidu/fm/FMRadio;->mScanDialog:Landroid/app/ProgressDialog;

    .line 200
    iput-object v1, p0, Lcom/baidu/fm/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 201
    iput-object v1, p0, Lcom/baidu/fm/FMRadio;->mTurnOnDialog:Landroid/app/ProgressDialog;

    .line 209
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/fm/FMRadio;->mStereo:I

    .line 215
    iput-object v1, p0, Lcom/baidu/fm/FMRadio;->mFMServiceReceiver:Landroid/content/BroadcastReceiver;

    .line 703
    new-instance v0, Lcom/baidu/fm/FMRadio$3;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadio$3;-><init>(Lcom/baidu/fm/FMRadio;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mInputDoneTwoEditPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 730
    new-instance v0, Lcom/baidu/fm/FMRadio$4;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadio$4;-><init>(Lcom/baidu/fm/FMRadio;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mInputDoneTwoEditNegativeListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1462
    new-instance v0, Lcom/baidu/fm/FMRadio$18;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadio$18;-><init>(Lcom/baidu/fm/FMRadio;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mFineTuneBtn:Lcom/baidu/fm/ImageViewButton$RepeatListener;

    .line 1824
    new-instance v0, Lcom/baidu/fm/FMRadio$19;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadio$19;-><init>(Lcom/baidu/fm/FMRadio;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mCommandTimeoutHandler:Landroid/os/Handler;

    .line 1908
    new-instance v0, Lcom/baidu/fm/FMRadio$20;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadio$20;-><init>(Lcom/baidu/fm/FMRadio;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->osc:Landroid/content/ServiceConnection;

    .line 2244
    new-instance v0, Lcom/baidu/fm/FMRadio$21;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadio$21;-><init>(Lcom/baidu/fm/FMRadio;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mOnAntStatusChange:Ljava/lang/Runnable;

    .line 2259
    new-instance v0, Lcom/baidu/fm/FMRadio$22;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadio$22;-><init>(Lcom/baidu/fm/FMRadio;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->onFinishActivity:Ljava/lang/Runnable;

    .line 2269
    new-instance v0, Lcom/baidu/fm/FMRadio$23;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadio$23;-><init>(Lcom/baidu/fm/FMRadio;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->onSeekNextStation:Ljava/lang/Runnable;

    .line 2289
    new-instance v0, Lcom/baidu/fm/FMRadio$24;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadio$24;-><init>(Lcom/baidu/fm/FMRadio;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->onSeekPrevStation:Ljava/lang/Runnable;

    .line 2309
    new-instance v0, Lcom/baidu/fm/FMRadio$25;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadio$25;-><init>(Lcom/baidu/fm/FMRadio;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->onStartScan:Ljava/lang/Runnable;

    .line 2329
    new-instance v0, Lcom/baidu/fm/FMRadio$26;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadio$26;-><init>(Lcom/baidu/fm/FMRadio;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mOnStereo:Ljava/lang/Runnable;

    .line 2335
    new-instance v0, Lcom/baidu/fm/FMRadio$27;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadio$27;-><init>(Lcom/baidu/fm/FMRadio;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mUpdateRadioText:Ljava/lang/Runnable;

    .line 2345
    new-instance v0, Lcom/baidu/fm/FMRadio$28;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadio$28;-><init>(Lcom/baidu/fm/FMRadio;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mUpdateProgramService:Ljava/lang/Runnable;

    .line 2354
    new-instance v0, Lcom/baidu/fm/FMRadio$29;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadio$29;-><init>(Lcom/baidu/fm/FMRadio;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mOnAudioMuteUnmute:Ljava/lang/Runnable;

    .line 2360
    new-instance v0, Lcom/baidu/fm/FMRadio$30;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadio$30;-><init>(Lcom/baidu/fm/FMRadio;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mOnMediaButtonPause:Ljava/lang/Runnable;

    .line 2370
    new-instance v0, Lcom/baidu/fm/FMRadio$31;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadio$31;-><init>(Lcom/baidu/fm/FMRadio;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mOnMediaButtonNext:Ljava/lang/Runnable;

    .line 2389
    new-instance v0, Lcom/baidu/fm/FMRadio$32;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadio$32;-><init>(Lcom/baidu/fm/FMRadio;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mOnMediaButtonPrevious:Ljava/lang/Runnable;

    .line 2408
    new-instance v0, Lcom/baidu/fm/FMRadio$33;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadio$33;-><init>(Lcom/baidu/fm/FMRadio;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mOnPhoneCallStateChange:Ljava/lang/Runnable;

    .line 2934
    new-instance v0, Lcom/baidu/fm/FMRadio$34;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadio$34;-><init>(Lcom/baidu/fm/FMRadio;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mFineTuneClickListener:Lcom/baidu/fm/widget/TunnerView$OnButtonClickListener;

    .line 2951
    new-instance v0, Lcom/baidu/fm/FMRadio$35;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadio$35;-><init>(Lcom/baidu/fm/FMRadio;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mFineTuneRepeatListener:Lcom/baidu/fm/widget/TunnerView$OnButtonRepeatListener;

    .line 2968
    new-instance v0, Lcom/baidu/fm/FMRadio$36;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadio$36;-><init>(Lcom/baidu/fm/FMRadio;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mTuneScrollListener:Lcom/baidu/fm/widget/TunnerView$OnTunnerScrollListener;

    .line 2992
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/fm/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->initPersistence()V

    return-void
.end method

.method static synthetic access$100()Lcom/baidu/fm/IFMRadioService;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/baidu/fm/FMRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->isAntennaAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/baidu/fm/IFMRadioService;)Lcom/baidu/fm/IFMRadioService;
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    sput-object p0, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/baidu/fm/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->enableRadio()V

    return-void
.end method

.method static synthetic access$1200(Lcom/baidu/fm/FMRadio;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/baidu/fm/FMRadio;->mAutoCloseTimeIndex:I

    return v0
.end method

.method static synthetic access$1202(Lcom/baidu/fm/FMRadio;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput p1, p0, Lcom/baidu/fm/FMRadio;->mAutoCloseTimeIndex:I

    return p1
.end method

.method static synthetic access$1300(Lcom/baidu/fm/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->doSwitchSpeakerEarPhone()V

    return-void
.end method

.method static synthetic access$1400(Lcom/baidu/fm/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->launchScan()V

    return-void
.end method

.method static synthetic access$1500(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMPersistence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/baidu/fm/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->onStationListBtnClick()V

    return-void
.end method

.method static synthetic access$1700(Lcom/baidu/fm/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->onMenuBtnClick()V

    return-void
.end method

.method static synthetic access$1800(Lcom/baidu/fm/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->onFavoriteStationBtnClick()V

    return-void
.end method

.method static synthetic access$1900(Lcom/baidu/fm/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->onFineTuneNext()V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/fm/FMRadio;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/baidu/fm/FMRadio;->updateRadioUI(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/baidu/fm/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->onFineTunePrev()V

    return-void
.end method

.method static synthetic access$2100(Lcom/baidu/fm/FMRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/baidu/fm/FMRadio;->mIsTuning:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/baidu/fm/FMRadio;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/baidu/fm/FMRadio;->mIsTuning:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMRadio$TuneRadioTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mTuneTask:Lcom/baidu/fm/FMRadio$TuneRadioTask;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/baidu/fm/FMRadio;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mCommandTimeoutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/baidu/fm/FMRadio;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mTurnOnDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/baidu/fm/FMRadio;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/baidu/fm/FMRadio;->mTurnOnDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/baidu/fm/FMRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->isPowerUp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/baidu/fm/FMRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->isDeviceOpen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/baidu/fm/FMRadio;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->getFrequency()I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/baidu/fm/FMRadio;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/baidu/fm/FMRadio;->postTimeoutHandler(II)V

    return-void
.end method

.method static synthetic access$3100(Lcom/baidu/fm/FMRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->openDevice()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/baidu/fm/FMRadio;F)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/baidu/fm/FMRadio;->powerUp(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/baidu/fm/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->disableRadio()V

    return-void
.end method

.method static synthetic access$3400(Lcom/baidu/fm/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->cleanupTimeoutHandler()V

    return-void
.end method

.method static synthetic access$3600(Lcom/baidu/fm/FMRadio;F)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/baidu/fm/FMRadio;->tuneChannel(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/baidu/fm/FMRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/baidu/fm/FMRadio;->mIsSeeking:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/baidu/fm/FMRadio;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/baidu/fm/FMRadio;->mIsSeeking:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/baidu/fm/FMRadio;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/baidu/fm/FMRadio;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/baidu/fm/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/baidu/fm/FMRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->isMuted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/baidu/fm/FMRadio;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/baidu/fm/FMRadio;->setMute(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/baidu/fm/FMRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/baidu/fm/FMRadio;->mIsScaning:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/baidu/fm/FMRadio;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/baidu/fm/FMRadio;->mIsScaning:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/baidu/fm/FMRadio;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mScanDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/baidu/fm/FMRadio;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/baidu/fm/FMRadio;->mScanDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/baidu/fm/FMRadio;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->startScan()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/baidu/fm/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->onNextStationBtnClick()V

    return-void
.end method

.method static synthetic access$4500(Lcom/baidu/fm/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->showAntennaInvailable()V

    return-void
.end method

.method static synthetic access$4600(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMRadio$seekTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mSeekTask:Lcom/baidu/fm/FMRadio$seekTask;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/baidu/fm/FMRadio;Lcom/baidu/fm/FMRadio$seekTask;)Lcom/baidu/fm/FMRadio$seekTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/baidu/fm/FMRadio;->mSeekTask:Lcom/baidu/fm/FMRadio$seekTask;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMRadio$scanTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mScanTask:Lcom/baidu/fm/FMRadio$scanTask;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/baidu/fm/FMRadio;Lcom/baidu/fm/FMRadio$scanTask;)Lcom/baidu/fm/FMRadio$scanTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/baidu/fm/FMRadio;->mScanTask:Lcom/baidu/fm/FMRadio$scanTask;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/baidu/fm/FMRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->isPhoneCalling()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/baidu/fm/FMRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->isPhoneInCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/baidu/fm/FMRadio;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mInputTextFreqDialogLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/baidu/fm/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->switchMuteState()V

    return-void
.end method

.method static synthetic access$5100(Lcom/baidu/fm/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->onSeekNextStationBtnClick()V

    return-void
.end method

.method static synthetic access$5200(Lcom/baidu/fm/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->onPrevStationBtnClick()V

    return-void
.end method

.method static synthetic access$5300(Lcom/baidu/fm/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->onSeekPrevStationBtnClick()V

    return-void
.end method

.method static synthetic access$600(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMRadio$FrequencyIndicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/fm/FMRadio;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->onFinishActivity:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/fm/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->enableRadioOnOffUI()V

    return-void
.end method

.method static synthetic access$900(Lcom/baidu/fm/FMRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/baidu/fm/FMRadio;->mIsShowNoAntenna:Z

    return v0
.end method

.method static synthetic access$902(Lcom/baidu/fm/FMRadio;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/baidu/fm/FMRadio;->mIsShowNoAntenna:Z

    return p1
.end method

.method private activeAF()I
    .locals 5

    .prologue
    .line 2688
    const/4 v1, 0x0

    .line 2689
    .local v1, iRet:I
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 2690
    const-string v2, "FMRadioApp"

    const-string v3, "activeAF: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    :goto_0
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activeAF, ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    return v1

    .line 2694
    :cond_0
    :try_start_0
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/baidu/fm/IFMRadioService;->activeAF()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2696
    :catch_0
    move-exception v0

    .line 2697
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private activeTA()I
    .locals 5

    .prologue
    .line 2705
    const/4 v1, 0x0

    .line 2706
    .local v1, iRet:I
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 2707
    const-string v2, "FMRadioApp"

    const-string v3, "activeTA: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    :goto_0
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activeTA, ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2718
    return v1

    .line 2711
    :cond_0
    :try_start_0
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/baidu/fm/IFMRadioService;->activeTA()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2713
    :catch_0
    move-exception v0

    .line 2714
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static bindToService(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 1773
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/baidu/fm/FMRadio;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v0

    return v0
.end method

.method public static bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 3
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 1778
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/baidu/fm/FMRadioService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1779
    new-instance v0, Lcom/baidu/fm/FMRadio$ServiceBinder;

    invoke-direct {v0, p1}, Lcom/baidu/fm/FMRadio$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 1780
    .local v0, sb:Lcom/baidu/fm/FMRadio$ServiceBinder;
    sget-object v1, Lcom/baidu/fm/FMRadio;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1781
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/baidu/fm/FMRadioService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method private cancelSearch()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1686
    const-string v0, "FMRadioApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelSearch, scan: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/fm/FMRadio;->mIsScaning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seek: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/fm/FMRadio;->mIsSeeking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    iget-boolean v0, p0, Lcom/baidu/fm/FMRadio;->mIsScaning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mScanTask:Lcom/baidu/fm/FMRadio$scanTask;

    if-eqz v0, :cond_0

    .line 1690
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mScanTask:Lcom/baidu/fm/FMRadio$scanTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/fm/FMRadio$scanTask;->cancel(Z)Z

    .line 1691
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->stopScan()Z

    .line 1693
    :cond_0
    iput-boolean v3, p0, Lcom/baidu/fm/FMRadio;->mIsScaning:Z

    .line 1694
    iput-boolean v3, p0, Lcom/baidu/fm/FMRadio;->mIsSeeking:Z

    .line 1695
    return-void
.end method

.method private declared-synchronized cleanupTimeoutHandler()V
    .locals 2

    .prologue
    .line 1817
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mCommandTimeoutHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1818
    monitor-exit p0

    return-void

    .line 1817
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private closeDevice()Z
    .locals 5

    .prologue
    .line 2467
    const/4 v0, 0x0

    .line 2468
    .local v0, bRet:Z
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 2469
    const-string v2, "FMRadioApp"

    const-string v3, "closeDevice: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    :goto_0
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeDevice, ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    return v0

    .line 2473
    :cond_0
    :try_start_0
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/baidu/fm/IFMRadioService;->closeDevice()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2475
    :catch_0
    move-exception v1

    .line 2476
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private configureMenu()V
    .locals 2

    .prologue
    .line 560
    invoke-static {p0}, Lyi/support/v1/YiLaf;->enable(Landroid/app/Activity;)V

    .line 561
    invoke-static {}, Lyi/support/v1/YiLaf;->current()Lyi/support/v1/YiLaf$Interface;

    move-result-object v0

    invoke-interface {v0}, Lyi/support/v1/YiLaf$Interface;->invalidateOptionsMenu()V

    .line 562
    invoke-static {}, Lyi/support/v1/YiLaf;->current()Lyi/support/v1/YiLaf$Interface;

    move-result-object v0

    invoke-interface {v0}, Lyi/support/v1/YiLaf$Interface;->getMenu()Lyi/support/v1/YiLaf$MenuWrapper;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lyi/support/v1/YiLaf$MenuWrapper;->setPanelVisibility(I)V

    .line 563
    return-void
.end method

.method private createCloseTimeDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 1208
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1209
    .local v0, dlgBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070035

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1210
    const/high16 v1, 0x7f04

    iget v2, p0, Lcom/baidu/fm/FMRadio;->mAutoCloseTimeIndex:I

    new-instance v3, Lcom/baidu/fm/FMRadio$10;

    invoke-direct {v3, p0}, Lcom/baidu/fm/FMRadio$10;-><init>(Lcom/baidu/fm/FMRadio;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1216
    const v1, 0x7f070011

    new-instance v2, Lcom/baidu/fm/FMRadio$11;

    invoke-direct {v2, p0}, Lcom/baidu/fm/FMRadio$11;-><init>(Lcom/baidu/fm/FMRadio;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1235
    const v1, 0x7f070012

    new-instance v2, Lcom/baidu/fm/FMRadio$12;

    invoke-direct {v2, p0}, Lcom/baidu/fm/FMRadio$12;-><init>(Lcom/baidu/fm/FMRadio;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1243
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createCmdFailedDlg(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 1144
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1146
    .local v0, dlgBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f07001d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1147
    const v1, 0x7f07001e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1149
    const v1, 0x7f070011

    new-instance v2, Lcom/baidu/fm/FMRadio$7;

    invoke-direct {v2, p0}, Lcom/baidu/fm/FMRadio$7;-><init>(Lcom/baidu/fm/FMRadio;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1156
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createCmdTimeoutDlg(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 1127
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1128
    .local v0, dlgBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1129
    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1131
    const v1, 0x7f070011

    new-instance v2, Lcom/baidu/fm/FMRadio$6;

    invoke-direct {v2, p0}, Lcom/baidu/fm/FMRadio$6;-><init>(Lcom/baidu/fm/FMRadio;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1138
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createNoAntennaDlg(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 1182
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1184
    .local v0, dlgBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070025

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1185
    const v1, 0x7f070024

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1187
    const v1, 0x7f070011

    new-instance v2, Lcom/baidu/fm/FMRadio$9;

    invoke-direct {v2, p0}, Lcom/baidu/fm/FMRadio$9;-><init>(Lcom/baidu/fm/FMRadio;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1201
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1203
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createPowerOnFailedDlg(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 1162
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1164
    .local v0, dlgBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f07001f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1165
    const v1, 0x7f070020

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1167
    const v1, 0x7f070011

    new-instance v2, Lcom/baidu/fm/FMRadio$8;

    invoke-direct {v2, p0}, Lcom/baidu/fm/FMRadio$8;-><init>(Lcom/baidu/fm/FMRadio;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1174
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1176
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createProgressDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 1111
    const-string v0, ""

    .line 1112
    .local v0, msgStr:Ljava/lang/String;
    const-string v1, ""

    .line 1114
    .local v1, titleStr:Ljava/lang/String;
    const v2, 0x7f07002b

    invoke-virtual {p0, v2}, Lcom/baidu/fm/FMRadio;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1115
    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Lcom/baidu/fm/FMRadio;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1117
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/baidu/fm/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1118
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1119
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1121
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1123
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v2
.end method

.method private createSearchAlertDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 1273
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1274
    .local v0, dlgBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070030

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1276
    const v1, 0x7f070036

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1278
    const v1, 0x7f070021

    new-instance v2, Lcom/baidu/fm/FMRadio$15;

    invoke-direct {v2, p0}, Lcom/baidu/fm/FMRadio$15;-><init>(Lcom/baidu/fm/FMRadio;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1285
    const v1, 0x7f070022

    new-instance v2, Lcom/baidu/fm/FMRadio$16;

    invoke-direct {v2, p0}, Lcom/baidu/fm/FMRadio$16;-><init>(Lcom/baidu/fm/FMRadio;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1292
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createSearchingDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 1096
    const-string v0, ""

    .line 1097
    .local v0, msgStr:Ljava/lang/String;
    const-string v1, ""

    .line 1099
    .local v1, titleStr:Ljava/lang/String;
    const v2, 0x7f07002b

    invoke-virtual {p0, v2}, Lcom/baidu/fm/FMRadio;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1100
    const v2, 0x7f070030

    invoke-virtual {p0, v2}, Lcom/baidu/fm/FMRadio;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1102
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/baidu/fm/FMRadio;->mScanDialog:Landroid/app/ProgressDialog;

    .line 1103
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mScanDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1104
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mScanDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1105
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mScanDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1107
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mScanDialog:Landroid/app/ProgressDialog;

    return-object v2
.end method

.method private createSwitchSpeakerDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 1250
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1251
    .local v0, dlgBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f07003c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1252
    const v1, 0x7f07003d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1254
    const v1, 0x7f070021

    new-instance v2, Lcom/baidu/fm/FMRadio$13;

    invoke-direct {v2, p0}, Lcom/baidu/fm/FMRadio$13;-><init>(Lcom/baidu/fm/FMRadio;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1262
    const v1, 0x7f070022

    new-instance v2, Lcom/baidu/fm/FMRadio$14;

    invoke-direct {v2, p0}, Lcom/baidu/fm/FMRadio$14;-><init>(Lcom/baidu/fm/FMRadio;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1269
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createTurnOnDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 1084
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mTurnOnDialog:Landroid/app/ProgressDialog;

    .line 1085
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mTurnOnDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f070027

    invoke-virtual {p0, v1}, Lcom/baidu/fm/FMRadio;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1086
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mTurnOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1087
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mTurnOnDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f070026

    invoke-virtual {p0, v1}, Lcom/baidu/fm/FMRadio;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1088
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mTurnOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1090
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mTurnOnDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private deactiveTA()I
    .locals 5

    .prologue
    .line 2722
    const/4 v1, 0x0

    .line 2723
    .local v1, iRet:I
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 2724
    const-string v2, "FMRadioApp"

    const-string v3, "deactiveTA: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    :goto_0
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deactiveTA, ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    return v1

    .line 2728
    :cond_0
    :try_start_0
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/baidu/fm/IFMRadioService;->deactiveTA()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2730
    :catch_0
    move-exception v0

    .line 2731
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private deinitPersistence()V
    .locals 1

    .prologue
    .line 845
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    .line 846
    return-void
.end method

.method private disableRadio()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1728
    const/4 v0, 0x0

    .line 1729
    .local v0, bStatus:Z
    const-string v1, "FMRadioApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableRadio, FM status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->isPowerUp()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->isPowerUp()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/baidu/fm/FMRadio;->mIsSeeking:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/fm/FMRadio;->mIsScaning:Z

    if-eqz v1, :cond_1

    .line 1732
    :cond_0
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->cancelSearch()V

    .line 1735
    :cond_1
    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mOpenTask:Lcom/baidu/fm/FMRadio$openTask;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mOpenTask:Lcom/baidu/fm/FMRadio$openTask;

    invoke-virtual {v1}, Lcom/baidu/fm/FMRadio$openTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_2

    .line 1736
    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mOpenTask:Lcom/baidu/fm/FMRadio$openTask;

    invoke-virtual {v1, v4}, Lcom/baidu/fm/FMRadio$openTask;->cancel(Z)Z

    .line 1739
    :cond_2
    invoke-direct {p0, v4}, Lcom/baidu/fm/FMRadio;->useEarPhone(Z)V

    .line 1740
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->powerDown()Z

    .line 1741
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->closeDevice()Z

    .line 1742
    return-void
.end method

.method private doSwitchSpeakerEarPhone()V
    .locals 4

    .prologue
    .line 886
    iget-boolean v1, p0, Lcom/baidu/fm/FMRadio;->mUseEarPhone:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/baidu/fm/FMRadio;->mUseEarPhone:Z

    .line 888
    const-string v1, "FMRadioApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doSwitchSpeakerEarPhone, mUseEarPhone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/baidu/fm/FMRadio;->mUseEarPhone:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    sget-object v1, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-eqz v1, :cond_0

    .line 892
    :try_start_0
    sget-object v1, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    iget-boolean v2, p0, Lcom/baidu/fm/FMRadio;->mUseEarPhone:Z

    invoke-interface {v1, v2}, Lcom/baidu/fm/IFMRadioService;->useEarphone(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    :cond_0
    :goto_1
    return-void

    .line 886
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 894
    :catch_0
    move-exception v0

    .line 895
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private doTextFreqWithTwoText()V
    .locals 10

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/baidu/fm/FMRadio;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 570
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f030010

    const v7, 0x7f09005e

    invoke-virtual {p0, v7}, Lcom/baidu/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v4, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/baidu/fm/FMRadio;->mInputTextFreqDialogLayout:Landroid/view/View;

    .line 573
    iget-object v7, p0, Lcom/baidu/fm/FMRadio;->mInputTextFreqDialogLayout:Landroid/view/View;

    const v8, 0x7f090061

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 574
    .local v3, freqEditMHz:Landroid/widget/EditText;
    iget-object v7, p0, Lcom/baidu/fm/FMRadio;->mInputTextFreqDialogLayout:Landroid/view/View;

    const v8, 0x7f090063

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 578
    .local v2, freqEditKHz:Landroid/widget/EditText;
    new-instance v7, Lcom/baidu/fm/FMRadio$FreqTextTwoEditWatcher;

    invoke-direct {v7, p0, v3}, Lcom/baidu/fm/FMRadio$FreqTextTwoEditWatcher;-><init>(Lcom/baidu/fm/FMRadio;Landroid/widget/EditText;)V

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 580
    new-instance v7, Lcom/baidu/fm/FMRadio$2;

    invoke-direct {v7, p0}, Lcom/baidu/fm/FMRadio$2;-><init>(Lcom/baidu/fm/FMRadio;)V

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 620
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f070019

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/baidu/fm/FMRadio;->mInputTextFreqDialogLayout:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f070011

    iget-object v9, p0, Lcom/baidu/fm/FMRadio;->mInputDoneTwoEditPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f070012

    iget-object v9, p0, Lcom/baidu/fm/FMRadio;->mInputDoneTwoEditNegativeListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 627
    .local v6, textFreqWithTwoDialog:Landroid/app/AlertDialog;
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "mAlert"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 628
    .local v1, field:Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 630
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 631
    .local v5, obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "mHandler"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 632
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 633
    new-instance v7, Lcom/baidu/fm/FMRadio$TextFreqButtonHandler;

    invoke-direct {v7, p0, v6}, Lcom/baidu/fm/FMRadio$TextFreqButtonHandler;-><init>(Lcom/baidu/fm/FMRadio;Landroid/content/DialogInterface;)V

    invoke-virtual {v1, v5, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v5           #obj:Ljava/lang/Object;
    :goto_0
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 641
    return-void

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private enableAF(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 2837
    const-string v1, "FMRadioApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableAF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    sget-object v1, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v1, :cond_0

    .line 2839
    const-string v1, "FMRadioApp"

    const-string v2, "enableAF: No service interface."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    :goto_0
    return-void

    .line 2843
    :cond_0
    :try_start_0
    sget-object v1, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/baidu/fm/IFMRadioService;->enableAF(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2845
    :catch_0
    move-exception v0

    .line 2846
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private enablePSRT(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 2822
    const-string v1, "FMRadioApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enablePSRT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    sget-object v1, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v1, :cond_0

    .line 2824
    const-string v1, "FMRadioApp"

    const-string v2, "enablePSRT: No service interface."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    :goto_0
    return-void

    .line 2828
    :cond_0
    :try_start_0
    sget-object v1, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/baidu/fm/IFMRadioService;->enablePSRT(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2830
    :catch_0
    move-exception v0

    .line 2831
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private enableRadio()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1698
    const-string v2, "FMRadioApp"

    const-string v3, "enableRadio"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    iput-boolean v5, p0, Lcom/baidu/fm/FMRadio;->mIsScaning:Z

    .line 1701
    iput-boolean v5, p0, Lcom/baidu/fm/FMRadio;->mIsSeeking:Z

    .line 1702
    iput-boolean v5, p0, Lcom/baidu/fm/FMRadio;->mIsTuning:Z

    .line 1703
    const/4 v0, 0x0

    .line 1705
    .local v0, bStatus:Z
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->isAntennaAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1706
    const-string v2, "FMRadioApp"

    const-string v3, "enableRadio: no antenna"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    invoke-direct {p0, v5}, Lcom/baidu/fm/FMRadio;->enableRadioOnOffUI(Z)V

    .line 1725
    :goto_0
    return-void

    .line 1713
    :cond_0
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mTurnOnDialog:Landroid/app/ProgressDialog;

    if-nez v2, :cond_1

    .line 1714
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/baidu/fm/FMRadio;->showDialog(I)V

    .line 1717
    :cond_1
    const/16 v1, 0x36b

    .line 1718
    .local v1, powerFreq:I
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    if-eqz v2, :cond_2

    .line 1719
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v2}, Lcom/baidu/fm/FMPersistence;->getCurrentStationInt()I

    move-result v1

    .line 1722
    :cond_2
    invoke-direct {p0, v4}, Lcom/baidu/fm/FMRadio;->useEarPhone(Z)V

    .line 1723
    new-instance v2, Lcom/baidu/fm/FMRadio$openTask;

    invoke-direct {v2, p0}, Lcom/baidu/fm/FMRadio$openTask;-><init>(Lcom/baidu/fm/FMRadio;)V

    iput-object v2, p0, Lcom/baidu/fm/FMRadio;->mOpenTask:Lcom/baidu/fm/FMRadio$openTask;

    .line 1724
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mOpenTask:Lcom/baidu/fm/FMRadio$openTask;

    new-array v3, v4, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/baidu/fm/FMRadio$openTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private enableRadioOnOffUI()V
    .locals 2

    .prologue
    .line 1868
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->isPowerUp()Z

    move-result v0

    .line 1869
    .local v0, bEnable:Z
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->isAntennaAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1870
    const/4 v0, 0x0

    .line 1873
    :cond_0
    invoke-direct {p0, v0}, Lcom/baidu/fm/FMRadio;->enableRadioOnOffUI(Z)V

    .line 1874
    return-void
.end method

.method private enableRadioOnOffUI(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 1865
    return-void
.end method

.method private enableTA(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 2852
    const-string v1, "FMRadioApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableTA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    sget-object v1, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v1, :cond_0

    .line 2854
    const-string v1, "FMRadioApp"

    const-string v2, "enableTA: No service interface."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    :goto_0
    return-void

    .line 2858
    :cond_0
    :try_start_0
    sget-object v1, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/baidu/fm/IFMRadioService;->enableTA(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2860
    :catch_0
    move-exception v0

    .line 2861
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getFrequency()I
    .locals 5

    .prologue
    .line 2918
    const/4 v1, 0x0

    .line 2919
    .local v1, iRet:I
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 2920
    const-string v2, "FMRadioApp"

    const-string v3, "getFrequency: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    :goto_0
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFrequency, ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    div-int/lit8 v2, v1, 0xa

    return v2

    .line 2924
    :cond_0
    :try_start_0
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/baidu/fm/IFMRadioService;->getFrequency()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2926
    :catch_0
    move-exception v0

    .line 2927
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioApp"

    const-string v3, "Exception: Cannot call service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getLRText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2671
    const/4 v1, 0x0

    .line 2672
    .local v1, sRT:Ljava/lang/String;
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 2673
    const-string v2, "FMRadioApp"

    const-string v3, "getLRText: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    :goto_0
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLRText, ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    return-object v1

    .line 2677
    :cond_0
    :try_start_0
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/baidu/fm/IFMRadioService;->getLRText()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2679
    :catch_0
    move-exception v0

    .line 2680
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getPS()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2654
    const/4 v1, 0x0

    .line 2655
    .local v1, sPS:Ljava/lang/String;
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 2656
    const-string v2, "FMRadioApp"

    const-string v3, "getPS: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    :goto_0
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPS, ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    return-object v1

    .line 2660
    :cond_0
    :try_start_0
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/baidu/fm/IFMRadioService;->getPS()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2662
    :catch_0
    move-exception v0

    .line 2663
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initFrequencyView(Ljava/lang/String;)V
    .locals 1
    .parameter "freq"

    .prologue
    .line 855
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    if-nez v0, :cond_0

    .line 856
    new-instance v0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    invoke-direct {v0, p0, p1}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;-><init>(Lcom/baidu/fm/FMRadio;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    invoke-virtual {v0}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->updateTextName()V

    .line 859
    return-void
.end method

.method private initPersistence()V
    .locals 5

    .prologue
    .line 823
    iget-object v3, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    if-nez v3, :cond_0

    .line 824
    new-instance v3, Lcom/baidu/fm/FMPersistence;

    invoke-direct {v3, p0}, Lcom/baidu/fm/FMPersistence;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    .line 829
    :goto_0
    iget-object v3, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v3}, Lcom/baidu/fm/FMPersistence;->getFavoriteStationIds()[I

    move-result-object v0

    .line 831
    .local v0, favoriteListIds:[I
    const-string v2, "favorite ids: "

    .line 832
    .local v2, output:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 833
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 832
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 826
    .end local v0           #favoriteListIds:[I
    .end local v1           #i:I
    .end local v2           #output:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v3}, Lcom/baidu/fm/FMPersistence;->update()V

    goto :goto_0

    .line 835
    .restart local v0       #favoriteListIds:[I
    .restart local v1       #i:I
    .restart local v2       #output:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    if-eqz v3, :cond_2

    .line 836
    iget-object v3, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v3}, Lcom/baidu/fm/FMPersistence;->getFavoriteStations()[Lcom/baidu/fm/FMStationInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/fm/FMRadio;->mStationInfoArray:[Lcom/baidu/fm/FMStationInfo;

    .line 838
    :cond_2
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 459
    const v0, 0x7f090042

    invoke-virtual {p0, v0}, Lcom/baidu/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/fm/widget/ScreenBoardView;

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mScreenBoardView:Lcom/baidu/fm/widget/ScreenBoardView;

    .line 460
    const v0, 0x7f090043

    invoke-virtual {p0, v0}, Lcom/baidu/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/fm/widget/TunnerView;

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mTunnerView:Lcom/baidu/fm/widget/TunnerView;

    .line 461
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mTunnerView:Lcom/baidu/fm/widget/TunnerView;

    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mTuneScrollListener:Lcom/baidu/fm/widget/TunnerView$OnTunnerScrollListener;

    invoke-virtual {v0, v1}, Lcom/baidu/fm/widget/TunnerView;->setTunnerScrollListener(Lcom/baidu/fm/widget/TunnerView$OnTunnerScrollListener;)V

    .line 462
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mTunnerView:Lcom/baidu/fm/widget/TunnerView;

    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mFineTuneClickListener:Lcom/baidu/fm/widget/TunnerView$OnButtonClickListener;

    invoke-virtual {v0, v1}, Lcom/baidu/fm/widget/TunnerView;->setOnButtonClickListener(Lcom/baidu/fm/widget/TunnerView$OnButtonClickListener;)V

    .line 463
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mTunnerView:Lcom/baidu/fm/widget/TunnerView;

    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mFineTuneRepeatListener:Lcom/baidu/fm/widget/TunnerView$OnButtonRepeatListener;

    invoke-virtual {v0, v1}, Lcom/baidu/fm/widget/TunnerView;->setOnButtonRepeatListener(Lcom/baidu/fm/widget/TunnerView$OnButtonRepeatListener;)V

    .line 466
    const v0, 0x7f090045

    invoke-virtual {p0, v0}, Lcom/baidu/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mFavoriteBtn:Landroid/widget/ImageView;

    .line 467
    const v0, 0x7f090035

    invoke-virtual {p0, v0}, Lcom/baidu/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/fm/ImageViewButton;

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mSeekTunePrevBtn:Lcom/baidu/fm/ImageViewButton;

    .line 468
    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Lcom/baidu/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/fm/ImageViewButton;

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mSeekTuneNextBtn:Lcom/baidu/fm/ImageViewButton;

    .line 469
    const v0, 0x7f090024

    invoke-virtual {p0, v0}, Lcom/baidu/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/fm/ImageViewButton;

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mStationListBtn:Lcom/baidu/fm/ImageViewButton;

    .line 470
    const v0, 0x7f090047

    invoke-virtual {p0, v0}, Lcom/baidu/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/fm/ImageViewButton;

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mMenuBtn:Lcom/baidu/fm/ImageViewButton;

    .line 472
    new-instance v0, Lcom/baidu/fm/FMRadio$FMRadioButtonsListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/fm/FMRadio$FMRadioButtonsListener;-><init>(Lcom/baidu/fm/FMRadio;Lcom/baidu/fm/FMRadio$1;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mButtonsClickListener:Landroid/view/View$OnClickListener;

    .line 473
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mFavoriteBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mButtonsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mSeekTunePrevBtn:Lcom/baidu/fm/ImageViewButton;

    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mButtonsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/baidu/fm/ImageViewButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mSeekTuneNextBtn:Lcom/baidu/fm/ImageViewButton;

    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mButtonsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/baidu/fm/ImageViewButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mStationListBtn:Lcom/baidu/fm/ImageViewButton;

    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mButtonsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/baidu/fm/ImageViewButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mMenuBtn:Lcom/baidu/fm/ImageViewButton;

    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mButtonsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/baidu/fm/ImageViewButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    return-void
.end method

.method private initializeData()V
    .locals 5

    .prologue
    const/16 v4, 0x36b

    .line 429
    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    if-eqz v1, :cond_1

    .line 430
    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v1}, Lcom/baidu/fm/FMPersistence;->getCurrentStation()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, freq:Ljava/lang/String;
    const-string v1, "initializeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore frequency text:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-static {v0}, Lcom/baidu/fm/FMStationInfo;->verifyStringFreq(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 434
    iput v4, p0, Lcom/baidu/fm/FMRadio;->mCurrentFrequencyInt:I

    .line 441
    .end local v0           #freq:Ljava/lang/String;
    :goto_0
    const-string v1, "initializeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore frequency int:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/fm/FMRadio;->mCurrentFrequencyInt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget v1, p0, Lcom/baidu/fm/FMRadio;->mCurrentFrequencyInt:I

    invoke-virtual {p0, v1}, Lcom/baidu/fm/FMRadio;->setCurrentFrequency(I)Z

    .line 443
    return-void

    .line 436
    .restart local v0       #freq:Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x4120

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/baidu/fm/FMRadio;->mCurrentFrequencyInt:I

    goto :goto_0

    .line 439
    .end local v0           #freq:Ljava/lang/String;
    :cond_1
    iput v4, p0, Lcom/baidu/fm/FMRadio;->mCurrentFrequencyInt:I

    goto :goto_0
.end method

.method private isAFEnabled()Z
    .locals 5

    .prologue
    .line 2884
    const/4 v0, 0x0

    .line 2885
    .local v0, bRet:Z
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 2886
    const-string v2, "FMRadioApp"

    const-string v3, "isAFEnabled: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    :goto_0
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAFEnabled, ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    return v0

    .line 2890
    :cond_0
    :try_start_0
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/baidu/fm/IFMRadioService;->isAFEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2892
    :catch_0
    move-exception v1

    .line 2893
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isAntennaAvailable()Z
    .locals 5

    .prologue
    .line 2233
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/baidu/fm/FMRadio;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2234
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v1, 0x0

    .line 2236
    .local v1, bAvailable:Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2237
    const/4 v1, 0x1

    .line 2240
    :cond_0
    const-string v2, "FMRadioApp"

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

    .line 2241
    return v1
.end method

.method private isDeviceOpen()Z
    .locals 5

    .prologue
    .line 2484
    const/4 v0, 0x0

    .line 2485
    .local v0, bRet:Z
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 2486
    const-string v2, "FMRadioApp"

    const-string v3, "isDeviceOpen: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    :goto_0
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDeviceOpen, ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    return v0

    .line 2490
    :cond_0
    :try_start_0
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/baidu/fm/IFMRadioService;->isDeviceOpen()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2492
    :catch_0
    move-exception v1

    .line 2493
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isEarphoneUsed()Z
    .locals 5

    .prologue
    .line 2805
    const/4 v0, 0x1

    .line 2806
    .local v0, bRet:Z
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 2807
    const-string v2, "FMRadioApp"

    const-string v3, "isEarphoneUsed: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    :goto_0
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEarphoneUsed, ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    return v0

    .line 2811
    :cond_0
    :try_start_0
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/baidu/fm/IFMRadioService;->isEarphoneUsed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2813
    :catch_0
    move-exception v1

    .line 2814
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isMuted()Z
    .locals 5

    .prologue
    .line 2756
    const/4 v1, 0x0

    .line 2757
    .local v1, iRet:Z
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 2758
    const-string v2, "FMRadioApp"

    const-string v3, "isMuted: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    :goto_0
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMuted, ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    return v1

    .line 2762
    :cond_0
    :try_start_0
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/baidu/fm/IFMRadioService;->isMuted()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2764
    :catch_0
    move-exception v0

    .line 2765
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isPSRTEnabled()Z
    .locals 5

    .prologue
    .line 2867
    const/4 v0, 0x0

    .line 2868
    .local v0, bRet:Z
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 2869
    const-string v2, "FMRadioApp"

    const-string v3, "isPSRTEnabled: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    :goto_0
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPSRTEnabled, ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    return v0

    .line 2873
    :cond_0
    :try_start_0
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/baidu/fm/IFMRadioService;->isPSRTEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2875
    :catch_0
    move-exception v1

    .line 2876
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioApp"

    const-string v3, "Exception: Cannot call service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isPhoneCalling()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1648
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 1649
    .local v0, state:I
    if-ne v0, v1, :cond_0

    .line 1653
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPhoneInCall()Z
    .locals 2

    .prologue
    .line 1638
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 1639
    .local v0, state:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1640
    const/4 v1, 0x1

    .line 1643
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPowerUp()Z
    .locals 5

    .prologue
    .line 2535
    const/4 v0, 0x0

    .line 2536
    .local v0, bRet:Z
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 2537
    const-string v2, "FMRadioApp"

    const-string v3, "isPowerUp: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    :goto_0
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPowerUp, ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    return v0

    .line 2541
    :cond_0
    :try_start_0
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/baidu/fm/IFMRadioService;->isPowerUp()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2543
    :catch_0
    move-exception v1

    .line 2544
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isRDSSupported()I
    .locals 5

    .prologue
    .line 2773
    const/4 v1, -0x1

    .line 2774
    .local v1, iRet:I
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 2775
    const-string v2, "FMRadioApp"

    const-string v3, "isRDSSupported: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    :goto_0
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRDSSupported, ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    return v1

    .line 2779
    :cond_0
    :try_start_0
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/baidu/fm/IFMRadioService;->isRDSSupported()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2781
    :catch_0
    move-exception v0

    .line 2782
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isTAEnabled()Z
    .locals 5

    .prologue
    .line 2901
    const/4 v0, 0x0

    .line 2902
    .local v0, bRet:Z
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 2903
    const-string v2, "FMRadioApp"

    const-string v3, "isTAEnabled: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2913
    :goto_0
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTAEnabled, ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    return v0

    .line 2907
    :cond_0
    :try_start_0
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/baidu/fm/IFMRadioService;->isTAEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2909
    :catch_0
    move-exception v1

    .line 2910
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private launchScan()V
    .locals 5

    .prologue
    .line 1675
    const-wide/16 v0, 0xa

    .line 1676
    .local v0, delayTime:J
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchScan, scan: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/baidu/fm/FMRadio;->mIsScaning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seek: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/baidu/fm/FMRadio;->mIsSeeking:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    iget-boolean v2, p0, Lcom/baidu/fm/FMRadio;->mIsTuning:Z

    if-eqz v2, :cond_0

    .line 1679
    const-wide/16 v0, 0x64

    .line 1682
    :cond_0
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/baidu/fm/FMRadio;->onStartScan:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1683
    return-void
.end method

.method private launchSeek(Z)V
    .locals 5
    .parameter "direction"

    .prologue
    .line 1658
    const-wide/16 v0, 0xa

    .line 1659
    .local v0, delayTime:J
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchSeek, dire:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "scan: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/baidu/fm/FMRadio;->mIsScaning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seek: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/baidu/fm/FMRadio;->mIsSeeking:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    iget-boolean v2, p0, Lcom/baidu/fm/FMRadio;->mIsTuning:Z

    if-eqz v2, :cond_0

    .line 1663
    const-wide/16 v0, 0x64

    .line 1666
    :cond_0
    if-eqz p1, :cond_1

    .line 1667
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/baidu/fm/FMRadio;->onSeekNextStation:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1672
    :goto_0
    return-void

    .line 1670
    :cond_1
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/baidu/fm/FMRadio;->onSeekPrevStation:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private makeMenuItemVisible(Landroid/view/Menu;IZ)V
    .locals 1
    .parameter "menu"
    .parameter "itemId"
    .parameter "visible"

    .prologue
    .line 422
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 423
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 424
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 426
    :cond_0
    return-void
.end method

.method private onAddStationBtnClick()V
    .locals 5

    .prologue
    .line 1042
    const-string v3, "FMRadioApp"

    const-string v4, "onAddStationBtnClick"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object v3, p0, Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    invoke-virtual {v3}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->getCurrentFrequencyString()Ljava/lang/String;

    move-result-object v0

    .line 1045
    .local v0, currentFreq:Ljava/lang/String;
    iget-object v3, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v3, v0}, Lcom/baidu/fm/FMPersistence;->addStationInfo(Ljava/lang/String;)I

    move-result v2

    .line 1046
    .local v2, ret:I
    if-eqz v2, :cond_1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1048
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MHz "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f070040

    invoke-virtual {p0, v4}, Lcom/baidu/fm/FMRadio;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1049
    .local v1, promptText:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/baidu/fm/FMRadio;->showToast(Ljava/lang/String;)V

    .line 1054
    .end local v1           #promptText:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1051
    :cond_1
    if-nez v2, :cond_0

    .line 1052
    iget-object v3, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v3}, Lcom/baidu/fm/FMPersistence;->saveIfDirty()V

    goto :goto_0
.end method

.method private onFavoBtnClick(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 1057
    const/4 v0, 0x0

    .line 1059
    .local v0, info:Lcom/baidu/fm/FMStationInfo;
    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    if-eqz v1, :cond_0

    .line 1060
    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v1}, Lcom/baidu/fm/FMPersistence;->getFavoriteStations()[Lcom/baidu/fm/FMStationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/fm/FMRadio;->mStationInfoArray:[Lcom/baidu/fm/FMStationInfo;

    .line 1062
    :cond_0
    if-ltz p1, :cond_1

    const/16 v1, 0x64

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mStationInfoArray:[Lcom/baidu/fm/FMStationInfo;

    if-eqz v1, :cond_1

    .line 1063
    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mStationInfoArray:[Lcom/baidu/fm/FMStationInfo;

    aget-object v0, v1, p1

    .line 1064
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/baidu/fm/FMStationInfo;->getStationFreqInt()I

    move-result v1

    const/16 v2, 0x36b

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/baidu/fm/FMStationInfo;->getStationFreqInt()I

    move-result v1

    const/16 v2, 0x438

    if-gt v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/baidu/fm/FMStationInfo;->getStationFreqInt()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    invoke-virtual {v2}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->getCurrentFrequencyInt()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1068
    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    invoke-virtual {v0}, Lcom/baidu/fm/FMStationInfo;->getStationFreqInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->tune(I)V

    .line 1071
    :cond_1
    return-void
.end method

.method private onFavoriteStationBtnClick()V
    .locals 7

    .prologue
    .line 1386
    iget-object v5, p0, Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    invoke-virtual {v5}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->getCurrentFrequencyInt()I

    move-result v5

    int-to-float v0, v5

    .line 1387
    .local v0, currentFreq:F
    iget-object v5, p0, Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    invoke-virtual {v5}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->getCurrentFrequencyString()Ljava/lang/String;

    move-result-object v1

    .line 1389
    .local v1, currentFreqText:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1390
    .local v3, promptText:Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    if-nez v5, :cond_0

    .line 1425
    :goto_0
    return-void

    .line 1391
    :cond_0
    iget-object v5, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v5, v1}, Lcom/baidu/fm/FMPersistence;->isStationInfoFavorited(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1392
    iget-object v5, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v5}, Lcom/baidu/fm/FMPersistence;->getFavoriteStationCount()I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_2

    .line 1393
    const v5, 0x7f070048

    invoke-virtual {p0, v5}, Lcom/baidu/fm/FMRadio;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1394
    invoke-direct {p0, v3}, Lcom/baidu/fm/FMRadio;->showToast(Ljava/lang/String;)V

    .line 1423
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/fm/FMRadio;->updateFavoriteButton()V

    .line 1424
    iget-object v5, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v5}, Lcom/baidu/fm/FMPersistence;->getFavoriteStations()[Lcom/baidu/fm/FMStationInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/fm/FMRadio;->mStationInfoArray:[Lcom/baidu/fm/FMStationInfo;

    goto :goto_0

    .line 1396
    :cond_2
    iget-object v5, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v5, v1}, Lcom/baidu/fm/FMPersistence;->isStationInfoExist(Ljava/lang/String;)I

    move-result v2

    .line 1397
    .local v2, index:I
    if-gez v2, :cond_4

    .line 1398
    iget-object v5, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v5, v1}, Lcom/baidu/fm/FMPersistence;->addStationInfo(Ljava/lang/String;)I

    move-result v4

    .line 1399
    .local v4, ret:I
    if-eqz v4, :cond_3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 1401
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MHz "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f070049

    invoke-virtual {p0, v6}, Lcom/baidu/fm/FMRadio;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1402
    invoke-direct {p0, v3}, Lcom/baidu/fm/FMRadio;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 1404
    :cond_3
    if-nez v4, :cond_4

    .line 1405
    iget-object v5, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v5}, Lcom/baidu/fm/FMPersistence;->saveIfDirty()V

    .line 1406
    iget-object v5, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v5, v1}, Lcom/baidu/fm/FMPersistence;->isStationInfoExist(Ljava/lang/String;)I

    move-result v2

    .line 1409
    .end local v4           #ret:I
    :cond_4
    iget-object v5, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v5, v2}, Lcom/baidu/fm/FMPersistence;->setFavoriteById(I)V

    .line 1410
    iget-object v5, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v5}, Lcom/baidu/fm/FMPersistence;->saveIfDirty()V

    .line 1411
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MHz "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f07004a

    invoke-virtual {p0, v6}, Lcom/baidu/fm/FMRadio;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1412
    invoke-direct {p0, v3}, Lcom/baidu/fm/FMRadio;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 1415
    .end local v2           #index:I
    :cond_5
    iget-object v5, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v5, v1}, Lcom/baidu/fm/FMPersistence;->isStationInfoExist(Ljava/lang/String;)I

    move-result v2

    .line 1416
    .restart local v2       #index:I
    if-ltz v2, :cond_1

    .line 1417
    iget-object v5, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v5, v2}, Lcom/baidu/fm/FMPersistence;->cancelFavoriteById(I)V

    .line 1418
    iget-object v5, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v5}, Lcom/baidu/fm/FMPersistence;->saveIfDirty()V

    .line 1419
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MHz "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f07004b

    invoke-virtual {p0, v6}, Lcom/baidu/fm/FMRadio;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1420
    invoke-direct {p0, v3}, Lcom/baidu/fm/FMRadio;->showToast(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private onFineTuneNext()V
    .locals 3

    .prologue
    .line 1014
    const-string v1, "FMRadioApp"

    const-string v2, "onFineTuneNext"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    invoke-virtual {v1}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->getCurrentFrequencyInt()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 1016
    .local v0, newFreq:I
    const/16 v1, 0x438

    if-gt v0, v1, :cond_0

    .line 1017
    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    invoke-virtual {v1, v0}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->tune(I)V

    .line 1022
    :goto_0
    return-void

    .line 1020
    :cond_0
    const-string v1, "FMRadioApp"

    const-string v2, "OnFineTuneNext newFreq > FREQ_BAND_MAX"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onFineTunePrev()V
    .locals 3

    .prologue
    .line 1028
    const-string v1, "FMRadioApp"

    const-string v2, "onFineTunePrev"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    invoke-virtual {v1}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->getCurrentFrequencyInt()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 1030
    .local v0, newFreq:I
    const/16 v1, 0x36b

    if-lt v0, v1, :cond_0

    .line 1031
    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    invoke-virtual {v1, v0}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->tune(I)V

    .line 1036
    :goto_0
    return-void

    .line 1034
    :cond_0
    const-string v1, "FMRadioApp"

    const-string v2, "OnFineTuneNext newFreq < FREQ_BAND_MIN"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onMenuBtnClick()V
    .locals 1

    .prologue
    .line 1380
    invoke-static {}, Lyi/support/v1/YiLaf;->current()Lyi/support/v1/YiLaf$Interface;

    move-result-object v0

    invoke-interface {v0}, Lyi/support/v1/YiLaf$Interface;->openOptionsMenu()V

    .line 1381
    return-void
.end method

.method private onNextStationBtnClick()V
    .locals 5

    .prologue
    .line 947
    const-string v2, "FMRadioApp"

    const-string v3, "onNextStationBtnClick"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    if-eqz v2, :cond_0

    .line 950
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    invoke-virtual {v2}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->getCurrentFrequencyString()Ljava/lang/String;

    move-result-object v0

    .line 952
    .local v0, freqString:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v2, v0}, Lcom/baidu/fm/FMPersistence;->getNextNearestStationInfo(Ljava/lang/String;)Lcom/baidu/fm/FMStationInfo;

    move-result-object v1

    .line 955
    .local v1, info:Lcom/baidu/fm/FMStationInfo;
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v2}, Lcom/baidu/fm/FMPersistence;->getStationInfoCount()I

    move-result v2

    if-gtz v2, :cond_1

    .line 956
    const-string v2, "FMRadioApp"

    const-string v3, "onNextStationBtnClick, no station"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    .end local v0           #freqString:Ljava/lang/String;
    .end local v1           #info:Lcom/baidu/fm/FMStationInfo;
    :cond_0
    :goto_0
    return-void

    .line 960
    .restart local v0       #freqString:Ljava/lang/String;
    .restart local v1       #info:Lcom/baidu/fm/FMStationInfo;
    :cond_1
    if-nez v1, :cond_2

    .line 961
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/baidu/fm/FMPersistence;->getStationInfoByIndex(J)Lcom/baidu/fm/FMStationInfo;

    move-result-object v1

    .line 964
    :cond_2
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    invoke-virtual {v2, v1}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->tune(Lcom/baidu/fm/FMStationInfo;)V

    goto :goto_0
.end method

.method private onPrevStationBtnClick()V
    .locals 5

    .prologue
    .line 973
    const-string v2, "FMRadioApp"

    const-string v3, "onPrevStationBtnClick"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    if-eqz v2, :cond_0

    .line 976
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    invoke-virtual {v2}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->getCurrentFrequencyString()Ljava/lang/String;

    move-result-object v0

    .line 978
    .local v0, freqString:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v2, v0}, Lcom/baidu/fm/FMPersistence;->getPrevNearestStationInfo(Ljava/lang/String;)Lcom/baidu/fm/FMStationInfo;

    move-result-object v1

    .line 981
    .local v1, info:Lcom/baidu/fm/FMStationInfo;
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v2}, Lcom/baidu/fm/FMPersistence;->getStationInfoCount()I

    move-result v2

    if-gtz v2, :cond_1

    .line 982
    const-string v2, "FMRadioApp"

    const-string v3, "onPrevStationBtnClick, no station"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    .end local v0           #freqString:Ljava/lang/String;
    .end local v1           #info:Lcom/baidu/fm/FMStationInfo;
    :cond_0
    :goto_0
    return-void

    .line 986
    .restart local v0       #freqString:Ljava/lang/String;
    .restart local v1       #info:Lcom/baidu/fm/FMStationInfo;
    :cond_1
    if-nez v1, :cond_2

    .line 987
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    iget-object v3, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v3}, Lcom/baidu/fm/FMPersistence;->getStationInfoCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/baidu/fm/FMPersistence;->getStationInfoByIndex(J)Lcom/baidu/fm/FMStationInfo;

    move-result-object v1

    .line 990
    :cond_2
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    invoke-virtual {v2, v1}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->tune(Lcom/baidu/fm/FMStationInfo;)V

    goto :goto_0
.end method

.method private onQuitBtnClick()V
    .locals 2

    .prologue
    .line 865
    const-string v0, "FMRadioApp"

    const-string v1, "onQuitBtnClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/fm/FMRadio;->enableRadioOnOffUI(Z)V

    .line 868
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->disableRadio()V

    .line 870
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->cleanupTimeoutHandler()V

    .line 872
    invoke-virtual {p0}, Lcom/baidu/fm/FMRadio;->finish()V

    .line 873
    return-void
.end method

.method private onSeekNextStationBtnClick()V
    .locals 2

    .prologue
    .line 998
    const-string v0, "FMRadioApp"

    const-string v1, "onSeekNextStationBtnClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/fm/FMRadio;->launchSeek(Z)V

    .line 1000
    return-void
.end method

.method private onSeekPrevStationBtnClick()V
    .locals 2

    .prologue
    .line 1006
    const-string v0, "FMRadioApp"

    const-string v1, "onSeekPrevStationBtnClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/fm/FMRadio;->launchSeek(Z)V

    .line 1008
    return-void
.end method

.method private onStationListBtnClick()V
    .locals 3

    .prologue
    .line 879
    const-string v1, "FMRadioApp"

    const-string v2, "onStationListBtnClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 881
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/baidu/fm/StationListShow;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 882
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/baidu/fm/FMRadio;->startActivityForResult(Landroid/content/Intent;I)V

    .line 883
    return-void
.end method

.method private openDevice()Z
    .locals 5

    .prologue
    .line 2450
    const/4 v0, 0x0

    .line 2451
    .local v0, bRet:Z
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 2452
    const-string v2, "FMRadioApp"

    const-string v3, "openDevice: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    :goto_0
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openDevice, ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    return v0

    .line 2456
    :cond_0
    :try_start_0
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/baidu/fm/IFMRadioService;->openDevice()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2458
    :catch_0
    move-exception v1

    .line 2459
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized postTimeoutHandler(II)V
    .locals 5
    .parameter "cmd"
    .parameter "timeInMs"

    .prologue
    .line 1804
    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1805
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x65

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1806
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1807
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "TIME_OUT_CMD"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1808
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1810
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mCommandTimeoutHandler:Landroid/os/Handler;

    int-to-long v3, p2

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1811
    monitor-exit p0

    return-void

    .line 1804
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private powerDown()Z
    .locals 5

    .prologue
    .line 2518
    const/4 v0, 0x0

    .line 2519
    .local v0, bRet:Z
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 2520
    const-string v2, "FMRadioApp"

    const-string v3, "powerDown: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    :goto_0
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "powerDown, ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    return v0

    .line 2524
    :cond_0
    :try_start_0
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/baidu/fm/IFMRadioService;->powerDown()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2526
    :catch_0
    move-exception v1

    .line 2527
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private powerUp(F)Z
    .locals 5
    .parameter "frequency"

    .prologue
    .line 2501
    const/4 v0, 0x0

    .line 2502
    .local v0, bRet:Z
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 2503
    const-string v2, "FMRadioApp"

    const-string v3, "powerUp: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    :goto_0
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "powerUp, freq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    return v0

    .line 2507
    :cond_0
    :try_start_0
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v2, p1}, Lcom/baidu/fm/IFMRadioService;->powerUp(F)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2509
    :catch_0
    move-exception v1

    .line 2510
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private readRDS()I
    .locals 5

    .prologue
    .line 2637
    const/4 v1, 0x0

    .line 2638
    .local v1, iRet:I
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 2639
    const-string v2, "FMRadioApp"

    const-string v3, "readRDS: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    :goto_0
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readRDS, ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    return v1

    .line 2643
    :cond_0
    :try_start_0
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/baidu/fm/IFMRadioService;->readRDS()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2645
    :catch_0
    move-exception v0

    .line 2646
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioApp"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private seek(Z)F
    .locals 5
    .parameter "isUp"

    .prologue
    .line 2569
    const/4 v1, 0x0

    .line 2570
    .local v1, fRet:F
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 2571
    const-string v2, "FMRadioApp"

    const-string v3, "seek: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    :goto_0
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "seek, dir: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    return v1

    .line 2575
    :cond_0
    :try_start_0
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v2, p1}, Lcom/baidu/fm/IFMRadioService;->seek(Z)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2577
    :catch_0
    move-exception v0

    .line 2578
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setMute(Z)I
    .locals 5
    .parameter "mute"

    .prologue
    .line 2739
    const/4 v1, -0x1

    .line 2740
    .local v1, iRet:I
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 2741
    const-string v2, "FMRadioApp"

    const-string v3, "setMute: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    :goto_0
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMute, mute:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    return v1

    .line 2745
    :cond_0
    :try_start_0
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v2, p1}, Lcom/baidu/fm/IFMRadioService;->setMute(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2747
    :catch_0
    move-exception v0

    .line 2748
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setRDS(Z)I
    .locals 5
    .parameter "on"

    .prologue
    .line 2620
    const/4 v1, -0x1

    .line 2621
    .local v1, iRet:I
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 2622
    const-string v2, "FMRadioApp"

    const-string v3, "setRDS: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    :goto_0
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRDS, on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    return v1

    .line 2626
    :cond_0
    :try_start_0
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v2, p1}, Lcom/baidu/fm/IFMRadioService;->setRDS(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2628
    :catch_0
    move-exception v0

    .line 2629
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private showAntennaInvailable()V
    .locals 4

    .prologue
    .line 1858
    const v1, 0x7f070028

    invoke-virtual {p0, v1}, Lcom/baidu/fm/FMRadio;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1860
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x31

    const/4 v2, 0x0

    const/16 v3, 0xf0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1861
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1862
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 4
    .parameter "promptText"

    .prologue
    const/4 v3, 0x0

    .line 1075
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1076
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mToast:Landroid/widget/Toast;

    .line 1077
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mToast:Landroid/widget/Toast;

    const/16 v1, 0x11

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 1081
    :goto_0
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1082
    return-void

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private speakerAvailable()Z
    .locals 2

    .prologue
    .line 455
    const-string v0, "ro.fm.speaker"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private startScan()[I
    .locals 5

    .prologue
    .line 2586
    const/4 v1, 0x0

    .line 2587
    .local v1, iChannels:[I
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 2588
    const-string v2, "FMRadioApp"

    const-string v3, "startScan: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    :goto_0
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startScan, ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    return-object v1

    .line 2592
    :cond_0
    :try_start_0
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/baidu/fm/IFMRadioService;->startScan()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2594
    :catch_0
    move-exception v0

    .line 2595
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private stopScan()Z
    .locals 5

    .prologue
    .line 2603
    const/4 v0, 0x0

    .line 2604
    .local v0, bRet:Z
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 2605
    const-string v2, "FMRadioApp"

    const-string v3, "stopScan: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    :goto_0
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopScan, ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    return v0

    .line 2609
    :cond_0
    :try_start_0
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/baidu/fm/IFMRadioService;->stopScan()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2611
    :catch_0
    move-exception v1

    .line 2612
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private switchMuteState()V
    .locals 4

    .prologue
    .line 928
    const-string v2, "FMRadioApp"

    const-string v3, "switchMuteState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-eqz v2, :cond_0

    .line 932
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->isMuted()Z

    move-result v1

    .line 933
    .local v1, isMute:Z
    sget-object v3, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v3, v2}, Lcom/baidu/fm/IFMRadioService;->setMute(Z)I

    .line 934
    invoke-virtual {p0}, Lcom/baidu/fm/FMRadio;->updateMuteState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    .end local v1           #isMute:Z
    :cond_0
    :goto_1
    return-void

    .line 933
    .restart local v1       #isMute:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 936
    .end local v1           #isMute:Z
    :catch_0
    move-exception v0

    .line 937
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "FMRadioApp"

    const-string v3, "RemoteException in setmute"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private switchSpeakerHeadset()V
    .locals 2

    .prologue
    .line 917
    const-string v0, "FMRadioApp"

    const-string v1, "onUseSpeakerBtnClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-boolean v0, p0, Lcom/baidu/fm/FMRadio;->mUseEarPhone:Z

    if-nez v0, :cond_0

    .line 920
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->doSwitchSpeakerEarPhone()V

    .line 925
    :goto_0
    return-void

    .line 923
    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/baidu/fm/FMRadio;->showDialog(I)V

    goto :goto_0
.end method

.method private tuneChannel(F)Z
    .locals 5
    .parameter "frequency"

    .prologue
    .line 2552
    const/4 v0, 0x0

    .line 2553
    .local v0, bRet:Z
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 2554
    const-string v2, "FMRadioApp"

    const-string v3, "tuneChannel: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    :goto_0
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tune, freq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2565
    return v0

    .line 2558
    :cond_0
    :try_start_0
    sget-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v2, p1}, Lcom/baidu/fm/IFMRadioService;->tune(F)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2560
    :catch_0
    move-exception v1

    .line 2561
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static unbindFromService(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1786
    sget-object v1, Lcom/baidu/fm/FMRadio;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/fm/FMRadio$ServiceBinder;

    .line 1788
    .local v0, sb:Lcom/baidu/fm/FMRadio$ServiceBinder;
    if-nez v0, :cond_1

    .line 1789
    const-string v1, "FMRadioApp"

    const-string v2, "Trying to unbind for unknown Context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    :cond_0
    :goto_0
    return-void

    .line 1792
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1793
    sget-object v1, Lcom/baidu/fm/FMRadio;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private updateRadioUI(Z)V
    .locals 3
    .parameter "bEnableOn"

    .prologue
    .line 482
    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    if-nez v1, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    if-eqz p1, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/baidu/fm/FMRadio;->getCurrentFrequency()I

    move-result v0

    .line 488
    .local v0, currFreq:I
    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v1, v0}, Lcom/baidu/fm/FMPersistence;->getStationInfoByFreq(I)Lcom/baidu/fm/FMStationInfo;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v1}, Lcom/baidu/fm/FMPersistence;->getStationInfoCount()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    .line 492
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/fm/FMRadio;->updateScreenBoardUI()V

    .line 493
    invoke-virtual {p0}, Lcom/baidu/fm/FMRadio;->updateTunnerView()V

    .line 494
    invoke-virtual {p0}, Lcom/baidu/fm/FMRadio;->updateMuteUnmuteButton()V

    .line 495
    invoke-virtual {p0}, Lcom/baidu/fm/FMRadio;->updateAudioPathButton()V

    .line 496
    invoke-virtual {p0}, Lcom/baidu/fm/FMRadio;->updateFavoriteButton()V

    .line 498
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->isPhoneCalling()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->isPhoneInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private useEarPhone(Z)V
    .locals 4
    .parameter "bUseEarPhone"

    .prologue
    .line 901
    iput-boolean p1, p0, Lcom/baidu/fm/FMRadio;->mUseEarPhone:Z

    .line 903
    const-string v1, "FMRadioApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "useEarPhone, mUseEarPhone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/baidu/fm/FMRadio;->mUseEarPhone:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    sget-object v1, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-eqz v1, :cond_0

    .line 907
    :try_start_0
    sget-object v1, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    iget-boolean v2, p0, Lcom/baidu/fm/FMRadio;->mUseEarPhone:Z

    invoke-interface {v1, v2}, Lcom/baidu/fm/IFMRadioService;->useEarphone(Z)V

    .line 908
    invoke-virtual {p0}, Lcom/baidu/fm/FMRadio;->updateAudioPathButton()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 910
    :catch_0
    move-exception v0

    .line 911
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private useEarphone(Z)V
    .locals 4
    .parameter "use"

    .prologue
    .line 2790
    sget-object v1, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-nez v1, :cond_0

    .line 2791
    const-string v1, "FMRadioApp"

    const-string v2, "useEarphone: No service interface."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    :goto_0
    const-string v1, "FMRadioApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "useEarphone, use: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    return-void

    .line 2795
    :cond_0
    :try_start_0
    sget-object v1, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/baidu/fm/IFMRadioService;->useEarphone(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2797
    :catch_0
    move-exception v0

    .line 2798
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentFrequency()I
    .locals 1

    .prologue
    .line 2427
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    if-eqz v0, :cond_0

    .line 2428
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    invoke-virtual {v0}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->getCurrentFrequencyInt()I

    move-result v0

    .line 2430
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/fm/FMRadio;->mCurrentFrequencyInt:I

    goto :goto_0
.end method

.method public getCurrentFrequencyText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    invoke-virtual {v0}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->getCurrentFrequencyString()Ljava/lang/String;

    move-result-object v0

    .line 534
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/baidu/fm/FMRadio;->mCurrentFrequencyInt:I

    div-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/fm/FMRadio;->mCurrentFrequencyInt:I

    rem-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFavoriteFrequencyArray()[I
    .locals 1

    .prologue
    .line 2442
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    if-eqz v0, :cond_0

    .line 2443
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v0}, Lcom/baidu/fm/FMPersistence;->getFavoriteIntArray()[I

    move-result-object v0

    .line 2445
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFrequencyArray()[I
    .locals 1

    .prologue
    .line 2435
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    if-eqz v0, :cond_0

    .line 2436
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v0}, Lcom/baidu/fm/FMPersistence;->getFreqIntArray()[I

    move-result-object v0

    .line 2438
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1346
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1349
    const/16 v2, 0x3e9

    if-ne p1, v2, :cond_0

    .line 1350
    const/16 v2, 0x65

    if-ne p2, v2, :cond_2

    if-eqz p3, :cond_2

    .line 1351
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1352
    .local v0, freqString:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1354
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult tune, freq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    invoke-static {v0}, Lcom/baidu/fm/FMStationInfo;->verifyStringFreq(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1357
    new-instance v1, Lcom/baidu/fm/FMRadio$17;

    invoke-direct {v1, p0, v0}, Lcom/baidu/fm/FMRadio$17;-><init>(Lcom/baidu/fm/FMRadio;Ljava/lang/String;)V

    .line 1363
    .local v1, tuneRunnable:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/baidu/fm/FMRadio;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1377
    .end local v0           #freqString:Ljava/lang/String;
    .end local v1           #tuneRunnable:Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 1366
    .restart local v0       #freqString:Ljava/lang/String;
    :cond_1
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult wrong freq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1370
    .end local v0           #freqString:Ljava/lang/String;
    :cond_2
    const/16 v2, 0x66

    if-ne p2, v2, :cond_3

    .line 1371
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->launchScan()V

    goto :goto_0

    .line 1374
    :cond_3
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult, wrong result code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 220
    const-string v0, "FMRadioApp"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 223
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/fm/FMRadio;->requestWindowFeature(I)Z

    .line 225
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/baidu/fm/FMRadio;->setContentView(I)V

    .line 226
    invoke-virtual {p0}, Lcom/baidu/fm/FMRadio;->updateBottomBarTexture()V

    .line 228
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->initPersistence()V

    .line 229
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->initializeData()V

    .line 230
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->initViews()V

    .line 231
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v0}, Lcom/baidu/fm/FMPersistence;->getCurrentStation()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/fm/FMRadio;->initFrequencyView(Ljava/lang/String;)V

    .line 232
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->configureMenu()V

    .line 233
    invoke-virtual {p0}, Lcom/baidu/fm/FMRadio;->registerFMServiceListener()V

    .line 240
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/baidu/fm/FMRadio;->setVolumeControlStream(I)V

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/fm/FMRadio;->mIsShowNoAntenna:Z

    .line 255
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 1297
    packed-switch p1, :pswitch_data_0

    .line 1329
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1299
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/baidu/fm/FMRadio;->createSearchingDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1302
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/baidu/fm/FMRadio;->createProgressDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1305
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/baidu/fm/FMRadio;->createCmdTimeoutDlg(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1308
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/baidu/fm/FMRadio;->createCmdFailedDlg(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1311
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/baidu/fm/FMRadio;->createTurnOnDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1314
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/baidu/fm/FMRadio;->createSwitchSpeakerDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1317
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/baidu/fm/FMRadio;->createPowerOnFailedDlg(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1320
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/baidu/fm/FMRadio;->createNoAntennaDlg(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1323
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/baidu/fm/FMRadio;->createSearchAlertDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1297
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 356
    const-string v1, "FMRadioApp"

    const-string v2, "onCreateOptionsMenu"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 359
    invoke-virtual {p0}, Lcom/baidu/fm/FMRadio;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 360
    .local v0, inflater:Landroid/view/MenuInflater;
    if-eqz v0, :cond_0

    .line 361
    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 364
    :cond_0
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->speakerAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    const v1, 0x7f09006a

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/baidu/fm/FMRadio;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 367
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 299
    const-string v0, "FMRadioApp"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {p0}, Lcom/baidu/fm/FMRadio;->requestStationListExit()V

    .line 303
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->deinitPersistence()V

    .line 305
    sput-object v2, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    .line 312
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mFMServiceReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mFMServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/baidu/fm/FMRadio;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 314
    iput-object v2, p0, Lcom/baidu/fm/FMRadio;->mFMServiceReceiver:Landroid/content/BroadcastReceiver;

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->cleanupTimeoutHandler()V

    .line 318
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 320
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 321
    return-void
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 392
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 417
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 394
    :pswitch_0
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->switchSpeakerHeadset()V

    goto :goto_0

    .line 397
    :pswitch_1
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->switchMuteState()V

    goto :goto_0

    .line 401
    :pswitch_2
    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v1}, Lcom/baidu/fm/FMPersistence;->getStationInfoCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 402
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/baidu/fm/FMRadio;->showDialog(I)V

    goto :goto_0

    .line 404
    :cond_0
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->launchScan()V

    goto :goto_0

    .line 409
    :pswitch_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/baidu/fm/FMRadio;->createCloseTimeDialog(I)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 413
    :pswitch_4
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->onQuitBtnClick()V

    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x7f09006a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 326
    const-string v0, "FMRadioApp"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mTuneTask:Lcom/baidu/fm/FMRadio$TuneRadioTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mTuneTask:Lcom/baidu/fm/FMRadio$TuneRadioTask;

    invoke-virtual {v0}, Lcom/baidu/fm/FMRadio$TuneRadioTask;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mTuneTask:Lcom/baidu/fm/FMRadio$TuneRadioTask;

    invoke-virtual {v0}, Lcom/baidu/fm/FMRadio$TuneRadioTask;->terminate()V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mTuneTask:Lcom/baidu/fm/FMRadio$TuneRadioTask;

    .line 332
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 333
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1334
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1341
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, strID:I
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->speakerAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    iget-boolean v1, p0, Lcom/baidu/fm/FMRadio;->mUseEarPhone:Z

    if-nez v1, :cond_1

    .line 375
    const v0, 0x7f07002d

    .line 379
    :goto_0
    const v1, 0x7f09006a

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 381
    :cond_0
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 382
    const v0, 0x7f07002f

    .line 386
    :goto_1
    const v1, 0x7f09006b

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 387
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 377
    :cond_1
    const v0, 0x7f07002c

    goto :goto_0

    .line 384
    :cond_2
    const v0, 0x7f07002e

    goto :goto_1
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 281
    const-string v0, "FMRadioApp"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 284
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 338
    const-string v0, "FMRadioApp"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v0, Lcom/baidu/fm/FMRadio$TuneRadioTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/fm/FMRadio$TuneRadioTask;-><init>(Lcom/baidu/fm/FMRadio;Lcom/baidu/fm/FMRadio$1;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadio;->mTuneTask:Lcom/baidu/fm/FMRadio$TuneRadioTask;

    .line 341
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mTuneTask:Lcom/baidu/fm/FMRadio$TuneRadioTask;

    invoke-virtual {v0}, Lcom/baidu/fm/FMRadio$TuneRadioTask;->start()V

    .line 342
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 343
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 260
    const-string v1, "FMRadioApp"

    const-string v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 264
    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->osc:Landroid/content/ServiceConnection;

    invoke-static {p0, v1}, Lcom/baidu/fm/FMRadio;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    const-string v1, "FMRadioApp"

    const-string v2, "onCreate: Failed to Start Service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    new-instance v0, Lcom/baidu/fm/FMRadio$1;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMRadio$1;-><init>(Lcom/baidu/fm/FMRadio;)V

    .line 275
    .local v0, runnable:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 276
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 289
    const-string v0, "FMRadioApp"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-static {p0}, Lcom/baidu/fm/FMRadio;->unbindFromService(Landroid/content/Context;)V

    .line 293
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 294
    return-void
.end method

.method public registerFMServiceListener()V
    .locals 2

    .prologue
    .line 778
    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mFMServiceReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 779
    new-instance v1, Lcom/baidu/fm/FMRadio$5;

    invoke-direct {v1, p0}, Lcom/baidu/fm/FMRadio$5;-><init>(Lcom/baidu/fm/FMRadio;)V

    iput-object v1, p0, Lcom/baidu/fm/FMRadio;->mFMServiceReceiver:Landroid/content/BroadcastReceiver;

    .line 809
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 810
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "com.baidu.fm.app_kill"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 811
    const-string v1, "com.baidu.fm.headset"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 812
    const-string v1, "com.baidu.fm.other_media_intent"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 813
    const-string v1, "com.baidu.fm.power_state_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 814
    const-string v1, "com.baidu.fm.audio_state_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 815
    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mFMServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/baidu/fm/FMRadio;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 817
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public requestStationListExit()V
    .locals 2

    .prologue
    .line 773
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.yi.fm.stationlist.kill"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 774
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/baidu/fm/FMRadio;->sendBroadcast(Landroid/content/Intent;)V

    .line 775
    return-void
.end method

.method public setCurrentFrequency(I)Z
    .locals 1
    .parameter "newFreq"

    .prologue
    .line 446
    const/16 v0, 0x36b

    if-lt p1, v0, :cond_0

    const/16 v0, 0x438

    if-gt p1, v0, :cond_0

    .line 448
    iput p1, p0, Lcom/baidu/fm/FMRadio;->mCurrentFrequencyInt:I

    .line 449
    const/4 v0, 0x1

    .line 451
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateAudioPathButton()V
    .locals 2

    .prologue
    .line 1889
    sget-object v1, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    if-eqz v1, :cond_0

    .line 1891
    :try_start_0
    sget-object v1, Lcom/baidu/fm/FMRadio;->mService:Lcom/baidu/fm/IFMRadioService;

    invoke-interface {v1}, Lcom/baidu/fm/IFMRadioService;->isEarphoneUsed()Z

    move-result v1

    iput-boolean v1, p0, Lcom/baidu/fm/FMRadio;->mUseEarPhone:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1906
    :cond_0
    :goto_0
    return-void

    .line 1893
    :catch_0
    move-exception v0

    .line 1894
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateBottomBarTexture()V
    .locals 5

    .prologue
    .line 761
    const/4 v2, 0x0

    .line 762
    .local v2, mBottomBar:Landroid/view/View;
    const v3, 0x7f090034

    invoke-virtual {p0, v3}, Lcom/baidu/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 763
    invoke-virtual {p0}, Lcom/baidu/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02003a

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 764
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 765
    .local v1, bottomTexture:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 766
    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 767
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 768
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 770
    :cond_0
    return-void
.end method

.method public updateFavoriteButton()V
    .locals 3

    .prologue
    .line 537
    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {p0}, Lcom/baidu/fm/FMRadio;->getCurrentFrequencyText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/fm/FMPersistence;->isStationInfoFavorited(Ljava/lang/String;)Z

    move-result v0

    .line 539
    .local v0, favorited:Z
    if-eqz v0, :cond_1

    .line 540
    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mFavoriteBtn:Landroid/widget/ImageView;

    const v2, 0x7f020008

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 545
    .end local v0           #favorited:Z
    :cond_0
    :goto_0
    return-void

    .line 542
    .restart local v0       #favorited:Z
    :cond_1
    iget-object v1, p0, Lcom/baidu/fm/FMRadio;->mFavoriteBtn:Landroid/widget/ImageView;

    const v2, 0x7f02001b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public updateMuteState()V
    .locals 2

    .prologue
    .line 1877
    const v1, 0x7f09002e

    invoke-virtual {p0, v1}, Lcom/baidu/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1878
    .local v0, muteImage:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 1879
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1880
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1886
    :cond_0
    :goto_0
    return-void

    .line 1883
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateMuteUnmuteButton()V
    .locals 2

    .prologue
    .line 520
    const v1, 0x7f09002e

    invoke-virtual {p0, v1}, Lcom/baidu/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 521
    .local v0, muteImage:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 522
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 523
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateScreenBoardUI()V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mScreenBoardView:Lcom/baidu/fm/widget/ScreenBoardView;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mScreenBoardView:Lcom/baidu/fm/widget/ScreenBoardView;

    invoke-virtual {p0}, Lcom/baidu/fm/FMRadio;->getCurrentFrequency()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/fm/widget/ScreenBoardView;->setCurrentFreqIndex(I)V

    .line 551
    :cond_0
    return-void
.end method

.method public updateScreenBoardUI(I)V
    .locals 1
    .parameter "newFreq"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mScreenBoardView:Lcom/baidu/fm/widget/ScreenBoardView;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mScreenBoardView:Lcom/baidu/fm/widget/ScreenBoardView;

    invoke-virtual {v0, p1}, Lcom/baidu/fm/widget/ScreenBoardView;->setCurrentFreqIndex(I)V

    .line 557
    :cond_0
    return-void
.end method

.method public updateTunnerView()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 504
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mTunnerView:Lcom/baidu/fm/widget/TunnerView;

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/baidu/fm/FMRadio;->getCurrentFrequency()I

    move-result v0

    const/16 v1, 0x36b

    if-gt v0, v1, :cond_1

    .line 506
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mTunnerView:Lcom/baidu/fm/widget/TunnerView;

    invoke-virtual {v0, v2}, Lcom/baidu/fm/widget/TunnerView;->disableScrollDirection(I)V

    .line 511
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/fm/FMRadio;->getCurrentFrequency()I

    move-result v0

    const/16 v1, 0x438

    if-lt v0, v1, :cond_2

    .line 512
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mTunnerView:Lcom/baidu/fm/widget/TunnerView;

    invoke-virtual {v0, v3}, Lcom/baidu/fm/widget/TunnerView;->disableScrollDirection(I)V

    .line 517
    :cond_0
    :goto_1
    return-void

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mTunnerView:Lcom/baidu/fm/widget/TunnerView;

    invoke-virtual {v0, v2}, Lcom/baidu/fm/widget/TunnerView;->enableScrollDirection(I)V

    goto :goto_0

    .line 514
    :cond_2
    iget-object v0, p0, Lcom/baidu/fm/FMRadio;->mTunnerView:Lcom/baidu/fm/widget/TunnerView;

    invoke-virtual {v0, v3}, Lcom/baidu/fm/widget/TunnerView;->enableScrollDirection(I)V

    goto :goto_1
.end method
