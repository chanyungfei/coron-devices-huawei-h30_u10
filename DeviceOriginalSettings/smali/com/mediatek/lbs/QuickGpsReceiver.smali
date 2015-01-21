.class public Lcom/mediatek/lbs/QuickGpsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QuickGpsReceiver.java"


# static fields
.field private static final ASSISTDATE_FILE_CHECKED:Ljava/lang/String; = "assistdate_file_checked"

.field private static final ASSISTDATE_FILE_MODIFY_DATE:Ljava/lang/String; = "assistdate_file_modify_date"

.field private static final GEMINI_PHONE:Z = true

.field private static final KEY_QUICK_GPS:Ljava/lang/String; = "quick_gps"

.field private static final QUICKGPS_PROFILE:Ljava/lang/String; = "quickgps_profile"

.field private static final QUICK_GPS_PROFILE:Ljava/lang/String; = "quick_gps_profile"

.field private static final TAG:Ljava/lang/String; = "Settings/QuickgpsReceiver"


# instance fields
.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEpoFileStartTime:J

.field private mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

.field private mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

.field private mWifiMgr:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mEpoFileStartTime:J

    return-void
.end method

.method private checkCopyEpoFileCondition()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 346
    iget-object v6, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    invoke-interface {v6}, Lcom/mediatek/common/epo/MtkEpoClientManager;->getEpoFileInfo()Lcom/mediatek/common/epo/MtkEpoFileInfo;

    move-result-object v2

    .line 347
    .local v2, epoFileInfo:Lcom/mediatek/common/epo/MtkEpoFileInfo;
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    invoke-virtual {v6}, Lcom/mediatek/lbs/GpsConfigManager;->getEpoFileSource()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 350
    const-string v5, "source epo file is not exist, return false"

    invoke-direct {p0, v5}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 395
    :goto_0
    return v4

    .line 354
    :cond_0
    iget-object v6, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    invoke-interface {v6}, Lcom/mediatek/common/epo/MtkEpoClientManager;->getStatus()Z

    move-result v6

    if-nez v6, :cond_1

    .line 355
    const-string v5, "Epo disable, don\'t download the epo file"

    invoke-direct {p0, v5}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_1
    iput-wide v10, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mEpoFileStartTime:J

    .line 361
    if-nez v2, :cond_2

    .line 362
    const-string v4, "EpoFileInfo is null, can copy the epo file"

    invoke-direct {p0, v4}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    move v4, v5

    .line 363
    goto :goto_0

    .line 366
    :cond_2
    invoke-virtual {v2}, Lcom/mediatek/common/epo/MtkEpoFileInfo;->getStartTimeString()Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, downLoadTime:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkEpofileDownloadCondition: downloadtime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 370
    if-nez v1, :cond_3

    .line 371
    const-string v4, "don\'t have the epo file, the starttime is unkown"

    invoke-direct {p0, v4}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    move v4, v5

    .line 372
    goto :goto_0

    .line 375
    :cond_3
    invoke-direct {p0, v1}, Lcom/mediatek/lbs/QuickGpsReceiver;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 377
    .local v0, downLoadDate:Ljava/util/Date;
    if-nez v0, :cond_4

    .line 378
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "date is invalid, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    move v4, v5

    .line 379
    goto :goto_0

    .line 383
    :cond_4
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mEpoFileStartTime:J

    .line 385
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "source file last modified:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/sql/Timestamp;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v7}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 387
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->getSavedEpoFileModifyDate()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->getEpoFileCheckedStatus()J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-eqz v6, :cond_5

    .line 389
    const-string v5, "this epo file has dealed ago"

    invoke-direct {p0, v5}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 394
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/mediatek/lbs/QuickGpsReceiver;->setSavedEpoFileModifyDate(J)V

    move v4, v5

    .line 395
    goto/16 :goto_0
.end method

.method private checkEpoFileOfDataMisc()V
    .locals 5

    .prologue
    .line 553
    iget-object v3, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    invoke-virtual {v3}, Lcom/mediatek/lbs/GpsConfigManager;->getEpoFileDest()Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, epofileDest:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".old"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, epofileold:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 558
    .local v2, fileold:Ljava/io/File;
    const-string v3, "checkEpoFileOfDataMisc"

    invoke-direct {p0, v3}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 560
    const-string v3, "need restore the epo file from the old file when old file is exit"

    invoke-direct {p0, v3}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 561
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 562
    const-string v3, "restore epofile error"

    invoke-direct {p0, v3}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 565
    :cond_0
    return-void
.end method

.method private checkEpofileDownloadCondition()Z
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 239
    iget-object v8, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    invoke-interface {v8}, Lcom/mediatek/common/epo/MtkEpoClientManager;->getEpoFileInfo()Lcom/mediatek/common/epo/MtkEpoFileInfo;

    move-result-object v3

    .line 241
    .local v3, epoFileInfo:Lcom/mediatek/common/epo/MtkEpoFileInfo;
    iget-object v8, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    invoke-interface {v8}, Lcom/mediatek/common/epo/MtkEpoClientManager;->getStatus()Z

    move-result v8

    if-nez v8, :cond_0

    .line 242
    const-string v7, "Epo disable, don\'t download the epo file"

    invoke-direct {p0, v7}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 275
    :goto_0
    return v6

    .line 246
    :cond_0
    if-nez v3, :cond_1

    .line 247
    const-string v6, "EpoFileInfo is null"

    invoke-direct {p0, v6}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    move v6, v7

    .line 248
    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {v3}, Lcom/mediatek/common/epo/MtkEpoFileInfo;->getStartTimeString()Ljava/lang/String;

    move-result-object v2

    .line 253
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

    invoke-direct {p0, v8}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 254
    if-nez v2, :cond_2

    .line 255
    const-string v6, "don\'t have the epo file, the starttime is unkown"

    invoke-direct {p0, v6}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    move v6, v7

    .line 256
    goto :goto_0

    .line 259
    :cond_2
    invoke-direct {p0, v2}, Lcom/mediatek/lbs/QuickGpsReceiver;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 260
    .local v1, downLoadDate:Ljava/util/Date;
    if-nez v1, :cond_3

    .line 261
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "date is invalid, "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    move v6, v7

    .line 262
    goto :goto_0

    .line 265
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 266
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

    invoke-direct {p0, v8}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 269
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

    invoke-direct {p0, v8}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 270
    const-wide/32 v8, 0xea60

    iget-object v10, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    invoke-virtual {v10}, Lcom/mediatek/lbs/GpsConfigManager;->getEpoAutoDownLoadInterval()I

    move-result v10

    int-to-long v10, v10

    mul-long/2addr v8, v10

    cmp-long v8, v4, v8

    if-lez v8, :cond_4

    move v6, v7

    .line 271
    goto/16 :goto_0

    .line 274
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Epo starttime is not "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    invoke-virtual {v8}, Lcom/mediatek/lbs/GpsConfigManager;->getEpoAutoDownLoadInterval()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mins ago"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private checkNewEpoFileStartTime()V
    .locals 7

    .prologue
    .line 489
    iget-object v5, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    invoke-interface {v5}, Lcom/mediatek/common/epo/MtkEpoClientManager;->getEpoFileInfo()Lcom/mediatek/common/epo/MtkEpoFileInfo;

    move-result-object v2

    .line 491
    .local v2, epoFileInfo:Lcom/mediatek/common/epo/MtkEpoFileInfo;
    if-nez v2, :cond_0

    .line 492
    const-string v5, "EpoFileInfo is null, can copy the epo file"

    invoke-direct {p0, v5}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 521
    :goto_0
    return-void

    .line 496
    :cond_0
    invoke-virtual {v2}, Lcom/mediatek/common/epo/MtkEpoFileInfo;->getStartTimeString()Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, downLoadTime:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkEpofileDownloadCondition: downloadtime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 500
    if-nez v1, :cond_1

    .line 501
    const-string v5, "don\'t have the epo file, the starttime is unkown"

    invoke-direct {p0, v5}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_1
    invoke-direct {p0, v1}, Lcom/mediatek/lbs/QuickGpsReceiver;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 507
    .local v0, downLoadDate:Ljava/util/Date;
    if-nez v0, :cond_2

    .line 508
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "date is invalid, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 512
    :cond_2
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 513
    .local v3, newEpoFileStartTime:J
    iget-wide v5, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mEpoFileStartTime:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_3

    .line 514
    const-string v5, "new epofile is newer than old epofile, delete the old epofile"

    invoke-direct {p0, v5}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 515
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->rmEpoFileOfOld()V

    goto :goto_0

    .line 518
    :cond_3
    const-string v5, "new epofile is old than old profile, restore"

    invoke-direct {p0, v5}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 519
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkEpoFileOfDataMisc()V

    goto :goto_0
.end method

.method private copyEpoFileData()V
    .locals 15

    .prologue
    .line 404
    const/4 v7, 0x0

    .line 405
    .local v7, in:Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 406
    .local v10, out:Ljava/io/FileOutputStream;
    iget-object v12, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    invoke-virtual {v12}, Lcom/mediatek/lbs/GpsConfigManager;->getEpoFileDest()Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, epofileDest:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".bak"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, destEpoFile:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 412
    .local v5, fileTmp:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    .local v6, filedest:Ljava/io/File;
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "copyEpoFileData:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 417
    const-string v12, "the dest file is exit, rename it"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 418
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".old"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 419
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "rename the exit file error:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 457
    :try_start_1
    const-string v12, "finally"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 458
    if-eqz v7, :cond_0

    throw v7

    .line 460
    :cond_0
    if-eqz v10, :cond_1

    .line 461
    throw v10

    .line 462
    const-string v12, "out.close"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 463
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    throw v5

    move-result v12

    if-nez v12, :cond_2

    .line 464
    const-string v12, "rename tmp file to epo file error"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 466
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkEpoFileOfDataMisc()V

    .line 480
    :cond_1
    :goto_0
    return-void

    .line 470
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkNewEpoFileStartTime()V

    .line 473
    const-wide/16 v12, 0x1

    invoke-direct {p0, v12, v13}, Lcom/mediatek/lbs/QuickGpsReceiver;->setEpoFileCheckedStatus(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 476
    :catch_0
    move-exception v2

    .line 477
    .local v2, e:Ljava/io/IOException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException: copyEpoFileData "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 425
    .end local v2           #e:Ljava/io/IOException;
    :cond_3
    :try_start_2
    new-instance v4, Ljava/io/File;

    iget-object v12, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    invoke-virtual {v12}, Lcom/mediatek/lbs/GpsConfigManager;->getEpoFileSource()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 426
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_6

    .line 427
    const-string v12, "source file is not exit,return"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 457
    :try_start_3
    const-string v12, "finally"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 458
    if-eqz v7, :cond_4

    throw v7

    .line 460
    :cond_4
    if-eqz v10, :cond_1

    .line 461
    throw v10

    .line 462
    const-string v12, "out.close"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 463
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    throw v5

    move-result v12

    if-nez v12, :cond_5

    .line 464
    const-string v12, "rename tmp file to epo file error"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 466
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkEpoFileOfDataMisc()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 476
    :catch_1
    move-exception v2

    .line 477
    .restart local v2       #e:Ljava/io/IOException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException: copyEpoFileData "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 470
    .end local v2           #e:Ljava/io/IOException;
    :cond_5
    :try_start_4
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkNewEpoFileStartTime()V

    .line 473
    const-wide/16 v12, 0x1

    invoke-direct {p0, v12, v13}, Lcom/mediatek/lbs/QuickGpsReceiver;->setEpoFileCheckedStatus(J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 432
    :cond_6
    :try_start_5
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 433
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v12

    if-nez v12, :cond_9

    .line 434
    const-string v12, "fileTmp.delete() return false"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 457
    :try_start_6
    const-string v12, "finally"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 458
    if-eqz v7, :cond_7

    throw v7

    .line 460
    :cond_7
    if-eqz v10, :cond_1

    .line 461
    throw v10

    .line 462
    const-string v12, "out.close"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 463
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    throw v5

    move-result v12

    if-nez v12, :cond_8

    .line 464
    const-string v12, "rename tmp file to epo file error"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 466
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkEpoFileOfDataMisc()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 476
    :catch_2
    move-exception v2

    .line 477
    .restart local v2       #e:Ljava/io/IOException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException: copyEpoFileData "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 470
    .end local v2           #e:Ljava/io/IOException;
    :cond_8
    :try_start_7
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkNewEpoFileStartTime()V

    .line 473
    const-wide/16 v12, 0x1

    invoke-direct {p0, v12, v13}, Lcom/mediatek/lbs/QuickGpsReceiver;->setEpoFileCheckedStatus(J)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 439
    :cond_9
    :try_start_8
    new-instance v8, Ljava/io/FileInputStream;

    iget-object v12, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    invoke-virtual {v12}, Lcom/mediatek/lbs/GpsConfigManager;->getEpoFileSource()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 440
    .end local v7           #in:Ljava/io/FileInputStream;
    .local v8, in:Ljava/io/FileInputStream;
    :try_start_9
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 442
    .end local v10           #out:Ljava/io/FileOutputStream;
    .local v11, out:Ljava/io/FileOutputStream;
    const/16 v12, 0x400

    :try_start_a
    new-array v0, v12, [B

    .line 444
    .local v0, buf:[B
    :goto_1
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, len:I
    if-lez v9, :cond_b

    .line 445
    const/4 v12, 0x0

    invoke-virtual {v11, v0, v12, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_1

    .line 451
    .end local v0           #buf:[B
    .end local v9           #len:I
    :catch_3
    move-exception v2

    move-object v10, v11

    .end local v11           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 452
    .end local v4           #file:Ljava/io/File;
    .end local v8           #in:Ljava/io/FileInputStream;
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v7       #in:Ljava/io/FileInputStream;
    :goto_2
    :try_start_b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FileNotFoundException: copyEpoFileData "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 457
    :try_start_c
    const-string v12, "finally"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 458
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 460
    :cond_a
    if-eqz v10, :cond_1

    .line 461
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 462
    const-string v12, "out.close"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 463
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 464
    const-string v12, "rename tmp file to epo file error"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 466
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkEpoFileOfDataMisc()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_0

    .line 476
    :catch_4
    move-exception v2

    .line 477
    .local v2, e:Ljava/io/IOException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException: copyEpoFileData "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 448
    .end local v2           #e:Ljava/io/IOException;
    .end local v7           #in:Ljava/io/FileInputStream;
    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v0       #buf:[B
    .restart local v4       #file:Ljava/io/File;
    .restart local v8       #in:Ljava/io/FileInputStream;
    .restart local v9       #len:I
    .restart local v11       #out:Ljava/io/FileOutputStream;
    :cond_b
    :try_start_d
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 449
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/FileDescriptor;->sync()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 457
    :try_start_e
    const-string v12, "finally"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 458
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 460
    :cond_c
    if-eqz v11, :cond_e

    .line 461
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 462
    const-string v12, "out.close"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 463
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 464
    const-string v12, "rename tmp file to epo file error"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 466
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkEpoFileOfDataMisc()V

    move-object v10, v11

    .end local v11           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 467
    .end local v8           #in:Ljava/io/FileInputStream;
    .restart local v7       #in:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 470
    .end local v7           #in:Ljava/io/FileInputStream;
    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v8       #in:Ljava/io/FileInputStream;
    .restart local v11       #out:Ljava/io/FileOutputStream;
    :cond_d
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkNewEpoFileStartTime()V

    .line 473
    const-wide/16 v12, 0x1

    invoke-direct {p0, v12, v13}, Lcom/mediatek/lbs/QuickGpsReceiver;->setEpoFileCheckedStatus(J)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    :cond_e
    move-object v10, v11

    .end local v11           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 478
    .end local v8           #in:Ljava/io/FileInputStream;
    .restart local v7       #in:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 476
    .end local v7           #in:Ljava/io/FileInputStream;
    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v8       #in:Ljava/io/FileInputStream;
    .restart local v11       #out:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v2

    .line 477
    .restart local v2       #e:Ljava/io/IOException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException: copyEpoFileData "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    move-object v10, v11

    .end local v11           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 479
    .end local v8           #in:Ljava/io/FileInputStream;
    .restart local v7       #in:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 470
    .end local v0           #buf:[B
    .end local v4           #file:Ljava/io/File;
    .end local v9           #len:I
    .local v2, e:Ljava/io/FileNotFoundException;
    :cond_f
    :try_start_f
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkNewEpoFileStartTime()V

    .line 473
    const-wide/16 v12, 0x1

    invoke-direct {p0, v12, v13}, Lcom/mediatek/lbs/QuickGpsReceiver;->setEpoFileCheckedStatus(J)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    goto/16 :goto_0

    .line 453
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v2

    .line 454
    .local v2, e:Ljava/io/IOException;
    :goto_3
    :try_start_10
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException: copyEpoFileData "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 457
    :try_start_11
    const-string v12, "finally"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 458
    if-eqz v7, :cond_10

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 460
    :cond_10
    if-eqz v10, :cond_1

    .line 461
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 462
    const-string v12, "out.close"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 463
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 464
    const-string v12, "rename tmp file to epo file error"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 466
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkEpoFileOfDataMisc()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    goto/16 :goto_0

    .line 476
    :catch_7
    move-exception v2

    .line 477
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException: copyEpoFileData "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 470
    :cond_11
    :try_start_12
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkNewEpoFileStartTime()V

    .line 473
    const-wide/16 v12, 0x1

    invoke-direct {p0, v12, v13}, Lcom/mediatek/lbs/QuickGpsReceiver;->setEpoFileCheckedStatus(J)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    goto/16 :goto_0

    .line 456
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 457
    :goto_4
    :try_start_13
    const-string v13, "finally"

    invoke-direct {p0, v13}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 458
    if-eqz v7, :cond_12

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 460
    :cond_12
    if-eqz v10, :cond_13

    .line 461
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 462
    const-string v13, "out.close"

    invoke-direct {p0, v13}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 463
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v13

    if-nez v13, :cond_14

    .line 464
    const-string v13, "rename tmp file to epo file error"

    invoke-direct {p0, v13}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 466
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkEpoFileOfDataMisc()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    goto/16 :goto_0

    .line 476
    :catch_8
    move-exception v2

    .line 477
    .restart local v2       #e:Ljava/io/IOException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException: copyEpoFileData "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 478
    .end local v2           #e:Ljava/io/IOException;
    :cond_13
    :goto_5
    throw v12

    .line 470
    :cond_14
    :try_start_14
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkNewEpoFileStartTime()V

    .line 473
    const-wide/16 v13, 0x1

    invoke-direct {p0, v13, v14}, Lcom/mediatek/lbs/QuickGpsReceiver;->setEpoFileCheckedStatus(J)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    goto :goto_5

    .line 456
    .end local v7           #in:Ljava/io/FileInputStream;
    .restart local v4       #file:Ljava/io/File;
    .restart local v8       #in:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v12

    move-object v7, v8

    .end local v8           #in:Ljava/io/FileInputStream;
    .restart local v7       #in:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v7           #in:Ljava/io/FileInputStream;
    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v8       #in:Ljava/io/FileInputStream;
    .restart local v11       #out:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v12

    move-object v10, v11

    .end local v11           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8           #in:Ljava/io/FileInputStream;
    .restart local v7       #in:Ljava/io/FileInputStream;
    goto :goto_4

    .line 453
    .end local v7           #in:Ljava/io/FileInputStream;
    .restart local v8       #in:Ljava/io/FileInputStream;
    :catch_9
    move-exception v2

    move-object v7, v8

    .end local v8           #in:Ljava/io/FileInputStream;
    .restart local v7       #in:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v7           #in:Ljava/io/FileInputStream;
    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v8       #in:Ljava/io/FileInputStream;
    .restart local v11       #out:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v2

    move-object v10, v11

    .end local v11           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8           #in:Ljava/io/FileInputStream;
    .restart local v7       #in:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 451
    .end local v4           #file:Ljava/io/File;
    :catch_b
    move-exception v2

    goto/16 :goto_2

    .end local v7           #in:Ljava/io/FileInputStream;
    .restart local v4       #file:Ljava/io/File;
    .restart local v8       #in:Ljava/io/FileInputStream;
    :catch_c
    move-exception v2

    move-object v7, v8

    .end local v8           #in:Ljava/io/FileInputStream;
    .restart local v7       #in:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private getEpoFileCheckedStatus()J
    .locals 6

    .prologue
    .line 209
    iget-object v3, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mContext:Landroid/content/Context;

    const-string v4, "quickgps_profile"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 211
    .local v2, sharedPref:Landroid/content/SharedPreferences;
    const-string v3, "assistdate_file_checked"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 212
    .local v0, date:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get EpoFileCheckedStatus from sharedpreference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 213
    return-wide v0
.end method

.method private getSavedEpoFileModifyDate()J
    .locals 6

    .prologue
    .line 185
    iget-object v3, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mContext:Landroid/content/Context;

    const-string v4, "quickgps_profile"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 187
    .local v2, sharedPref:Landroid/content/SharedPreferences;
    const-string v3, "assistdate_file_modify_date"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 188
    .local v0, date:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get saveepofiledate from sharedpreference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 189
    return-wide v0
.end method

.method private handleBootCompletedAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkCopyEpoFileCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkEpoFileOfDataMisc()V

    .line 579
    const-string v0, "update the epo file"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 580
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->copyEpoFileData()V

    .line 582
    :cond_0
    return-void
.end method

.method private handleConnectivityAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 304
    const/4 v1, -0x1

    .line 305
    .local v1, networkType:I
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 307
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleConnectivityAction, networktype="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 317
    if-nez v1, :cond_2

    .line 319
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->stopQuickGpsService()V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    const-string v2, "WARNING: no active network"

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 312
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->stopQuickGpsService()V

    goto :goto_0

    .line 320
    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    invoke-virtual {v2}, Lcom/mediatek/lbs/GpsConfigManager;->getEpoAutoDownloadFromWifi()Z

    move-result v2

    if-nez v2, :cond_3

    .line 323
    const-string v2, "don\'t open the config of epo autodownload from wifi"

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->startDownloadEpoFile()V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 585
    const-string v0, "Settings/QuickgpsReceiver"

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

    .line 586
    return-void
.end method

.method private rmEpoFileOfOld()V
    .locals 4

    .prologue
    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    invoke-virtual {v3}, Lcom/mediatek/lbs/GpsConfigManager;->getEpoFileDest()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".old"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, epofileold:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 533
    .local v1, fileold:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 534
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete the epo file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 536
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 537
    const-string v2, "delete succcess"

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 541
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private setEpoFileCheckedStatus(J)V
    .locals 5
    .parameter "status"

    .prologue
    .line 197
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mContext:Landroid/content/Context;

    const-string v3, "quickgps_profile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 199
    .local v1, sharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 200
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save EpoFileCheckedStatus to sharedpreference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 201
    const-string v2, "assistdate_file_checked"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 202
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    return-void
.end method

.method private setSavedEpoFileModifyDate(J)V
    .locals 5
    .parameter "date"

    .prologue
    .line 173
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mContext:Landroid/content/Context;

    const-string v3, "quickgps_profile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 175
    .local v1, sharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 176
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save quickGpsFileDate to sharedpreference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 177
    const-string v2, "assistdate_file_modify_date"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 179
    return-void
.end method

.method private startDownloadEpoFile()V
    .locals 5

    .prologue
    .line 282
    const-string v1, "start service to download epo file"

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 284
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_EPODOWNLOAD_FROMWIFI"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mContext:Landroid/content/Context;

    const-class v4, Lcom/mediatek/lbs/QuickGpsService;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 285
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 286
    return-void
.end method

.method private stopQuickGpsService()V
    .locals 3

    .prologue
    .line 295
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/mediatek/lbs/QuickGpsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 296
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 297
    return-void
.end method

.method private stringToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .parameter "time"

    .prologue
    .line 220
    const/4 v1, 0x0

    .line 222
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1           #formatter:Ljava/text/SimpleDateFormat;
    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 224
    .restart local v1       #formatter:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 226
    .local v2, pos:Ljava/text/ParsePosition;
    invoke-virtual {v1, p1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 228
    .local v0, ctime:Ljava/util/Date;
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, action:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mContext:Landroid/content/Context;

    .line 99
    const-string v1, "mtk-epo-client"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/epo/MtkEpoClientManager;

    iput-object v1, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    .line 100
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 101
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mWifiMgr:Landroid/net/wifi/WifiManager;

    .line 102
    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mWifiMgr:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_2

    .line 103
    :cond_0
    const-string v1, "mEpoMgr or mConnMgr or mWifiMgr is null"

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 125
    :cond_1
    :goto_0
    return-void

    .line 107
    :cond_2
    new-instance v1, Lcom/mediatek/lbs/GpsConfigManager;

    invoke-direct {v1}, Lcom/mediatek/lbs/GpsConfigManager;-><init>()V

    iput-object v1, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    .line 108
    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    const-string v2, "/system/etc/gps_conf.xml"

    invoke-virtual {v1, v2}, Lcom/mediatek/lbs/GpsConfigManager;->updateGpsConfig(Ljava/lang/String;)V

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GpsConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 111
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/mediatek/lbs/QuickGpsReceiver;->handleConnectivityAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 115
    :cond_3
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/mediatek/lbs/QuickGpsReceiver;->handleBootCompletedAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 119
    :cond_4
    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    const-string v1, "PROVIDERS_CHANGED_ACTION"

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->updateQuickGps()V

    goto :goto_0
.end method

.method setQuickGpsItem(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 145
    const/4 v1, 0x0

    .line 146
    .local v1, epoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;
    const/4 v0, 0x0

    .line 148
    .local v0, agpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mContext:Landroid/content/Context;

    const-string v3, "mtk-epo-client"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #epoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;
    check-cast v1, Lcom/mediatek/common/epo/MtkEpoClientManager;

    .line 149
    .restart local v1       #epoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mContext:Landroid/content/Context;

    const-string v3, "mtk-agps"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #agpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    check-cast v0, Lcom/mediatek/common/agps/MtkAgpsManager;

    .line 150
    .restart local v0       #agpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    if-eqz p1, :cond_2

    .line 151
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mediatek/common/agps/MtkAgpsManager;->enable()V

    .line 152
    :cond_0
    if-eqz v1, :cond_1

    .line 153
    invoke-interface {v1}, Lcom/mediatek/common/epo/MtkEpoClientManager;->enable()V

    .line 154
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/mediatek/common/epo/MtkEpoClientManager;->enableAutoDownload(Z)V

    .line 164
    :cond_1
    :goto_0
    return-void

    .line 158
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/mediatek/common/agps/MtkAgpsManager;->disable()V

    .line 159
    :cond_3
    if-eqz v1, :cond_1

    .line 160
    invoke-interface {v1}, Lcom/mediatek/common/epo/MtkEpoClientManager;->disable()V

    .line 161
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/mediatek/common/epo/MtkEpoClientManager;->enableAutoDownload(Z)V

    goto :goto_0
.end method

.method updateQuickGps()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 129
    iget-object v4, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 130
    .local v2, res:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mContext:Landroid/content/Context;

    const-string v5, "quick_gps_profile"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 131
    .local v3, sharedPref:Landroid/content/SharedPreferences;
    const-string v4, "quick_gps"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 132
    .local v1, quickGpsEnable:Z
    const-string v4, "gps"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 133
    .local v0, gpsEnabled:Z
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/QuickGpsReceiver;->setQuickGpsItem(Z)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0, v6}, Lcom/mediatek/lbs/QuickGpsReceiver;->setQuickGpsItem(Z)V

    goto :goto_0
.end method
