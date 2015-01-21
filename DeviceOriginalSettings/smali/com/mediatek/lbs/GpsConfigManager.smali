.class public Lcom/mediatek/lbs/GpsConfigManager;
.super Ljava/lang/Object;
.source "GpsConfigManager.java"


# static fields
.field public static final EPOAUTODOWNLOADINTERVAL_DEFAULT:I = 0x1c20

.field public static final EPOAUTODOWNLOADRETRYINTERVAL_DEFAULT:I = 0x12c

.field public static final EPOAUTODOWNLOADRETRYTIME_MAX:I = 0x5

.field public static final EPOAUTODOWNLOADRETRYTIME_MIN:I = 0x1

.field private static final EPO_FILE_DEST_DEFAULT:Ljava/lang/String; = "/data/misc/EPO.DAT"

.field private static final EPO_FILE_SOURCE_DEFAULT:Ljava/lang/String; = "/system/etc/EPO.DAT"

.field public static final GPS_CONF_FILE:Ljava/lang/String; = "/system/etc/gps_conf.xml"


# instance fields
.field private mEpoAutoDownLoadInterval:I

.field private mEpoAutoDownLoadRetryInterval:I

.field private mEpoAutoDownLoadRetryTime:I

.field private mEpoAutoDownloadFromWifi:Z

.field private mEpoFileDest:Ljava/lang/String;

.field private mEpoFileSource:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownloadFromWifi:Z

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadRetryTime:I

    .line 40
    const/16 v0, 0x1c20

    iput v0, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadInterval:I

    .line 41
    const/16 v0, 0x12c

    iput v0, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadRetryInterval:I

    .line 42
    const-string v0, "/system/etc/EPO.DAT"

    iput-object v0, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoFileSource:Ljava/lang/String;

    .line 43
    const-string v0, "/data/misc/EPO.DAT"

    iput-object v0, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoFileDest:Ljava/lang/String;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 164
    const-string v0, "[GpsProfileManager]"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method


# virtual methods
.method public getEpoAutoDownLoadInterval()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadInterval:I

    return v0
.end method

.method public getEpoAutoDownLoadRetryInterval()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadRetryInterval:I

    return v0
.end method

.method public getEpoAutoDownLoadRetryTime()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadRetryTime:I

    return v0
.end method

.method public getEpoAutoDownloadFromWifi()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownloadFromWifi:Z

    return v0
.end method

.method public getEpoFileDest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoFileDest:Ljava/lang/String;

    return-object v0
.end method

.method public getEpoFileSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoFileSource:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, tmp:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEpoAutoDownloadFromWifi=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownloadFromWifi:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mEpoAutoDownLoadRetryTime=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadRetryTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mEpoAutoDownLoadInterval=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mEpoAutoDownLoadRetryInterval=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadRetryInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    return-object v0
.end method

.method public updateGpsConfig(Ljava/lang/String;)V
    .locals 14
    .parameter "path"

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x1

    .line 73
    const/4 v10, 0x0

    .line 74
    .local v10, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    .line 81
    .local v7, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 84
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "the file is not exist:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/lbs/GpsConfigManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    .line 146
    if-eqz v7, :cond_0

    .line 147
    :try_start_1
    throw v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    .end local v5           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 148
    .restart local v5       #file:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 149
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 88
    .end local v3           #e:Ljava/io/IOException;
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 89
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    .line 91
    .end local v7           #is:Ljava/io/InputStream;
    .local v8, is:Ljava/io/InputStream;
    :try_start_3
    const-string v11, "utf-8"

    invoke-interface {v10, v8, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 93
    :cond_2
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 94
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 95
    .local v4, eventType:I
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, name:Ljava/lang/String;
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    move-result v2

    .line 98
    .local v2, count:I
    const/4 v11, 0x2

    if-eq v4, v11, :cond_5

    .line 134
    :cond_3
    if-ne v4, v12, :cond_2

    .line 146
    if-eqz v8, :cond_4

    .line 147
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    :cond_4
    move-object v7, v8

    .line 150
    .end local v8           #is:Ljava/io/InputStream;
    .restart local v7       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 100
    .end local v7           #is:Ljava/io/InputStream;
    .restart local v8       #is:Ljava/io/InputStream;
    :cond_5
    :try_start_5
    const-string v11, "gps_conf_para"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 101
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v2, :cond_3

    .line 102
    invoke-interface {v10, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, attrName:Ljava/lang/String;
    invoke-interface {v10, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, attrValue:Ljava/lang/String;
    const-string v11, "epo_autodownload_fromwifi"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 106
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 107
    const-string v11, "YES"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    move v11, v12

    :goto_2
    iput-boolean v11, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownloadFromWifi:Z

    .line 101
    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 107
    :cond_7
    const/4 v11, 0x0

    goto :goto_2

    .line 108
    :cond_8
    const-string v11, "epo_autodownload_retrytime"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadRetryTime:I

    .line 110
    iget v11, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadRetryTime:I

    if-ge v11, v12, :cond_9

    .line 111
    const/4 v11, 0x1

    iput v11, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadRetryTime:I

    .line 113
    :cond_9
    iget v11, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadRetryTime:I

    if-le v11, v13, :cond_6

    .line 114
    const/4 v11, 0x5

    iput v11, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadRetryTime:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_3

    .line 136
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    .end local v2           #count:I
    .end local v4           #eventType:I
    .end local v6           #i:I
    .end local v9           #name:Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v7, v8

    .line 137
    .end local v5           #file:Ljava/io/File;
    .end local v8           #is:Ljava/io/InputStream;
    .local v3, e:Ljava/io/FileNotFoundException;
    .restart local v7       #is:Ljava/io/InputStream;
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 146
    if-eqz v7, :cond_0

    .line 147
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 148
    :catch_2
    move-exception v3

    .line 149
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 116
    .end local v3           #e:Ljava/io/IOException;
    .end local v7           #is:Ljava/io/InputStream;
    .restart local v0       #attrName:Ljava/lang/String;
    .restart local v1       #attrValue:Ljava/lang/String;
    .restart local v2       #count:I
    .restart local v4       #eventType:I
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #i:I
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #name:Ljava/lang/String;
    :cond_a
    :try_start_8
    const-string v11, "epo_autodownload_interval"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadInterval:I

    .line 118
    iget v11, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadInterval:I

    if-gtz v11, :cond_6

    .line 119
    const/16 v11, 0x1c20

    iput v11, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadInterval:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_3

    .line 138
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    .end local v2           #count:I
    .end local v4           #eventType:I
    .end local v6           #i:I
    .end local v9           #name:Ljava/lang/String;
    :catch_3
    move-exception v3

    move-object v7, v8

    .line 139
    .end local v5           #file:Ljava/io/File;
    .end local v8           #is:Ljava/io/InputStream;
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7       #is:Ljava/io/InputStream;
    :goto_5
    :try_start_9
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 146
    if-eqz v7, :cond_0

    .line 147
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 148
    :catch_4
    move-exception v3

    .line 149
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 121
    .end local v3           #e:Ljava/io/IOException;
    .end local v7           #is:Ljava/io/InputStream;
    .restart local v0       #attrName:Ljava/lang/String;
    .restart local v1       #attrValue:Ljava/lang/String;
    .restart local v2       #count:I
    .restart local v4       #eventType:I
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #i:I
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #name:Ljava/lang/String;
    :cond_b
    :try_start_b
    const-string v11, "epo_autodownload_retry_interval"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadRetryInterval:I

    .line 123
    iget v11, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadRetryInterval:I

    if-gtz v11, :cond_6

    .line 124
    const/16 v11, 0x12c

    iput v11, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadRetryInterval:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_3

    .line 140
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    .end local v2           #count:I
    .end local v4           #eventType:I
    .end local v6           #i:I
    .end local v9           #name:Ljava/lang/String;
    :catch_5
    move-exception v3

    move-object v7, v8

    .line 141
    .end local v5           #file:Ljava/io/File;
    .end local v8           #is:Ljava/io/InputStream;
    .restart local v3       #e:Ljava/io/IOException;
    .restart local v7       #is:Ljava/io/InputStream;
    :goto_6
    :try_start_c
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 146
    if-eqz v7, :cond_0

    .line 147
    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_0

    .line 148
    :catch_6
    move-exception v3

    .line 149
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 126
    .end local v3           #e:Ljava/io/IOException;
    .end local v7           #is:Ljava/io/InputStream;
    .restart local v0       #attrName:Ljava/lang/String;
    .restart local v1       #attrValue:Ljava/lang/String;
    .restart local v2       #count:I
    .restart local v4       #eventType:I
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #i:I
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #name:Ljava/lang/String;
    :cond_c
    :try_start_e
    const-string v11, "epo_file_source"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 127
    iput-object v1, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoFileSource:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_3

    .line 142
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    .end local v2           #count:I
    .end local v4           #eventType:I
    .end local v6           #i:I
    .end local v9           #name:Ljava/lang/String;
    :catch_7
    move-exception v3

    move-object v7, v8

    .line 143
    .end local v5           #file:Ljava/io/File;
    .end local v8           #is:Ljava/io/InputStream;
    .local v3, e:Ljava/lang/Exception;
    .restart local v7       #is:Ljava/io/InputStream;
    :goto_7
    :try_start_f
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 146
    if-eqz v7, :cond_0

    .line 147
    :try_start_10
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    goto/16 :goto_0

    .line 148
    :catch_8
    move-exception v3

    .line 149
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 128
    .end local v3           #e:Ljava/io/IOException;
    .end local v7           #is:Ljava/io/InputStream;
    .restart local v0       #attrName:Ljava/lang/String;
    .restart local v1       #attrValue:Ljava/lang/String;
    .restart local v2       #count:I
    .restart local v4       #eventType:I
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #i:I
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #name:Ljava/lang/String;
    :cond_d
    :try_start_11
    const-string v11, "epo_file_dest"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 129
    iput-object v1, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoFileDest:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    goto/16 :goto_3

    .line 145
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    .end local v2           #count:I
    .end local v4           #eventType:I
    .end local v6           #i:I
    .end local v9           #name:Ljava/lang/String;
    :catchall_0
    move-exception v11

    move-object v7, v8

    .line 146
    .end local v5           #file:Ljava/io/File;
    .end local v8           #is:Ljava/io/InputStream;
    .restart local v7       #is:Ljava/io/InputStream;
    :goto_8
    if-eqz v7, :cond_e

    .line 147
    :try_start_12
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    .line 150
    :cond_e
    :goto_9
    throw v11

    .line 148
    .end local v7           #is:Ljava/io/InputStream;
    .restart local v2       #count:I
    .restart local v4       #eventType:I
    .restart local v5       #file:Ljava/io/File;
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #name:Ljava/lang/String;
    :catch_9
    move-exception v3

    .line 149
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v7, v8

    .line 151
    .end local v8           #is:Ljava/io/InputStream;
    .restart local v7       #is:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 148
    .end local v2           #count:I
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #eventType:I
    .end local v5           #file:Ljava/io/File;
    .end local v9           #name:Ljava/lang/String;
    :catch_a
    move-exception v3

    .line 149
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 145
    .end local v3           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v11

    goto :goto_8

    .line 142
    :catch_b
    move-exception v3

    goto :goto_7

    .line 140
    :catch_c
    move-exception v3

    goto :goto_6

    .line 138
    :catch_d
    move-exception v3

    goto/16 :goto_5

    .line 136
    :catch_e
    move-exception v3

    goto/16 :goto_4
.end method
