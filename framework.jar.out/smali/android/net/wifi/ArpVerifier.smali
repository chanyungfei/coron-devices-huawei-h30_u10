.class public Landroid/net/wifi/ArpVerifier;
.super Ljava/lang/Object;
.source "ArpVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/ArpVerifier$2;,
        Landroid/net/wifi/ArpVerifier$MsgItem;,
        Landroid/net/wifi/ArpVerifier$ArpState;,
        Landroid/net/wifi/ArpVerifier$ClientHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DEFAULT_ARP_NUM:I = 0x1

.field private static final DEFAULT_ARP_PING_TIMEOUT_MS:I = 0x64

.field private static final DEFAULT_FUL_PING_TIMEOUT_MS:I = 0x1388

.field private static final DEFAULT_MIN_ARP_RESPONSES:I = 0x1

.field private static final DEFAULT_MIN_RESPONSE:I = 0x1

.field private static final DEFAULT_NUM_ARP_PINGS:I = 0x2

.field private static final DEFAULT_SIG_PING_TIMEOUT_MS:I = 0x3e8

.field private static final DIAGNOSE_COMPLETE_ACTION:Ljava/lang/String; = "com.huawei.network.DIAGNOSE_COMPLETE"

.field private static final FULL_ARP_CHECK:I = 0x1

.field public static final MSG_DUMP_LOG:I = 0x3f2

.field private static final MSG_WIFI_ARP_FAILED:I = 0xe

.field private static final PACKAGE_NAME:Ljava/lang/String; = "ArpVerifier"

.field private static final SINGLE_ARP_CHECK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ArpVerifier"


# instance fields
.field private mCM:Landroid/net/ConnectivityManager;

.field private mCheckStateToken:I

.field private mClientHandler:Landroid/net/wifi/ArpVerifier$ClientHandler;

.field private mContext:Landroid/content/Context;

.field private mGateway:Ljava/lang/String;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisterReceiver:Z

.field private mSpendTime:I

.field private mThread:Landroid/os/HandlerThread;

.field private mWM:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v4, p0, Landroid/net/wifi/ArpVerifier;->mSpendTime:I

    .line 55
    iput v4, p0, Landroid/net/wifi/ArpVerifier;->mCheckStateToken:I

    .line 56
    iput-boolean v4, p0, Landroid/net/wifi/ArpVerifier;->mRegisterReceiver:Z

    .line 58
    iput-object v0, p0, Landroid/net/wifi/ArpVerifier;->mGateway:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Landroid/net/wifi/ArpVerifier;->mContext:Landroid/content/Context;

    .line 60
    iput-object v0, p0, Landroid/net/wifi/ArpVerifier;->mThread:Landroid/os/HandlerThread;

    .line 62
    iput-object v0, p0, Landroid/net/wifi/ArpVerifier;->mClientHandler:Landroid/net/wifi/ArpVerifier$ClientHandler;

    .line 63
    iput-object v0, p0, Landroid/net/wifi/ArpVerifier;->mWM:Landroid/net/wifi/WifiManager;

    .line 64
    iput-object v0, p0, Landroid/net/wifi/ArpVerifier;->mCM:Landroid/net/ConnectivityManager;

    .line 65
    new-instance v0, Landroid/net/NetworkInfo;

    const/4 v1, 0x1

    const-string v2, "WIFI"

    const-string v3, ""

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/ArpVerifier;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 157
    new-instance v0, Landroid/net/wifi/ArpVerifier$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/ArpVerifier$1;-><init>(Landroid/net/wifi/ArpVerifier;)V

    iput-object v0, p0, Landroid/net/wifi/ArpVerifier;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    iput-object p1, p0, Landroid/net/wifi/ArpVerifier;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {p0}, Landroid/net/wifi/ArpVerifier;->startArpChecker()V

    .line 71
    invoke-direct {p0}, Landroid/net/wifi/ArpVerifier;->registerForBroadcasts()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/ArpVerifier;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Landroid/net/wifi/ArpVerifier;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$002(Landroid/net/wifi/ArpVerifier;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Landroid/net/wifi/ArpVerifier;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$100(Landroid/net/wifi/ArpVerifier;)Landroid/net/wifi/ArpVerifier$ClientHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Landroid/net/wifi/ArpVerifier;->mClientHandler:Landroid/net/wifi/ArpVerifier$ClientHandler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/ArpVerifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Landroid/net/wifi/ArpVerifier;->mCheckStateToken:I

    return v0
.end method

.method static synthetic access$208(Landroid/net/wifi/ArpVerifier;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Landroid/net/wifi/ArpVerifier;->mCheckStateToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/ArpVerifier;->mCheckStateToken:I

    return v0
.end method

.method static synthetic access$300(Landroid/net/wifi/ArpVerifier;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/net/wifi/ArpVerifier;->isConnectedToWifi()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/net/wifi/ArpVerifier;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/net/wifi/ArpVerifier;->isEnableChecker()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/net/wifi/ArpVerifier;III)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/ArpVerifier;->doArp(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/net/wifi/ArpVerifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Landroid/net/wifi/ArpVerifier;->mSpendTime:I

    return v0
.end method

.method static synthetic access$700(Landroid/net/wifi/ArpVerifier;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Landroid/net/wifi/ArpVerifier;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Landroid/net/wifi/ArpVerifier;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/net/wifi/ArpVerifier;->doArpTest(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/net/wifi/ArpVerifier;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/net/wifi/ArpVerifier;->pingGateway(I)Z

    move-result v0

    return v0
.end method

.method private constructArpPeer()Landroid/net/arp/ArpPeer;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 422
    iget-object v7, p0, Landroid/net/wifi/ArpVerifier;->mWM:Landroid/net/wifi/WifiManager;

    if-nez v7, :cond_0

    .line 423
    iget-object v7, p0, Landroid/net/wifi/ArpVerifier;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Landroid/net/wifi/ArpVerifier;->mWM:Landroid/net/wifi/WifiManager;

    .line 425
    :cond_0
    iget-object v7, p0, Landroid/net/wifi/ArpVerifier;->mWM:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .line 426
    .local v6, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-direct {p0}, Landroid/net/wifi/ArpVerifier;->getCurrentLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    .line 428
    .local v4, linkProperties:Landroid/net/LinkProperties;
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 429
    .local v3, linkIFName:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    .line 431
    .local v5, macAddr:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v7

    invoke-static {v7}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v2

    .line 433
    .local v2, linkAddr:Ljava/net/InetAddress;
    const/4 v1, 0x0

    .line 434
    .local v1, gateway:Ljava/net/InetAddress;
    iget-object v7, p0, Landroid/net/wifi/ArpVerifier;->mWM:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 435
    .local v0, dhcpInfo:Landroid/net/DhcpInfo;
    if-eqz v0, :cond_1

    iget v7, v0, Landroid/net/DhcpInfo;->gateway:I

    if-eqz v7, :cond_1

    .line 436
    iget v7, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v7}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    .line 439
    :cond_1
    if-nez v1, :cond_2

    .line 440
    const/4 v7, 0x0

    .line 444
    :goto_0
    return-object v7

    .line 442
    :cond_2
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/ArpVerifier;->mGateway:Ljava/lang/String;

    .line 443
    const-string v7, "ArpVerifier"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ARP "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",addr: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",mac: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",gw: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v7, Landroid/net/arp/ArpPeer;

    invoke-direct {v7, v3, v2, v5, v1}, Landroid/net/arp/ArpPeer;-><init>(Ljava/lang/String;Ljava/net/InetAddress;Ljava/lang/String;Ljava/net/InetAddress;)V

    goto :goto_0
.end method

.method private doArp(III)Z
    .locals 14
    .parameter "arpNum"
    .parameter "minResponse"
    .parameter "timeout"

    .prologue
    .line 369
    const/4 v6, 0x0

    .line 370
    .local v6, retArp:Z
    const/4 v11, 0x0

    iput v11, p0, Landroid/net/wifi/ArpVerifier;->mSpendTime:I

    .line 372
    :try_start_0
    invoke-direct {p0}, Landroid/net/wifi/ArpVerifier;->constructArpPeer()Landroid/net/arp/ArpPeer;

    move-result-object v4

    .line 373
    .local v4, peer:Landroid/net/arp/ArpPeer;
    if-nez v4, :cond_0

    .line 374
    const/4 v11, 0x1

    .line 404
    .end local v4           #peer:Landroid/net/arp/ArpPeer;
    :goto_0
    return v11

    .line 376
    .restart local v4       #peer:Landroid/net/arp/ArpPeer;
    :cond_0
    const/4 v5, 0x0

    .line 377
    .local v5, responses:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, p1, :cond_3

    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 380
    .local v9, startTimestamp:J
    move/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/net/arp/ArpPeer;->doArp(I)[B

    move-result-object v11

    if-eqz v11, :cond_1

    .line 381
    add-int/lit8 v5, v5, 0x1

    .line 383
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v9

    long-to-int v8, v11

    .line 384
    .local v8, spendTime:I
    const-string v11, "ArpVerifier"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ARP spend time:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget v11, p0, Landroid/net/wifi/ArpVerifier;->mSpendTime:I

    if-le v8, v11, :cond_2

    .line 386
    iput v8, p0, Landroid/net/wifi/ArpVerifier;->mSpendTime:I

    .line 377
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 389
    .end local v8           #spendTime:I
    .end local v9           #startTimestamp:J
    :cond_3
    const-string v11, "ArpVerifier"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ARP test result: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    move/from16 v0, p2

    if-lt v5, v0, :cond_4

    const/4 v6, 0x1

    .line 391
    :goto_2
    invoke-virtual {v4}, Landroid/net/arp/ArpPeer;->close()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .end local v3           #i:I
    .end local v4           #peer:Landroid/net/arp/ArpPeer;
    .end local v5           #responses:I
    :goto_3
    move v11, v6

    .line 404
    goto :goto_0

    .line 390
    .restart local v3       #i:I
    .restart local v4       #peer:Landroid/net/arp/ArpPeer;
    .restart local v5       #responses:I
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 392
    .end local v3           #i:I
    .end local v4           #peer:Landroid/net/arp/ArpPeer;
    .end local v5           #responses:I
    :catch_0
    move-exception v7

    .line 395
    .local v7, se:Ljava/net/SocketException;
    const-string v11, "ArpVerifier"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exception in ARP test: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v6, 0x1

    .line 402
    goto :goto_3

    .line 397
    .end local v7           #se:Ljava/net/SocketException;
    :catch_1
    move-exception v1

    .line 398
    .local v1, ae:Ljava/lang/IllegalArgumentException;
    const-string v11, "ArpVerifier"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exception in ARP test:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v6, 0x1

    .line 402
    goto :goto_3

    .line 400
    .end local v1           #ae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 401
    .local v2, e:Ljava/lang/Exception;
    const/4 v6, 0x0

    goto :goto_3
.end method

.method private doArpTest(I)Z
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    .line 359
    if-nez p1, :cond_1

    .line 360
    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v0, v1}, Landroid/net/wifi/ArpVerifier;->doArp(III)Z

    move-result v0

    .line 365
    :cond_0
    :goto_0
    return v0

    .line 361
    :cond_1
    if-ne p1, v0, :cond_0

    .line 362
    const/4 v1, 0x2

    const/16 v2, 0x1388

    invoke-direct {p0, v1, v0, v2}, Landroid/net/wifi/ArpVerifier;->doArp(III)Z

    move-result v0

    goto :goto_0
.end method

.method private getCurrentLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Landroid/net/wifi/ArpVerifier;->mCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Landroid/net/wifi/ArpVerifier;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/wifi/ArpVerifier;->mCM:Landroid/net/ConnectivityManager;

    .line 411
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ArpVerifier;->mCM:Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method private isConnectedToWifi()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 415
    iget-object v1, p0, Landroid/net/wifi/ArpVerifier;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v1, :cond_1

    .line 418
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/net/wifi/ArpVerifier;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isEnableChecker()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 137
    const-string/jumbo v1, "persist.sys.wifi.arp.trigger"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLooperRunning()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Landroid/net/wifi/ArpVerifier;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final ping(Ljava/lang/String;I)Z
    .locals 9
    .parameter "ipAddress"
    .parameter "timeout"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 520
    const-string/jumbo v6, "ping -c 1 -w %d %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    aput-object p1, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, cmd:Ljava/lang/String;
    const-string v6, "ArpVerifier"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ping: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v3, 0x0

    .line 525
    .local v3, ret:Z
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 526
    .local v2, p:Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    move v3, v4

    .line 531
    .end local v2           #p:Ljava/lang/Process;
    :goto_0
    const-string v4, "ArpVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "execute cmd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return v3

    .restart local v2       #p:Ljava/lang/Process;
    :cond_0
    move v3, v5

    .line 526
    goto :goto_0

    .line 527
    .end local v2           #p:Ljava/lang/Process;
    :catch_0
    move-exception v1

    .line 528
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private final pingGateway(I)Z
    .locals 1
    .parameter "timeout"

    .prologue
    .line 513
    iget-object v0, p0, Landroid/net/wifi/ArpVerifier;->mGateway:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Landroid/net/wifi/ArpVerifier;->mGateway:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Landroid/net/wifi/ArpVerifier;->ping(Ljava/lang/String;I)Z

    move-result v0

    .line 516
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readFileByChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "fileName"

    .prologue
    .line 476
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 477
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v7

    if-nez v7, :cond_1

    .line 478
    :cond_0
    const-string v7, ""

    .line 509
    :goto_0
    return-object v7

    .line 481
    :cond_1
    const/4 v0, 0x0

    .line 482
    .local v0, charRead:I
    const/4 v3, 0x0

    .line 483
    .local v3, reader:Ljava/io/InputStreamReader;
    const/16 v7, 0x200

    new-array v6, v7, [C

    .line 484
    .local v6, tempChars:[C
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 487
    .local v5, sb:Ljava/lang/StringBuilder;
    :try_start_0
    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 488
    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v8, "UTF-8"

    invoke-direct {v4, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .end local v3           #reader:Ljava/io/InputStreamReader;
    .local v4, reader:Ljava/io/InputStreamReader;
    move-object v3, v4

    .line 495
    .end local v4           #reader:Ljava/io/InputStreamReader;
    .restart local v3       #reader:Ljava/io/InputStreamReader;
    :goto_1
    invoke-virtual {v3, v6}, Ljava/io/Reader;->read([C)I

    move-result v0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_6

    .line 496
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 498
    :catch_0
    move-exception v1

    .line 499
    .local v1, e1:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    if-eqz v3, :cond_2

    .line 503
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 509
    .end local v1           #e1:Ljava/io/IOException;
    :cond_2
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 489
    :cond_3
    :try_start_3
    const-string v7, "US-ASCII"

    invoke-static {v7}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 490
    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v8, "US-ASCII"

    invoke-direct {v4, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .end local v3           #reader:Ljava/io/InputStreamReader;
    .restart local v4       #reader:Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4           #reader:Ljava/io/InputStreamReader;
    .restart local v3       #reader:Ljava/io/InputStreamReader;
    goto :goto_1

    .line 492
    :cond_4
    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v3           #reader:Ljava/io/InputStreamReader;
    .restart local v4       #reader:Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4           #reader:Ljava/io/InputStreamReader;
    .restart local v3       #reader:Ljava/io/InputStreamReader;
    goto :goto_1

    .line 501
    :catchall_0
    move-exception v7

    if-eqz v3, :cond_5

    .line 503
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 501
    :cond_5
    :goto_3
    throw v7

    .line 504
    :catch_1
    move-exception v8

    goto :goto_3

    :catch_2
    move-exception v7

    goto :goto_2

    .line 501
    :cond_6
    if-eqz v3, :cond_2

    .line 503
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2
.end method

.method private registerForBroadcasts()V
    .locals 3

    .prologue
    .line 142
    iget-boolean v1, p0, Landroid/net/wifi/ArpVerifier;->mRegisterReceiver:Z

    if-nez v1, :cond_0

    .line 143
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 144
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Landroid/net/wifi/ArpVerifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/wifi/ArpVerifier;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private startLooper()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Landroid/net/wifi/ArpVerifier;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WiFiArpStateMachine"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/ArpVerifier;->mThread:Landroid/os/HandlerThread;

    .line 116
    iget-object v0, p0, Landroid/net/wifi/ArpVerifier;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 117
    new-instance v0, Landroid/net/wifi/ArpVerifier$ClientHandler;

    iget-object v1, p0, Landroid/net/wifi/ArpVerifier;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/ArpVerifier$ClientHandler;-><init>(Landroid/net/wifi/ArpVerifier;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/ArpVerifier;->mClientHandler:Landroid/net/wifi/ArpVerifier$ClientHandler;

    .line 118
    const-string v0, "ArpVerifier"

    const-string/jumbo v1, "startLooper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    return-void
.end method

.method private stopLooper()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Landroid/net/wifi/ArpVerifier;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Landroid/net/wifi/ArpVerifier;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 125
    iput-object v1, p0, Landroid/net/wifi/ArpVerifier;->mClientHandler:Landroid/net/wifi/ArpVerifier$ClientHandler;

    .line 126
    iput-object v1, p0, Landroid/net/wifi/ArpVerifier;->mThread:Landroid/os/HandlerThread;

    .line 127
    const-string v0, "ArpVerifier"

    const-string/jumbo v1, "stopLooper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method public doArpTest(IIIZ)Z
    .locals 1
    .parameter "arpNum"
    .parameter "minResponse"
    .parameter "timeout"
    .parameter "async"

    .prologue
    .line 87
    if-gtz p1, :cond_0

    .line 88
    const/4 p1, 0x1

    .line 91
    :cond_0
    if-gt p2, p1, :cond_1

    if-gtz p2, :cond_2

    .line 92
    :cond_1
    const/4 p2, 0x1

    .line 95
    :cond_2
    if-gtz p3, :cond_3

    .line 96
    const/16 p3, 0x64

    .line 98
    :cond_3
    if-eqz p4, :cond_6

    .line 99
    invoke-direct {p0}, Landroid/net/wifi/ArpVerifier;->isLooperRunning()Z

    move-result v0

    if-nez v0, :cond_4

    .line 100
    invoke-direct {p0}, Landroid/net/wifi/ArpVerifier;->startLooper()V

    .line 103
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/ArpVerifier;->mClientHandler:Landroid/net/wifi/ArpVerifier$ClientHandler;

    if-eqz v0, :cond_5

    .line 104
    iget-object v0, p0, Landroid/net/wifi/ArpVerifier;->mClientHandler:Landroid/net/wifi/ArpVerifier$ClientHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/wifi/ArpVerifier$ClientHandler;->doArpTestAsync(III)Z

    move-result v0

    .line 109
    :goto_0
    return v0

    .line 107
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 109
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/ArpVerifier;->doArp(III)Z

    move-result v0

    goto :goto_0
.end method

.method public startArpChecker()V
    .locals 2

    .prologue
    .line 75
    const-string v0, "ArpVerifier"

    const-string/jumbo v1, "startArpChecker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-direct {p0}, Landroid/net/wifi/ArpVerifier;->isEnableChecker()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0}, Landroid/net/wifi/ArpVerifier;->startLooper()V

    .line 79
    :cond_0
    return-void
.end method

.method public stopArpChecker()V
    .locals 2

    .prologue
    .line 82
    const-string v0, "ArpVerifier"

    const-string/jumbo v1, "stopArpChecker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct {p0}, Landroid/net/wifi/ArpVerifier;->stopLooper()V

    .line 84
    return-void
.end method

.method public unregisterForBroadcasts()V
    .locals 2

    .prologue
    .line 152
    iget-boolean v0, p0, Landroid/net/wifi/ArpVerifier;->mRegisterReceiver:Z

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Landroid/net/wifi/ArpVerifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/wifi/ArpVerifier;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 155
    :cond_0
    return-void
.end method
