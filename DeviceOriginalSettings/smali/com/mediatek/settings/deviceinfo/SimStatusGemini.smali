.class public Lcom/mediatek/settings/deviceinfo/SimStatusGemini;
.super Landroid/preference/PreferenceActivity;
.source "SimStatusGemini.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x12c

.field private static final EVENT_SIGNAL_STRENGTH_CHANGED:I = 0xc8

.field private static final KEY_DATA_STATE:Ljava/lang/String; = "data_state"

.field private static final KEY_NETWORK_TYPE:Ljava/lang/String; = "network_type"

.field private static final KEY_NUMBER:Ljava/lang/String; = "number"

.field private static final KEY_OPERATOR_NAME:Ljava/lang/String; = "operator_name"

.field private static final KEY_ROAMING_STATE:Ljava/lang/String; = "roaming_state"

.field private static final KEY_SERVICE_STATE:Ljava/lang/String; = "service_state"

.field private static final KEY_SIGNAL_STRENGTH:Ljava/lang/String; = "signal_strength"

.field private static final TAG:Ljava/lang/String; = "Gemini_SimStatus"

.field private static sRes:Landroid/content/res/Resources;

.field private static sUnknown:Ljava/lang/String;


# instance fields
.field private mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mHandler:Landroid/os/Handler;

.field private mIsShouldBeFinished:Z

.field private mIsUnlockFollow:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceComplete:Ljava/lang/Runnable;

.field private mServiceState:I

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSignalStrengthPreference:Landroid/preference/Preference;

.field private mSlotId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 82
    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 93
    iput v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    .line 94
    iput-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsUnlockFollow:Z

    .line 95
    iput-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsShouldBeFinished:Z

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mHandler:Landroid/os/Handler;

    .line 102
    new-instance v0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;-><init>(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;Lcom/mediatek/settings/deviceinfo/SimStatusGemini$1;)V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    new-instance v0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$1;-><init>(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceComplete:Ljava/lang/Runnable;

    .line 121
    new-instance v0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$2;-><init>(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 443
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)Lcom/mediatek/CellConnService/CellConnMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsShouldBeFinished:Z

    return p1
.end method

.method static synthetic access$302(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsUnlockFollow:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateDataState()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)Landroid/telephony/SignalStrength;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceState:I

    return v0
.end method

.method static synthetic access$802(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceState:I

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private setSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "preference"
    .parameter "property"
    .parameter "alt"

    .prologue
    .line 291
    :try_start_0
    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, strSummary:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 295
    .local v1, p:Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 296
    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sUnknown:Ljava/lang/String;

    .end local v2           #strSummary:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .end local v1           #p:Landroid/preference/Preference;
    :cond_1
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "Gemini_SimStatus"

    const-string v4, "fail to get system property"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "preference"
    .parameter "text"

    .prologue
    .line 306
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080269

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 310
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 311
    .local v0, p:Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 314
    :cond_1
    return-void
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 329
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget v3, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDataState(I)I

    move-result v1

    .line 330
    .local v1, state:I
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f08028a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, display:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 349
    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void

    .line 334
    :pswitch_0
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f080288

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 335
    goto :goto_0

    .line 337
    :pswitch_1
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f080289

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 338
    goto :goto_0

    .line 340
    :pswitch_2
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f080287

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 341
    goto :goto_0

    .line 343
    :pswitch_3
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f080286

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 344
    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 5

    .prologue
    .line 318
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeNameGemini(I)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, netWorkTypeName:Ljava/lang/String;
    const-string v2, "Gemini_SimStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkTypeName, mSlotId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v2, "network_type"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 322
    .local v1, p:Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 323
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sUnknown:Ljava/lang/String;

    .end local v0           #netWorkTypeName:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 326
    :cond_1
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 5
    .parameter "serviceState"

    .prologue
    .line 354
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 355
    .local v1, state:I
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f08028a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, display:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 374
    :goto_0
    const-string v2, "service_state"

    invoke-direct {p0, v2, v0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    const-string v2, "roaming_state"

    sget-object v3, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v4, 0x7f080281

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :goto_1
    const-string v2, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-void

    .line 359
    :pswitch_0
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f08027d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 360
    goto :goto_0

    .line 362
    :pswitch_1
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f08027e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 363
    goto :goto_0

    .line 365
    :pswitch_2
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f08027f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 366
    goto :goto_0

    .line 368
    :pswitch_3
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f080280

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 369
    goto :goto_0

    .line 380
    :cond_0
    const-string v2, "roaming_state"

    sget-object v3, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v4, 0x7f080282

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateTitle()V
    .locals 6

    .prologue
    .line 195
    iget v3, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-static {p0, v3}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v2

    .line 196
    .local v2, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v0

    .line 197
    .local v0, simCount:I
    const/4 v1, 0x0

    .line 198
    .local v1, simDisplayName:Ljava/lang/String;
    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    if-eqz v2, :cond_0

    .line 199
    iget-object v1, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    .line 200
    const-string v3, "Gemini_SimStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "simDisplayName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    if-eqz v1, :cond_1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 203
    invoke-virtual {p0, v1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setTitle(Ljava/lang/CharSequence;)V

    .line 205
    :cond_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    .line 470
    const-string v0, "Gemini_SimStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult() requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/16 v0, 0x64

    if-ne v0, p1, :cond_1

    .line 473
    if-ne v3, p2, :cond_0

    .line 474
    const-string v0, "slotid"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    .line 475
    const-string v0, "Gemini_SimStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSlotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateTitle()V

    .line 483
    :goto_0
    return-void

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->finish()V

    goto :goto_0

    .line 481
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/mediatek/gemini/GeminiUtils;->goBackSimSelection(Landroid/app/Activity;Z)V

    .line 488
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, -0x2

    .line 154
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    new-instance v2, Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v3, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceComplete:Ljava/lang/Runnable;

    invoke-direct {v2, v3}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 156
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v2, p0}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 157
    const v2, 0x7f06000f

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->addPreferencesFromResource(I)V

    .line 159
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 160
    .local v1, it:Landroid/content/Intent;
    const-string v2, "slotid"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    .line 161
    const-string v2, "Gemini_SimStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slotid is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    if-ne v2, v5, :cond_0

    .line 165
    invoke-static {p0}, Lcom/mediatek/gemini/GeminiUtils;->getTargetSlotId(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    .line 167
    :cond_0
    iget v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.mediatek.action.SIM_SELECTION"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v2, ":android:show_fragment_title"

    const v3, 0x7f08009a

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->startActivityForResult(Landroid/content/Intent;I)V

    .line 177
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sput-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    .line 178
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f080269

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sUnknown:Ljava/lang/String;

    .line 179
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 180
    new-instance v2, Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-direct {v2, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 183
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 191
    const-string v2, "signal_strength"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    .line 192
    return-void

    .line 174
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateTitle()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 210
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 211
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 267
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 268
    iget-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsShouldBeFinished:Z

    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->finish()V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 275
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    iget v3, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 8

    .prologue
    .line 215
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 216
    iget-boolean v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsShouldBeFinished:Z

    if-eqz v4, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->finish()V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 221
    iget-boolean v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsUnlockFollow:Z

    if-nez v4, :cond_2

    .line 222
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsUnlockFollow:Z

    .line 223
    iget-object v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$3;

    invoke-direct {v5, p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$3;-><init>(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 232
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 234
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    iget-object v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 238
    iget-object v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getLine1NumberGemini(I)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, rawNumber:Ljava/lang/String;
    const/4 v0, 0x0

    .line 241
    .local v0, formattedNumber:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 242
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    :cond_3
    const-string v4, "number"

    invoke-direct {p0, v4, v0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateDataState()V

    .line 250
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateNetworkType()V

    .line 252
    iget-object v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getServiceStateGemini(I)Landroid/telephony/ServiceState;

    move-result-object v3

    .line 254
    .local v3, serviceState:Landroid/telephony/ServiceState;
    invoke-direct {p0, v3}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 255
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    iput v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceState:I

    .line 256
    iget-object v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getSignalStrengthGemini(I)Landroid/telephony/SignalStrength;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 257
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateSignalStrength()V

    .line 258
    iget-object v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x141

    iget v7, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    goto :goto_0
.end method

.method updateSignalStrength()V
    .locals 11

    .prologue
    const v10, 0x7f08028d

    const/4 v5, 0x0

    const/4 v9, -0x1

    .line 387
    const-string v6, "Gemini_SimStatus"

    const-string v7, "updateSignalStrength()"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    if-eqz v6, :cond_4

    .line 393
    const-string v6, "Gemini_SimStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ServiceState : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v6, 0x1

    iget v7, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceState:I

    if-eq v6, v7, :cond_0

    const/4 v6, 0x3

    iget v7, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceState:I

    if-ne v6, v7, :cond_1

    .line 396
    :cond_0
    const-string v6, "Gemini_SimStatus"

    const-string v7, "ServiceState is Not ready, set signalStrength 0"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 400
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 401
    .local v1, r:Landroid/content/res/Resources;
    const/4 v0, 0x1

    .line 402
    .local v0, isGsmSignal:Z
    const/4 v3, 0x0

    .line 403
    .local v3, signalDbm:I
    const/4 v2, 0x0

    .line 404
    .local v2, signalAsu:I
    const/4 v4, 0x0

    .line 405
    .local v4, signalDbmEvdo:I
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v6, :cond_3

    .line 406
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    .line 407
    if-eqz v0, :cond_5

    .line 408
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getGsmSignalStrengthDbm()I

    move-result v3

    .line 409
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 410
    const-string v6, "Gemini_SimStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SignalStrength is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dbm , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " asu"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    if-ne v9, v3, :cond_2

    move v3, v5

    .line 413
    :cond_2
    if-ne v9, v2, :cond_3

    move v2, v5

    .line 424
    :cond_3
    :goto_0
    if-eqz v0, :cond_8

    .line 425
    const-string v5, "Gemini_SimStatus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SignalStrength is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dbm , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " asu"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f08028e

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 441
    .end local v0           #isGsmSignal:Z
    .end local v1           #r:Landroid/content/res/Resources;
    .end local v2           #signalAsu:I
    .end local v3           #signalDbm:I
    .end local v4           #signalDbmEvdo:I
    :cond_4
    :goto_1
    return-void

    .line 415
    .restart local v0       #isGsmSignal:Z
    .restart local v1       #r:Landroid/content/res/Resources;
    .restart local v2       #signalAsu:I
    .restart local v3       #signalDbm:I
    .restart local v4       #signalDbmEvdo:I
    :cond_5
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v3

    .line 416
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v4

    .line 417
    const-string v6, "Gemini_SimStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SignalStrength is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dbm , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dbm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    if-ne v9, v3, :cond_6

    move v3, v5

    .line 420
    :cond_6
    if-ne v9, v4, :cond_7

    move v4, v5

    :cond_7
    goto/16 :goto_0

    .line 432
    :cond_8
    const-string v5, "Gemini_SimStatus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SignalStrength is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dbm , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dbm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0801c8

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
