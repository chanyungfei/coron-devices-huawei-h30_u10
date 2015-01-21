.class public abstract Lcom/android/internal/telephony/SMSDispatcher;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
        Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_WAP_PUSH_NOTI_CANCEL:Ljava/lang/String; = "com.mediatek.cu_wap_push_permission_cancel"

.field protected static final CB_RAW_PROJECTION:[Ljava/lang/String; = null

.field private static final DEFAULT_SMS_CHECK_PERIOD:I = 0x36ee80

.field private static final DEFAULT_SMS_MAX_COUNT:I = 0x64

.field private static final DEFAULT_SMS_TIMEOUT:I = 0x1770

.field private static final DELAY_NOTI_TIME:I = 0x3a98

.field private static final DESTINATION_PORT_COLUMN:I = 0x2

.field protected static final DM_OA:Ljava/lang/String; = "10654040"

.field protected static final DM_PORT:I = 0x4266

.field protected static final EVENT_ACTIVATE_CB_COMPLETE:I = 0x66

.field private static final EVENT_CONFIRM_SEND_TO_POSSIBLE_PREMIUM_SHORT_CODE:I = 0x8

.field private static final EVENT_CONFIRM_SEND_TO_PREMIUM_SHORT_CODE:I = 0x9

.field protected static final EVENT_COPY_TEXT_MESSAGE_DONE:I = 0x6e

.field protected static final EVENT_GET_CB_CONFIG_COMPLETE:I = 0x67

.field protected static final EVENT_HANDLE_REDUCTED_MESSAGE:I = 0x6c

.field protected static final EVENT_NEW_BROADCAST_SMS:I = 0x65

.field protected static final EVENT_NEW_SMS:I = 0x1

.field protected static final EVENT_QUERY_CB_ACTIVATION_COMPLETE:I = 0x6a

.field protected static final EVENT_REDUCTED_MESSAGE_TIMEOUT:I = 0x6d

.field static final EVENT_SEND_CONFIRMED_SMS:I = 0x5

.field private static final EVENT_SEND_LIMIT_REACHED_CONFIRMATION:I = 0x4

.field private static final EVENT_SEND_RETRY:I = 0x3

.field protected static final EVENT_SEND_SMS_COMPLETE:I = 0x2

.field protected static final EVENT_SET_CB_CONFIG_COMPLETE:I = 0x68

.field protected static final EVENT_SMS_READY:I = 0x6b

.field static final EVENT_STOP_SENDING:I = 0x7

.field protected static final INTENT_ETWS_ALARM:Ljava/lang/String; = "com.android.internal.telephony.etws"

.field private static final MAX_SEND_RETRIES:I = 0x3

.field private static final MO_MSG_QUEUE_LIMIT:I = 0x5

.field private static final PACKAGE_NAME_SETTINGS:Ljava/lang/String; = "com.mediatek.gemini"

.field private static final PDU_COLUMN:I = 0x0

.field private static final PDU_PROJECTION:[Ljava/lang/String; = null

.field private static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String; = null

.field protected static PDU_SIZE:Ljava/lang/String; = null

.field private static final PREMIUM_RULE_USE_BOTH:I = 0x3

.field private static final PREMIUM_RULE_USE_NETWORK:I = 0x2

.field private static final PREMIUM_RULE_USE_SIM:I = 0x1

.field protected static final RAW_PROJECTION:[Ljava/lang/String; = null

.field public static final RECEIVE_EMERGENCY_BROADCAST_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_EMERGENCY_BROADCAST"

.field public static final RECEIVE_SMS_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_SMS"

.field private static final SEND_NEXT_MSG_EXTRA:Ljava/lang/String; = "SendNextMsg"

.field private static final SEND_RETRY_DELAY:I = 0x7d0

.field private static final SEND_SMS_NO_CONFIRMATION_PERMISSION:Ljava/lang/String; = "android.permission.SEND_SMS_NO_CONFIRMATION"

.field private static final SEQUENCE_COLUMN:I = 0x1

.field private static final SINGLE_PART_SMS:I = 0x1

.field static final TAG:Ljava/lang/String; = "SMS"

.field private static final WAKE_LOCK_TIMEOUT:I = 0x1388

.field private static final WAP_PUSH_NOTI_ID:I = 0x1387

.field protected static isDmLock:Z

.field protected static final mCbRawUri:Landroid/net/Uri;

.field protected static final mRawUri:Landroid/net/Uri;

.field private static sConcatMsgCount:I

.field private static sConcatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

.field private static sConcatenatedRef:I

.field private static sRefuseSent:Z


# instance fields
.field protected final deliveryPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mCellBroadcastFwkExt:Lcom/android/internal/telephony/ICellBroadcastFwkExt;

.field protected final mCm:Lcom/android/internal/telephony/CommandsInterface;

.field mConcatenatedSmsFwkExt:Lcom/android/internal/telephony/IConcatenatedSmsFwkExt;

.field protected final mContext:Landroid/content/Context;

.field private mDMLockReceiver:Landroid/content/BroadcastReceiver;

.field protected mDMOperatorFile:Lcom/android/internal/telephony/DMOperatorFile;

.field protected mDupSmsFilterExt:Lcom/mediatek/common/sms/IDupSmsFilterExt;

.field protected mEtwsAlarmIntent:Landroid/app/PendingIntent;

.field protected mLock:Ljava/lang/Object;

.field private mNormalUserSmsFwkExt:Lcom/android/internal/telephony/INormalUserSmsFwkExt;

.field private mPendingTrackerCount:I

.field protected final mPhone:Lcom/android/internal/telephony/Phone;

.field private final mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mRemainingMessages:I

.field protected final mResolver:Landroid/content/ContentResolver;

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field protected mSTrackersQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

.field protected mSimId:I

.field protected mSmsCapable:Z

.field protected mSmsReady:Z

.field protected mSmsReceiveDisabled:Z

.field protected mSmsSendDisabled:Z

.field protected mStorageAvailable:Z

.field protected final mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field protected mSuccess:Z

.field protected final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected final mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

.field mWapPushFwkExt:Lcom/mediatek/common/sms/IWapPushFwkExt;

.field protected messageCountNeedCopy:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->PDU_PROJECTION:[Ljava/lang/String;

    .line 160
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    const-string v1, "sequence"

    aput-object v1, v0, v3

    const-string v1, "destination_port"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 167
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    const-string v1, "sequence"

    aput-object v1, v0, v3

    const-string v1, "destination_port"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    .line 173
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    const-string v1, "sequence"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->CB_RAW_PROJECTION:[Ljava/lang/String;

    .line 252
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    .line 255
    const-string v0, "content://cb"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "cbraw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->mCbRawUri:Landroid/net/Uri;

    .line 273
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 317
    sput-boolean v2, Lcom/android/internal/telephony/SMSDispatcher;->isDmLock:Z

    .line 340
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 341
    sput-boolean v3, Lcom/android/internal/telephony/SMSDispatcher;->sRefuseSent:Z

    .line 342
    sput v2, Lcom/android/internal/telephony/SMSDispatcher;->sConcatMsgCount:I

    .line 350
    const-string v0, "pdu_size"

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SIZE:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 10
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 372
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 186
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 287
    new-instance v3, Ljava/util/ArrayList;

    const/4 v6, 0x5

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    .line 299
    iput-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 303
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 315
    iput-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mDMOperatorFile:Lcom/android/internal/telephony/DMOperatorFile;

    .line 328
    iput-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    .line 330
    iput v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSimId:I

    .line 332
    iput-boolean v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReady:Z

    .line 335
    iput v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->messageCountNeedCopy:I

    .line 336
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mLock:Ljava/lang/Object;

    .line 337
    iput-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSuccess:Z

    .line 353
    iput-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPushFwkExt:Lcom/mediatek/common/sms/IWapPushFwkExt;

    .line 355
    iput-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mDupSmsFilterExt:Lcom/mediatek/common/sms/IDupSmsFilterExt;

    .line 356
    iput-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcatenatedSmsFwkExt:Lcom/android/internal/telephony/IConcatenatedSmsFwkExt;

    .line 358
    iput-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCellBroadcastFwkExt:Lcom/android/internal/telephony/ICellBroadcastFwkExt;

    .line 359
    iput-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mEtwsAlarmIntent:Landroid/app/PendingIntent;

    .line 363
    iput-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mNormalUserSmsFwkExt:Lcom/android/internal/telephony/INormalUserSmsFwkExt;

    .line 526
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    .line 2099
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SMSDispatcher$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 2363
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SMSDispatcher$2;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mDMLockReceiver:Landroid/content/BroadcastReceiver;

    .line 373
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 374
    new-instance v3, Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {v3, p1, p0}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 375
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 376
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    .line 377
    iget-object v3, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 378
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 379
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 380
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 381
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;-><init>(Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    .line 382
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "sms_short_code_rule"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 385
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->createWakelock()V

    .line 387
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1110030

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 389
    const-string v3, "telephony.sms.receive"

    iget-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReceiveDisabled:Z

    .line 391
    const-string v3, "telephony.sms.send"

    iget-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    .line 393
    const-string v3, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMSDispatcher: ctor mSmsCapable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " format="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mSmsReceiveDisabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReceiveDisabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mSmsSendDisabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0, v4, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewSMS(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 399
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x6b

    invoke-interface {v3, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForSmsReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 401
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSimId:I

    .line 407
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 408
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 409
    const-string v3, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 410
    const-string v3, "com.android.internal.telephony.etws"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 413
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 417
    const-string v3, "SMS"

    const-string v6, "[DM initialize DM xml"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-static {}, Lcom/android/internal/telephony/DMOperatorFile;->getInstance()Lcom/android/internal/telephony/DMOperatorFile;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mDMOperatorFile:Lcom/android/internal/telephony/DMOperatorFile;

    .line 419
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mDMOperatorFile:Lcom/android/internal/telephony/DMOperatorFile;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/DMOperatorFile;->initFromRes(Landroid/content/Context;)V

    .line 420
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mDMOperatorFile:Lcom/android/internal/telephony/DMOperatorFile;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DMOperatorFile;->dump()V

    .line 423
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 424
    .local v1, dmFilter:Landroid/content/IntentFilter;
    const-string v3, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 425
    const-string v3, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 426
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mDMLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 442
    const-class v3, Lcom/mediatek/common/sms/IWapPushFwkExt;

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    aput-object v7, v6, v5

    iget v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSimId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v3, v6}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/common/sms/IWapPushFwkExt;

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPushFwkExt:Lcom/mediatek/common/sms/IWapPushFwkExt;

    .line 443
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPushFwkExt:Lcom/mediatek/common/sms/IWapPushFwkExt;

    if-eqz v3, :cond_2

    .line 444
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPushFwkExt:Lcom/mediatek/common/sms/IWapPushFwkExt;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, actualClassName:Ljava/lang/String;
    const-string v3, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initial IWapPushFwkExt done, actual class name is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    .end local v0           #actualClassName:Ljava/lang/String;
    :goto_2
    const-class v3, Lcom/mediatek/common/sms/IDupSmsFilterExt;

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    aput-object v7, v6, v5

    iget v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSimId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-static {v3, v6}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/common/sms/IDupSmsFilterExt;

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mDupSmsFilterExt:Lcom/mediatek/common/sms/IDupSmsFilterExt;

    .line 451
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mDupSmsFilterExt:Lcom/mediatek/common/sms/IDupSmsFilterExt;

    if-eqz v3, :cond_3

    .line 452
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mDupSmsFilterExt:Lcom/mediatek/common/sms/IDupSmsFilterExt;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 453
    .restart local v0       #actualClassName:Ljava/lang/String;
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initial IDupSmsFilterExt done, actual class name is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v0           #actualClassName:Ljava/lang/String;
    :goto_3
    new-instance v3, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSimId:I

    invoke-direct {v3, v4, v5}, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcatenatedSmsFwkExt:Lcom/android/internal/telephony/IConcatenatedSmsFwkExt;

    .line 460
    new-instance v3, Lcom/android/internal/telephony/CellBroadcastFwkExt;

    invoke-direct {v3, p1}, Lcom/android/internal/telephony/CellBroadcastFwkExt;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCellBroadcastFwkExt:Lcom/android/internal/telephony/ICellBroadcastFwkExt;

    .line 464
    return-void

    .end local v1           #dmFilter:Landroid/content/IntentFilter;
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_0
    move v3, v5

    .line 389
    goto/16 :goto_0

    :cond_1
    move v3, v5

    .line 391
    goto/16 :goto_1

    .line 447
    .restart local v1       #dmFilter:Landroid/content/IntentFilter;
    .restart local v2       #filter:Landroid/content/IntentFilter;
    :cond_2
    const-string v3, "SMS"

    const-string v6, "FAIL! initial IWapPushFwkExt"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 455
    :cond_3
    const-string v3, "SMS"

    const-string v4, "FAIL! intial IDupSmsFilterExt"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 136
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatMsgCount:I

    return v0
.end method

.method static synthetic access$020(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatMsgCount:I

    sub-int/2addr v0, p0

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatMsgCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/SMSDispatcher;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/SMSDispatcher;ZILandroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 136
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    return-void
.end method

.method private createMessageFromPdu([B[B)Landroid/telephony/SmsMessage;
    .locals 9
    .parameter "smsc"
    .parameter "tpdu"

    .prologue
    const/4 v8, 0x0

    .line 2432
    const-string v5, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[NQ tpdu first byte is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, p2, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    array-length v4, p2

    .line 2434
    .local v4, tpduLen:I
    const/4 v3, 0x1

    .line 2435
    .local v3, smscLen:I
    if-eqz p1, :cond_0

    .line 2436
    array-length v3, p1

    .line 2440
    :goto_0
    add-int v5, v3, v4

    new-array v2, v5, [B

    .line 2441
    .local v2, msgPdu:[B
    const/4 v0, 0x0

    .line 2443
    .local v0, curIndex:I
    if-eqz p1, :cond_1

    .line 2444
    const/4 v5, 0x0

    :try_start_0
    invoke-static {p1, v5, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2448
    :goto_1
    add-int/2addr v0, v3

    .line 2449
    const/4 v5, 0x0

    invoke-static {p2, v5, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2450
    const-string v5, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[NQ mti byte in msgPdu is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-byte v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2455
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v5

    return-object v5

    .line 2438
    .end local v0           #curIndex:I
    .end local v2           #msgPdu:[B
    :cond_0
    const-string v5, "SMS"

    const-string v6, "[NQ smsc is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2446
    .restart local v0       #curIndex:I
    .restart local v2       #msgPdu:[B
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_1
    aput-byte v6, v2, v5
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2451
    :catch_0
    move-exception v1

    .line 2452
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "SMS"

    const-string v6, "[NQ out of bounds error when copy pdu data"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private createWakelock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 708
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 709
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "SMSDispatcher"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 710
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 711
    return-void
.end method

.method private denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 3
    .parameter "tracker"

    .prologue
    const/4 v2, 0x5

    .line 1734
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    if-lt v1, v2, :cond_0

    .line 1739
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1746
    :goto_0
    const/4 v1, 0x1

    .line 1749
    :goto_1
    return v1

    .line 1740
    :catch_0
    move-exception v0

    .line 1741
    .local v0, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v1, "SMS"

    const-string v2, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1742
    .end local v0           #ex:Landroid/app/PendingIntent$CanceledException;
    :catch_1
    move-exception v0

    .line 1743
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1748
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    .line 1749
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "appPackage"

    .prologue
    .line 1758
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1760
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1761
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 1764
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local p1
    :goto_0
    return-object p1

    .line 1762
    .restart local p1
    :catch_0
    move-exception v1

    .line 1763
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PackageManager Name Not Found for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 1889
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1890
    .local v0, r:Landroid/content/res/Resources;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "Resource unusable"

    goto :goto_0
.end method

.method protected static getNextConcatenatedRef()I
    .locals 1

    .prologue
    .line 306
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 307
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    return v0
.end method

.method private handleDeductedMessage(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 6
    .parameter "tracker"

    .prologue
    const/4 v5, 0x5

    .line 2402
    iget v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    if-lt v4, v5, :cond_0

    .line 2405
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2429
    :goto_0
    return-void

    .line 2406
    :catch_0
    move-exception v1

    .line 2407
    .local v1, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v4, "SMS"

    const-string v5, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2412
    .end local v1           #ex:Landroid/app/PendingIntent$CanceledException;
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 2414
    .local v3, r:Landroid/content/res/Resources;
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/widget/TextView;)V

    .line 2416
    .local v2, listener:Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x20500b8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x20500b9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x20500ba

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x20500bb

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2423
    .local v0, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 2424
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 2425
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected static handleNotInService(ILandroid/app/PendingIntent;)V
    .locals 3
    .parameter "ss"
    .parameter "sentIntent"

    .prologue
    .line 935
    if-eqz p1, :cond_1

    .line 937
    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    .line 938
    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/app/PendingIntent;->send(I)V

    .line 952
    :goto_0
    return-void

    .line 940
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 942
    :catch_0
    move-exception v0

    .line 944
    .local v0, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v1, "SMS"

    const-string v2, "CanceledException happened when send sms fail with sentIntent due to no service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 949
    .end local v0           #ex:Landroid/app/PendingIntent$CanceledException;
    :cond_1
    const-string v1, "SMS"

    const-string v2, "Send sms fail without sentIntent due to no service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isMultipartTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 2
    .parameter "tracker"

    .prologue
    .line 2620
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 2621
    .local v0, map:Ljava/util/HashMap;
    const-string v1, "parts"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 4
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 1954
    if-nez p1, :cond_0

    .line 1956
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1957
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1958
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1959
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1961
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 1962
    return-void
.end method

.method private notifySmsReady(Z)V
    .locals 4
    .parameter "isReady"

    .prologue
    .line 2606
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2607
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ready"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2608
    const-string v1, "simId"

    iget v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSimId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2609
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2610
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2611
    return-void
.end method

.method private sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 11
    .parameter "tracker"

    .prologue
    .line 1911
    iget-object v8, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1913
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "destination"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1914
    .local v1, destinationAddress:Ljava/lang/String;
    const-string v0, "scaddress"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1916
    .local v2, scAddress:Ljava/lang/String;
    const-string v0, "parts"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1917
    .local v3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "sentIntents"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1918
    .local v4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "deliveryIntents"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1921
    .local v5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    .line 1922
    .local v10, ss:I
    if-eqz v10, :cond_1

    .line 1923
    const/4 v7, 0x0

    .local v7, i:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, count:I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 1924
    const/4 v9, 0x0

    .line 1925
    .local v9, sentIntent:Landroid/app/PendingIntent;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_0

    .line 1926
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #sentIntent:Landroid/app/PendingIntent;
    check-cast v9, Landroid/app/PendingIntent;

    .line 1928
    .restart local v9       #sentIntent:Landroid/app/PendingIntent;
    :cond_0
    invoke-static {v10, v9}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    .line 1923
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v6           #count:I
    .end local v7           #i:I
    .end local v9           #sentIntent:Landroid/app/PendingIntent;
    :cond_1
    move-object v0, p0

    .line 1933
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1934
    :cond_2
    return-void
.end method


# virtual methods
.method protected abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method protected abstract calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
.end method

.method checkDestination(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 12
    .parameter "tracker"

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x1

    .line 1663
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.SEND_SMS_NO_CONFIRMATION"

    invoke-virtual {v8, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 1722
    :cond_0
    :goto_0
    return v6

    .line 1667
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 1668
    .local v3, rule:I
    const/4 v5, 0x0

    .line 1669
    .local v5, smsCategory:I
    if-eq v3, v6, :cond_2

    if-ne v3, v11, :cond_5

    .line 1670
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v4

    .line 1671
    .local v4, simCountryIso:Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v8, v10, :cond_4

    .line 1672
    :cond_3
    const-string v8, "SMS"

    const-string v9, "Can\'t get SIM country Iso: trying network country Iso"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v4

    .line 1676
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v9, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v8, v9, v4}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1678
    .end local v4           #simCountryIso:Ljava/lang/String;
    :cond_5
    if-eq v3, v10, :cond_6

    if-ne v3, v11, :cond_9

    .line 1679
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 1680
    .local v1, networkCountryIso:Ljava/lang/String;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v8, v10, :cond_8

    .line 1681
    :cond_7
    const-string v8, "SMS"

    const-string v9, "Can\'t get Network country Iso: trying SIM country Iso"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 1685
    :cond_8
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v9, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v8, v9, v1}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/SmsUsageMonitor;->mergeShortCodeCategories(II)I

    move-result v5

    .line 1689
    .end local v1           #networkCountryIso:Ljava/lang/String;
    :cond_9
    if-eqz v5, :cond_0

    if-eq v5, v6, :cond_0

    if-eq v5, v10, :cond_0

    .line 1696
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v9, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v2

    .line 1698
    .local v2, premiumSmsPermission:I
    if-nez v2, :cond_a

    .line 1700
    const/4 v2, 0x1

    .line 1703
    :cond_a
    packed-switch v2, :pswitch_data_0

    .line 1716
    if-ne v5, v11, :cond_b

    .line 1717
    const/16 v0, 0x8

    .line 1721
    .local v0, event:I
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    move v6, v7

    .line 1722
    goto :goto_0

    .line 1705
    .end local v0           #event:I
    :pswitch_0
    const-string v7, "SMS"

    const-string v8, "User approved this app to send to premium SMS"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1709
    :pswitch_1
    const-string v6, "SMS"

    const-string v8, "User denied this app from sending to premium SMS"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    const/4 v6, 0x7

    invoke-virtual {p0, v6, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    move v6, v7

    .line 1711
    goto/16 :goto_0

    .line 1719
    :cond_b
    const/16 v0, 0x9

    .restart local v0       #event:I
    goto :goto_1

    .line 1703
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected checkSmsWithNqFilter(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z
    .locals 8
    .parameter "address"
    .parameter "text"
    .parameter "sentIntent"

    .prologue
    .line 2378
    invoke-static {p3}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v4

    .line 2380
    .local v4, pkgName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2382
    .local v1, appName:Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2383
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2388
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    const-string v5, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[NQ address = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", text = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pkgName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", appName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    const/4 v3, 0x0

    .line 2393
    .local v3, isDeductedMessage:Z
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/netqin/NqSmsFilter;->getInstance(Landroid/content/Context;)Lcom/netqin/NqSmsFilter;

    move-result-object v5

    invoke-virtual {v5, p1, p2, v4, v1}, Lcom/netqin/NqSmsFilter;->nqSmsFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 2398
    :goto_1
    return v3

    .line 2384
    .end local v3           #isDeductedMessage:Z
    :catch_0
    move-exception v2

    .line 2385
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "Resource unusable"

    goto :goto_0

    .line 2394
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #isDeductedMessage:Z
    :catch_1
    move-exception v2

    .line 2395
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "SMS"

    const-string v6, "[Nq Exception is thrown when call NqSmsFilter"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public abstract copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ)I"
        }
    .end annotation
.end method

.method protected abstract createMessageFromSubmitPdu([B[B)Landroid/telephony/SmsMessage;
.end method

.method public dispatch(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 8
    .parameter "intent"
    .parameter "permission"

    .prologue
    const/4 v6, 0x0

    .line 738
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 740
    const-string v0, "rTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 741
    const-string v0, "simId"

    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSimId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 743
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 745
    return-void
.end method

.method public dispatch(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 8
    .parameter "intent"
    .parameter "permission"
    .parameter "resultReceiver"

    .prologue
    const/4 v6, 0x0

    .line 758
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 759
    const-string v0, "simId"

    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSimId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 760
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 762
    return-void
.end method

.method protected dispatchBroadcastMessage(Landroid/telephony/SmsCbMessage;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 2798
    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->isEmergencyMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2799
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2800
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2801
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dispatching emergency SMS CB:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    const-string v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2809
    :goto_0
    return-void

    .line 2804
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2805
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2806
    const-string v1, "SMS"

    const-string v2, "Dispatching SMS CB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected dispatchCbMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "smsPdu"

    .prologue
    .line 2170
    const-string v0, "SMS"

    const-string v1, "didn\'t support cellBoradcast in the CDMA phone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    return-void
.end method

.method protected dispatchDmRegisterPdus([[B)V
    .locals 2
    .parameter "pdus"

    .prologue
    .line 2465
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DM_REGISTER_SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2466
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2467
    const-string v1, "android.permission.RECEIVE_DM_REGISTER_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2468
    return-void
.end method

.method public abstract dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchMwiMessage(Lcom/android/internal/telephony/SmsMessageBase;)V
    .locals 4
    .parameter "sms"

    .prologue
    .line 2759
    const-string v2, "SMS"

    const-string v3, "broadcast intent for MWI message"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    const/4 v2, 0x1

    new-array v1, v2, [[B

    .line 2761
    .local v1, pdus:[[B
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    aput-object v3, v1, v2

    .line 2763
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.MWI_SMS_RECEIVED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2764
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "pdus"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2765
    const-string v2, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2766
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2767
    return-void
.end method

.method protected dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 18
    .parameter "sms"

    .prologue
    .line 972
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v17

    .line 975
    .local v17, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v1, :cond_5

    .line 977
    :cond_0
    const/4 v1, 0x1

    new-array v15, v1, [[B

    .line 978
    .local v15, pdus:[[B
    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v2

    aput-object v2, v15, v1

    .line 980
    if-eqz v17, :cond_4

    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v1, :cond_4

    .line 990
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPushFwkExt:Lcom/mediatek/common/sms/IWapPushFwkExt;

    invoke-interface {v1}, Lcom/mediatek/common/sms/IWapPushFwkExt;->allowDispatchWapPush()Z

    move-result v11

    .line 991
    .local v11, allowDispatch:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPushFwkExt:Lcom/mediatek/common/sms/IWapPushFwkExt;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/common/sms/IWapPushFwkExt;->isMmsWapPush([B)Z

    move-result v13

    .line 992
    .local v13, isMms:Z
    if-nez v11, :cond_1

    if-nez v13, :cond_1

    .line 993
    const-string v1, "SMS"

    const-string v2, "don\'t dispatch push message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const/4 v1, 0x1

    .line 1036
    .end local v11           #allowDispatch:Z
    .end local v13           #isMms:Z
    .end local v15           #pdus:[[B
    :goto_0
    return v1

    .line 996
    .restart local v11       #allowDispatch:Z
    .restart local v13       #isMms:Z
    .restart local v15       #pdus:[[B
    :cond_1
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v1, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v2, 0xb84

    if-ne v1, v2, :cond_2

    .line 999
    const-string v1, "SMS"

    const-string v2, "dispatch wap push pdu with addr & sc addr"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 1001
    .local v14, mBundle:Landroid/os/Bundle;
    const-string v1, "address"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const-string v1, "service_center"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2, v14}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/os/Bundle;)I

    move-result v1

    goto :goto_0

    .line 1012
    .end local v14           #mBundle:Landroid/os/Bundle;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mDMOperatorFile:Lcom/android/internal/telephony/DMOperatorFile;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/DMOperatorFile;->searchMatchOp(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1013
    const-string v1, "SMS"

    const-string v2, "we receive a DM register SMS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchDmRegisterPdus([[B)V

    .line 1031
    .end local v11           #allowDispatch:Z
    .end local v13           #isMms:Z
    :goto_1
    const/4 v1, -0x1

    goto :goto_0

    .line 1020
    .restart local v11       #allowDispatch:Z
    .restart local v13       #isMms:Z
    :cond_3
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v1, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    goto :goto_1

    .line 1029
    .end local v11           #allowDispatch:Z
    .end local v13           #isMms:Z
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[B)V

    goto :goto_1

    .line 1034
    .end local v15           #pdus:[[B
    :cond_5
    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 1035
    .local v12, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v16, v0

    .line 1036
    .local v16, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    iget v4, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    iget v5, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v6, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v7

    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    iget v9, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    :goto_2
    const/4 v10, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/SMSDispatcher;->processMessagePart([BLjava/lang/String;IIIJIZ)I

    move-result v1

    goto/16 :goto_0

    :cond_6
    const/4 v9, -0x1

    goto :goto_2
.end method

.method protected dispatchPdus([[B)V
    .locals 3
    .parameter "pdus"

    .prologue
    .line 1285
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1286
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1287
    const-string v1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1288
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1289
    return-void
.end method

.method protected dispatchPortAddressedPdus([[BI)V
    .locals 4
    .parameter "pdus"
    .parameter "port"

    .prologue
    .line 1298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms://localhost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1299
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1300
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "pdus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1301
    const-string v2, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1303
    const/16 v2, 0x1f59

    if-eq p2, v2, :cond_0

    const/16 v2, 0x1c6b

    if-eq p2, v2, :cond_0

    const/16 v2, 0x1c6c

    if-ne p2, v2, :cond_1

    .line 1304
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1305
    const-string v2, "MtkAgps"

    const-string v3, "=========== SMSDispatcher: Send SMS For A-GPS SUPL NI ========"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :goto_0
    return-void

    .line 1307
    :cond_1
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewSMS(Landroid/os/Handler;)V

    .line 490
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsStatus(Landroid/os/Handler;)V

    .line 491
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 492
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 514
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 516
    const-string v0, "SMS"

    const-string v1, "SMSDispatcher finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return-void
.end method

.method protected abstract getFormat()Ljava/lang/String;
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .parameter "packageName"

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 21
    .parameter "isPremium"
    .parameter "tracker"

    .prologue
    .line 1804
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1860
    :goto_0
    return-void

    .line 1809
    :cond_0
    if-eqz p1, :cond_1

    .line 1810
    const v5, 0x1040422

    .line 1815
    .local v5, detailsId:I
    :goto_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1816
    .local v3, appLabel:Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    .line 1817
    .local v13, r:Landroid/content/res/Resources;
    const v17, 0x1040420

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v3, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    .line 1821
    .local v11, messageText:Landroid/text/Spanned;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "androidhwext:style/Theme.Emui"

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 1822
    .local v16, themeID:I
    new-instance v15, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v15, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1824
    .local v15, themeContext:Landroid/view/ContextThemeWrapper;
    const-string v17, "layout_inflater"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 1827
    .local v8, inflater:Landroid/view/LayoutInflater;
    const v17, 0x10900ca

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 1829
    .local v9, layout:Landroid/view/View;
    new-instance v10, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    const v17, 0x1020374

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-direct {v10, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/widget/TextView;)V

    .line 1833
    .local v10, listener:Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    const v17, 0x102036e

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1834
    .local v12, messageView:Landroid/widget/TextView;
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1836
    const v17, 0x102036f

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1838
    .local v6, detailsLayout:Landroid/view/ViewGroup;
    const v17, 0x1020371

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1840
    .local v7, detailsView:Landroid/widget/TextView;
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1842
    const v17, 0x1020372

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    .line 1844
    .local v14, rememberChoice:Landroid/widget/CheckBox;
    invoke-virtual {v14, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1847
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x3060061

    invoke-direct/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x1040423

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x1040424

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 1855
    .local v4, d:Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x7d3

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setType(I)V

    .line 1856
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 1858
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->setPositiveButton(Landroid/widget/Button;)V

    .line 1859
    const/16 v17, -0x2

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->setNegativeButton(Landroid/widget/Button;)V

    goto/16 :goto_0

    .line 1812
    .end local v3           #appLabel:Ljava/lang/CharSequence;
    .end local v4           #d:Landroid/app/AlertDialog;
    .end local v5           #detailsId:I
    .end local v6           #detailsLayout:Landroid/view/ViewGroup;
    .end local v7           #detailsView:Landroid/widget/TextView;
    .end local v8           #inflater:Landroid/view/LayoutInflater;
    .end local v9           #layout:Landroid/view/View;
    .end local v10           #listener:Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    .end local v11           #messageText:Landroid/text/Spanned;
    .end local v12           #messageView:Landroid/widget/TextView;
    .end local v13           #r:Landroid/content/res/Resources;
    .end local v14           #rememberChoice:Landroid/widget/CheckBox;
    .end local v15           #themeContext:Landroid/view/ContextThemeWrapper;
    .end local v16           #themeID:I
    :cond_1
    const v5, 0x1040421

    .restart local v5       #detailsId:I
    goto/16 :goto_1
.end method

.method public handleIccFull()V
    .locals 1

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsStorageMonitor;->handleIccFull()V

    .line 2153
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 537
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 546
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 548
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    .line 549
    const-string v6, "SMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception processing incoming SMS. Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 553
    :cond_1
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/telephony/SmsMessage;

    .line 567
    .local v4, sms:Landroid/telephony/SmsMessage;
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->handleNewSms(Landroid/telephony/SmsMessage;)V

    goto :goto_0

    .line 573
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v4           #sms:Landroid/telephony/SmsMessage;
    :sswitch_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->handleSendComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 577
    :sswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 581
    :sswitch_3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 585
    :sswitch_4
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v8, v6}, Lcom/android/internal/telephony/SMSDispatcher;->handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 589
    :sswitch_5
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v7, v6}, Lcom/android/internal/telephony/SMSDispatcher;->handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 594
    :sswitch_6
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 595
    .local v5, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMultipart()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 596
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 600
    :goto_1
    iget v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    goto :goto_0

    .line 598
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .line 606
    .end local v5           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :sswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 607
    .restart local v5       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_3

    .line 609
    :try_start_0
    iget-object v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    :cond_3
    :goto_2
    iget v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    goto/16 :goto_0

    .line 610
    :catch_0
    move-exception v1

    .line 611
    .local v1, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v6, "SMS"

    const-string v7, "failed to send RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 622
    .end local v1           #ex:Landroid/app/PendingIntent$CanceledException;
    .end local v5           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 623
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Message;

    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v6, v7, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 624
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 628
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_9
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->handleQueryCbActivation(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 632
    :sswitch_a
    const-string v6, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SMS is ready, SIM: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSimId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iput-boolean v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReady:Z

    .line 635
    iget-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReady:Z

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->notifySmsReady(Z)V

    goto/16 :goto_0

    .line 639
    :sswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 640
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 641
    :try_start_1
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_4

    move v6, v7

    :goto_3
    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSuccess:Z

    .line 643
    iget-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSuccess:Z

    if-ne v6, v7, :cond_5

    .line 644
    const-string v6, "SMS"

    const-string v7, "[copyText success to copy one"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->messageCountNeedCopy:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->messageCountNeedCopy:I

    .line 651
    :goto_4
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 652
    monitor-exit v9

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    :cond_4
    move v6, v8

    .line 641
    goto :goto_3

    .line 647
    :cond_5
    :try_start_2
    const-string v6, "SMS"

    const-string v7, "[copyText fail to copy one"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->messageCountNeedCopy:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 656
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_c
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->handleDeductedMessage(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    .line 660
    :sswitch_d
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 662
    .restart local v5       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    if-eqz v5, :cond_6

    .line 664
    :try_start_3
    iget-object v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_6

    .line 665
    iget-object v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/app/PendingIntent;->send(I)V
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_1

    .line 672
    :cond_6
    :goto_5
    sget v6, Lcom/android/internal/telephony/SMSDispatcher;->sConcatMsgCount:I

    if-lez v6, :cond_0

    iget v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    if-lez v6, :cond_0

    .line 673
    sget v6, Lcom/android/internal/telephony/SMSDispatcher;->sConcatMsgCount:I

    add-int/lit8 v6, v6, -0x1

    sput v6, Lcom/android/internal/telephony/SMSDispatcher;->sConcatMsgCount:I

    goto :goto_5

    .line 667
    :catch_1
    move-exception v1

    .line 668
    .restart local v1       #ex:Landroid/app/PendingIntent$CanceledException;
    const-string v6, "SMS"

    const-string v7, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 680
    .end local v1           #ex:Landroid/app/PendingIntent$CanceledException;
    .end local v5           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :sswitch_e
    const-string v6, "SMS"

    const-string v7, "ConcatenatedSmsFwkExt: receive timeout message"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v6, :cond_7

    .line 682
    const-string v6, "SMS"

    const-string v7, "ConcatenatedSmsFwkExt: null TimerRecord in msg"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 686
    :cond_7
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/TimerRecord;

    .line 687
    .local v3, record:Lcom/android/internal/telephony/TimerRecord;
    if-nez v3, :cond_8

    .line 688
    const-string v6, "SMS"

    const-string v7, "ConcatenatedSmsFwkExt: null TimerRecord in msg 2"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 691
    :cond_8
    const-string v6, "SMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ConcatenatedSmsFwkExt: timer is expired, dispatch existed segments. refNumber = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/TimerRecord;->refNumber:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcatenatedSmsFwkExt:Lcom/android/internal/telephony/IConcatenatedSmsFwkExt;

    invoke-interface {v6, v3}, Lcom/android/internal/telephony/IConcatenatedSmsFwkExt;->queryExistedSegments(Lcom/android/internal/telephony/TimerRecord;)[[B

    move-result-object v2

    .line 695
    .local v2, pdus:[[B
    if-eqz v2, :cond_9

    array-length v6, v2

    if-lez v6, :cond_9

    .line 696
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[B)V

    .line 700
    :goto_6
    const-string v6, "SMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ConcatenatedSmsFwkExt: delete segment(s), ref = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/TimerRecord;->refNumber:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcatenatedSmsFwkExt:Lcom/android/internal/telephony/IConcatenatedSmsFwkExt;

    invoke-interface {v6, v3}, Lcom/android/internal/telephony/IConcatenatedSmsFwkExt;->deleteExistedSegments(Lcom/android/internal/telephony/TimerRecord;)V

    goto/16 :goto_0

    .line 698
    :cond_9
    const-string v6, "SMS"

    const-string v7, "ConcatenatedSmsFwkExt: no pdus to be dispatched"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 537
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0x66 -> :sswitch_8
        0x67 -> :sswitch_8
        0x68 -> :sswitch_8
        0x6a -> :sswitch_9
        0x6b -> :sswitch_a
        0x6c -> :sswitch_c
        0x6d -> :sswitch_d
        0x6e -> :sswitch_b
        0xbb9 -> :sswitch_e
    .end sparse-switch
.end method

.method protected handleNewSms(Landroid/telephony/SmsMessage;)V
    .locals 3
    .parameter "sms"

    .prologue
    .line 2772
    if-nez p1, :cond_0

    .line 2773
    const-string v1, "SMS"

    const-string v2, "handleNewSms: null sms"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    :goto_0
    return-void

    .line 2777
    :cond_0
    const-string v1, "SMS"

    const-string v2, "handleNewSms: handle new sms in a new thread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$3;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$3;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Landroid/telephony/SmsMessage;)V

    .line 2794
    .local v0, smsHandleThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected handleQueryCbActivation(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 2161
    const-string v0, "SMS"

    const-string v1, "didn\'t support cellBoradcast in the CDMA phone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    return-void
.end method

.method protected handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 8
    .parameter "tracker"

    .prologue
    .line 1773
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1796
    :goto_0
    return-void

    .line 1777
    :cond_0
    iget-object v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SMSDispatcher;->getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1778
    .local v0, appLabel:Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 1779
    .local v4, r:Landroid/content/res/Resources;
    const v5, 0x104041d

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 1781
    .local v3, messageText:Landroid/text/Spanned;
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    const/4 v5, 0x0

    invoke-direct {v2, p0, p1, v5}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/widget/TextView;)V

    .line 1784
    .local v2, listener:Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const v7, 0x3060061

    invoke-direct {v5, v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v6, 0x104041c

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x108008a

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104041e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104041f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1794
    .local v1, d:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1795
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected handleSendComplete(Landroid/os/AsyncResult;)V
    .locals 22
    .parameter "ar"

    .prologue
    .line 774
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 775
    .local v17, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 778
    .local v11, sentIntent:Landroid/app/PendingIntent;
    const/4 v14, 0x0

    .line 779
    .local v14, szPdu:I
    if-eqz v17, :cond_0

    .line 780
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 781
    .local v6, map:Ljava/util/HashMap;
    if-eqz v6, :cond_0

    .line 782
    const-string v18, "smsc"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_5

    const/4 v12, 0x0

    .line 783
    .local v12, smscLength:I
    :goto_0
    const-string v18, "pdu"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_6

    const/4 v8, 0x0

    .line 784
    .local v8, pduLength:I
    :goto_1
    add-int v14, v12, v8

    .line 787
    .end local v6           #map:Ljava/util/HashMap;
    .end local v8           #pduLength:I
    .end local v12           #smscLength:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 789
    :try_start_0
    const-string v18, "SMS"

    const-string v20, "Remove Tracker"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v16, v18

    .line 791
    .local v16, tempTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_2
    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 792
    const-string v18, "SMS"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[pdu size: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_2

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 798
    .local v10, sendtracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 800
    .end local v10           #sendtracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_a

    .line 809
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 811
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/SmsResponse;

    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/internal/telephony/SmsResponse;->messageRef:I

    .line 812
    .local v7, messageRef:I
    move-object/from16 v0, v17

    iput v7, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    .end local v7           #messageRef:I
    :cond_3
    if-eqz v11, :cond_9

    .line 818
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    .line 819
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 822
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    move/from16 v18, v0

    if-nez v18, :cond_8

    .line 823
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 824
    .local v9, sendNext:Landroid/content/Intent;
    const-string v18, "SendNextMsg"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 825
    sget-object v18, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SIZE:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1, v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    .line 923
    .end local v9           #sendNext:Landroid/content/Intent;
    :goto_3
    return-void

    .line 782
    .end local v16           #tempTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .restart local v6       #map:Ljava/util/HashMap;
    :cond_5
    const-string v18, "smsc"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    check-cast v18, [B

    move-object/from16 v0, v18

    array-length v12, v0

    goto/16 :goto_0

    .line 783
    .restart local v12       #smscLength:I
    :cond_6
    const-string v18, "pdu"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    check-cast v18, [B

    move-object/from16 v0, v18

    array-length v8, v0

    goto/16 :goto_1

    .line 790
    .end local v6           #map:Ljava/util/HashMap;
    .end local v12           #smscLength:I
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 800
    :catchall_0
    move-exception v18

    :try_start_2
    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v18

    .line 829
    .restart local v16       #tempTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_8
    :try_start_3
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 830
    .local v4, fillIn:Landroid/content/Intent;
    sget-object v18, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SIZE:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 833
    .end local v4           #fillIn:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 835
    .local v3, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v18, "SMS"

    const-string v19, "CanceledException happened when send sms success with sentIntent"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 840
    .end local v3           #ex:Landroid/app/PendingIntent$CanceledException;
    :cond_9
    const-string v18, "SMS"

    const-string v19, "Send sms success without sentIntent"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 844
    :cond_a
    const-string v18, "SMS"

    const-string v19, "SMS send failed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const/4 v5, 0x0

    .line 850
    .local v5, isTestIccCard:Z
    :try_start_4
    const-string v18, "phone"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v15

    .line 852
    .local v15, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v15, :cond_b

    .line 853
    invoke-interface {v15}, Lcom/android/internal/telephony/ITelephony;->isTestIccCard()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v5

    .line 863
    .end local v15           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_b
    :goto_4
    const-string v18, "SMS"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SD-handleSendComplete: SIM"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSimId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " isTestIccCard "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    .line 869
    .local v13, ss:I
    if-eqz v13, :cond_c

    .line 870
    const-string v18, "SMS"

    const-string v19, "handleSendComplete: No service"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    goto/16 :goto_3

    .line 855
    .end local v13           #ss:I
    :catch_1
    move-exception v3

    .line 857
    .local v3, ex:Landroid/os/RemoteException;
    const-string v18, "SMS"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SD-handleSendComplete: RemoteException: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 858
    .end local v3           #ex:Landroid/os/RemoteException;
    :catch_2
    move-exception v3

    .line 860
    .local v3, ex:Ljava/lang/NullPointerException;
    const-string v18, "SMS"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SD-handleSendComplete: NullPointerException: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 888
    .end local v3           #ex:Ljava/lang/NullPointerException;
    .restart local v13       #ss:I
    :cond_c
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    .line 889
    const/4 v2, 0x1

    .line 891
    .local v2, error:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/CommandException;

    check-cast v18, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 893
    const/4 v2, 0x6

    .line 897
    :cond_d
    :try_start_5
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 899
    .restart local v4       #fillIn:Landroid/content/Intent;
    sget-object v18, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SIZE:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 900
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    .line 901
    const-string v19, "errorCode"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/SmsResponse;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    move/from16 v18, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 903
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_f

    .line 904
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 907
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    move/from16 v18, v0

    if-nez v18, :cond_10

    .line 908
    const-string v18, "SendNextMsg"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 911
    :cond_10
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3

    .line 912
    .end local v4           #fillIn:Landroid/content/Intent;
    :catch_3
    move-exception v3

    .line 914
    .local v3, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v18, "SMS"

    const-string v19, "CanceledException happened when send sms fail with sentIntent"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 919
    .end local v2           #error:I
    .end local v3           #ex:Landroid/app/PendingIntent$CanceledException;
    :cond_11
    const-string v18, "SMS"

    const-string v19, "Send sms fail without sentIntent"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method protected isSmsReady()Z
    .locals 1

    .prologue
    .line 2640
    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReady:Z

    return v0
.end method

.method protected processMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;)I
    .locals 24
    .parameter "sms"
    .parameter "concatRef"
    .parameter "portAddrs"

    .prologue
    .line 2185
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v2, "reference_number ="

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2186
    .local v23, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2187
    const-string v2, " AND address = ?"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND sim_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2189
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 2191
    .local v6, whereArgs:[Ljava/lang/String;
    const/16 v20, 0x0

    check-cast v20, [[B

    .line 2192
    .local v20, pdus:[[B
    const/4 v9, 0x0

    .line 2194
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 2195
    if-nez v9, :cond_1

    .line 2196
    const/4 v2, 0x2

    .line 2251
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2359
    :cond_0
    :goto_0
    return v2

    .line 2198
    :cond_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 2201
    .local v10, cursorCount:I
    const-string v2, "pdu"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 2202
    .local v19, pduColumn:I
    const-string v2, "sequence"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 2206
    .local v21, sequenceColumn:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    if-ge v14, v10, :cond_3

    .line 2207
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 2208
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v11, v2

    .line 2209
    .local v11, cursorSequence:I
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-ne v11, v2, :cond_2

    .line 2210
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received Duplicate segment: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2211
    const/4 v2, 0x1

    .line 2251
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2206
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2214
    .end local v11           #cursorSequence:I
    :cond_3
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2216
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    add-int/lit8 v2, v2, -0x1

    if-eq v10, v2, :cond_5

    .line 2218
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 2219
    .local v22, values:Landroid/content/ContentValues;
    const-string v2, "date"

    new-instance v3, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2220
    const-string v2, "pdu"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    const-string v2, "address"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    const-string v2, "reference_number"

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2223
    const-string v2, "count"

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2224
    const-string v2, "sequence"

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2225
    const-string v2, "sim_id"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSimId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2226
    if-eqz p3, :cond_4

    .line 2227
    const-string v2, "destination_port"

    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2229
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2230
    const/4 v2, 0x1

    .line 2251
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2233
    .end local v22           #values:Landroid/content/ContentValues;
    :cond_5
    :try_start_3
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    new-array v0, v2, [[B

    move-object/from16 v20, v0

    .line 2234
    const/4 v14, 0x0

    :goto_2
    if-ge v14, v10, :cond_6

    .line 2236
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v11, v2

    .line 2237
    .restart local v11       #cursorSequence:I
    add-int/lit8 v2, v11, -0x1

    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v20, v2

    .line 2239
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 2234
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 2242
    .end local v11           #cursorSequence:I
    :cond_6
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    aput-object v3, v20, v2

    .line 2245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2251
    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2264
    :cond_7
    if-eqz p3, :cond_11

    .line 2281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPushFwkExt:Lcom/mediatek/common/sms/IWapPushFwkExt;

    invoke-interface {v2}, Lcom/mediatek/common/sms/IWapPushFwkExt;->allowDispatchWapPush()Z

    move-result v8

    .line 2282
    .local v8, allowDispatch:Z
    if-nez v8, :cond_b

    .line 2283
    new-instance v18, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2284
    .local v18, output:Ljava/io/ByteArrayOutputStream;
    const/4 v14, 0x0

    :goto_3
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-ge v14, v2, :cond_a

    .line 2285
    aget-object v2, v20, v14

    invoke-static {v2}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v17

    .line 2286
    .local v17, msg:Landroid/telephony/SmsMessage;
    if-eqz v17, :cond_8

    .line 2287
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v12

    .line 2288
    .local v12, data:[B
    const/4 v2, 0x0

    array-length v3, v12

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2284
    .end local v12           #data:[B
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 2246
    .end local v8           #allowDispatch:Z
    .end local v10           #cursorCount:I
    .end local v14           #i:I
    .end local v17           #msg:Landroid/telephony/SmsMessage;
    .end local v18           #output:Ljava/io/ByteArrayOutputStream;
    .end local v19           #pduColumn:I
    .end local v21           #sequenceColumn:I
    :catch_0
    move-exception v13

    .line 2247
    .local v13, e:Landroid/database/SQLException;
    :try_start_4
    const-string v2, "SMS"

    const-string v3, "Can\'t access multipart SMS database"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2249
    const/4 v2, 0x2

    .line 2251
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v13           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_9

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2

    .line 2292
    .restart local v8       #allowDispatch:Z
    .restart local v10       #cursorCount:I
    .restart local v14       #i:I
    .restart local v18       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #pduColumn:I
    .restart local v21       #sequenceColumn:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPushFwkExt:Lcom/mediatek/common/sms/IWapPushFwkExt;

    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mediatek/common/sms/IWapPushFwkExt;->isMmsWapPush([B)Z

    move-result v15

    .line 2293
    .local v15, isMms:Z
    if-nez v15, :cond_b

    .line 2294
    const-string v2, "SMS"

    const-string v3, "don\'t dispatch push message"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2298
    .end local v15           #isMms:Z
    .end local v18           #output:Ljava/io/ByteArrayOutputStream;
    :cond_b
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v3, 0xb84

    if-ne v2, v3, :cond_e

    .line 2299
    new-instance v18, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2303
    .restart local v18       #output:Ljava/io/ByteArrayOutputStream;
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 2304
    .local v16, mBundle:Landroid/os/Bundle;
    const/4 v2, 0x0

    aget-object v2, v20, v2

    invoke-static {v2}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v17

    .line 2305
    .restart local v17       #msg:Landroid/telephony/SmsMessage;
    if-eqz v17, :cond_f

    .line 2306
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v12

    .line 2307
    .restart local v12       #data:[B
    const/4 v2, 0x0

    array-length v3, v12

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2309
    const-string v2, "address"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2310
    const-string v2, "service_center"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2312
    const/4 v14, 0x1

    :goto_4
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-ge v14, v2, :cond_d

    .line 2313
    aget-object v2, v20, v14

    invoke-static {v2}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v17

    .line 2314
    if-eqz v17, :cond_c

    .line 2315
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v12

    .line 2316
    const/4 v2, 0x0

    array-length v3, v12

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2312
    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 2320
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/os/Bundle;)I

    move-result v2

    goto/16 :goto_0

    .line 2335
    .end local v12           #data:[B
    .end local v16           #mBundle:Landroid/os/Bundle;
    .end local v17           #msg:Landroid/telephony/SmsMessage;
    .end local v18           #output:Ljava/io/ByteArrayOutputStream;
    :cond_e
    const/4 v2, 0x0

    aget-object v2, v20, v2

    invoke-static {v2}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v17

    .line 2337
    .restart local v17       #msg:Landroid/telephony/SmsMessage;
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v3, 0x4266

    if-ne v2, v3, :cond_10

    if-eqz v17, :cond_10

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "10654040"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2342
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchDmRegisterPdus([[B)V

    .line 2359
    .end local v8           #allowDispatch:Z
    :cond_f
    :goto_5
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 2345
    .restart local v8       #allowDispatch:Z
    :cond_10
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    goto :goto_5

    .line 2352
    .end local v8           #allowDispatch:Z
    .end local v17           #msg:Landroid/telephony/SmsMessage;
    :cond_11
    const/4 v2, 0x0

    aget-object v2, v20, v2

    invoke-static {v2}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v17

    .line 2353
    .restart local v17       #msg:Landroid/telephony/SmsMessage;
    if-eqz v17, :cond_12

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    .line 2354
    const-string v2, "SMS"

    const-string v3, " We discard SMS with dcs 8 bit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    const/4 v2, 0x2

    goto/16 :goto_0

    .line 2357
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[B)V

    goto :goto_5
.end method

.method protected processMessagePart([BLjava/lang/String;IIIJIZ)I
    .locals 36
    .parameter "pdu"
    .parameter "address"
    .parameter "referenceNumber"
    .parameter "sequenceNumber"
    .parameter "messageCount"
    .parameter "timestamp"
    .parameter "destPort"
    .parameter "isCdmaWapPush"

    .prologue
    .line 1065
    const/16 v29, 0x0

    check-cast v29, [[B

    .line 1066
    .local v29, pdus:[[B
    const/4 v11, 0x0

    .line 1069
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    .line 1070
    .local v31, refNumber:Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    .line 1071
    .local v32, seqNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSimId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    .line 1074
    .local v33, simId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/internal/telephony/SMSDispatcher;->PDU_PROJECTION:[Ljava/lang/String;

    const-string v7, "address=? AND reference_number=? AND sequence=? AND sim_id=?"

    const/4 v9, 0x4

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    aput-object v31, v8, v9

    const/4 v9, 0x2

    aput-object v32, v8, v9

    const/4 v9, 0x3

    aput-object v33, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1079
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1080
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discarding duplicate message segment from address="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " refNumber="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " seqNumber="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1083
    .local v27, oldPduString:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v26

    .line 1084
    .local v26, oldPdu:[B
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1085
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Warning: dup message segment PDU of length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is different from existing PDU of length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    :cond_0
    const/4 v4, 0x1

    .line 1197
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1276
    .end local v26           #oldPdu:[B
    .end local v27           #oldPduString:Ljava/lang/String;
    .end local v31           #refNumber:Ljava/lang/String;
    .end local v32           #seqNumber:Ljava/lang/String;
    .end local v33           #simId:Ljava/lang/String;
    :cond_1
    :goto_0
    return v4

    .line 1090
    .restart local v31       #refNumber:Ljava/lang/String;
    .restart local v32       #seqNumber:Ljava/lang/String;
    .restart local v33       #simId:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1093
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mConcatenatedSmsFwkExt:Lcom/android/internal/telephony/IConcatenatedSmsFwkExt;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v4, v0, v1}, Lcom/android/internal/telephony/IConcatenatedSmsFwkExt;->isFirstConcatenatedSegment(Ljava/lang/String;I)Z

    move-result v20

    .line 1094
    .local v20, isFirstSegment:Z
    if-nez p9, :cond_4

    const/4 v4, 0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_4

    .line 1095
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConcatenatedSmsFwkExt: the first segment, ref = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    const-string v4, "SMS"

    const-string v5, "ConcatenatedSmsFwkExt: start a new timer"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    new-instance v30, Lcom/android/internal/telephony/TimerRecord;

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/TimerRecord;-><init>(Ljava/lang/String;II)V

    .line 1098
    .local v30, record:Lcom/android/internal/telephony/TimerRecord;
    if-nez v30, :cond_3

    .line 1099
    const-string v4, "SMS"

    const-string v5, "ConcatenatedSmsFwkExt: fail to new TimerRecord to start timer"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mConcatenatedSmsFwkExt:Lcom/android/internal/telephony/IConcatenatedSmsFwkExt;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v4, v0, v1}, Lcom/android/internal/telephony/IConcatenatedSmsFwkExt;->startTimer(Landroid/os/Handler;Ljava/lang/Object;)V

    .line 1107
    .end local v30           #record:Lcom/android/internal/telephony/TimerRecord;
    :cond_4
    const-string v7, "address=? AND reference_number=? AND sim_id=?"

    .line 1108
    .local v7, where:Ljava/lang/String;
    const/4 v4, 0x3

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v8, v4

    const/4 v4, 0x1

    aput-object v31, v8, v4

    const/4 v4, 0x2

    aput-object v33, v8, v4

    .line 1110
    .local v8, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1112
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 1113
    .local v12, cursorCount:I
    add-int/lit8 v4, p5, -0x1

    if-eq v12, v4, :cond_7

    .line 1114
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConcatenatedSmsFwkExt: refresh timer, ref = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mConcatenatedSmsFwkExt:Lcom/android/internal/telephony/IConcatenatedSmsFwkExt;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v4, v0, v1}, Lcom/android/internal/telephony/IConcatenatedSmsFwkExt;->queryTimerRecord(Ljava/lang/String;I)Lcom/android/internal/telephony/TimerRecord;

    move-result-object v30

    .line 1116
    .restart local v30       #record:Lcom/android/internal/telephony/TimerRecord;
    if-nez v30, :cond_5

    .line 1117
    const-string v4, "SMS"

    const-string v5, "ConcatenatedSmsFwkExt: fail to get TimerRecord to refresh timer"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mConcatenatedSmsFwkExt:Lcom/android/internal/telephony/IConcatenatedSmsFwkExt;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v4, v0, v1}, Lcom/android/internal/telephony/IConcatenatedSmsFwkExt;->refreshTimer(Landroid/os/Handler;Ljava/lang/Object;)V

    .line 1122
    new-instance v35, Landroid/content/ContentValues;

    invoke-direct/range {v35 .. v35}, Landroid/content/ContentValues;-><init>()V

    .line 1123
    .local v35, values:Landroid/content/ContentValues;
    const-string v4, "date"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1124
    const-string v4, "pdu"

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    const-string v4, "address"

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    const-string v4, "reference_number"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1127
    const-string v4, "count"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1128
    const-string v4, "sequence"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1129
    const-string v4, "sim_id"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSimId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1130
    const/4 v4, -0x1

    move/from16 v0, p8

    if-eq v0, v4, :cond_6

    .line 1131
    const-string v4, "destination_port"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1133
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v35

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1134
    const/4 v4, 0x1

    .line 1197
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1138
    .end local v30           #record:Lcom/android/internal/telephony/TimerRecord;
    .end local v35           #values:Landroid/content/ContentValues;
    :cond_7
    :try_start_2
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConcatenatedSmsFwkExt: cancel timer, ref = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mConcatenatedSmsFwkExt:Lcom/android/internal/telephony/IConcatenatedSmsFwkExt;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v4, v0, v1}, Lcom/android/internal/telephony/IConcatenatedSmsFwkExt;->queryTimerRecord(Ljava/lang/String;I)Lcom/android/internal/telephony/TimerRecord;

    move-result-object v30

    .line 1140
    .restart local v30       #record:Lcom/android/internal/telephony/TimerRecord;
    if-nez v30, :cond_8

    .line 1141
    const-string v4, "SMS"

    const-string v5, "ConcatenatedSmsFwkExt: fail to get TimerRecord to cancel timer"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mConcatenatedSmsFwkExt:Lcom/android/internal/telephony/IConcatenatedSmsFwkExt;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v4, v0, v1}, Lcom/android/internal/telephony/IConcatenatedSmsFwkExt;->cancelTimer(Landroid/os/Handler;Ljava/lang/Object;)V

    .line 1146
    move/from16 v0, p5

    new-array v0, v0, [[B

    move-object/from16 v29, v0

    .line 1147
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move/from16 v0, v17

    if-ge v0, v12, :cond_b

    .line 1148
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 1149
    const/4 v4, 0x1

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1151
    .local v13, cursorSequence:I
    if-nez p9, :cond_9

    .line 1152
    add-int/lit8 v13, v13, -0x1

    .line 1154
    :cond_9
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v29, v13

    .line 1159
    if-nez v13, :cond_a

    const/4 v4, 0x2

    invoke-interface {v11, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1160
    const/4 v4, 0x2

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p8

    .line 1147
    :cond_a
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 1165
    .end local v13           #cursorSequence:I
    :cond_b
    if-eqz p9, :cond_e

    .line 1166
    aput-object p1, v29, p4

    .line 1173
    :goto_2
    const/16 v25, 0x0

    .line 1174
    .local v25, nullPduNum:I
    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    move/from16 v1, p5

    if-ge v0, v1, :cond_f

    .line 1175
    aget-object v4, v29, v17

    if-eqz v4, :cond_c

    aget-object v4, v29, v17

    array-length v4, v4

    if-nez v4, :cond_d

    .line 1176
    :cond_c
    add-int/lit8 v25, v25, 0x1

    .line 1174
    :cond_d
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 1168
    .end local v25           #nullPduNum:I
    :cond_e
    add-int/lit8 v4, p4, -0x1

    aput-object p1, v29, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1193
    .end local v7           #where:Ljava/lang/String;
    .end local v8           #whereArgs:[Ljava/lang/String;
    .end local v12           #cursorCount:I
    .end local v17           #i:I
    .end local v20           #isFirstSegment:Z
    .end local v30           #record:Lcom/android/internal/telephony/TimerRecord;
    .end local v31           #refNumber:Ljava/lang/String;
    .end local v32           #seqNumber:Ljava/lang/String;
    .end local v33           #simId:Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 1194
    .local v16, e:Landroid/database/SQLException;
    :try_start_3
    const-string v4, "SMS"

    const-string v5, "Can\'t access multipart SMS database"

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1195
    const/4 v4, 0x2

    .line 1197
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1179
    .end local v16           #e:Landroid/database/SQLException;
    .restart local v7       #where:Ljava/lang/String;
    .restart local v8       #whereArgs:[Ljava/lang/String;
    .restart local v12       #cursorCount:I
    .restart local v17       #i:I
    .restart local v20       #isFirstSegment:Z
    .restart local v25       #nullPduNum:I
    .restart local v30       #record:Lcom/android/internal/telephony/TimerRecord;
    .restart local v31       #refNumber:Ljava/lang/String;
    .restart local v32       #seqNumber:Ljava/lang/String;
    .restart local v33       #simId:Ljava/lang/String;
    :cond_f
    if-eqz v25, :cond_11

    .line 1180
    sub-int v4, p5, v25

    :try_start_4
    new-array v0, v4, [[B

    move-object/from16 v24, v0

    .line 1181
    .local v24, newPdus:[[B
    const/16 v18, 0x0

    .line 1182
    .local v18, index:I
    const/16 v17, 0x0

    move/from16 v19, v18

    .end local v18           #index:I
    .local v19, index:I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, p5

    if-ge v0, v1, :cond_10

    .line 1183
    aget-object v4, v29, v17

    if-eqz v4, :cond_1d

    aget-object v4, v29, v17

    array-length v4, v4

    if-lez v4, :cond_1d

    .line 1184
    add-int/lit8 v18, v19, 0x1

    .end local v19           #index:I
    .restart local v18       #index:I
    aget-object v4, v29, v17

    aput-object v4, v24, v19

    .line 1182
    :goto_5
    add-int/lit8 v17, v17, 0x1

    move/from16 v19, v18

    .end local v18           #index:I
    .restart local v19       #index:I
    goto :goto_4

    .line 1187
    :cond_10
    move-object/from16 v29, v24

    .line 1192
    .end local v19           #index:I
    .end local v24           #newPdus:[[B
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1197
    if-eqz v11, :cond_12

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1201
    :cond_12
    if-eqz p9, :cond_16

    .line 1203
    new-instance v28, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v28 .. v28}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1204
    .local v28, output:Ljava/io/ByteArrayOutputStream;
    const/16 v17, 0x0

    :goto_6
    move/from16 v0, v17

    move/from16 v1, p5

    if-ge v0, v1, :cond_14

    .line 1206
    aget-object v4, v29, v17

    const/4 v5, 0x0

    aget-object v6, v29, v17

    array-length v6, v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1204
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 1197
    .end local v7           #where:Ljava/lang/String;
    .end local v8           #whereArgs:[Ljava/lang/String;
    .end local v12           #cursorCount:I
    .end local v17           #i:I
    .end local v20           #isFirstSegment:Z
    .end local v25           #nullPduNum:I
    .end local v28           #output:Ljava/io/ByteArrayOutputStream;
    .end local v30           #record:Lcom/android/internal/telephony/TimerRecord;
    .end local v31           #refNumber:Ljava/lang/String;
    .end local v32           #seqNumber:Ljava/lang/String;
    .end local v33           #simId:Ljava/lang/String;
    :catchall_0
    move-exception v4

    if-eqz v11, :cond_13

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v4

    .line 1208
    .restart local v7       #where:Ljava/lang/String;
    .restart local v8       #whereArgs:[Ljava/lang/String;
    .restart local v12       #cursorCount:I
    .restart local v17       #i:I
    .restart local v20       #isFirstSegment:Z
    .restart local v25       #nullPduNum:I
    .restart local v28       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v30       #record:Lcom/android/internal/telephony/TimerRecord;
    .restart local v31       #refNumber:Ljava/lang/String;
    .restart local v32       #seqNumber:Ljava/lang/String;
    .restart local v33       #simId:Ljava/lang/String;
    :cond_14
    invoke-virtual/range {v28 .. v28}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    .line 1211
    .local v15, datagram:[B
    const/16 v4, 0xb84

    move/from16 v0, p8

    if-ne v0, v4, :cond_15

    .line 1213
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v4, v15}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v4

    goto/16 :goto_0

    .line 1215
    :cond_15
    const/4 v4, 0x1

    new-array v0, v4, [[B

    move-object/from16 v29, v0

    .line 1216
    const/4 v4, 0x0

    aput-object v15, v29, v4

    .line 1218
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 1219
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 1224
    .end local v15           #datagram:[B
    .end local v28           #output:Ljava/io/ByteArrayOutputStream;
    :cond_16
    const/4 v4, -0x1

    move/from16 v0, p8

    if-eq v0, v4, :cond_1c

    .line 1225
    const/16 v4, 0xb84

    move/from16 v0, p8

    if-ne v0, v4, :cond_1b

    .line 1227
    new-instance v28, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v28 .. v28}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1228
    .restart local v28       #output:Ljava/io/ByteArrayOutputStream;
    const/16 v17, 0x0

    :goto_7
    move/from16 v0, v17

    move/from16 v1, p5

    if-ge v0, v1, :cond_18

    .line 1229
    aget-object v4, v29, v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v23

    .line 1230
    .local v23, msg:Landroid/telephony/SmsMessage;
    if-eqz v23, :cond_17

    .line 1231
    invoke-virtual/range {v23 .. v23}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v14

    .line 1232
    .local v14, data:[B
    const/4 v4, 0x0

    array-length v5, v14

    move-object/from16 v0, v28

    invoke-virtual {v0, v14, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1228
    .end local v14           #data:[B
    :cond_17
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 1245
    .end local v23           #msg:Landroid/telephony/SmsMessage;
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPushFwkExt:Lcom/mediatek/common/sms/IWapPushFwkExt;

    invoke-interface {v4}, Lcom/mediatek/common/sms/IWapPushFwkExt;->allowDispatchWapPush()Z

    move-result v10

    .line 1246
    .local v10, allowDispatch:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPushFwkExt:Lcom/mediatek/common/sms/IWapPushFwkExt;

    invoke-virtual/range {v28 .. v28}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/mediatek/common/sms/IWapPushFwkExt;->isMmsWapPush([B)Z

    move-result v21

    .line 1247
    .local v21, isMms:Z
    if-nez v10, :cond_19

    if-nez v21, :cond_19

    .line 1248
    const-string v4, "SMS"

    const-string v5, "don\'t dispatch push message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1255
    :cond_19
    const-string v4, "SMS"

    const-string v5, "2 - dispatch wap push pdu with addr & sc addr"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    const/4 v4, 0x0

    aget-object v4, v29, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v34

    .line 1257
    .local v34, sms:Landroid/telephony/SmsMessage;
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 1258
    .local v22, mBundle:Landroid/os/Bundle;
    if-eqz v34, :cond_1a

    .line 1259
    const-string v4, "address"

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    const-string v4, "service_center"

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v28 .. v28}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/os/Bundle;)I

    move-result v4

    goto/16 :goto_0

    .line 1270
    .end local v10           #allowDispatch:Z
    .end local v21           #isMms:Z
    .end local v22           #mBundle:Landroid/os/Bundle;
    .end local v28           #output:Ljava/io/ByteArrayOutputStream;
    .end local v34           #sms:Landroid/telephony/SmsMessage;
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 1276
    :goto_8
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 1274
    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[B)V

    goto :goto_8

    .restart local v19       #index:I
    .restart local v24       #newPdus:[[B
    :cond_1d
    move/from16 v18, v19

    .end local v19           #index:I
    .restart local v18       #index:I
    goto/16 :goto_5
.end method

.method protected abstract sendData(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected abstract sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected abstract sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 16
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1408
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getNextConcatenatedRef()I

    move-result v1

    and-int/lit16 v15, v1, 0xff

    .line 1409
    .local v15, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1410
    .local v14, msgCount:I
    const/4 v6, 0x0

    .line 1412
    .local v6, encoding:I
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 1414
    new-array v12, v14, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 1415
    .local v12, encodingForParts:[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v14, :cond_2

    .line 1416
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v11

    .line 1417
    .local v11, details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v1, v11, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v6, v1, :cond_1

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    if-ne v6, v1, :cond_1

    .line 1420
    :cond_0
    iget v6, v11, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1422
    :cond_1
    aput-object v11, v12, v13

    .line 1415
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1425
    .end local v11           #details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_2
    const/4 v13, 0x0

    :goto_1
    if-ge v13, v14, :cond_7

    .line 1426
    new-instance v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v10}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 1427
    .local v10, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v15, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 1428
    add-int/lit8 v1, v13, 0x1

    iput v1, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 1429
    iput v14, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 1436
    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 1437
    new-instance v5, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1438
    .local v5, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v10, v5, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 1441
    const/4 v1, 0x1

    if-ne v6, v1, :cond_3

    .line 1442
    aget-object v1, v12, v13

    iget v1, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iput v1, v5, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 1443
    aget-object v1, v12, v13

    iget v1, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    iput v1, v5, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 1446
    :cond_3
    const/4 v7, 0x0

    .line 1447
    .local v7, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v13, :cond_4

    .line 1448
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #sentIntent:Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 1451
    .restart local v7       #sentIntent:Landroid/app/PendingIntent;
    :cond_4
    const/4 v8, 0x0

    .line 1452
    .local v8, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v13, :cond_5

    .line 1453
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 1456
    .restart local v8       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v1, v14, -0x1

    if-ne v13, v1, :cond_6

    const/4 v9, 0x1

    :goto_2
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/SMSDispatcher;->sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 1425
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1456
    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 1460
    .end local v5           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v7           #sentIntent:Landroid/app/PendingIntent;
    .end local v8           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v10           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_7
    return-void
.end method

.method protected abstract sendMultipartTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendMultipartTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
.end method

.method protected sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 22
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "destAddr"

    .prologue
    .line 1493
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    if-eqz v4, :cond_2

    .line 1494
    if-eqz p3, :cond_0

    .line 1496
    const/4 v4, 0x4

    :try_start_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1499
    :cond_0
    :goto_0
    const-string v4, "SMS"

    const-string v5, "Device does not support sending sms."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    :cond_1
    :goto_1
    return-void

    .line 1503
    :cond_2
    if-nez p2, :cond_3

    .line 1504
    if-eqz p3, :cond_1

    .line 1506
    const/4 v4, 0x3

    :try_start_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1507
    :catch_0
    move-exception v4

    goto :goto_1

    .line 1512
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1513
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "smsc"

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    const-string v4, "pdu"

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 1518
    .local v17, pm:Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v16

    .line 1520
    .local v16, packageNames:[Ljava/lang/String;
    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    array-length v4, v0

    if-nez v4, :cond_5

    .line 1522
    :cond_4
    const-string v4, "SMS"

    const-string v5, "Can\'t get calling app package name: refusing to send SMS"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    if-eqz p3, :cond_1

    .line 1525
    const/4 v4, 0x1

    :try_start_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1526
    :catch_1
    move-exception v12

    .line 1527
    .local v12, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v4, "SMS"

    const-string v5, "failed to send error result"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1539
    .end local v12           #ex:Landroid/app/PendingIntent$CanceledException;
    :cond_5
    move-object/from16 v0, v16

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_7

    .line 1541
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 1543
    .local v10, callingPid:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    .line 1544
    .local v8, am:Landroid/app/ActivityManager;
    invoke-virtual {v8}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v19

    .line 1545
    .local v19, processList:Ljava/util/List;
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 1546
    .local v13, index:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1548
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v18, v4

    check-cast v18, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1549
    .local v18, processInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, v18

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v10, v4, :cond_6

    .line 1551
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    aput-object v5, v16, v4

    .line 1559
    .end local v8           #am:Landroid/app/ActivityManager;
    .end local v10           #callingPid:I
    .end local v13           #index:Ljava/util/Iterator;
    .end local v18           #processInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v19           #processList:Ljava/util/List;
    :cond_7
    const/4 v6, 0x0

    .line 1562
    .local v6, appInfo:Landroid/content/pm/PackageInfo;
    const/4 v4, 0x0

    :try_start_3
    aget-object v4, v16, v4

    const/16 v5, 0x40

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v6

    .line 1577
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-static/range {p5 .. p5}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    .line 1583
    .local v2, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->checkDestination(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1585
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v5, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v7}, Lcom/android/internal/telephony/SmsUsageMonitor;->check(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1586
    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1563
    .end local v2           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :catch_2
    move-exception v11

    .line 1564
    .local v11, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "SMS"

    const-string v5, "Can\'t get calling app package info: refusing to send SMS"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    if-eqz p3, :cond_1

    .line 1567
    const/4 v4, 0x1

    :try_start_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_4
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 1568
    :catch_3
    move-exception v12

    .line 1569
    .restart local v12       #ex:Landroid/app/PendingIntent$CanceledException;
    const-string v4, "SMS"

    const-string v5, "failed to send error result"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1590
    .end local v11           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12           #ex:Landroid/app/PendingIntent$CanceledException;
    .restart local v2       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v21

    .line 1592
    .local v21, ss:I
    if-eqz v21, :cond_9

    .line 1593
    iget-object v4, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 1595
    :cond_9
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v9

    .line 1598
    .local v9, appName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/telephony/SMSDispatcher;->createMessageFromSubmitPdu([B[B)Landroid/telephony/SmsMessage;

    move-result-object v14

    .line 1599
    .local v14, msg:Landroid/telephony/SmsMessage;
    if-eqz v14, :cond_10

    .line 1600
    invoke-virtual {v14}, Landroid/telephony/SmsMessage;->getDestinationAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/internal/telephony/SMSDispatcher;->checkSmsWithNqFilter(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v20

    .line 1601
    .local v20, ret:Z
    if-nez v20, :cond_b

    .line 1602
    const-string v4, "SMS"

    const-string v5, "[NQ this message is safe"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    const/4 v5, 0x1

    invoke-virtual {v4, v9, v5}, Lcom/android/internal/telephony/SmsUsageMonitor;->check(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1604
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_1

    .line 1606
    :cond_a
    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1609
    :cond_b
    const-string v4, "SMS"

    const-string v5, "[NQ this message may deduct fees"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    const/4 v15, 0x0

    .line 1612
    .local v15, newConcatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    invoke-virtual {v14}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 1613
    invoke-virtual {v14}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v4

    iget-object v15, v4, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 1616
    :cond_c
    if-eqz v15, :cond_f

    .line 1617
    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->sConcatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-eqz v4, :cond_d

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->sConcatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v4, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    iget v5, v15, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    if-eq v4, v5, :cond_e

    .line 1618
    :cond_d
    const-string v4, "SMS"

    const-string v5, "[NQ this is a new concatenated message, just update"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    sput-object v15, Lcom/android/internal/telephony/SMSDispatcher;->sConcatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 1621
    const/16 v4, 0x6c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1623
    :cond_e
    const-string v4, "SMS"

    const-string v5, "[NQ this is the same concatenated message, keep previous operation"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->sConcatMsgCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/internal/telephony/SMSDispatcher;->sConcatMsgCount:I

    goto/16 :goto_1

    .line 1628
    :cond_f
    const-string v4, "SMS"

    const-string v5, "[NQ this is a non-concatenated message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    const/16 v4, 0x6c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1634
    .end local v15           #newConcatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v20           #ret:Z
    :cond_10
    const-string v4, "SMS"

    const-string v5, "[NQ fail to create message from pdu"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    const/4 v5, 0x1

    invoke-virtual {v4, v9, v5}, Lcom/android/internal/telephony/SmsUsageMonitor;->check(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1636
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_1

    .line 1638
    :cond_11
    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1497
    .end local v2           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v3           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6           #appInfo:Landroid/content/pm/PackageInfo;
    .end local v9           #appName:Ljava/lang/String;
    .end local v14           #msg:Landroid/telephony/SmsMessage;
    .end local v16           #packageNames:[Ljava/lang/String;
    .end local v17           #pm:Landroid/content/pm/PackageManager;
    .end local v21           #ss:I
    :catch_4
    move-exception v4

    goto/16 :goto_0
.end method

.method protected abstract sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected abstract sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected abstract sendTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method public abstract sendTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "permission"

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->setPremiumSmsPermission(Ljava/lang/String;I)V

    .line 1886
    return-void
.end method

.method protected setSmsMemoryStatus(Z)V
    .locals 2
    .parameter "status"

    .prologue
    .line 2633
    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    if-eq p1, v0, :cond_0

    .line 2634
    iput-boolean p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    .line 2635
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 2637
    :cond_0
    return-void
.end method

.method protected startEtwsAlarm()V
    .locals 8

    .prologue
    .line 2812
    const v1, 0x1b7740

    .line 2813
    .local v1, delayInMs:I
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2815
    .local v0, am:Landroid/app/AlarmManager;
    const-string v3, "SMS"

    const-string v4, "startEtwsAlarm"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.etws"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2818
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "simId"

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2820
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x800

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mEtwsAlarmIntent:Landroid/app/PendingIntent;

    .line 2822
    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, v1

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mEtwsAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2824
    return-void
.end method

.method protected stopEtwsAlarm()V
    .locals 3

    .prologue
    .line 2827
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2829
    .local v0, am:Landroid/app/AlarmManager;
    const-string v1, "SMS"

    const-string v2, "stopEtwsAlarm"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mEtwsAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 2831
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mEtwsAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2832
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mEtwsAlarmIntent:Landroid/app/PendingIntent;

    .line 2834
    :cond_0
    return-void
.end method
