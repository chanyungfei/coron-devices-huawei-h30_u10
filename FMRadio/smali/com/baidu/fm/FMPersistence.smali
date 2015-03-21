.class public Lcom/baidu/fm/FMPersistence;
.super Ljava/lang/Object;
.source "FMPersistence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/fm/FMPersistence$1;,
        Lcom/baidu/fm/FMPersistence$listComparator;
    }
.end annotation


# static fields
.field private static final CHANNEL_FAVO_KEY_PREFIX:Ljava/lang/String; = "CHANNEL_FAVO_"

.field private static final CHANNEL_FREQ_KEY_PREFIX:Ljava/lang/String; = "CHANNEL_FREQ_"

.field private static final CHANNEL_META_KEY_PREFIX:Ljava/lang/String; = "CHANNEL_META_"

.field private static final CHANNEL_NAME_KEY_PREFIX:Ljava/lang/String; = "CHANNEL_NAME_"

.field private static final CHANNEL_NUM_KEY:Ljava/lang/String; = "CHANNEL_NUM"

.field private static final CURRENT_FREQ_KEY:Ljava/lang/String; = "CURRENT_CHANNEL"

.field public static final FAVORATE_NUM_MAX:I = 0x64

.field private static final IF_FIRST_LOAD:Ljava/lang/String; = "FIRST_LOAD"

.field private static final KEY_CLOSE_TIME:Ljava/lang/String; = "close_time"

.field private static final PREFERENCE_FIRST_LOAD:Ljava/lang/String; = "FMFirstLoad"

.field private static final PREFERENCE_FREQ_NAME:Ljava/lang/String; = "FMCurrentFreq"

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "FMStationList"

.field public static final STATION_LIST_COLLECT_EXSISTED:I = -0x1

.field public static final STATION_LIST_COLLECT_OK:I = 0x0

.field public static final STATION_LIST_IS_FULL:I = -0x2

.field public static final STATION_LIST_NUM_MAX:I = 0x64

.field public static final STATION_LIST_UNCOLLECT_OK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FMPersistence"


# instance fields
.field private index:I

.field private mContext:Landroid/content/Context;

.field private mCurrentFreq:I

.field private mDirty:Z

.field private mStationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/fm/FMStationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStationNum:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v0, p0, Lcom/baidu/fm/FMPersistence;->index:I

    .line 60
    iput v0, p0, Lcom/baidu/fm/FMPersistence;->mCurrentFreq:I

    .line 61
    iput-wide v2, p0, Lcom/baidu/fm/FMPersistence;->mStationNum:J

    .line 62
    iput-object v1, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    .line 64
    iput-object v1, p0, Lcom/baidu/fm/FMPersistence;->mContext:Landroid/content/Context;

    .line 65
    iput-boolean v0, p0, Lcom/baidu/fm/FMPersistence;->mDirty:Z

    .line 68
    iput-object p1, p0, Lcom/baidu/fm/FMPersistence;->mContext:Landroid/content/Context;

    .line 69
    iput-wide v2, p0, Lcom/baidu/fm/FMPersistence;->mStationNum:J

    .line 70
    iput v0, p0, Lcom/baidu/fm/FMPersistence;->mCurrentFreq:I

    .line 71
    iput-boolean v0, p0, Lcom/baidu/fm/FMPersistence;->mDirty:Z

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {p0}, Lcom/baidu/fm/FMPersistence;->loadStationInfo()V

    .line 75
    invoke-virtual {p0}, Lcom/baidu/fm/FMPersistence;->getCurrentStation()Ljava/lang/String;

    .line 78
    iget v0, p0, Lcom/baidu/fm/FMPersistence;->mCurrentFreq:I

    invoke-static {v0}, Lcom/baidu/fm/FMStationInfo;->verifyIntFreq(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    const/16 v0, 0x36b

    invoke-virtual {p0, v0}, Lcom/baidu/fm/FMPersistence;->setCurrentStation(I)V

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method public addStationInfo(Ljava/lang/String;)I
    .locals 6
    .parameter "freq"

    .prologue
    const/4 v2, 0x0

    .line 400
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    check-cast v1, Lcom/baidu/fm/FMStationInfo;

    invoke-virtual {v1}, Lcom/baidu/fm/FMStationInfo;->getStationFreqString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    const-string v1, "FMPersistence"

    const-string v2, "addStationInfo: station has already exist in list"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v1, -0x1

    .line 418
    :goto_1
    return v1

    .line 400
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 408
    :cond_1
    iget-object v1, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0x63

    if-le v1, v3, :cond_2

    .line 409
    const-string v1, "FMPersistence"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Station list is full, count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v1, -0x2

    goto :goto_1

    .line 412
    :cond_2
    iget-object v1, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    new-instance v3, Lcom/baidu/fm/FMStationInfo;

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v3, p1, v4, v2, v5}, Lcom/baidu/fm/FMStationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-virtual {p0}, Lcom/baidu/fm/FMPersistence;->sortStationList()V

    .line 414
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/fm/FMPersistence;->mDirty:Z

    move v1, v2

    .line 418
    goto :goto_1
.end method

.method public addStationInfo(Lcom/baidu/fm/FMStationInfo;)Z
    .locals 5
    .parameter "ch"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 359
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 360
    iget-object v1, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    check-cast v1, Lcom/baidu/fm/FMStationInfo;

    invoke-virtual {v1}, Lcom/baidu/fm/FMStationInfo;->getStationFreqString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/fm/FMStationInfo;->getStationFreqString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    const-string v1, "FMPersistence"

    const-string v3, "Station has already exist in list"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 374
    :goto_1
    return v1

    .line 359
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v4, 0x63

    if-le v1, v4, :cond_2

    .line 367
    const-string v1, "FMPersistence"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Station list is full, count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 368
    goto :goto_1

    .line 370
    :cond_2
    iget-object v1, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    invoke-virtual {p0}, Lcom/baidu/fm/FMPersistence;->sortStationList()V

    .line 372
    iput-boolean v3, p0, Lcom/baidu/fm/FMPersistence;->mDirty:Z

    move v1, v3

    .line 374
    goto :goto_1
.end method

.method public addStationInfo(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 5
    .parameter "freq"
    .parameter "name"
    .parameter "favorite"
    .parameter "metadata"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 379
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    check-cast v1, Lcom/baidu/fm/FMStationInfo;

    invoke-virtual {v1}, Lcom/baidu/fm/FMStationInfo;->getStationFreqString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    const-string v1, "FMPersistence"

    const-string v3, "Station has already exist in list"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 394
    :goto_1
    return v1

    .line 379
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    :cond_1
    iget-object v1, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v4, 0x63

    if-le v1, v4, :cond_2

    .line 387
    const-string v1, "FMPersistence"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Station list is full, count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 388
    goto :goto_1

    .line 390
    :cond_2
    iget-object v1, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    new-instance v2, Lcom/baidu/fm/FMStationInfo;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/baidu/fm/FMStationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-virtual {p0}, Lcom/baidu/fm/FMPersistence;->sortStationList()V

    .line 392
    iput-boolean v3, p0, Lcom/baidu/fm/FMPersistence;->mDirty:Z

    move v1, v3

    .line 394
    goto :goto_1
.end method

.method public cancelFavoriteById(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    check-cast v0, Lcom/baidu/fm/FMStationInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/fm/FMStationInfo;->setFavorite(Z)V

    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/fm/FMPersistence;->mDirty:Z

    .line 496
    return-void
.end method

.method public cancelFavoriteByIds(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 547
    .local p1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 549
    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 550
    .local v0, cancelId:I
    iget-object v2, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v0

    check-cast v2, Lcom/baidu/fm/FMStationInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/baidu/fm/FMStationInfo;->setFavorite(Z)V

    .line 552
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/baidu/fm/FMPersistence;->mDirty:Z

    .line 547
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 555
    .end local v0           #cancelId:I
    :cond_0
    return-void
.end method

.method public cancelFavoriteByIds([J)V
    .locals 4
    .parameter "ids"

    .prologue
    .line 510
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 511
    iget-object v1, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    aget-wide v2, p1, v0

    long-to-int v2, v2

    aget-object v1, v1, v2

    check-cast v1, Lcom/baidu/fm/FMStationInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/fm/FMStationInfo;->setFavorite(Z)V

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 514
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/fm/FMPersistence;->mDirty:Z

    .line 517
    return-void
.end method

.method public dumpList(Ljava/lang/String;)V
    .locals 4
    .parameter "title"

    .prologue
    .line 632
    const-string v1, "FMPersistence"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const-string v1, "FMPersistence"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump begin ---------- size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ......"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 636
    const-string v2, "FMPersistence"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---- ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    check-cast v1, Lcom/baidu/fm/FMStationInfo;

    invoke-virtual {v1}, Lcom/baidu/fm/FMStationInfo;->dumpString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 643
    :cond_0
    const-string v1, "FMPersistence"

    const-string v2, "dump end ------------"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-void
.end method

.method public getCurrentStation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/baidu/fm/FMPersistence;->getCurrentStationInt()I

    move-result v0

    .line 100
    .local v0, curr:I
    invoke-static {v0}, Lcom/baidu/fm/FMStationInfo;->intFreqToStringFreq(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentStationInt()I
    .locals 4

    .prologue
    .line 88
    iget-object v1, p0, Lcom/baidu/fm/FMPersistence;->mContext:Landroid/content/Context;

    const-string v2, "FMCurrentFreq"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "CURRENT_CHANNEL"

    const/16 v2, 0x36b

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/baidu/fm/FMPersistence;->mCurrentFreq:I

    .line 95
    iget v1, p0, Lcom/baidu/fm/FMPersistence;->mCurrentFreq:I

    return v1
.end method

.method public getFavoriteIntArray()[I
    .locals 6

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/baidu/fm/FMPersistence;->getFavoriteStationCount()I

    move-result v0

    .line 234
    .local v0, count:I
    if-lez v0, :cond_1

    .line 235
    new-array v3, v0, [I

    .line 236
    .local v3, freqArray:[I
    const/4 v1, 0x0

    .line 238
    .local v1, cur:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v5, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 239
    iget-object v5, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v4

    check-cast v5, Lcom/baidu/fm/FMStationInfo;

    invoke-virtual {v5}, Lcom/baidu/fm/FMStationInfo;->isFavorite()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 240
    add-int/lit8 v2, v1, 0x1

    .end local v1           #cur:I
    .local v2, cur:I
    iget-object v5, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v4

    check-cast v5, Lcom/baidu/fm/FMStationInfo;

    invoke-virtual {v5}, Lcom/baidu/fm/FMStationInfo;->getStationFreqInt()I

    move-result v5

    aput v5, v3, v1

    move v1, v2

    .line 238
    .end local v2           #cur:I
    .restart local v1       #cur:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 245
    .end local v1           #cur:I
    .end local v3           #freqArray:[I
    .end local v4           #i:I
    :cond_1
    const/4 v3, 0x0

    :cond_2
    return-object v3
.end method

.method public getFavoriteStationCount()I
    .locals 3

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 195
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 196
    iget-object v2, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v1

    check-cast v2, Lcom/baidu/fm/FMStationInfo;

    invoke-virtual {v2}, Lcom/baidu/fm/FMStationInfo;->isFavorite()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    add-int/lit8 v0, v0, 0x1

    .line 195
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    :cond_1
    return v0
.end method

.method public getFavoriteStationIds()[I
    .locals 6

    .prologue
    const/16 v5, 0x64

    .line 249
    new-array v2, v5, [I

    .line 250
    .local v2, favoriteIds:[I
    const/4 v0, 0x0

    .line 252
    .local v0, cur:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 253
    iget-object v4, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v3

    check-cast v4, Lcom/baidu/fm/FMStationInfo;

    invoke-virtual {v4}, Lcom/baidu/fm/FMStationInfo;->isFavorite()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    add-int/lit8 v1, v0, 0x1

    .end local v0           #cur:I
    .local v1, cur:I
    aput v3, v2, v0

    move v0, v1

    .line 252
    .end local v1           #cur:I
    .restart local v0       #cur:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 260
    :cond_1
    if-eq v0, v5, :cond_2

    .line 262
    :goto_1
    add-int/lit8 v1, v0, 0x1

    .end local v0           #cur:I
    .restart local v1       #cur:I
    const/4 v4, -0x1

    aput v4, v2, v0

    .line 263
    if-lt v1, v5, :cond_3

    move v0, v1

    .line 270
    .end local v1           #cur:I
    .restart local v0       #cur:I
    :cond_2
    return-object v2

    .end local v0           #cur:I
    .restart local v1       #cur:I
    :cond_3
    move v0, v1

    .end local v1           #cur:I
    .restart local v0       #cur:I
    goto :goto_1
.end method

.method public getFavoriteStations()[Lcom/baidu/fm/FMStationInfo;
    .locals 5

    .prologue
    .line 205
    const/16 v4, 0x64

    new-array v2, v4, [Lcom/baidu/fm/FMStationInfo;

    .line 206
    .local v2, favoriteStations:[Lcom/baidu/fm/FMStationInfo;
    const/4 v0, 0x0

    .line 210
    .local v0, cur:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 212
    iget-object v4, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v3

    check-cast v4, Lcom/baidu/fm/FMStationInfo;

    invoke-virtual {v4}, Lcom/baidu/fm/FMStationInfo;->isFavorite()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 213
    add-int/lit8 v1, v0, 0x1

    .end local v0           #cur:I
    .local v1, cur:I
    iget-object v4, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v3

    check-cast v4, Lcom/baidu/fm/FMStationInfo;

    aput-object v4, v2, v0

    move v0, v1

    .line 210
    .end local v1           #cur:I
    .restart local v0       #cur:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 229
    :cond_1
    return-object v2
.end method

.method public getFreqIntArray()[I
    .locals 3

    .prologue
    .line 181
    iget-object v2, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [I

    .line 183
    .local v0, freqArray:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 184
    iget-object v2, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v1

    check-cast v2, Lcom/baidu/fm/FMStationInfo;

    invoke-virtual {v2}, Lcom/baidu/fm/FMStationInfo;->getStationFreqInt()I

    move-result v2

    aput v2, v0, v1

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v0           #freqArray:[I
    .end local v1           #i:I
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public getFreqStringArray()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 169
    iget-object v2, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 171
    .local v0, freqArray:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 172
    iget-object v2, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v1

    check-cast v2, Lcom/baidu/fm/FMStationInfo;

    invoke-virtual {v2}, Lcom/baidu/fm/FMStationInfo;->getStationFreqString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v0           #freqArray:[Ljava/lang/String;
    .end local v1           #i:I
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public getIfFirstLoad()Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 118
    iget-object v3, p0, Lcom/baidu/fm/FMPersistence;->mContext:Landroid/content/Context;

    const-string v4, "FMFirstLoad"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 121
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "FIRST_LOAD"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 123
    .local v1, isFirstLoad:Ljava/lang/Boolean;
    const-string v3, "FMPersistence"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIfFirstLoad = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 127
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "FIRST_LOAD"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 128
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-object v1
.end method

.method public getNextNearestStationInfo(I)Lcom/baidu/fm/FMStationInfo;
    .locals 3
    .parameter "freqInt"

    .prologue
    .line 325
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 326
    iget-object v2, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v0

    check-cast v1, Lcom/baidu/fm/FMStationInfo;

    .line 327
    .local v1, s:Lcom/baidu/fm/FMStationInfo;
    invoke-virtual {v1}, Lcom/baidu/fm/FMStationInfo;->getStationFreqInt()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 331
    .end local v1           #s:Lcom/baidu/fm/FMStationInfo;
    :goto_1
    return-object v1

    .line 325
    .restart local v1       #s:Lcom/baidu/fm/FMStationInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    .end local v1           #s:Lcom/baidu/fm/FMStationInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getNextNearestStationInfo(Ljava/lang/String;)Lcom/baidu/fm/FMStationInfo;
    .locals 4
    .parameter "freqString"

    .prologue
    .line 311
    invoke-static {p1}, Lcom/baidu/fm/FMStationInfo;->stringFreqToIntFreq(Ljava/lang/String;)I

    move-result v0

    .line 314
    .local v0, freqInt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 315
    iget-object v3, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    aget-object v2, v3, v1

    check-cast v2, Lcom/baidu/fm/FMStationInfo;

    .line 316
    .local v2, s:Lcom/baidu/fm/FMStationInfo;
    invoke-virtual {v2}, Lcom/baidu/fm/FMStationInfo;->getStationFreqInt()I

    move-result v3

    if-le v3, v0, :cond_0

    .line 320
    .end local v2           #s:Lcom/baidu/fm/FMStationInfo;
    :goto_1
    return-object v2

    .line 314
    .restart local v2       #s:Lcom/baidu/fm/FMStationInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    .end local v2           #s:Lcom/baidu/fm/FMStationInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getNextStationInfoByIndex(I)Lcom/baidu/fm/FMStationInfo;
    .locals 2
    .parameter "idx"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/baidu/fm/FMStationInfo;

    .line 307
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/baidu/fm/FMStationInfo;

    goto :goto_0
.end method

.method public getPrevNearestStationInfo(I)Lcom/baidu/fm/FMStationInfo;
    .locals 3
    .parameter "freqInt"

    .prologue
    .line 349
    iget-object v2, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 350
    iget-object v2, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v0

    check-cast v1, Lcom/baidu/fm/FMStationInfo;

    .line 351
    .local v1, s:Lcom/baidu/fm/FMStationInfo;
    invoke-virtual {v1}, Lcom/baidu/fm/FMStationInfo;->getStationFreqInt()I

    move-result v2

    if-ge v2, p1, :cond_0

    .line 355
    .end local v1           #s:Lcom/baidu/fm/FMStationInfo;
    :goto_1
    return-object v1

    .line 349
    .restart local v1       #s:Lcom/baidu/fm/FMStationInfo;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 355
    .end local v1           #s:Lcom/baidu/fm/FMStationInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getPrevNearestStationInfo(Ljava/lang/String;)Lcom/baidu/fm/FMStationInfo;
    .locals 4
    .parameter "freqString"

    .prologue
    .line 335
    invoke-static {p1}, Lcom/baidu/fm/FMStationInfo;->stringFreqToIntFreq(Ljava/lang/String;)I

    move-result v0

    .line 338
    .local v0, freqInt:I
    iget-object v3, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 339
    iget-object v3, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    aget-object v2, v3, v1

    check-cast v2, Lcom/baidu/fm/FMStationInfo;

    .line 340
    .local v2, s:Lcom/baidu/fm/FMStationInfo;
    invoke-virtual {v2}, Lcom/baidu/fm/FMStationInfo;->getStationFreqInt()I

    move-result v3

    if-ge v3, v0, :cond_0

    .line 344
    .end local v2           #s:Lcom/baidu/fm/FMStationInfo;
    :goto_1
    return-object v2

    .line 338
    .restart local v2       #s:Lcom/baidu/fm/FMStationInfo;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 344
    .end local v2           #s:Lcom/baidu/fm/FMStationInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getStationInfoByFreq(I)Lcom/baidu/fm/FMStationInfo;
    .locals 3
    .parameter "freqInt"

    .prologue
    .line 274
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 275
    iget-object v2, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v0

    check-cast v1, Lcom/baidu/fm/FMStationInfo;

    .line 276
    .local v1, info:Lcom/baidu/fm/FMStationInfo;
    invoke-virtual {v1}, Lcom/baidu/fm/FMStationInfo;->getStationFreqInt()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 281
    .end local v1           #info:Lcom/baidu/fm/FMStationInfo;
    :goto_1
    return-object v1

    .line 274
    .restart local v1       #info:Lcom/baidu/fm/FMStationInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    .end local v1           #info:Lcom/baidu/fm/FMStationInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getStationInfoByFreq(Ljava/lang/String;)Lcom/baidu/fm/FMStationInfo;
    .locals 3
    .parameter "freqString"

    .prologue
    .line 285
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 286
    iget-object v2, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v0

    check-cast v1, Lcom/baidu/fm/FMStationInfo;

    .line 287
    .local v1, info:Lcom/baidu/fm/FMStationInfo;
    invoke-virtual {v1}, Lcom/baidu/fm/FMStationInfo;->getStationFreqString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    .end local v1           #info:Lcom/baidu/fm/FMStationInfo;
    :goto_1
    return-object v1

    .line 285
    .restart local v1       #info:Lcom/baidu/fm/FMStationInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    .end local v1           #info:Lcom/baidu/fm/FMStationInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getStationInfoByIndex(J)Lcom/baidu/fm/FMStationInfo;
    .locals 2
    .parameter "checkedIds"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    long-to-int v1, p1

    aget-object v0, v0, v1

    check-cast v0, Lcom/baidu/fm/FMStationInfo;

    return-object v0
.end method

.method public getStationInfoCount()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getStationList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/fm/FMStationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isStationInfoExist(Ljava/lang/String;)I
    .locals 3
    .parameter "freq"

    .prologue
    .line 422
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 423
    iget-object v1, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    check-cast v1, Lcom/baidu/fm/FMStationInfo;

    invoke-virtual {v1}, Lcom/baidu/fm/FMStationInfo;->getStationFreqString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    const-string v1, "FMPersistence"

    const-string v2, "addStationInfo: station has already exist in list"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .end local v0           #i:I
    :goto_1
    return v0

    .line 422
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public isStationInfoFavorited(Ljava/lang/String;)Z
    .locals 3
    .parameter "freq"

    .prologue
    .line 520
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 521
    iget-object v1, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    check-cast v1, Lcom/baidu/fm/FMStationInfo;

    invoke-virtual {v1}, Lcom/baidu/fm/FMStationInfo;->getStationFreqString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    const-string v1, "FMPersistence"

    const-string v2, "isStationInfoFavorited: station has already favorite in list"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v1, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    check-cast v1, Lcom/baidu/fm/FMStationInfo;

    invoke-virtual {v1}, Lcom/baidu/fm/FMStationInfo;->isFavorite()Z

    move-result v1

    .line 527
    :goto_1
    return v1

    .line 520
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 527
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public loadStationInfo()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 605
    iget-object v3, p0, Lcom/baidu/fm/FMPersistence;->mContext:Landroid/content/Context;

    const-string v4, "FMStationList"

    invoke-virtual {v3, v4, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 608
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "CHANNEL_NUM"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/baidu/fm/FMPersistence;->mStationNum:J

    .line 610
    iget-object v3, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 612
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    int-to-long v3, v1

    iget-wide v5, p0, Lcom/baidu/fm/FMPersistence;->mStationNum:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 613
    new-instance v0, Lcom/baidu/fm/FMStationInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CHANNEL_FREQ_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CHANNEL_NAME_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CHANNEL_FAVO_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CHANNEL_META_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/baidu/fm/FMStationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 618
    .local v0, ch:Lcom/baidu/fm/FMStationInfo;
    iget-object v3, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 620
    .end local v0           #ch:Lcom/baidu/fm/FMStationInfo;
    :cond_0
    return-void
.end method

.method public removeAllStationInfo()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 486
    return-void
.end method

.method public removeByIds(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 475
    .local p1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 477
    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v1, v2, v0

    .line 478
    .local v1, removeId:I
    iget-object v2, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 479
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/baidu/fm/FMPersistence;->mDirty:Z

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    .end local v1           #removeId:I
    :cond_0
    return-void
.end method

.method public removeByIds([J)V
    .locals 4
    .parameter "ids"

    .prologue
    .line 459
    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    .line 460
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    aget-wide v2, p1, v0

    long-to-int v2, v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 467
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/fm/FMPersistence;->mDirty:Z

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    :cond_0
    return-void
.end method

.method public removeStationInfo(Lcom/baidu/fm/FMStationInfo;)V
    .locals 1
    .parameter "ch"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/fm/FMPersistence;->mDirty:Z

    .line 455
    return-void
.end method

.method public removeStationInfo(Ljava/lang/String;)Z
    .locals 3
    .parameter "freq"

    .prologue
    const/4 v2, 0x1

    .line 433
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 440
    iput-boolean v2, p0, Lcom/baidu/fm/FMPersistence;->mDirty:Z

    .line 444
    :cond_0
    return v2

    .line 433
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public renameStation(ILjava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "newName"

    .prologue
    .line 558
    iget-object v0, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/fm/FMStationInfo;

    invoke-virtual {v0, p2}, Lcom/baidu/fm/FMStationInfo;->setStationName(Ljava/lang/String;)V

    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/fm/FMPersistence;->mDirty:Z

    .line 560
    return-void
.end method

.method public saveCloseTimeIndex(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 571
    iget-object v2, p0, Lcom/baidu/fm/FMPersistence;->mContext:Landroid/content/Context;

    const-string v3, "FMStationList"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 573
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 575
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "close_time"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 576
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 577
    return-void
.end method

.method public saveIfDirty()V
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/baidu/fm/FMPersistence;->mDirty:Z

    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {p0}, Lcom/baidu/fm/FMPersistence;->saveStationInfo()V

    .line 566
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/fm/FMPersistence;->mDirty:Z

    .line 568
    :cond_0
    return-void
.end method

.method public saveStationInfo()V
    .locals 6

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/baidu/fm/FMPersistence;->sortStationList()V

    .line 584
    iget-object v3, p0, Lcom/baidu/fm/FMPersistence;->mContext:Landroid/content/Context;

    const-string v4, "FMStationList"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 586
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 588
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "CHANNEL_NUM"

    iget-object v4, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 590
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 591
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CHANNEL_FREQ_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/fm/FMStationInfo;

    invoke-virtual {v3}, Lcom/baidu/fm/FMStationInfo;->getStationFreqString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 593
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CHANNEL_NAME_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/fm/FMStationInfo;

    invoke-virtual {v3}, Lcom/baidu/fm/FMStationInfo;->getStationName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 595
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CHANNEL_FAVO_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/fm/FMStationInfo;

    invoke-virtual {v3}, Lcom/baidu/fm/FMStationInfo;->isFavorite()Z

    move-result v3

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 597
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CHANNEL_META_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/fm/FMStationInfo;

    invoke-virtual {v3}, Lcom/baidu/fm/FMStationInfo;->getMetadata()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 601
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 602
    return-void
.end method

.method public setCurrentStation(I)V
    .locals 5
    .parameter "currentStation"

    .prologue
    .line 104
    iget v2, p0, Lcom/baidu/fm/FMPersistence;->mCurrentFreq:I

    if-eq v2, p1, :cond_0

    .line 105
    iput p1, p0, Lcom/baidu/fm/FMPersistence;->mCurrentFreq:I

    .line 107
    iget-object v2, p0, Lcom/baidu/fm/FMPersistence;->mContext:Landroid/content/Context;

    const-string v3, "FMCurrentFreq"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 109
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 111
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "CURRENT_CHANNEL"

    iget v3, p0, Lcom/baidu/fm/FMPersistence;->mCurrentFreq:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public setFavoriteById(I)V
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 489
    iget-object v0, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    check-cast v0, Lcom/baidu/fm/FMStationInfo;

    invoke-virtual {v0, v1}, Lcom/baidu/fm/FMStationInfo;->setFavorite(Z)V

    .line 490
    iput-boolean v1, p0, Lcom/baidu/fm/FMPersistence;->mDirty:Z

    .line 491
    return-void
.end method

.method public setFavoriteByIds(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x1

    .line 534
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 536
    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 537
    .local v1, setId:I
    iget-object v2, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v1

    check-cast v2, Lcom/baidu/fm/FMStationInfo;

    invoke-virtual {v2, v3}, Lcom/baidu/fm/FMStationInfo;->setFavorite(Z)V

    .line 538
    iput-boolean v3, p0, Lcom/baidu/fm/FMPersistence;->mDirty:Z

    .line 534
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    .end local v1           #setId:I
    :cond_0
    return-void
.end method

.method public setFavoriteByIds([J)V
    .locals 5
    .parameter "ids"

    .prologue
    const/4 v4, 0x1

    .line 499
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    aget-wide v2, p1, v0

    long-to-int v2, v2

    aget-object v1, v1, v2

    check-cast v1, Lcom/baidu/fm/FMStationInfo;

    invoke-virtual {v1, v4}, Lcom/baidu/fm/FMStationInfo;->setFavorite(Z)V

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 503
    :cond_0
    iput-boolean v4, p0, Lcom/baidu/fm/FMPersistence;->mDirty:Z

    .line 504
    return-void
.end method

.method public setStationList(Ljava/util/ArrayList;)V
    .locals 7
    .parameter "channelList"

    .prologue
    const/4 v6, 0x0

    .line 140
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 141
    .local v0, channelCnt:I
    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    .line 142
    const/16 v0, 0x64

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 145
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 146
    iget-object v3, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    new-instance v4, Lcom/baidu/fm/FMStationInfo;

    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x0

    invoke-direct {v4, v2, v6, v5, v6}, Lcom/baidu/fm/FMStationInfo;-><init>(ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/fm/FMPersistence;->sortStationList()V

    .line 150
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/baidu/fm/FMPersistence;->mDirty:Z

    .line 151
    return-void
.end method

.method public setStationList([I)V
    .locals 7
    .parameter "channelList"

    .prologue
    const/4 v6, 0x0

    .line 155
    array-length v0, p1

    .line 156
    .local v0, channelCnt:I
    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    .line 157
    const/16 v0, 0x64

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 160
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 161
    iget-object v2, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    new-instance v3, Lcom/baidu/fm/FMStationInfo;

    aget v4, p1, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v6, v5, v6}, Lcom/baidu/fm/FMStationInfo;-><init>(ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/fm/FMPersistence;->sortStationList()V

    .line 165
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/baidu/fm/FMPersistence;->mDirty:Z

    .line 166
    return-void
.end method

.method public sortStationList()V
    .locals 3

    .prologue
    .line 624
    new-instance v0, Lcom/baidu/fm/FMPersistence$listComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/fm/FMPersistence$listComparator;-><init>(Lcom/baidu/fm/FMPersistence;Lcom/baidu/fm/FMPersistence$1;)V

    .line 625
    .local v0, comp:Ljava/util/Comparator;
    iget-object v1, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 626
    iget-object v1, p0, Lcom/baidu/fm/FMPersistence;->mStationList:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 629
    :cond_0
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/baidu/fm/FMPersistence;->loadStationInfo()V

    .line 85
    return-void
.end method
