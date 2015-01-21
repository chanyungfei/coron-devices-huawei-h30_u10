.class public Lcom/mediatek/lbs/GlobalAgpsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GlobalAgpsReceiver.java"


# static fields
.field private static final APGS_SERVERS_DOCUMENT:Ljava/lang/String; = "agpsServers"

.field private static final GEMINI_PHONE:Z = true

.field private static final GLOBAL_AGPSPORT:Ljava/lang/String; = "global_agpsport"

.field private static final GLOBAL_AGPSPROFILE_CHANGED:Ljava/lang/String; = "global_agpsprofile_changed"

.field private static final GLOBAL_AGPSSERVER:Ljava/lang/String; = "global_agpsserver"

.field private static final GLOBAL_MCCMNC:Ljava/lang/String; = "global_mccmnc"

.field private static final GLOBAL_NAME:Ljava/lang/String; = "global_name"

.field private static final GLOBAL_SHOWTYPE:Ljava/lang/String; = "global_showtype"

.field private static final GLOBAL_TLS:Ljava/lang/String; = "global_tls"

.field private static final MCCMNC:Ljava/lang/String; = "mccmnc"

.field private static final PREFERENCE_FILE:Ljava/lang/String; = "com.android.settings_preferences"

.field private static final SERVER_NAME:Ljava/lang/String; = "name"

.field private static final SHOW_TYPE:Ljava/lang/String; = "show_type"

.field private static final SUPL_PORT:Ljava/lang/String; = "supl_port"

.field private static final SUPL_URL:Ljava/lang/String; = "supl_host"

.field private static final TAG:Ljava/lang/String; = "Settings/GlobalAgpsReceiver"

.field private static final TLS:Ljava/lang/String; = "tls"

.field private static final XMLPATH:Ljava/lang/String; = "/cust/xml/globalAgpsServers-conf.xml"


# instance fields
.field private mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

.field private mAgpsProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

.field private mOperatorCode:Ljava/lang/String;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 109
    iput-object v0, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 111
    iput-object v0, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    return-void
.end method

.method private broadcastAgpsServerConf(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "row"

    .prologue
    .line 443
    if-eqz p1, :cond_0

    .line 452
    new-instance v0, Lcom/mediatek/common/agps/MtkAgpsProfile;

    invoke-direct {v0}, Lcom/mediatek/common/agps/MtkAgpsProfile;-><init>()V

    .line 453
    .local v0, agpsprofile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    const-string v1, "supl_host"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    .line 455
    const-string v1, "supl_port"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    .line 456
    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    .line 457
    const-string v1, "mccmnc"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    .line 462
    invoke-direct {p0, v0}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->setAgpsServerOfSharedPreferences(Lcom/mediatek/common/agps/MtkAgpsProfile;)V

    .line 464
    .end local v0           #agpsprofile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    :cond_0
    return-void
.end method

.method private clearAgpsServerOfSharedPreferences()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 313
    iget-object v1, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 314
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "global_agpsserver"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 315
    const-string v1, "global_agpsport"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 316
    const-string v1, "global_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 317
    const-string v1, "global_mccmnc"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 318
    const-string v1, "global_showtype"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 319
    const-string v1, "global_tls"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 320
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 321
    return-void
.end method

.method private getAgpsServerRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;
    .locals 5
    .parameter "parser"

    .prologue
    const/4 v2, 0x0

    .line 419
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, prof_type:Ljava/lang/String;
    const-string v3, "agpsServer"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    .line 434
    :goto_0
    return-object v0

    .line 423
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 425
    .local v0, map:Landroid/content/ContentValues;
    const-string v3, "name"

    const-string v4, "name"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v3, "mccmnc"

    const-string v4, "mccmnc"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v3, "supl_port"

    const-string v4, "supl_port"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v3, "supl_host"

    const-string v4, "supl_host"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getOperatorCode()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x5

    .line 150
    const/4 v2, -0x1

    .line 151
    .local v2, sim1Satus:I
    const/4 v3, -0x1

    .line 152
    .local v3, sim2Satus:I
    const/4 v1, 0x0

    .line 155
    .local v1, mTelMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v1

    .line 156
    invoke-virtual {v1, v7}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v2

    .line 157
    invoke-virtual {v1, v8}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v3

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim1 status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->log(Ljava/lang/String;)V

    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim2 status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->log(Ljava/lang/String;)V

    .line 162
    if-ne v6, v2, :cond_1

    if-eq v6, v3, :cond_1

    .line 164
    invoke-virtual {v1, v7}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperator(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mOperatorCode:Ljava/lang/String;

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    if-eq v6, v2, :cond_2

    if-ne v6, v3, :cond_2

    .line 167
    invoke-virtual {v1, v8}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperator(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mOperatorCode:Ljava/lang/String;

    goto :goto_0

    .line 168
    :cond_2
    if-ne v6, v2, :cond_0

    if-ne v6, v3, :cond_0

    .line 170
    invoke-virtual {v1, v8}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDataState(I)I

    move-result v4

    if-ne v4, v9, :cond_3

    .line 171
    const-string v4, "sim2 DATA_CONNECTED"

    invoke-direct {p0, v4}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->log(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v1, v8}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperator(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mOperatorCode:Ljava/lang/String;

    goto :goto_0

    .line 174
    :cond_3
    invoke-virtual {v1, v7}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDataState(I)I

    move-result v4

    if-ne v4, v9, :cond_4

    .line 175
    const-string v4, "sim1 DATA_CONNECTED"

    invoke-direct {p0, v4}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->log(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1, v7}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperator(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mOperatorCode:Ljava/lang/String;

    goto :goto_0

    .line 178
    :cond_4
    iget-object v4, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gprs_connection_setting"

    const/4 v6, -0x4

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 180
    .local v0, curSlotId:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " curSlotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->log(Ljava/lang/String;)V

    .line 181
    if-ltz v0, :cond_5

    if-gt v0, v8, :cond_5

    .line 182
    invoke-virtual {v1, v0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperator(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mOperatorCode:Ljava/lang/String;

    goto :goto_0

    .line 185
    :cond_5
    invoke-virtual {v1, v7}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperator(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mOperatorCode:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleAgpsServerChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 234
    iget-object v9, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v9}, Lcom/mediatek/common/agps/MtkAgpsManager;->getProfile()Lcom/mediatek/common/agps/MtkAgpsProfile;

    move-result-object v7

    .line 237
    .local v7, selectProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    iget-object v9, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v10, "global_agpsprofile_changed"

    const/4 v11, -0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 239
    .local v5, profileChanaged:I
    invoke-direct {p0}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->getOperatorCode()V

    .line 241
    invoke-virtual {p0}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->checkAgpsServers()V

    .line 243
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "opeator code "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mOperatorCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->log(Ljava/lang/String;)V

    .line 245
    const/4 v9, 0x1

    if-ne v5, v9, :cond_0

    iget v9, v7, Lcom/mediatek/common/agps/MtkAgpsProfile;->showType:I

    const/16 v10, 0x32

    if-eq v9, v10, :cond_0

    .line 249
    const-string v9, "don\'t set the default profile to operator profile"

    invoke-direct {p0, v9}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->log(Ljava/lang/String;)V

    .line 250
    invoke-direct {p0, v7}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->setAgpsServer(Lcom/mediatek/common/agps/MtkAgpsProfile;)V

    .line 304
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v9, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mAgpsProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v9}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getDefaultProfile()Lcom/mediatek/common/agps/MtkAgpsProfile;

    move-result-object v9

    iput-object v9, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mDefaultProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v0, availableProfiles:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/agps/MtkAgpsProfile;>;"
    iget-object v9, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mAgpsProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v9}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getAllProfile()Ljava/util/List;

    move-result-object v6

    .line 260
    .local v6, profiles:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/agps/MtkAgpsProfile;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/common/agps/MtkAgpsProfile;

    .line 261
    .local v4, profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    iget-object v9, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v10, "global_name"

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, name:Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v10, "global_mccmnc"

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, mccmnc:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "global code:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->log(Ljava/lang/String;)V

    .line 264
    iget-object v9, v4, Lcom/mediatek/common/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v4, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 265
    :cond_2
    const-string v9, "global agps server change"

    invoke-direct {p0, v9}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->log(Ljava/lang/String;)V

    .line 266
    iget-object v9, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v10, "global_agpsserver"

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    .line 267
    iget-object v9, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v10, "global_agpsport"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, v4, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    .line 268
    iget-object v9, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v10, "global_name"

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/mediatek/common/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    .line 271
    :cond_3
    iget-object v9, v4, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    iget-object v10, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mAgpsProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v10}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getDefaultProfile()Lcom/mediatek/common/agps/MtkAgpsProfile;

    move-result-object v10

    iget-object v10, v10, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 273
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "default profile code"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->log(Ljava/lang/String;)V

    .line 274
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 275
    :cond_4
    iget v9, v4, Lcom/mediatek/common/agps/MtkAgpsProfile;->showType:I

    if-nez v9, :cond_5

    .line 276
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "showType == 0 profile code"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->log(Ljava/lang/String;)V

    .line 277
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 278
    :cond_5
    iget v9, v4, Lcom/mediatek/common/agps/MtkAgpsProfile;->showType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    iget-object v9, v4, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    iget-object v10, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mOperatorCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 280
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "showType == 2 profile code"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->log(Ljava/lang/String;)V

    .line 281
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iput-object v4, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mDefaultProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    goto/16 :goto_1

    .line 288
    .end local v2           #mccmnc:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    :cond_6
    iget-object v9, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v10, "global_showtype"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 290
    .local v8, showType:I
    iget-object v9, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mDefaultProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iget v9, v9, Lcom/mediatek/common/agps/MtkAgpsProfile;->showType:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    iget-object v9, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v10, "global_name"

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 293
    new-instance v9, Lcom/mediatek/common/agps/MtkAgpsProfile;

    invoke-direct {v9}, Lcom/mediatek/common/agps/MtkAgpsProfile;-><init>()V

    iput-object v9, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mDefaultProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    .line 294
    iget-object v9, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mDefaultProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iget-object v10, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v11, "global_tls"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, v9, Lcom/mediatek/common/agps/MtkAgpsProfile;->tls:I

    .line 295
    iget-object v9, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mDefaultProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iget-object v10, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v11, "global_agpsserver"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    .line 296
    iget-object v9, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mDefaultProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iget-object v10, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v11, "global_agpsport"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, v9, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    .line 297
    iget-object v9, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mDefaultProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iget-object v10, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v11, "global_name"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/mediatek/common/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    .line 298
    iget-object v9, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mDefaultProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iget-object v10, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v11, "global_mccmnc"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    .line 301
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set current profile code"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mDefaultProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iget-object v10, v10, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->log(Ljava/lang/String;)V

    .line 302
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "current profile:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mDefaultProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->log(Ljava/lang/String;)V

    .line 303
    iget-object v9, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    iget-object v10, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mDefaultProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    invoke-interface {v9, v10}, Lcom/mediatek/common/agps/MtkAgpsManager;->setProfile(Lcom/mediatek/common/agps/MtkAgpsProfile;)V

    goto/16 :goto_0
.end method

.method private handleAgpsServerSettings(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->getOperatorCode()V

    .line 206
    invoke-virtual {p0}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->checkAgpsServers()V

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "opeator code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mOperatorCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->log(Ljava/lang/String;)V

    .line 210
    iget-object v2, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mAgpsProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v2}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getDefaultProfile()Lcom/mediatek/common/agps/MtkAgpsProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mDefaultProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "profile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mDefaultProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->log(Ljava/lang/String;)V

    .line 213
    iget-object v2, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "global_agpsserver"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, supl_host:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "global_agpsport"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 215
    .local v1, supl_port:I
    if-eqz v0, :cond_0

    if-gtz v1, :cond_1

    .line 216
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supl_host is null or supl_port is error. port="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->log(Ljava/lang/String;)V

    .line 227
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v2, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mDefaultProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iput-object v0, v2, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    .line 220
    iget-object v2, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mDefaultProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iput v1, v2, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    .line 221
    iget-object v2, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mDefaultProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iget-object v3, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "global_mccmnc"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set current profile code"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mDefaultProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iget-object v3, v3, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->log(Ljava/lang/String;)V

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supl_addr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mDefaultProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iget-object v3, v3, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->log(Ljava/lang/String;)V

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supl_port:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mDefaultProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iget v3, v3, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->log(Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    iget-object v3, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mDefaultProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    invoke-interface {v2, v3}, Lcom/mediatek/common/agps/MtkAgpsManager;->setProfile(Lcom/mediatek/common/agps/MtkAgpsProfile;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 308
    const-string v0, "Settings/GlobalAgpsReceiver"

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

    .line 309
    return-void
.end method

.method private setAgpsServer(Lcom/mediatek/common/agps/MtkAgpsProfile;)V
    .locals 5
    .parameter "agpsprofile"

    .prologue
    .line 335
    move-object v1, p1

    .line 337
    .local v1, profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    iget-object v2, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "global_name"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, name:Ljava/lang/String;
    iget-object v2, v1, Lcom/mediatek/common/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    iget-object v2, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "global_agpsserver"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    .line 341
    iget-object v2, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "global_agpsport"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    .line 344
    :cond_0
    iget-object v2, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v2, v1}, Lcom/mediatek/common/agps/MtkAgpsManager;->setProfile(Lcom/mediatek/common/agps/MtkAgpsProfile;)V

    .line 345
    return-void
.end method

.method private setAgpsServerOfSharedPreferences(Lcom/mediatek/common/agps/MtkAgpsProfile;)V
    .locals 3
    .parameter "agpsprofile"

    .prologue
    .line 324
    iget-object v1, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 325
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "global_agpsserver"

    iget-object v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 326
    const-string v1, "global_agpsport"

    iget v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 327
    const-string v1, "global_name"

    iget-object v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 328
    const-string v1, "global_mccmnc"

    iget-object v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 329
    const-string v1, "global_showtype"

    iget v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->showType:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 330
    const-string v1, "global_tls"

    iget v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->tls:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 331
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 332
    return-void
.end method


# virtual methods
.method public checkAgpsServers()V
    .locals 9

    .prologue
    .line 355
    iget-object v2, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mOperatorCode:Ljava/lang/String;

    .line 357
    .local v2, currentMccmnc:Ljava/lang/String;
    invoke-direct {p0}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->clearAgpsServerOfSharedPreferences()V

    .line 359
    if-nez v2, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    const/4 v1, 0x0

    .line 364
    .local v1, confparser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    .line 367
    .local v4, is:Ljava/io/InputStream;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "/cust/xml/globalAgpsServers-conf.xml"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 373
    .local v0, confFile:Ljava/io/File;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 375
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 378
    .end local v4           #is:Ljava/io/InputStream;
    .local v5, is:Ljava/io/InputStream;
    if-eqz v1, :cond_4

    .line 380
    :try_start_1
    const-string v7, "utf-8"

    invoke-interface {v1, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 381
    const-string v7, "agpsServers"

    invoke-static {v1, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 384
    :cond_2
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 385
    invoke-direct {p0, v1}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->getAgpsServerRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;

    move-result-object v6

    .line 386
    .local v6, row:Landroid/content/ContentValues;
    if-eqz v6, :cond_4

    .line 387
    const-string v7, "mccmnc"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "mccmnc"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 389
    :cond_3
    invoke-direct {p0, v6}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->broadcastAgpsServerConf(Landroid/content/ContentValues;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 404
    .end local v6           #row:Landroid/content/ContentValues;
    :cond_4
    if-eqz v5, :cond_5

    .line 405
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    move-object v4, v5

    .line 408
    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 406
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    :catch_0
    move-exception v7

    move-object v4, v5

    .line 409
    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 397
    :catch_1
    move-exception v3

    .line 399
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v7, "Settings/GlobalAgpsReceiver"

    const-string v8, "File not found: \'/cust/xml/globalAgpsServers-conf.xml\'"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 404
    if-eqz v4, :cond_0

    .line 405
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 406
    :catch_2
    move-exception v7

    goto :goto_0

    .line 400
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v3

    .line 401
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v7, "Settings/GlobalAgpsReceiver"

    const-string v8, "Exception while parsing \'/cust/xml/globalAgpsServers-conf.xml\'"

    invoke-static {v7, v8, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 404
    if-eqz v4, :cond_0

    .line 405
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 406
    :catch_4
    move-exception v7

    goto :goto_0

    .line 403
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 404
    :goto_3
    if-eqz v4, :cond_6

    .line 405
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 408
    :cond_6
    :goto_4
    throw v7

    .line 406
    :catch_5
    move-exception v8

    goto :goto_4

    .line 403
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    goto :goto_3

    .line 400
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    :catch_6
    move-exception v3

    move-object v4, v5

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    goto :goto_2

    .line 397
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    :catch_7
    move-exception v3

    move-object v4, v5

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 120
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

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->log(Ljava/lang/String;)V

    .line 122
    iput-object p1, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mContext:Landroid/content/Context;

    .line 125
    const-string v1, "mtk-agps"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/agps/MtkAgpsManager;

    iput-object v1, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    .line 126
    const-string v1, "com.android.settings_preferences"

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 127
    new-instance v1, Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-direct {v1}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;-><init>()V

    iput-object v1, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mAgpsProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    .line 128
    iget-object v1, p0, Lcom/mediatek/lbs/GlobalAgpsReceiver;->mAgpsProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    const-string v2, "/etc/agps_profiles_conf.xml"

    invoke-virtual {v1, v2}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->updateAgpsProfile(Ljava/lang/String;)V

    .line 130
    const-string v1, "android.intent.action.ACTION_SIM_RECORDS_READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->handleAgpsServerSettings(Landroid/content/Context;Landroid/content/Intent;)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    const-string v1, "noConnectivity"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    const-string v1, "the Connectivity action is AVAILABLE"

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->log(Ljava/lang/String;)V

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/mediatek/lbs/GlobalAgpsReceiver;->handleAgpsServerSettings(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
