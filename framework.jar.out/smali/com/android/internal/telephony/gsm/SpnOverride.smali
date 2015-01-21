.class public Lcom/android/internal/telephony/gsm/SpnOverride;
.super Ljava/lang/Object;
.source "SpnOverride.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;
    }
.end annotation


# static fields
.field private static CarrierSpnMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static CarrierVirtualSpnMapByEfPnn:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static CarrierVirtualSpnMapByEfSpn:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IUSACELL_222010_PLMN:Ljava/lang/String; = "222010"

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final MCC_MNC_BYTE_SIZE:I = 0x4

.field private static final ONS_BIN_ENTRY_SIZE:I = 0x108

.field private static final ONS_BIN_PATH:Ljava/lang/String; = "/ons.bin"

.field static final PARTNER_SPN_OVERRIDE_PATH:Ljava/lang/String; = "etc/spn-conf.xml"

.field private static final PARTNER_VIRTUAL_SPN_BY_EF_PNN_OVERRIDE_PATH:Ljava/lang/String; = "etc/virtual-spn-conf-by-efpnn.xml"

.field private static final PARTNER_VIRTUAL_SPN_BY_EF_SPN_OVERRIDE_PATH:Ljava/lang/String; = "etc/virtual-spn-conf-by-efspn.xml"

.field private static final PARTNER_VIRTUAL_SPN_BY_IMSI_OVERRIDE_PATH:Ljava/lang/String; = "etc/virtual-spn-conf-by-imsi.xml"

.field private static final PLMN_MNC_3_SIZE:I = 0x6

.field private static final SPN_NAME_BYTE_SIZE:I = 0x80

.field static final sInstSync:Ljava/lang/Object;

.field private static sInstance:Lcom/android/internal/telephony/gsm/SpnOverride;


# instance fields
.field private CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/SpnOverride;->sInstSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierSpnMap:Ljava/util/HashMap;

    .line 97
    invoke-static {}, Lcom/android/internal/telephony/gsm/SpnOverride;->loadHWSpnOverrides()V

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierVirtualSpnMapByEfSpn:Ljava/util/HashMap;

    .line 104
    invoke-static {}, Lcom/android/internal/telephony/gsm/SpnOverride;->loadVirtualSpnOverridesByEfSpn()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;

    .line 108
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SpnOverride;->loadVirtualSpnOverridesByImsi()V

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierVirtualSpnMapByEfPnn:Ljava/util/HashMap;

    .line 112
    invoke-static {}, Lcom/android/internal/telephony/gsm/SpnOverride;->loadVirtualSpnOverridesByEfPnn()V

    .line 114
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/gsm/SpnOverride;
    .locals 2

    .prologue
    .line 84
    sget-object v1, Lcom/android/internal/telephony/gsm/SpnOverride;->sInstSync:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/gsm/SpnOverride;->sInstance:Lcom/android/internal/telephony/gsm/SpnOverride;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SpnOverride;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/SpnOverride;->sInstance:Lcom/android/internal/telephony/gsm/SpnOverride;

    .line 88
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    sget-object v0, Lcom/android/internal/telephony/gsm/SpnOverride;->sInstance:Lcom/android/internal/telephony/gsm/SpnOverride;

    return-object v0

    .line 88
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getSpnNameFromEntry([B)Ljava/lang/String;
    .locals 10
    .parameter "entry"

    .prologue
    .line 240
    const/4 v6, 0x0

    .line 241
    .local v6, validLen:I
    const/16 v2, 0x8

    .line 242
    .local v2, offset:I
    move v1, v2

    .line 243
    .local v1, from:I
    const/4 v4, 0x0

    .line 245
    .local v4, spnName:Ljava/lang/String;
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .end local v2           #offset:I
    .local v3, offset:I
    aget-byte v7, p0, v2

    if-eqz v7, :cond_0

    .line 246
    add-int/lit8 v6, v6, 0x1

    move v2, v3

    .end local v3           #offset:I
    .restart local v2       #offset:I
    goto :goto_0

    .line 250
    .end local v2           #offset:I
    .restart local v3       #offset:I
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v7, v6, 0x8

    invoke-static {p0, v1, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v5, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #spnName:Ljava/lang/String;
    .local v5, spnName:Ljava/lang/String;
    move-object v4, v5

    .line 254
    .end local v5           #spnName:Ljava/lang/String;
    .restart local v4       #spnName:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSpnNameFromEntry Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static loadHWSpnOverrides()V
    .locals 12

    .prologue
    .line 277
    const/4 v5, 0x0

    .line 278
    .local v5, is:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 279
    .local v7, spnFile:Ljava/io/File;
    const-string v8, "GSM"

    const-string/jumbo v9, "loadHWSpnOverrides"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v7, Ljava/io/File;

    .end local v7           #spnFile:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "/ons.bin"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 284
    .restart local v7       #spnFile:Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 285
    .end local v5           #is:Ljava/io/InputStream;
    .local v6, is:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 286
    .local v0, byteRead:I
    const/16 v8, 0x108

    :try_start_1
    new-array v2, v8, [B

    .line 287
    .local v2, entry:[B
    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v8

    int-to-long v3, v8

    .line 289
    .local v3, fileLength:J
    :goto_0
    int-to-long v8, v0

    cmp-long v8, v8, v3

    if-gez v8, :cond_1

    .line 290
    const/4 v8, 0x0

    const/16 v9, 0x108

    invoke-virtual {v6, v2, v8, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    add-int/2addr v0, v8

    .line 291
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SpnOverride;->parseSpnEntry([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 294
    .end local v2           #entry:[B
    .end local v3           #fileLength:J
    :catch_0
    move-exception v1

    move-object v5, v6

    .line 295
    .end local v0           #byteRead:I
    .end local v6           #is:Ljava/io/InputStream;
    .local v1, e:Ljava/lang/Exception;
    .restart local v5       #is:Ljava/io/InputStream;
    :goto_1
    :try_start_2
    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in loadHWSpnOverrides"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    if-eqz v5, :cond_0

    .line 299
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 305
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-void

    .line 297
    .end local v5           #is:Ljava/io/InputStream;
    .restart local v0       #byteRead:I
    .restart local v2       #entry:[B
    .restart local v3       #fileLength:J
    .restart local v6       #is:Ljava/io/InputStream;
    :cond_1
    if-eqz v6, :cond_3

    .line 299
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v5, v6

    .line 302
    .end local v6           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_2

    .line 300
    .end local v5           #is:Ljava/io/InputStream;
    .restart local v6       #is:Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 301
    .local v1, e:Ljava/io/IOException;
    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException in loadHWSpnOverrides"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 302
    .end local v6           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_2

    .line 300
    .end local v0           #byteRead:I
    .end local v2           #entry:[B
    .end local v3           #fileLength:J
    .local v1, e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 301
    .local v1, e:Ljava/io/IOException;
    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException in loadHWSpnOverrides"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 297
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v5, :cond_2

    .line 299
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 302
    :cond_2
    :goto_4
    throw v8

    .line 300
    :catch_3
    move-exception v1

    .line 301
    .restart local v1       #e:Ljava/io/IOException;
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException in loadHWSpnOverrides"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 297
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #is:Ljava/io/InputStream;
    .restart local v0       #byteRead:I
    .restart local v6       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_3

    .line 294
    .end local v0           #byteRead:I
    :catch_4
    move-exception v1

    goto :goto_1

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v0       #byteRead:I
    .restart local v2       #entry:[B
    .restart local v3       #fileLength:J
    .restart local v6       #is:Ljava/io/InputStream;
    :cond_3
    move-object v5, v6

    .end local v6           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_2
.end method

.method private static loadSpnOverrides()V
    .locals 10

    .prologue
    .line 180
    const-string v7, "GSM"

    const-string/jumbo v8, "loadSpnOverrides"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "etc/spn-conf.xml"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    .local v5, spnFile:Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .local v6, spnReader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 194
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 196
    const-string/jumbo v7, "spnOverrides"

    invoke-static {v4, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 199
    :goto_0
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 201
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, name:Ljava/lang/String;
    const-string/jumbo v7, "spnOverride"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v7

    if-nez v7, :cond_0

    .line 216
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #spnReader:Ljava/io/FileReader;
    :goto_1
    return-void

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t open "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "etc/spn-conf.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 206
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #name:Ljava/lang/String;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #spnReader:Ljava/io/FileReader;
    :cond_0
    const/4 v7, 0x0

    :try_start_2
    const-string/jumbo v8, "numeric"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, numeric:Ljava/lang/String;
    const/4 v7, 0x0

    const-string/jumbo v8, "spn"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, data:Ljava/lang/String;
    sget-object v7, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 211
    .end local v0           #data:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #numeric:Ljava/lang/String;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v1

    .line 212
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in spn-conf parser "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 213
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    .line 214
    .local v1, e:Ljava/io/IOException;
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in spn-conf parser "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static loadVirtualSpnOverridesByEfPnn()V
    .locals 10

    .prologue
    .line 442
    const-string v7, "GSM"

    const-string/jumbo v8, "loadVirtualSpnOverridesByEfPnn"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "etc/virtual-spn-conf-by-efpnn.xml"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 446
    .local v5, spnFile:Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    .local v6, spnReader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 455
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 457
    const-string/jumbo v7, "virtualSpnOverridesByEfPnn"

    invoke-static {v3, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 460
    :goto_0
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 462
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, name:Ljava/lang/String;
    const-string/jumbo v7, "virtualSpnOverride"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 472
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 478
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #spnReader:Ljava/io/FileReader;
    :goto_1
    return-void

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t open "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "etc/virtual-spn-conf-by-efpnn.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 467
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #spnReader:Ljava/io/FileReader;
    :cond_0
    const/4 v7, 0x0

    :try_start_2
    const-string/jumbo v8, "mccmncpnn"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, mccmncpnn:Ljava/lang/String;
    const/4 v7, 0x0

    const-string/jumbo v8, "name"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 469
    .local v4, spn:Ljava/lang/String;
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "test mccmncpnn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    sget-object v7, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierVirtualSpnMapByEfPnn:Ljava/util/HashMap;

    invoke-virtual {v7, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 473
    .end local v1           #mccmncpnn:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #spn:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 474
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in virtual-spn-conf-by-efpnn parser "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 475
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v0

    .line 476
    .local v0, e:Ljava/io/IOException;
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in virtual-spn-conf-by-efpnn parser "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private static loadVirtualSpnOverridesByEfSpn()V
    .locals 10

    .prologue
    .line 313
    const-string v7, "GSM"

    const-string/jumbo v8, "loadVirtualSpnOverridesByEfSpn"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "etc/virtual-spn-conf-by-efspn.xml"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 317
    .local v5, spnFile:Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .local v6, spnReader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 326
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 328
    const-string/jumbo v7, "virtualSpnOverridesByEfSpn"

    invoke-static {v3, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 331
    :goto_0
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 333
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, name:Ljava/lang/String;
    const-string/jumbo v7, "virtualSpnOverride"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 343
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 349
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #spnReader:Ljava/io/FileReader;
    :goto_1
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t open "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "etc/virtual-spn-conf-by-efspn.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 338
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #spnReader:Ljava/io/FileReader;
    :cond_0
    const/4 v7, 0x0

    :try_start_2
    const-string/jumbo v8, "mccmncspn"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, mccmncspn:Ljava/lang/String;
    const/4 v7, 0x0

    const-string/jumbo v8, "name"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 340
    .local v4, spn:Ljava/lang/String;
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "test mccmncspn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    sget-object v7, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierVirtualSpnMapByEfSpn:Ljava/util/HashMap;

    invoke-virtual {v7, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 344
    .end local v1           #mccmncspn:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #spn:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 345
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in virtual-spn-conf-by-efspn parser "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 346
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v0

    .line 347
    .local v0, e:Ljava/io/IOException;
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in virtual-spn-conf-by-efspn parser "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private loadVirtualSpnOverridesByImsi()V
    .locals 13

    .prologue
    .line 360
    const-string v0, "GSM"

    const-string/jumbo v1, "loadVirtualSpnOverridesByImsi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    new-instance v10, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "etc/virtual-spn-conf-by-imsi.xml"

    invoke-direct {v10, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 364
    .local v10, spnFile:Ljava/io/File;
    :try_start_0
    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .local v11, spnReader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 373
    .local v9, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 375
    const-string/jumbo v0, "virtualSpnOverridesByImsi"

    invoke-static {v9, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 378
    :goto_0
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 380
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 381
    .local v8, name:Ljava/lang/String;
    const-string/jumbo v0, "virtualSpnOverride"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 399
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v11           #spnReader:Ljava/io/FileReader;
    :goto_1
    return-void

    .line 365
    :catch_0
    move-exception v7

    .line 366
    .local v7, e:Ljava/io/FileNotFoundException;
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can\'t open "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "/"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "etc/virtual-spn-conf-by-imsi.xml"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 385
    .end local v7           #e:Ljava/io/FileNotFoundException;
    .restart local v8       #name:Ljava/lang/String;
    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11       #spnReader:Ljava/io/FileReader;
    :cond_0
    const/4 v0, 0x0

    :try_start_2
    const-string/jumbo v1, "mccmnc"

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, mccmnc:Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "index"

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 387
    .local v3, index:I
    const/4 v0, 0x0

    const-string/jumbo v1, "length"

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 388
    .local v4, length:I
    const/4 v0, 0x0

    const-string/jumbo v1, "pattern"

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 389
    .local v5, pattern:Ljava/lang/String;
    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 390
    .local v6, spn:Ljava/lang/String;
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "test mccmnc = "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", index = "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", length = "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", pattern = "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", name = "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;-><init>(Lcom/android/internal/telephony/gsm/SpnOverride;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 394
    .end local v2           #mccmnc:Ljava/lang/String;
    .end local v3           #index:I
    .end local v4           #length:I
    .end local v5           #pattern:Ljava/lang/String;
    .end local v6           #spn:Ljava/lang/String;
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v7

    .line 395
    .local v7, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in virtual-spn-conf-by-imsi parser "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 396
    .end local v7           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v7

    .line 397
    .local v7, e:Ljava/io/IOException;
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in virtual-spn-conf-by-imsi parser "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private static parseSpnEntry([B)V
    .locals 8
    .parameter "entry"

    .prologue
    const/4 v7, 0x4

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, mccByte:[B
    const/4 v2, 0x0

    .line 260
    .local v2, mncByte:[B
    const/4 v1, 0x0

    .line 261
    .local v1, mccStr:Ljava/lang/String;
    const/4 v3, 0x0

    .line 262
    .local v3, mncStr:Ljava/lang/String;
    const/4 v4, 0x0

    .line 263
    .local v4, plmn:Ljava/lang/String;
    const/4 v5, 0x0

    .line 265
    .local v5, spnName:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {p0, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 266
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SpnOverride;->revertPlmnByte2Str([B)Ljava/lang/String;

    move-result-object v1

    .line 267
    const/16 v6, 0x8

    invoke-static {p0, v7, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 268
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SpnOverride;->revertPlmnByte2Str([B)Ljava/lang/String;

    move-result-object v3

    .line 269
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 271
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpnNameFromEntry([B)Ljava/lang/String;

    move-result-object v5

    .line 272
    sget-object v6, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    return-void
.end method

.method private static revertPlmnByte2Str([B)Ljava/lang/String;
    .locals 7
    .parameter "plmn"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 227
    const/4 v2, 0x0

    .line 228
    .local v2, plmnValue:I
    aget-byte v3, p0, v6

    and-int/lit16 v0, v3, 0xff

    .line 229
    .local v0, b0:I
    aget-byte v3, p0, v4

    and-int/lit16 v1, v3, 0xff

    .line 231
    .local v1, b1:I
    mul-int/lit16 v3, v1, 0x100

    add-int v2, v3, v0

    .line 232
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 233
    const-string v3, "%02d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 236
    :goto_0
    return-object v3

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public containsCarrier(Ljava/lang/String;)Z
    .locals 9
    .parameter "carrier"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x3

    const/4 v4, 0x0

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 127
    const-string v5, "GSM"

    const-string v6, "containsCarrier null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 147
    :goto_0
    return v0

    .line 132
    :cond_0
    const-string v5, "222010"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 133
    const-string v5, "GSM"

    const-string v6, "IUSACELL_222010_PLMN"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 134
    goto :goto_0

    .line 138
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 139
    .local v0, exist:Z
    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v8, :cond_2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-ne v5, v6, :cond_2

    .line 140
    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, mcc:Ljava/lang/String;
    const/4 v4, 0x4

    invoke-virtual {p1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, mnc:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, plmn:Ljava/lang/String;
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convert plmn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sget-object v4, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 146
    .end local v1           #mcc:Ljava/lang/String;
    .end local v2           #mnc:Ljava/lang/String;
    .end local v3           #plmn:Ljava/lang/String;
    :cond_2
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "containsCarrier exist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSpn(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "carrier"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x3

    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 153
    const-string v4, "GSM"

    const-string v5, "containsCarrier null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v3, 0x0

    .line 173
    :goto_0
    return-object v3

    .line 164
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 165
    .local v3, spn:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_1

    .line 166
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, mcc:Ljava/lang/String;
    const/4 v4, 0x4

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, mnc:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, plmn:Ljava/lang/String;
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convert plmn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sget-object v4, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #spn:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 172
    .end local v0           #mcc:Ljava/lang/String;
    .end local v1           #mnc:Ljava/lang/String;
    .end local v2           #plmn:Ljava/lang/String;
    .restart local v3       #spn:Ljava/lang/String;
    :cond_1
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSpn spn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSpnByEfPnn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "mccmnc"
    .parameter "pnn"

    .prologue
    .line 481
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    :cond_0
    const/4 v0, 0x0

    .line 484
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierVirtualSpnMapByEfPnn:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getSpnByEfSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "mccmnc"
    .parameter "spn"

    .prologue
    .line 352
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    :cond_0
    const/4 v0, 0x0

    .line 355
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierVirtualSpnMapByEfSpn:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getSpnByImsi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "mccmnc"
    .parameter "imsi"

    .prologue
    const/4 v5, 0x0

    .line 402
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v4, v5

    .line 421
    :goto_0
    return-object v4

    .line 407
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 408
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;

    move-object v3, v4

    check-cast v3, Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;

    .line 409
    .local v3, vsbi:Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;
    const-string v4, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSpnByImsi(): imsi = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;->index:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;->length:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pattern = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;->pattern:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :try_start_0
    iget v4, v3, Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;->index:I

    iget v6, v3, Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;->index:I

    iget v7, v3, Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;->length:I

    add-int/2addr v6, v7

    invoke-virtual {p2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 418
    .local v2, pattern:Ljava/lang/String;
    iget-object v4, v3, Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;->mccmnc:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 419
    iget-object v4, v3, Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;->name:Ljava/lang/String;

    goto :goto_0

    .line 413
    .end local v2           #pattern:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 414
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in getSpnByImsi "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .end local v3           #vsbi:Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;
    :cond_3
    move-object v4, v5

    .line 421
    goto/16 :goto_0
.end method

.method public isOperatorMvnoForImsi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "mccmnc"
    .parameter "imsi"

    .prologue
    const/4 v4, 0x0

    .line 425
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v3, v4

    .line 437
    :goto_0
    return-object v3

    .line 430
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 431
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;

    move-object v2, v3

    check-cast v2, Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;

    .line 432
    .local v2, vsbi:Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;
    iget v3, v2, Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;->index:I

    iget v5, v2, Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;->index:I

    iget v6, v2, Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;->length:I

    add-int/2addr v5, v6

    invoke-virtual {p2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, pattern:Ljava/lang/String;
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;->mccmnc:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 435
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;->pattern:Ljava/lang/String;

    goto :goto_0

    .line 430
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #pattern:Ljava/lang/String;
    .end local v2           #vsbi:Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;
    :cond_3
    move-object v3, v4

    .line 437
    goto :goto_0
.end method
