.class public Lcom/mediatek/lbs/QuickGpsService;
.super Landroid/app/Service;
.source "QuickGpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/lbs/QuickGpsService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_EPODOWNLOAD_FROMWIFI:Ljava/lang/String; = "android.intent.action.ACTION_EPODOWNLOAD_FROMWIFI"

.field public static final ACTION_STOPDOWNLOAD_FROMWIFI:Ljava/lang/String; = "android.intent.action.ACTION_STOPDOWNLOAD_FROMWIFI"

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.mediatek.lbs.quickgps.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.mediatek.lbs.quickgps.ALARM_WAKEUP"

.field private static final EPO_DOWNLAOD_INITATE_STATE:I = 0x0

.field private static final EPO_DOWNLOAD_COMPLETE_STATE:I = 0x64

.field private static final EVENT_NEW_INTENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Settings/QuickGpsService"


# instance fields
.field private epoDownloadStatus:I

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDownLoadRetryTimes:I

.field private mDownLoadTimes:I

.field private mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

.field private final mEpoStatusListener:Lcom/mediatek/common/epo/MtkEpoStatusListener;

.field private mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

.field private mInterval:I

.field private mServiceHandler:Lcom/mediatek/lbs/QuickGpsService$ServiceHandler;

.field private mStartId:I

.field private mTimeout:I

.field private mTimeoutIntent:Landroid/app/PendingIntent;

.field private mWakeupIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    const v0, 0x493e0

    iput v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mInterval:I

    .line 58
    new-instance v0, Lcom/mediatek/lbs/QuickGpsService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/QuickGpsService$1;-><init>(Lcom/mediatek/lbs/QuickGpsService;)V

    iput-object v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoStatusListener:Lcom/mediatek/common/epo/MtkEpoStatusListener;

    .line 67
    iput v1, p0, Lcom/mediatek/lbs/QuickGpsService;->epoDownloadStatus:I

    .line 69
    iput v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mDownLoadTimes:I

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mDownLoadRetryTimes:I

    .line 79
    const v0, 0x36ee80

    iput v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mTimeout:I

    .line 81
    new-instance v0, Lcom/mediatek/lbs/QuickGpsService$2;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/QuickGpsService$2;-><init>(Lcom/mediatek/lbs/QuickGpsService;)V

    iput-object v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 170
    return-void
.end method

.method private HandleEpoDownloadFail()V
    .locals 2

    .prologue
    .line 344
    const-string v0, "HandleEpoDownloadFail"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 346
    iget v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mDownLoadTimes:I

    iget v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mDownLoadRetryTimes:I

    if-ge v0, v1, :cond_0

    .line 348
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsService;->startAlarmToWakeupDownload()V

    .line 355
    :goto_0
    return-void

    .line 352
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/lbs/QuickGpsService;->epoDownloadStatus:I

    .line 353
    iget-object v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 354
    iget v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mStartId:I

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopSelf(I)V

    goto :goto_0
.end method

.method private HandleEpoDownloadSuccess()V
    .locals 2

    .prologue
    .line 334
    const-string v0, "HandleEpoDownloadSuccess"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 335
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/lbs/QuickGpsService;->epoDownloadStatus:I

    .line 336
    iget-object v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 337
    iget v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mStartId:I

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopSelf(I)V

    .line 338
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/lbs/QuickGpsService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/QuickGpsService;->updateEpoStatus(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/lbs/QuickGpsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mDownLoadTimes:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/lbs/QuickGpsService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/lbs/QuickGpsService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsService;->startDownloadEpoFile()V

    return-void
.end method

.method private checkEpofileDownloadCondition()Z
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 215
    iget-object v8, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    invoke-interface {v8}, Lcom/mediatek/common/epo/MtkEpoClientManager;->getEpoFileInfo()Lcom/mediatek/common/epo/MtkEpoFileInfo;

    move-result-object v3

    .line 217
    .local v3, epoFileInfo:Lcom/mediatek/common/epo/MtkEpoFileInfo;
    iget-object v8, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    invoke-interface {v8}, Lcom/mediatek/common/epo/MtkEpoClientManager;->getStatus()Z

    move-result v8

    if-nez v8, :cond_0

    .line 218
    const-string v7, "Epo disable, don\'t download the epo file"

    invoke-direct {p0, v7}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 256
    :goto_0
    return v6

    .line 222
    :cond_0
    iget-object v8, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    invoke-interface {v8}, Lcom/mediatek/common/epo/MtkEpoClientManager;->getAutoDownloadStatus()Z

    move-result v8

    if-nez v8, :cond_1

    .line 223
    const-string v7, "Epo autodownload disable, don\'t download the epo file"

    invoke-direct {p0, v7}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_1
    if-nez v3, :cond_2

    .line 228
    const-string v6, "EpoFileInfo is null"

    invoke-direct {p0, v6}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    move v6, v7

    .line 229
    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {v3}, Lcom/mediatek/common/epo/MtkEpoFileInfo;->getStartTimeString()Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, downLoadTime:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkEpofileDownloadCondition: downloadtime="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 235
    if-nez v2, :cond_3

    .line 236
    const-string v6, "don\'t have the epo file, the starttime is unkown"

    invoke-direct {p0, v6}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    move v6, v7

    .line 237
    goto :goto_0

    .line 240
    :cond_3
    invoke-direct {p0, v2}, Lcom/mediatek/lbs/QuickGpsService;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 241
    .local v1, downLoadDate:Ljava/util/Date;
    if-nez v1, :cond_4

    .line 242
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "date is invalid, "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    move v6, v7

    .line 243
    goto :goto_0

    .line 246
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 247
    .local v0, c:Ljava/util/Calendar;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calender: year="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 250
    .local v4, interval:J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " interval ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 251
    const-wide/32 v8, 0xea60

    iget-object v10, p0, Lcom/mediatek/lbs/QuickGpsService;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    invoke-virtual {v10}, Lcom/mediatek/lbs/GpsConfigManager;->getEpoAutoDownLoadInterval()I

    move-result v10

    int-to-long v10, v10

    mul-long/2addr v8, v10

    cmp-long v8, v4, v8

    if-lez v8, :cond_5

    move v6, v7

    .line 252
    goto/16 :goto_0

    .line 255
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Epo starttime is not "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/lbs/QuickGpsService;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    invoke-virtual {v8}, Lcom/mediatek/lbs/GpsConfigManager;->getEpoAutoDownLoadInterval()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mins ago"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 394
    const-string v0, "Settings/QuickGpsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-void
.end method

.method private startAlarmToTimeout()V
    .locals 7

    .prologue
    .line 372
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v2, :cond_0

    .line 373
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/mediatek/lbs/QuickGpsService;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 375
    .local v0, now:J
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget v4, p0, Lcom/mediatek/lbs/QuickGpsService;->mTimeout:I

    int-to-long v4, v4

    add-long/2addr v4, v0

    iget-object v6, p0, Lcom/mediatek/lbs/QuickGpsService;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 377
    .end local v0           #now:J
    :cond_0
    return-void
.end method

.method private startAlarmToWakeupDownload()V
    .locals 7

    .prologue
    .line 361
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/mediatek/lbs/QuickGpsService;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 363
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 364
    .local v0, now:J
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget v4, p0, Lcom/mediatek/lbs/QuickGpsService;->mInterval:I

    int-to-long v4, v4

    add-long/2addr v4, v0

    iget-object v6, p0, Lcom/mediatek/lbs/QuickGpsService;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 366
    .end local v0           #now:J
    :cond_0
    return-void
.end method

.method private startDownloadEpoFile()V
    .locals 3

    .prologue
    .line 383
    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 386
    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/common/epo/MtkEpoClientManager;->startDownload()I

    move-result v0

    .line 388
    .local v0, ret:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDownload ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 390
    iget v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mDownLoadTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mDownLoadTimes:I

    .line 391
    return-void
.end method

.method private stringToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .parameter "time"

    .prologue
    .line 196
    const/4 v1, 0x0

    .line 198
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1           #formatter:Ljava/text/SimpleDateFormat;
    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 200
    .restart local v1       #formatter:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 202
    .local v2, pos:Ljava/text/ParsePosition;
    invoke-virtual {v1, p1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 204
    .local v0, ctime:Ljava/util/Date;
    return-object v0
.end method

.method private updateEpoStatus(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 309
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 328
    :goto_0
    return-void

    .line 311
    :cond_0
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 312
    const-string v0, "epo started"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_1
    const/16 v0, 0xc9

    if-ne p1, v0, :cond_2

    .line 314
    const-string v0, "epo update success"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 315
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsService;->HandleEpoDownloadSuccess()V

    goto :goto_0

    .line 316
    :cond_2
    const/16 v0, 0xca

    if-ne p1, v0, :cond_3

    .line 317
    const-string v0, "epo update failure"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 318
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsService;->HandleEpoDownloadFail()V

    goto :goto_0

    .line 319
    :cond_3
    const/16 v0, 0xcb

    if-ne p1, v0, :cond_4

    .line 320
    const-string v0, "epo update canceled"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_4
    const/16 v0, 0x12c

    if-ne p1, v0, :cond_5

    .line 322
    const-string v0, "epo is idle"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_5
    const/16 v0, 0xcc

    if-ne p1, v0, :cond_6

    .line 324
    const-string v0, "epo is canceling"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_6
    const-string v0, "WARNING: unknown status recv"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public handleNewIntent(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v2, 0x1

    .line 267
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_EPODOWNLOAD_FROMWIFI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 270
    const-string v1, " start download epo on wifi"

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 273
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsService;->checkEpofileDownloadCondition()Z

    move-result v1

    if-nez v1, :cond_1

    .line 274
    const-string v1, "don\'t need to start download wifi, stop services"

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v1, :cond_3

    .line 280
    :cond_2
    const-string v1, "EpoMgr or mAlarmManager is null, stop services"

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    .line 285
    :cond_3
    iput p2, p0, Lcom/mediatek/lbs/QuickGpsService;->mStartId:I

    .line 286
    iget v1, p0, Lcom/mediatek/lbs/QuickGpsService;->epoDownloadStatus:I

    if-ne v1, v2, :cond_4

    .line 287
    const-string v1, "epo file is downloading, don\'t repeat download"

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :cond_4
    iput v2, p0, Lcom/mediatek/lbs/QuickGpsService;->epoDownloadStatus:I

    .line 293
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsService;->startDownloadEpoFile()V

    goto :goto_0

    .line 295
    :cond_5
    const-string v1, "android.intent.action.ACTION_STOPDOWNLOAD_FROMWIFI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    const-string v1, "stop download and stop services"

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 299
    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/common/epo/MtkEpoClientManager;->stopDownload()V

    .line 300
    iput p2, p0, Lcom/mediatek/lbs/QuickGpsService;->mStartId:I

    .line 301
    iget v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mStartId:I

    invoke-virtual {p0, v1}, Landroid/app/Service;->stopSelf(I)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 98
    const-string v0, "onBind"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 104
    const-string v2, "onCreate"

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 109
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "QuickGpsService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 112
    new-instance v2, Lcom/mediatek/lbs/QuickGpsService$ServiceHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/mediatek/lbs/QuickGpsService$ServiceHandler;-><init>(Lcom/mediatek/lbs/QuickGpsService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mServiceHandler:Lcom/mediatek/lbs/QuickGpsService$ServiceHandler;

    .line 114
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mContext:Landroid/content/Context;

    .line 115
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mContext:Landroid/content/Context;

    const-string v3, "mtk-epo-client"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/epo/MtkEpoClientManager;

    iput-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    .line 116
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    iget-object v3, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoStatusListener:Lcom/mediatek/common/epo/MtkEpoStatusListener;

    invoke-interface {v2, v3}, Lcom/mediatek/common/epo/MtkEpoClientManager;->addStatusListener(Lcom/mediatek/common/epo/MtkEpoStatusListener;)V

    .line 119
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 120
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.mediatek.lbs.quickgps.ALARM_WAKEUP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v2, "com.mediatek.lbs.quickgps.ALARM_TIMEOUT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/lbs/QuickGpsService;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 125
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.mediatek.lbs.quickgps.ALARM_WAKEUP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 126
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.mediatek.lbs.quickgps.ALARM_TIMEOUT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 128
    new-instance v2, Lcom/mediatek/lbs/GpsConfigManager;

    invoke-direct {v2}, Lcom/mediatek/lbs/GpsConfigManager;-><init>()V

    iput-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    .line 129
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    const-string v3, "/system/etc/gps_conf.xml"

    invoke-virtual {v2, v3}, Lcom/mediatek/lbs/GpsConfigManager;->updateGpsConfig(Ljava/lang/String;)V

    .line 130
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    invoke-virtual {v2}, Lcom/mediatek/lbs/GpsConfigManager;->getEpoAutoDownLoadRetryInterval()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mInterval:I

    .line 131
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    invoke-virtual {v2}, Lcom/mediatek/lbs/GpsConfigManager;->getEpoAutoDownLoadRetryTime()I

    move-result v2

    iput v2, p0, Lcom/mediatek/lbs/QuickGpsService;->mDownLoadRetryTimes:I

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GpsConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/lbs/QuickGpsService;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsService;->startAlarmToTimeout()V

    .line 136
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 157
    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    iget-object v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 161
    iget-object v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    invoke-interface {v0}, Lcom/mediatek/common/epo/MtkEpoClientManager;->stopDownload()V

    .line 165
    iget-object v0, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoStatusListener:Lcom/mediatek/common/epo/MtkEpoStatusListener;

    invoke-interface {v0, v1}, Lcom/mediatek/common/epo/MtkEpoClientManager;->removeStatusListener(Lcom/mediatek/common/epo/MtkEpoStatusListener;)V

    .line 167
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 168
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v3, 0x2

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand:intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V

    .line 142
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    if-nez v1, :cond_1

    .line 143
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 152
    :goto_0
    return v3

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mServiceHandler:Lcom/mediatek/lbs/QuickGpsService$ServiceHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 148
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 149
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 150
    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService;->mServiceHandler:Lcom/mediatek/lbs/QuickGpsService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
