.class public Lcom/android/internal/telephony/VirtualNet;
.super Ljava/lang/Object;
.source "VirtualNet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/VirtualNet$SpecialFile;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static mVirtualNet:Lcom/android/internal/telephony/VirtualNet;

.field private static mVirtualNet1:Lcom/android/internal/telephony/VirtualNet;

.field private static specialFilesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/internal/telephony/VirtualNet$SpecialFile;",
            "[B>;"
        }
    .end annotation
.end field

.field private static specialFilesMap1:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/internal/telephony/VirtualNet$SpecialFile;",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private apnFilter:Ljava/lang/String;

.field private numMatch:I

.field private numMatchShort:I

.field private numeric:Ljava/lang/String;

.field private operatorName:Ljava/lang/String;

.field private sms7BitEnabled:I

.field private smsCodingNational:I

.field private voicemailNumber:Ljava/lang/String;

.field private voicemailTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    sput-object v0, Lcom/android/internal/telephony/VirtualNet;->mVirtualNet:Lcom/android/internal/telephony/VirtualNet;

    .line 29
    sput-object v0, Lcom/android/internal/telephony/VirtualNet;->mVirtualNet1:Lcom/android/internal/telephony/VirtualNet;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/VirtualNet;->specialFilesMap:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/VirtualNet;->specialFilesMap1:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V
    .locals 0
    .parameter "tmpNumeric"
    .parameter "tmpApnFilter"
    .parameter "tmpVoicemalNumber"
    .parameter "tmpVoicemalTag"
    .parameter "tmpNumMatch"
    .parameter "tmpNumMatchShort"
    .parameter "tmpSms7BitEnabled"
    .parameter "tmpSmsCodingNational"
    .parameter "tmpOperatorName"

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-object p1, p0, Lcom/android/internal/telephony/VirtualNet;->numeric:Ljava/lang/String;

    .line 435
    iput-object p2, p0, Lcom/android/internal/telephony/VirtualNet;->apnFilter:Ljava/lang/String;

    .line 436
    iput-object p3, p0, Lcom/android/internal/telephony/VirtualNet;->voicemailNumber:Ljava/lang/String;

    .line 437
    iput-object p4, p0, Lcom/android/internal/telephony/VirtualNet;->voicemailTag:Ljava/lang/String;

    .line 438
    iput p5, p0, Lcom/android/internal/telephony/VirtualNet;->numMatch:I

    .line 439
    iput p6, p0, Lcom/android/internal/telephony/VirtualNet;->numMatchShort:I

    .line 440
    iput p7, p0, Lcom/android/internal/telephony/VirtualNet;->sms7BitEnabled:I

    .line 441
    iput p8, p0, Lcom/android/internal/telephony/VirtualNet;->smsCodingNational:I

    .line 442
    iput-object p9, p0, Lcom/android/internal/telephony/VirtualNet;->operatorName:Ljava/lang/String;

    .line 443
    return-void
.end method

.method public static addSpecialFile(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2
    .parameter "filePath"
    .parameter "fileId"
    .parameter "bytes"

    .prologue
    .line 66
    new-instance v0, Lcom/android/internal/telephony/VirtualNet$SpecialFile;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/VirtualNet$SpecialFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .local v0, specialFile:Lcom/android/internal/telephony/VirtualNet$SpecialFile;
    sget-object v1, Lcom/android/internal/telephony/VirtualNet;->specialFilesMap:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public static addSpecialFile(Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 2
    .parameter "filePath"
    .parameter "fileId"
    .parameter "bytes"
    .parameter "slotId"

    .prologue
    .line 74
    new-instance v0, Lcom/android/internal/telephony/VirtualNet$SpecialFile;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/VirtualNet$SpecialFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .local v0, specialFile:Lcom/android/internal/telephony/VirtualNet$SpecialFile;
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    .line 76
    sget-object v1, Lcom/android/internal/telephony/VirtualNet;->specialFilesMap1:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    if-nez p3, :cond_0

    .line 78
    sget-object v1, Lcom/android/internal/telephony/VirtualNet;->specialFilesMap:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static createVirtualNet(Landroid/database/Cursor;I)V
    .locals 1
    .parameter "cursor"
    .parameter "simId"

    .prologue
    .line 402
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 403
    invoke-static {p0}, Lcom/android/internal/telephony/VirtualNet;->getVirtualNet(Landroid/database/Cursor;)Lcom/android/internal/telephony/VirtualNet;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/VirtualNet;->mVirtualNet1:Lcom/android/internal/telephony/VirtualNet;

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    if-nez p1, :cond_0

    .line 405
    invoke-static {p0}, Lcom/android/internal/telephony/VirtualNet;->getVirtualNet(Landroid/database/Cursor;)Lcom/android/internal/telephony/VirtualNet;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/VirtualNet;->mVirtualNet:Lcom/android/internal/telephony/VirtualNet;

    goto :goto_0
.end method

.method public static getApnFilter()Ljava/lang/String;
    .locals 2

    .prologue
    .line 460
    invoke-static {}, Lcom/android/internal/telephony/VirtualNet;->getCurrentVirtualNet()Lcom/android/internal/telephony/VirtualNet;

    move-result-object v0

    .line 461
    .local v0, virtualNet:Lcom/android/internal/telephony/VirtualNet;
    if-eqz v0, :cond_0

    .line 462
    iget-object v1, v0, Lcom/android/internal/telephony/VirtualNet;->apnFilter:Ljava/lang/String;

    .line 464
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getApnFilter(I)Ljava/lang/String;
    .locals 3
    .parameter "simId"

    .prologue
    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApnFilter, simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/VirtualNet;->logd(Ljava/lang/String;)V

    .line 470
    invoke-static {p0}, Lcom/android/internal/telephony/VirtualNet;->getCurrentVirtualNet(I)Lcom/android/internal/telephony/VirtualNet;

    move-result-object v0

    .line 471
    .local v0, virtualNet:Lcom/android/internal/telephony/VirtualNet;
    if-eqz v0, :cond_0

    .line 472
    iget-object v1, v0, Lcom/android/internal/telephony/VirtualNet;->apnFilter:Ljava/lang/String;

    .line 474
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCurrentVirtualNet()Lcom/android/internal/telephony/VirtualNet;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/VirtualNet;->hasIccCard(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/android/internal/telephony/VirtualNet;->mVirtualNet:Lcom/android/internal/telephony/VirtualNet;

    .line 89
    :goto_0
    return-object v0

    .line 86
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/telephony/VirtualNet;->hasIccCard(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    sget-object v0, Lcom/android/internal/telephony/VirtualNet;->mVirtualNet1:Lcom/android/internal/telephony/VirtualNet;

    goto :goto_0

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCurrentVirtualNet(I)Lcom/android/internal/telephony/VirtualNet;
    .locals 2
    .parameter "simId"

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentVirtualNet, simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/VirtualNet;->logd(Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 99
    sget-object v0, Lcom/android/internal/telephony/VirtualNet;->mVirtualNet1:Lcom/android/internal/telephony/VirtualNet;

    .line 103
    :goto_0
    return-object v0

    .line 100
    :cond_0
    if-nez p0, :cond_1

    .line 101
    sget-object v0, Lcom/android/internal/telephony/VirtualNet;->mVirtualNet:Lcom/android/internal/telephony/VirtualNet;

    goto :goto_0

    .line 103
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getVirtualNet(Landroid/database/Cursor;)Lcom/android/internal/telephony/VirtualNet;
    .locals 11
    .parameter "cursor"

    .prologue
    .line 411
    if-nez p0, :cond_1

    .line 412
    const/4 v0, 0x0

    .line 428
    :cond_0
    :goto_0
    return-object v0

    .line 413
    :cond_1
    const-string/jumbo v10, "numeric"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, tmpNumeric:Ljava/lang/String;
    const-string v10, "apn_filter"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, tmpApnFilter:Ljava/lang/String;
    const-string/jumbo v10, "voicemail_number"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 416
    .local v3, tmpVoicemalNumber:Ljava/lang/String;
    const-string/jumbo v10, "voicemail_tag"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 417
    .local v4, tmpVoicemalTag:Ljava/lang/String;
    const-string/jumbo v10, "num_match"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 418
    .local v5, tmpNumMatch:I
    const-string/jumbo v10, "num_match_short"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 419
    .local v6, tmpNumMatchShort:I
    const-string/jumbo v10, "sms_7bit_enabled"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 420
    .local v7, tmpSms7BitEnabled:I
    const-string/jumbo v10, "sms_coding_national"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 421
    .local v8, tmpSmsCodingNational:I
    const-string/jumbo v10, "ons_name"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 422
    .local v9, tmpOperatorName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 423
    .local v0, virtualNet:Lcom/android/internal/telephony/VirtualNet;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 424
    new-instance v0, Lcom/android/internal/telephony/VirtualNet;

    .end local v0           #virtualNet:Lcom/android/internal/telephony/VirtualNet;
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/VirtualNet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .restart local v0       #virtualNet:Lcom/android/internal/telephony/VirtualNet;
    goto :goto_0
.end method

.method public static hasIccCard(I)Z
    .locals 4
    .parameter "slot"

    .prologue
    .line 510
    const/4 v0, 0x0

    .line 514
    .local v0, bRet:Z
    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 516
    .local v2, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 517
    invoke-interface {v2, p0}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 534
    .end local v2           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v0

    .line 519
    :catch_0
    move-exception v1

    .line 520
    .local v1, ex:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static isEmptySimFile([B)Z
    .locals 6
    .parameter "gid1"

    .prologue
    .line 381
    const/4 v3, 0x1

    .line 382
    .local v3, isEmptyFile:Z
    move-object v0, p0

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-byte v1, v0, v2

    .line 383
    .local v1, gid1Byte:B
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 384
    const/4 v3, 0x0

    .line 382
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 387
    .end local v1           #gid1Byte:B
    :cond_1
    return v3
.end method

.method private static isGid1VirtualNet([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "gid1"
    .parameter "gid1Value"
    .parameter "gidMask"

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isGid1VirtualNet gid1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; gid1Value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; gidMask = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/VirtualNet;->logd(Ljava/lang/String;)V

    .line 349
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/VirtualNet;->matchByteWithMask([BLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isImsiVirtualNet(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "imsi"
    .parameter "tmpImsiStart"

    .prologue
    const/4 v0, 0x0

    .line 392
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 397
    :cond_0
    :goto_0
    return v0

    .line 394
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isSpecialFileVirtualNet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .parameter "matchPath"
    .parameter "matchFile"
    .parameter "matchValue"
    .parameter "matchMask"
    .parameter "simId"

    .prologue
    .line 319
    new-instance v1, Lcom/android/internal/telephony/VirtualNet$SpecialFile;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/VirtualNet$SpecialFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .local v1, specialFile:Lcom/android/internal/telephony/VirtualNet$SpecialFile;
    const/4 v0, 0x0

    .line 323
    .local v0, bytes:[B
    const/4 v2, 0x1

    if-ne p4, v2, :cond_0

    .line 324
    sget-object v2, Lcom/android/internal/telephony/VirtualNet;->specialFilesMap1:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bytes:[B
    check-cast v0, [B

    .line 329
    .restart local v0       #bytes:[B
    :goto_0
    if-nez v0, :cond_1

    .line 330
    const/4 v2, 0x0

    .line 332
    :goto_1
    return v2

    .line 326
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/VirtualNet;->specialFilesMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bytes:[B
    check-cast v0, [B

    .restart local v0       #bytes:[B
    goto :goto_0

    .line 332
    :cond_1
    invoke-static {v0, p2, p3}, Lcom/android/internal/telephony/VirtualNet;->matchByteWithMask([BLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_1
.end method

.method private static isSpnVirtualNet(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "spn1"
    .parameter "spn2"

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isSpnVirtualNet spn1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; spn2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/VirtualNet;->logd(Ljava/lang/String;)V

    .line 341
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVirtualNet()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 109
    invoke-static {v0}, Lcom/android/internal/telephony/VirtualNet;->hasIccCard(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    invoke-static {v0}, Lcom/android/internal/telephony/VirtualNet;->isVirtualNet(I)Z

    move-result v0

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    invoke-static {v2}, Lcom/android/internal/telephony/VirtualNet;->hasIccCard(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-static {v2}, Lcom/android/internal/telephony/VirtualNet;->isVirtualNet(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static isVirtualNet(I)Z
    .locals 4
    .parameter "simId"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isVirtualNet, simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/VirtualNet;->logd(Ljava/lang/String;)V

    .line 123
    if-ne p0, v0, :cond_2

    .line 124
    sget-object v2, Lcom/android/internal/telephony/VirtualNet;->mVirtualNet1:Lcom/android/internal/telephony/VirtualNet;

    if-eqz v2, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 124
    goto :goto_0

    .line 125
    :cond_2
    if-nez p0, :cond_3

    .line 126
    sget-object v2, Lcom/android/internal/telephony/VirtualNet;->mVirtualNet:Lcom/android/internal/telephony/VirtualNet;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 128
    goto :goto_0
.end method

.method public static loadSpecialFiles(Ljava/lang/String;Lcom/android/internal/telephony/gsm/SIMRecords;)V
    .locals 13
    .parameter "numeric"
    .parameter "simRecords"

    .prologue
    .line 148
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSimId()I

    move-result v11

    .line 149
    .local v11, simId:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "loadSpecialFiles() simId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/VirtualNet;->logd(Ljava/lang/String;)V

    .line 151
    const-string/jumbo v3, "numeric = ? AND virtual_net_rule = ?"

    .line 152
    .local v3, selectionClause:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p0, v4, v0

    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 153
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    .line 154
    .local v10, phone:Lcom/android/internal/telephony/Phone;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "numeric"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "virtual_net_rule"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "match_path"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "match_file"

    aput-object v1, v2, v0

    .line 162
    .local v2, projection:[Ljava/lang/String;
    const/4 v0, 0x1

    if-ne v11, v0, :cond_0

    .line 163
    sget-object v0, Lcom/android/internal/telephony/VirtualNet;->specialFilesMap1:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 169
    :goto_0
    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$VirtualNets;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 170
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 171
    const-string/jumbo v0, "query virtual net db got a null cursor"

    invoke-static {v0}, Lcom/android/internal/telephony/VirtualNet;->loge(Ljava/lang/String;)V

    .line 203
    :goto_1
    return-void

    .line 165
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/VirtualNet;->specialFilesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 175
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 176
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 177
    const-string/jumbo v0, "match_path"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 178
    .local v9, matchPath:Ljava/lang/String;
    const-string/jumbo v0, "match_file"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 179
    .local v8, matchFile:Ljava/lang/String;
    new-instance v12, Lcom/android/internal/telephony/VirtualNet$SpecialFile;

    invoke-direct {v12, v9, v8}, Lcom/android/internal/telephony/VirtualNet$SpecialFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v12, specialFile:Lcom/android/internal/telephony/VirtualNet$SpecialFile;
    const/4 v0, 0x1

    if-ne v11, v0, :cond_3

    .line 182
    sget-object v0, Lcom/android/internal/telephony/VirtualNet;->specialFilesMap1:Ljava/util/Map;

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "load specialFile matchPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "matchFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/VirtualNet;->logd(Ljava/lang/String;)V

    .line 184
    sget-object v0, Lcom/android/internal/telephony/VirtualNet;->specialFilesMap1:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-virtual {p1, v9, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->loadFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_2
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 197
    .end local v8           #matchFile:Ljava/lang/String;
    .end local v9           #matchPath:Ljava/lang/String;
    .end local v12           #specialFile:Lcom/android/internal/telephony/VirtualNet$SpecialFile;
    :catch_0
    move-exception v7

    .line 198
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 199
    const-string/jumbo v0, "loadVirtualNet got Exception"

    invoke-static {v0, v7}, Lcom/android/internal/telephony/VirtualNet;->loge(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 188
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v8       #matchFile:Ljava/lang/String;
    .restart local v9       #matchPath:Ljava/lang/String;
    .restart local v12       #specialFile:Lcom/android/internal/telephony/VirtualNet$SpecialFile;
    :cond_3
    :try_start_2
    sget-object v0, Lcom/android/internal/telephony/VirtualNet;->specialFilesMap:Ljava/util/Map;

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "load specialFile matchPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "matchFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/VirtualNet;->logd(Ljava/lang/String;)V

    .line 190
    sget-object v0, Lcom/android/internal/telephony/VirtualNet;->specialFilesMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {p1, v9, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->loadFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 201
    .end local v8           #matchFile:Ljava/lang/String;
    .end local v9           #matchPath:Ljava/lang/String;
    .end local v12           #specialFile:Lcom/android/internal/telephony/VirtualNet$SpecialFile;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method

.method public static loadVirtualNet(Ljava/lang/String;Lcom/android/internal/telephony/gsm/SIMRecords;)V
    .locals 26
    .parameter "numeric"
    .parameter "simRecords"

    .prologue
    .line 208
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSimId()I

    move-result v15

    .line 209
    .local v15, simId:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadVirtualNet() simId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/VirtualNet;->logd(Ljava/lang/String;)V

    .line 211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "thread = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/VirtualNet;->logd(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v13

    .line 213
    .local v13, imsi:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getGID1()[B

    move-result-object v12

    .line 214
    .local v12, gid1:[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v16

    .line 216
    .local v16, spn:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start loadVirtualNet: numeric="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; gid1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; spn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/VirtualNet;->logd(Ljava/lang/String;)V

    .line 220
    const-string/jumbo v7, "numeric = ?"

    .line 221
    .local v7, selectionClause:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v8, v4

    .line 224
    .local v8, selectionArgs:[Ljava/lang/String;
    const/4 v4, 0x1

    if-ne v15, v4, :cond_0

    .line 225
    const/4 v4, 0x0

    sput-object v4, Lcom/android/internal/telephony/VirtualNet;->mVirtualNet1:Lcom/android/internal/telephony/VirtualNet;

    .line 231
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    .line 232
    .local v14, phone:Lcom/android/internal/telephony/Phone;
    const/16 v4, 0x12

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "numeric"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "virtual_net_rule"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string v5, "imsi_start"

    aput-object v5, v6, v4

    const/4 v4, 0x3

    const-string v5, "gid1"

    aput-object v5, v6, v4

    const/4 v4, 0x4

    const-string v5, "gid_mask"

    aput-object v5, v6, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "spn"

    aput-object v5, v6, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "match_path"

    aput-object v5, v6, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "match_file"

    aput-object v5, v6, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "match_value"

    aput-object v5, v6, v4

    const/16 v4, 0x9

    const-string/jumbo v5, "match_mask"

    aput-object v5, v6, v4

    const/16 v4, 0xa

    const-string v5, "apn_filter"

    aput-object v5, v6, v4

    const/16 v4, 0xb

    const-string/jumbo v5, "voicemail_number"

    aput-object v5, v6, v4

    const/16 v4, 0xc

    const-string/jumbo v5, "voicemail_tag"

    aput-object v5, v6, v4

    const/16 v4, 0xd

    const-string/jumbo v5, "num_match"

    aput-object v5, v6, v4

    const/16 v4, 0xe

    const-string/jumbo v5, "num_match_short"

    aput-object v5, v6, v4

    const/16 v4, 0xf

    const-string/jumbo v5, "sms_7bit_enabled"

    aput-object v5, v6, v4

    const/16 v4, 0x10

    const-string/jumbo v5, "sms_coding_national"

    aput-object v5, v6, v4

    const/16 v4, 0x11

    const-string/jumbo v5, "ons_name"

    aput-object v5, v6, v4

    .line 253
    .local v6, projection:[Ljava/lang/String;
    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$VirtualNets;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 254
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_1

    .line 255
    const-string/jumbo v4, "query virtual net db got a null cursor"

    invoke-static {v4}, Lcom/android/internal/telephony/VirtualNet;->loge(Ljava/lang/String;)V

    .line 314
    :goto_1
    return-void

    .line 227
    .end local v6           #projection:[Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v14           #phone:Lcom/android/internal/telephony/Phone;
    :cond_0
    const/4 v4, 0x0

    sput-object v4, Lcom/android/internal/telephony/VirtualNet;->mVirtualNet:Lcom/android/internal/telephony/VirtualNet;

    goto/16 :goto_0

    .line 259
    .restart local v6       #projection:[Ljava/lang/String;
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v14       #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 260
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_3

    .line 261
    const-string/jumbo v4, "virtual_net_rule"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 262
    .local v25, tmpVirtualNetRule:I
    packed-switch v25, :pswitch_data_0

    .line 306
    :cond_2
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 308
    .end local v25           #tmpVirtualNetRule:I
    :catch_0
    move-exception v11

    .line 309
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    .line 310
    const-string/jumbo v4, "loadVirtualNet got Exception"

    invoke-static {v4, v11}, Lcom/android/internal/telephony/VirtualNet;->loge(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 264
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v25       #tmpVirtualNetRule:I
    :pswitch_0
    :try_start_2
    const-string v4, "imsi_start"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 265
    .local v19, tmpImsiStart:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-static {v13, v0}, Lcom/android/internal/telephony/VirtualNet;->isImsiVirtualNet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find imsi virtual net imsiStart="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/VirtualNet;->logd(Ljava/lang/String;)V

    .line 268
    invoke-static {v10, v15}, Lcom/android/internal/telephony/VirtualNet;->createVirtualNet(Landroid/database/Cursor;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 312
    .end local v19           #tmpImsiStart:Ljava/lang/String;
    .end local v25           #tmpVirtualNetRule:I
    :catchall_0
    move-exception v4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v4

    .line 273
    .restart local v25       #tmpVirtualNetRule:I
    :pswitch_1
    :try_start_3
    const-string v4, "gid1"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 274
    .local v17, tmpGid1Value:Ljava/lang/String;
    const-string v4, "gid_mask"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 275
    .local v18, tmpGidMask:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v12, v0, v1}, Lcom/android/internal/telephony/VirtualNet;->isGid1VirtualNet([BLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find gid1 virtual net spn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/VirtualNet;->logd(Ljava/lang/String;)V

    .line 278
    invoke-static {v10, v15}, Lcom/android/internal/telephony/VirtualNet;->createVirtualNet(Landroid/database/Cursor;I)V

    goto :goto_3

    .line 283
    .end local v17           #tmpGid1Value:Ljava/lang/String;
    .end local v18           #tmpGidMask:Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v4, "spn"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 284
    .local v24, tmpSpn:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/internal/telephony/VirtualNet;->isSpnVirtualNet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find spn virtual net spn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/VirtualNet;->logd(Ljava/lang/String;)V

    .line 287
    invoke-static {v10, v15}, Lcom/android/internal/telephony/VirtualNet;->createVirtualNet(Landroid/database/Cursor;I)V

    goto/16 :goto_3

    .line 292
    .end local v24           #tmpSpn:Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v4, "match_path"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 293
    .local v22, tmpMatchPath:Ljava/lang/String;
    const-string/jumbo v4, "match_file"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 294
    .local v20, tmpMatchFile:Ljava/lang/String;
    const-string/jumbo v4, "match_value"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 295
    .local v23, tmpMatchValue:Ljava/lang/String;
    const-string/jumbo v4, "match_mask"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 297
    .local v21, tmpMatchMask:Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3, v15}, Lcom/android/internal/telephony/VirtualNet;->isSpecialFileVirtualNet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find special file virtual net matchValue ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/VirtualNet;->logd(Ljava/lang/String;)V

    .line 299
    invoke-static {v10, v15}, Lcom/android/internal/telephony/VirtualNet;->createVirtualNet(Landroid/database/Cursor;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 312
    .end local v20           #tmpMatchFile:Ljava/lang/String;
    .end local v21           #tmpMatchMask:Ljava/lang/String;
    .end local v22           #tmpMatchPath:Ljava/lang/String;
    .end local v23           #tmpMatchValue:Ljava/lang/String;
    .end local v25           #tmpVirtualNetRule:I
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 134
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VirtualNet] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 142
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VirtualNet] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter "text"
    .parameter "e"

    .prologue
    .line 138
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VirtualNet] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method private static matchByteWithMask([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "data"
    .parameter "value"
    .parameter "mask"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x2

    .line 354
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v6, p0

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    if-lt v6, v7, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v8, :cond_0

    invoke-virtual {p1, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0x"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v8, :cond_0

    invoke-virtual {p2, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0x"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 377
    :cond_0
    :goto_0
    return v3

    .line 360
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/VirtualNet;->isEmptySimFile([B)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 361
    const-string/jumbo v6, "matchByteWithMask data is null"

    invoke-static {v6}, Lcom/android/internal/telephony/VirtualNet;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :cond_2
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 365
    .local v5, valueString:Ljava/lang/String;
    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, maskString:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 367
    .local v4, valueBytes:[B
    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 368
    .local v1, maskBytes:[B
    array-length v6, v4

    array-length v7, v1

    if-ne v6, v7, :cond_0

    .line 369
    const/4 v3, 0x1

    .line 370
    .local v3, match:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v6, v1

    if-ge v0, v6, :cond_0

    .line 371
    aget-byte v6, p0, v0

    aget-byte v7, v1, v0

    and-int/2addr v6, v7

    aget-byte v7, v4, v0

    if-eq v6, v7, :cond_3

    .line 372
    const/4 v3, 0x0

    .line 370
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getNumMatch()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Lcom/android/internal/telephony/VirtualNet;->numMatch:I

    return v0
.end method

.method public getNumMatchShort()I
    .locals 1

    .prologue
    .line 492
    iget v0, p0, Lcom/android/internal/telephony/VirtualNet;->numMatchShort:I

    return v0
.end method

.method public getNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/internal/telephony/VirtualNet;->numeric:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/internal/telephony/VirtualNet;->operatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getSms7BitEnabled()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/android/internal/telephony/VirtualNet;->sms7BitEnabled:I

    return v0
.end method

.method public getSmsCodingNational()I
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Lcom/android/internal/telephony/VirtualNet;->smsCodingNational:I

    return v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVoiceMailNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/VirtualNet;->voicemailNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/VirtualNet;->logd(Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/android/internal/telephony/VirtualNet;->voicemailNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getVoicemailTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/internal/telephony/VirtualNet;->voicemailTag:Ljava/lang/String;

    return-object v0
.end method
