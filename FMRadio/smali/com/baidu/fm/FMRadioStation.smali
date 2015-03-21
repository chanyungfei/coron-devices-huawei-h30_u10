.class public Lcom/baidu/fm/FMRadioStation;
.super Ljava/lang/Object;
.source "FMRadioStation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/fm/FMRadioStation$Station;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioContentProvider"

.field public static CURRENT_STATION_NAME:Ljava/lang/String; = null

.field public static FIXED_STATION_FREQ:I = 0x0

.field public static final HIGHEST_STATION:I = 0x438

.field public static final LOWEST_STATION:I = 0x36b

.field public static final MAX_FAVORITE_STATION_COUNT:I = 0x5

.field public static final RDS_SETTING_FREQ_AF:I = 0x2

.field public static final RDS_SETTING_FREQ_PSRT:I = 0x1

.field public static final RDS_SETTING_FREQ_TA:I = 0x3

.field public static final RDS_SETTING_VALUE_DISABLED:Ljava/lang/String; = "DISABLED"

.field public static final RDS_SETTING_VALUE_ENABLED:Ljava/lang/String; = "ENABLED"

.field public static final STATION:Ljava/lang/String; = "station"

.field public static final STATION_INDEX_CURRENT:I = -0x1

.field public static final STATION_TYPE_CURRENT:I = 0x1

.field public static final STATION_TYPE_FAVORITE:I = 0x3

.field public static final STATION_TYPE_RDS_SETTING:I = 0x4

.field public static final STATION_TYPE_SEARCHED:I = 0x2

.field public static final TAG:Ljava/lang/String; = "FMRadioAPK"

.field public static final columns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/16 v0, 0x3e8

    sput v0, Lcom/baidu/fm/FMRadioStation;->FIXED_STATION_FREQ:I

    .line 57
    const-string v0, "FmDfltSttnNm"

    sput-object v0, Lcom/baidu/fm/FMRadioStation;->CURRENT_STATION_NAME:Ljava/lang/String;

    .line 79
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "COLUMN_STATION_NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "COLUMN_STATION_FREQ"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "COLUMN_STATION_TYPE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "COLUMN_STATION_INDEX"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/fm/FMRadioStation;->columns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method public static cleanDB(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 317
    const-string v0, "FMRadioAPK"

    const-string v1, ">>> FMRadioStation.cleanDB"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 319
    const-string v0, "FMRadioAPK"

    const-string v1, "<<< FMRadioStation.cleanDB"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void
.end method

.method public static cleanFavoritedStations(Landroid/app/Activity;)V
    .locals 8
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 323
    const-string v0, "FMRadioAPK"

    const-string v2, ">>> FMRadioStation.cleanFavoritedStations"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    sget-object v1, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 326
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 327
    .local v6, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/baidu/fm/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 328
    if-eqz v6, :cond_1

    .line 329
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 330
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 331
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 332
    .local v7, iStationType:I
    const/4 v0, 0x3

    if-ne v0, v7, :cond_0

    .line 334
    sget-object v0, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 338
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 341
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 345
    .end local v7           #iStationType:I
    :cond_1
    if-eqz v6, :cond_2

    .line 346
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 348
    :cond_2
    const-string v0, "FMRadioAPK"

    const-string v2, "<<< FMRadioStation.cleanFavoritedStations"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return-void
.end method

.method public static cleanSearchedStations(Landroid/app/Activity;)V
    .locals 8
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 352
    const-string v0, "FMRadioAPK"

    const-string v2, ">>> FMRadioStation.cleanSearchedStations"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    sget-object v1, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 355
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 356
    .local v6, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/baidu/fm/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 357
    if-eqz v6, :cond_1

    .line 358
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 359
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 360
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 361
    .local v7, iStationType:I
    const/4 v0, 0x2

    if-ne v0, v7, :cond_0

    .line 363
    sget-object v0, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 367
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 370
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 374
    .end local v7           #iStationType:I
    :cond_1
    if-eqz v6, :cond_2

    .line 375
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 377
    :cond_2
    const-string v0, "FMRadioAPK"

    const-string v2, "<<< FMRadioStation.cleanSearchedStations"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-void
.end method

.method public static deleteStationInDB(Landroid/app/Activity;II)V
    .locals 10
    .parameter "activity"
    .parameter "stationFreq"
    .parameter "stationType"

    .prologue
    const/4 v3, 0x0

    .line 156
    const-string v0, "FMRadioAPK"

    const-string v2, ">>> FMRadioStation.deleteStationInDB"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v6, 0x0

    .line 158
    .local v6, bFindInDB:Z
    sget-object v1, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 160
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 161
    .local v7, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/baidu/fm/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 162
    if-eqz v7, :cond_0

    .line 163
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 164
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 166
    .local v8, iStationFreq:I
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 167
    .local v9, iStationType:I
    if-ne v9, p2, :cond_2

    if-ne v8, p1, :cond_2

    .line 169
    const/4 v6, 0x1

    .line 177
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    :cond_0
    if-eqz v6, :cond_3

    .line 178
    sget-object v0, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 188
    :goto_1
    if-eqz v7, :cond_1

    .line 189
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_1
    const-string v0, "FMRadioAPK"

    const-string v2, "<<< FMRadioStation.deleteStationInDB"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void

    .line 173
    .restart local v8       #iStationFreq:I
    .restart local v9       #iStationType:I
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 185
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    :cond_3
    const-string v0, "FMRadioAPK"

    const-string v2, "Error: Can not find the station in data base."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getCurrentStation(Landroid/app/Activity;)I
    .locals 10
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 228
    const-string v0, "FMRadioAPK"

    const-string v2, ">>> FMRadioStation.getCurrentStation"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget v8, Lcom/baidu/fm/FMRadioStation;->FIXED_STATION_FREQ:I

    .line 230
    .local v8, iRet:I
    const/4 v6, 0x0

    .line 231
    .local v6, bFindInDB:Z
    sget-object v1, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 233
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 234
    .local v7, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/baidu/fm/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 235
    if-eqz v7, :cond_6

    .line 236
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 237
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 239
    .local v9, iStationType:I
    const/4 v0, 0x1

    if-ne v0, v9, :cond_5

    .line 241
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 242
    const/16 v0, 0x36b

    if-lt v8, v0, :cond_0

    const/16 v0, 0x438

    if-le v8, v0, :cond_1

    .line 244
    :cond_0
    sget v8, Lcom/baidu/fm/FMRadioStation;->FIXED_STATION_FREQ:I

    .line 246
    :cond_1
    const/4 v6, 0x1

    .line 258
    .end local v9           #iStationType:I
    :cond_2
    :goto_1
    if-nez v6, :cond_3

    .line 260
    invoke-static {p0, v8}, Lcom/baidu/fm/FMRadioStation;->setCurrentStation(Landroid/app/Activity;I)V

    .line 263
    :cond_3
    if-eqz v7, :cond_4

    .line 264
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_4
    const-string v0, "FMRadioAPK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioStation.getCurrentStation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return v8

    .line 250
    .restart local v9       #iStationType:I
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 255
    .end local v9           #iStationType:I
    :cond_6
    const-string v0, "FMRadioAPK"

    const-string v2, "Empty database."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getEnableAF(Landroid/app/Activity;)Z
    .locals 11
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 777
    const-string v0, "FMRadioAPK"

    const-string v2, ">>> FMRadioStation.getEnableAF"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const/4 v6, 0x0

    .line 779
    .local v6, bRet:Z
    sget-object v1, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 781
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 782
    .local v7, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/baidu/fm/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 783
    if-eqz v7, :cond_3

    .line 784
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 785
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 786
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 787
    .local v8, iStationFreq:I
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 788
    .local v9, iStationType:I
    const/4 v0, 0x4

    if-ne v0, v9, :cond_2

    const/4 v0, 0x2

    if-ne v0, v8, :cond_2

    .line 791
    const-string v0, "COLUMN_STATION_NAME"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 792
    .local v10, sStationName:Ljava/lang/String;
    const-string v0, "ENABLED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    const/4 v6, 0x1

    .line 806
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    .end local v10           #sStationName:Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    .line 807
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_1
    const-string v0, "FMRadioAPK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioStation.getEnableAF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    return v6

    .line 798
    .restart local v8       #iStationFreq:I
    .restart local v9       #iStationType:I
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 803
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    :cond_3
    const-string v0, "FMRadioAPK"

    const-string v2, "Empty database."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getEnablePSRT(Landroid/app/Activity;)Z
    .locals 11
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 740
    const-string v0, "FMRadioAPK"

    const-string v2, ">>> FMRadioStation.getEnablePSRT"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/4 v6, 0x0

    .line 742
    .local v6, bRet:Z
    sget-object v1, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 744
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 745
    .local v7, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/baidu/fm/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 746
    if-eqz v7, :cond_3

    .line 747
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 748
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 749
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 750
    .local v8, iStationFreq:I
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 751
    .local v9, iStationType:I
    const/4 v0, 0x4

    if-ne v0, v9, :cond_2

    const/4 v0, 0x1

    if-ne v0, v8, :cond_2

    .line 754
    const-string v0, "COLUMN_STATION_NAME"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 755
    .local v10, sStationName:Ljava/lang/String;
    const-string v0, "ENABLED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    const/4 v6, 0x1

    .line 769
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    .end local v10           #sStationName:Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    .line 770
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 772
    :cond_1
    const-string v0, "FMRadioAPK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioStation.getEnablePSRT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    return v6

    .line 761
    .restart local v8       #iStationFreq:I
    .restart local v9       #iStationType:I
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 766
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    :cond_3
    const-string v0, "FMRadioAPK"

    const-string v2, "Empty database."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getEnableTA(Landroid/app/Activity;)Z
    .locals 11
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 814
    const-string v0, "FMRadioAPK"

    const-string v2, ">>> FMRadioStation.getEnableTA"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const/4 v6, 0x0

    .line 816
    .local v6, bRet:Z
    sget-object v1, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 818
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 819
    .local v7, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/baidu/fm/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 820
    if-eqz v7, :cond_3

    .line 821
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 822
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 823
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 824
    .local v8, iStationFreq:I
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 825
    .local v9, iStationType:I
    const/4 v0, 0x4

    if-ne v0, v9, :cond_2

    const/4 v0, 0x3

    if-ne v0, v8, :cond_2

    .line 828
    const-string v0, "COLUMN_STATION_NAME"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 829
    .local v10, sStationName:Ljava/lang/String;
    const-string v0, "ENABLED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    const/4 v6, 0x1

    .line 843
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    .end local v10           #sStationName:Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    .line 844
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 846
    :cond_1
    const-string v0, "FMRadioAPK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioStation.getEnableTA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    return v6

    .line 835
    .restart local v8       #iStationFreq:I
    .restart local v9       #iStationType:I
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 840
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    :cond_3
    const-string v0, "FMRadioAPK"

    const-string v2, "Empty database."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getStationByIndex(Landroid/app/Activity;II)Lcom/baidu/fm/PresetStation;
    .locals 13
    .parameter "activity"
    .parameter "stationIndex"
    .parameter "stationType"

    .prologue
    const/4 v3, 0x0

    .line 488
    new-instance v12, Lcom/baidu/fm/PresetStation;

    const-string v0, ""

    const/4 v2, 0x0

    invoke-direct {v12, v0, v2}, Lcom/baidu/fm/PresetStation;-><init>(Ljava/lang/String;I)V

    .line 489
    .local v12, station:Lcom/baidu/fm/PresetStation;
    const/4 v6, 0x0

    .line 490
    .local v6, bFindInDB:Z
    sget-object v1, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 492
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 493
    .local v7, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/baidu/fm/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 494
    if-eqz v7, :cond_3

    .line 495
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 496
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    const-string v0, "COLUMN_STATION_NAME"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 498
    .local v11, sStationName:Ljava/lang/String;
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 499
    .local v8, iStationFreq:I
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 500
    .local v10, iStationType:I
    const-string v0, "COLUMN_STATION_INDEX"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 501
    .local v9, iStationIndex:I
    if-ne v10, p2, :cond_2

    if-ne v9, p1, :cond_2

    .line 503
    invoke-virtual {v12, v8}, Lcom/baidu/fm/PresetStation;->setFrequency(I)V

    .line 504
    invoke-virtual {v12, v11}, Lcom/baidu/fm/PresetStation;->setName(Ljava/lang/String;)V

    .line 505
    const/4 v6, 0x1

    .line 517
    .end local v8           #iStationFreq:I
    .end local v9           #iStationIndex:I
    .end local v10           #iStationType:I
    .end local v11           #sStationName:Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    .line 518
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 521
    :cond_1
    return-object v12

    .line 509
    .restart local v8       #iStationFreq:I
    .restart local v9       #iStationIndex:I
    .restart local v10       #iStationType:I
    .restart local v11       #sStationName:Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 514
    .end local v8           #iStationFreq:I
    .end local v9           #iStationIndex:I
    .end local v10           #iStationType:I
    .end local v11           #sStationName:Ljava/lang/String;
    :cond_3
    const-string v0, "FMRadioAPK"

    const-string v2, "Empty database."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getStationCount(Landroid/app/Activity;I)I
    .locals 8
    .parameter "activity"
    .parameter "stationType"

    .prologue
    const/4 v3, 0x0

    .line 562
    const-string v0, "FMRadioAPK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> FMRadioStation.getStationCount Type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/4 v7, 0x0

    .line 564
    .local v7, iRet:I
    sget-object v1, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 566
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 567
    .local v6, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/baidu/fm/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 568
    if-eqz v6, :cond_1

    .line 569
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 570
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 571
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 572
    add-int/lit8 v7, v7, 0x1

    .line 575
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 579
    :cond_1
    if-eqz v6, :cond_2

    .line 580
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 582
    :cond_2
    const-string v0, "FMRadioAPK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioStation.getStationCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return v7
.end method

.method public static getStationIndex(Landroid/app/Activity;II)I
    .locals 12
    .parameter "activity"
    .parameter "stationFreq"
    .parameter "stationType"

    .prologue
    const/4 v3, 0x0

    .line 451
    const-string v0, "FMRadioAPK"

    const-string v2, ">>> FMRadioStation.getStationName"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/4 v8, -0x1

    .line 453
    .local v8, iRet:I
    const/4 v6, 0x0

    .line 454
    .local v6, bFindInDB:Z
    sget-object v1, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 456
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 457
    .local v7, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/baidu/fm/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 458
    if-eqz v7, :cond_3

    .line 459
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 460
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    const-string v0, "COLUMN_STATION_INDEX"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 462
    .local v10, iStationIndex:I
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 463
    .local v9, iStationFreq:I
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 464
    .local v11, iStationType:I
    if-ne v11, p2, :cond_2

    if-ne v9, p1, :cond_2

    .line 466
    move v8, v10

    .line 467
    const/4 v6, 0x1

    .line 479
    .end local v9           #iStationFreq:I
    .end local v10           #iStationIndex:I
    .end local v11           #iStationType:I
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    .line 480
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 482
    :cond_1
    const-string v0, "FMRadioAPK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioStation.getStationIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return v8

    .line 471
    .restart local v9       #iStationFreq:I
    .restart local v10       #iStationIndex:I
    .restart local v11       #iStationType:I
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 476
    .end local v9           #iStationFreq:I
    .end local v10           #iStationIndex:I
    .end local v11           #iStationType:I
    :cond_3
    const-string v0, "FMRadioAPK"

    const-string v2, "Empty database."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getStationList(Landroid/app/Activity;I)Ljava/util/List;
    .locals 13
    .parameter "activity"
    .parameter "stationType"

    .prologue
    const/4 v3, 0x0

    .line 525
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v10, presetList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/fm/PresetStation;>;"
    sget-object v1, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 528
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 529
    .local v6, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/baidu/fm/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 530
    if-eqz v6, :cond_1

    .line 531
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 532
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 533
    const-string v0, "COLUMN_STATION_NAME"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 534
    .local v11, sStationName:Ljava/lang/String;
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 535
    .local v7, iStationFreq:I
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 536
    .local v9, iStationType:I
    const-string v0, "COLUMN_STATION_INDEX"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 537
    .local v8, iStationIndex:I
    if-ne v9, p1, :cond_0

    .line 538
    new-instance v12, Lcom/baidu/fm/PresetStation;

    invoke-direct {v12, v11, v7}, Lcom/baidu/fm/PresetStation;-><init>(Ljava/lang/String;I)V

    .line 539
    .local v12, station:Lcom/baidu/fm/PresetStation;
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    .end local v12           #station:Lcom/baidu/fm/PresetStation;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 547
    .end local v7           #iStationFreq:I
    .end local v8           #iStationIndex:I
    .end local v9           #iStationType:I
    .end local v11           #sStationName:Ljava/lang/String;
    :cond_1
    const-string v0, "FMRadioAPK"

    const-string v2, "Empty database."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_2
    if-eqz v6, :cond_3

    .line 551
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 554
    :cond_3
    return-object v10
.end method

.method public static getStationName(Landroid/app/Activity;II)Ljava/lang/String;
    .locals 12
    .parameter "activity"
    .parameter "stationFreq"
    .parameter "stationType"

    .prologue
    const/4 v3, 0x0

    .line 410
    const-string v0, "FMRadioAPK"

    const-string v2, ">>> FMRadioStation.getStationName"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v10, 0x0

    .line 412
    .local v10, sRet:Ljava/lang/String;
    const/4 v6, 0x0

    .line 413
    .local v6, bFindInDB:Z
    sget-object v1, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 415
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 416
    .local v7, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/baidu/fm/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 417
    if-eqz v7, :cond_4

    .line 418
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 419
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    const-string v0, "COLUMN_STATION_NAME"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 421
    .local v11, sStationName:Ljava/lang/String;
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 422
    .local v8, iStationFreq:I
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 423
    .local v9, iStationType:I
    if-ne v9, p2, :cond_3

    if-ne v8, p1, :cond_3

    .line 425
    move-object v10, v11

    .line 426
    const/4 v6, 0x1

    .line 438
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    .end local v11           #sStationName:Ljava/lang/String;
    :cond_0
    :goto_1
    if-nez v6, :cond_1

    .line 440
    const v0, 0x7f070058

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 443
    :cond_1
    if-eqz v7, :cond_2

    .line 444
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 446
    :cond_2
    const-string v0, "FMRadioAPK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioStation.getStationName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-object v10

    .line 430
    .restart local v8       #iStationFreq:I
    .restart local v9       #iStationType:I
    .restart local v11       #sStationName:Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 435
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    .end local v11           #sStationName:Ljava/lang/String;
    :cond_4
    const-string v0, "FMRadioAPK"

    const-string v2, "Empty database."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static insertStationToDB(Landroid/app/Activity;Ljava/lang/String;III)V
    .locals 4
    .parameter "activity"
    .parameter "stationName"
    .parameter "stationFreq"
    .parameter "stationType"
    .parameter "stationIndex"

    .prologue
    .line 99
    const-string v1, "FMRadioAPK"

    const-string v2, ">>> FMRadioStation.insertStationToDB"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v1, "FMRadioAPK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Freq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 103
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "COLUMN_STATION_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "COLUMN_STATION_FREQ"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v1, "COLUMN_STATION_TYPE"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    const-string v1, "COLUMN_STATION_INDEX"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 108
    const-string v1, "FMRadioAPK"

    const-string v2, "<<< FMRadioStation.insertStationToDB"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public static isDBEmpty(Landroid/app/Activity;)Z
    .locals 9
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 381
    const-string v0, "FMRadioAPK"

    const-string v2, ">>> FMRadioStation.isDBEmpty"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v6, 0x1

    .line 383
    .local v6, bRet:Z
    sget-object v1, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 385
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 386
    .local v7, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/baidu/fm/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 387
    if-eqz v7, :cond_0

    .line 388
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 389
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 391
    .local v8, iStationType:I
    const/4 v0, 0x1

    if-eq v0, v8, :cond_2

    .line 393
    const/4 v6, 0x0

    .line 401
    .end local v8           #iStationType:I
    :cond_0
    if-eqz v7, :cond_1

    .line 402
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 405
    :cond_1
    const-string v0, "FMRadioAPK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioStation.isDBEmpty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return v6

    .line 397
    .restart local v8       #iStationType:I
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method public static isFavoriteStation(Landroid/app/Activity;I)Z
    .locals 1
    .parameter "activity"
    .parameter "iStation"

    .prologue
    .line 558
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcom/baidu/fm/FMRadioStation;->isStationExist(Landroid/app/Activity;II)Z

    move-result v0

    return v0
.end method

.method public static isStationExist(Landroid/app/Activity;II)Z
    .locals 10
    .parameter "activity"
    .parameter "stationFreq"
    .parameter "stationType"

    .prologue
    const/4 v3, 0x0

    .line 195
    const-string v0, "FMRadioAPK"

    const-string v2, ">>> FMRadioStation.isStationExist"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v6, 0x0

    .line 197
    .local v6, bRet:Z
    sget-object v1, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 199
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 200
    .local v7, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/baidu/fm/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 201
    if-eqz v7, :cond_3

    .line 202
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 203
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 205
    .local v8, iStationFreq:I
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 206
    .local v9, iStationType:I
    if-ne v9, p2, :cond_2

    if-ne p1, v8, :cond_2

    .line 208
    const/4 v6, 0x1

    .line 220
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    .line 221
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 223
    :cond_1
    const-string v0, "FMRadioAPK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioStation.isStationExist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return v6

    .line 212
    .restart local v8       #iStationFreq:I
    .restart local v9       #iStationType:I
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 217
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    :cond_3
    const-string v0, "FMRadioAPK"

    const-string v2, "Empty database."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setCurrentStation(Landroid/app/Activity;I)V
    .locals 11
    .parameter "activity"
    .parameter "iStation"

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 271
    const-string v0, "FMRadioAPK"

    const-string v2, ">>> FMRadioStation.setCurrentStation"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v6, 0x0

    .line 274
    .local v6, bFindInDB:Z
    sget-object v1, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 276
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 277
    .local v7, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/baidu/fm/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 278
    if-eqz v7, :cond_0

    .line 279
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 280
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 282
    .local v8, iStationType:I
    if-ne v10, v8, :cond_2

    .line 284
    const/4 v6, 0x1

    .line 292
    .end local v8           #iStationType:I
    :cond_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 293
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "COLUMN_STATION_NAME"

    sget-object v2, Lcom/baidu/fm/FMRadioStation;->CURRENT_STATION_NAME:Ljava/lang/String;

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 295
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    const-string v0, "COLUMN_STATION_INDEX"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    if-eqz v6, :cond_3

    .line 298
    sget-object v0, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 304
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v9, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 310
    :goto_1
    if-eqz v7, :cond_1

    .line 311
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 313
    :cond_1
    const-string v0, "FMRadioAPK"

    const-string v2, "<<< FMRadioStation.setCurrentStation"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void

    .line 288
    .end local v9           #values:Landroid/content/ContentValues;
    .restart local v8       #iStationType:I
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 307
    .end local v8           #iStationType:I
    .restart local v9       #values:Landroid/content/ContentValues;
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1
.end method

.method public static setEnableAF(Landroid/app/Activity;Z)V
    .locals 13
    .parameter "activity"
    .parameter "enable"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v3, 0x0

    .line 638
    const-string v0, "FMRadioAPK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> FMRadioStation.setEnableAF: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v6, 0x0

    .line 641
    .local v6, bFindInDB:Z
    sget-object v1, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 643
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 644
    .local v7, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/baidu/fm/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 645
    if-eqz v7, :cond_0

    .line 646
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 647
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 648
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 649
    .local v9, iStationType:I
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 650
    .local v8, iStationFreq:I
    if-ne v12, v9, :cond_2

    if-ne v11, v8, :cond_2

    .line 653
    const/4 v6, 0x1

    .line 661
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    :cond_0
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 662
    .local v10, values:Landroid/content/ContentValues;
    if-eqz p1, :cond_3

    .line 663
    const-string v0, "COLUMN_STATION_NAME"

    const-string v2, "ENABLED"

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    :goto_1
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 669
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 670
    const-string v0, "COLUMN_STATION_INDEX"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 671
    if-eqz v6, :cond_4

    .line 672
    sget-object v0, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 676
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v10, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 682
    :goto_2
    if-eqz v7, :cond_1

    .line 683
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 685
    :cond_1
    const-string v0, "FMRadioAPK"

    const-string v2, "<<< FMRadioStation.setEnableAF"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    return-void

    .line 657
    .end local v10           #values:Landroid/content/ContentValues;
    .restart local v8       #iStationFreq:I
    .restart local v9       #iStationType:I
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 666
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_3
    const-string v0, "COLUMN_STATION_NAME"

    const-string v2, "DISABLED"

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 679
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2
.end method

.method public static setEnablePSRT(Landroid/app/Activity;Z)V
    .locals 13
    .parameter "activity"
    .parameter "enable"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 587
    const-string v0, "FMRadioAPK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> FMRadioStation.setEnablePSRT: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const/4 v6, 0x0

    .line 590
    .local v6, bFindInDB:Z
    sget-object v1, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 592
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 593
    .local v7, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/baidu/fm/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 594
    if-eqz v7, :cond_0

    .line 595
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 596
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 598
    .local v9, iStationType:I
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 599
    .local v8, iStationFreq:I
    if-ne v12, v9, :cond_2

    if-ne v11, v8, :cond_2

    .line 602
    const/4 v6, 0x1

    .line 610
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    :cond_0
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 611
    .local v10, values:Landroid/content/ContentValues;
    if-eqz p1, :cond_3

    .line 612
    const-string v0, "COLUMN_STATION_NAME"

    const-string v2, "ENABLED"

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :goto_1
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 618
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 619
    const-string v0, "COLUMN_STATION_INDEX"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 620
    if-eqz v6, :cond_4

    .line 621
    sget-object v0, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 625
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v10, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 631
    :goto_2
    if-eqz v7, :cond_1

    .line 632
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 634
    :cond_1
    const-string v0, "FMRadioAPK"

    const-string v2, "<<< FMRadioStation.setEnablePSRT"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return-void

    .line 606
    .end local v10           #values:Landroid/content/ContentValues;
    .restart local v8       #iStationFreq:I
    .restart local v9       #iStationType:I
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 615
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_3
    const-string v0, "COLUMN_STATION_NAME"

    const-string v2, "DISABLED"

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 628
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2
.end method

.method public static setEnableTA(Landroid/app/Activity;Z)V
    .locals 13
    .parameter "activity"
    .parameter "enable"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v3, 0x0

    .line 689
    const-string v0, "FMRadioAPK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> FMRadioStation.setEnableTA: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const/4 v6, 0x0

    .line 692
    .local v6, bFindInDB:Z
    sget-object v1, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 694
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 695
    .local v7, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/baidu/fm/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 696
    if-eqz v7, :cond_0

    .line 697
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 698
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 699
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 700
    .local v9, iStationType:I
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 701
    .local v8, iStationFreq:I
    if-ne v12, v9, :cond_2

    if-ne v11, v8, :cond_2

    .line 704
    const/4 v6, 0x1

    .line 712
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    :cond_0
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 713
    .local v10, values:Landroid/content/ContentValues;
    if-eqz p1, :cond_3

    .line 714
    const-string v0, "COLUMN_STATION_NAME"

    const-string v2, "ENABLED"

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    :goto_1
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 720
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 721
    const-string v0, "COLUMN_STATION_INDEX"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 722
    if-eqz v6, :cond_4

    .line 723
    sget-object v0, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 727
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v10, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 733
    :goto_2
    if-eqz v7, :cond_1

    .line 734
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 736
    :cond_1
    const-string v0, "FMRadioAPK"

    const-string v2, "<<< FMRadioStation.setEnableTA"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    return-void

    .line 708
    .end local v10           #values:Landroid/content/ContentValues;
    .restart local v8       #iStationFreq:I
    .restart local v9       #iStationType:I
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 717
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_3
    const-string v0, "COLUMN_STATION_NAME"

    const-string v2, "DISABLED"

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 730
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2
.end method

.method public static updateStationToDB(Landroid/app/Activity;Ljava/lang/String;IIII)V
    .locals 11
    .parameter "activity"
    .parameter "stationName"
    .parameter "oldStationFreq"
    .parameter "newStationFreq"
    .parameter "stationType"
    .parameter "stationIndex"

    .prologue
    .line 112
    const-string v0, "FMRadioAPK"

    const-string v2, ">>> FMRadioStation.updateStationToDB"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v6, 0x0

    .line 114
    .local v6, bFindInDB:Z
    sget-object v1, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 116
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 117
    .local v7, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/baidu/fm/FMRadioStation;->columns:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 118
    if-eqz v7, :cond_0

    .line 119
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 120
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 122
    .local v8, iStationFreq:I
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 123
    .local v9, iStationType:I
    if-ne v9, p4, :cond_2

    if-ne v8, p2, :cond_2

    .line 125
    const/4 v6, 0x1

    .line 133
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    :cond_0
    if-eqz v6, :cond_3

    .line 134
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 135
    .local v10, values:Landroid/content/ContentValues;
    const-string v0, "COLUMN_STATION_NAME"

    invoke-virtual {v10, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    const-string v0, "COLUMN_STATION_INDEX"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    sget-object v0, Lcom/baidu/fm/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 149
    .end local v10           #values:Landroid/content/ContentValues;
    :goto_1
    if-eqz v7, :cond_1

    .line 150
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 152
    :cond_1
    const-string v0, "FMRadioAPK"

    const-string v2, "<<< FMRadioStation.updateStationToDB"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void

    .line 129
    .restart local v8       #iStationFreq:I
    .restart local v9       #iStationType:I
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 146
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    :cond_3
    const-string v0, "FMRadioAPK"

    const-string v2, "Error: Can not find the station in data base."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
