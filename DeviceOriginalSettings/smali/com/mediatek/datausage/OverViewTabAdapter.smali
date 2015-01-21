.class public Lcom/mediatek/datausage/OverViewTabAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "OverViewTabAdapter.java"


# static fields
.field private static final CYCLE_RANGE_OVER_WEEK:I = 0x4

.field private static final DAY:J = 0x1b77400L

.field private static final DAY_END_INDEX:I = 0x7

.field private static final DAY_START_INDEX:I = 0x6

.field private static final LOADER_CHART_DATA:I = 0x2

.field private static final MONTH_END_INDEX:I = 0x5

.field private static final MONTH_START_INDEX:I = 0x4

.field private static final OVER_COLOR_RED:I = 0xa

.field private static final PERCENT_FULL:I = 0x1

.field private static final PERCENT_LOW:D = 0.01

.field private static final PERCENT_NONE:I = 0x0

.field private static final POLICY_NULL_FLAG:I = -0x2

.field private static final PROGRESS_FULL:I = 0x64

.field private static final PROGRESS_NONE:I = 0x0

.field private static final REF_WIFI:J = 0x3e800000L

.field private static final SIM_COLOR_BLUE:I = 0x0

.field private static final SIM_COLOR_GREEN:I = 0x2

.field private static final SIM_COLOR_ORANGE:I = 0x1

.field private static final SIM_COLOR_PURPLE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OverViewTabAdapter"

.field private static final TEST_SUBSCRIBER_PROP:Ljava/lang/String; = "test.subscriberid"

.field private static final THOUSAND:I = 0x3e8

.field private static final YEAR_END_INDEX:I = 0x3

.field private static final YEAR_START_INDEX:I

.field private static sSettingsMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGroup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLimitBytes:[J

.field private mMobilePos:I

.field private mMobileTotal:[J

.field private mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mSimList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSimNum:I

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mWifiPos:I

.field private mWifiToday:J

.field private mWifiTotal:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;)V
    .locals 2
    .parameter "context"
    .parameter "statsSession"

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 98
    const-string v0, "OverViewTabAdapter"

    const-string v1, "OverViewTabAdapter()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput-object p1, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mStatsSession:Landroid/net/INetworkStatsSession;

    .line 101
    invoke-direct {p0}, Lcom/mediatek/datausage/OverViewTabAdapter;->initPolicy()V

    .line 102
    invoke-direct {p0}, Lcom/mediatek/datausage/OverViewTabAdapter;->getMobileState()V

    .line 103
    invoke-direct {p0}, Lcom/mediatek/datausage/OverViewTabAdapter;->initData()V

    .line 105
    invoke-static {p1}, Lcom/android/settings/Utils;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v0

    sput-object v0, Lcom/mediatek/datausage/OverViewTabAdapter;->sSettingsMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 107
    return-void
.end method

.method private calcMobileProgress(JJ)I
    .locals 10
    .parameter "totalUsage"
    .parameter "limitUsage"

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v3, 0x0

    .line 180
    const-string v5, "OverViewTabAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calcMobileProgress() totalUsage = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " limitUsage = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-wide/16 v0, 0x0

    .line 183
    .local v0, per:D
    cmp-long v5, p3, v8

    if-gez v5, :cond_2

    .line 184
    cmp-long v5, p1, v8

    if-nez v5, :cond_1

    move-wide v0, v3

    .line 192
    :goto_0
    cmpl-double v3, v0, v3

    if-lez v3, :cond_0

    const-wide v3, 0x3f847ae147ae147bL

    cmpg-double v3, v0, v3

    if-gez v3, :cond_0

    .line 193
    const-wide v0, 0x3f847ae147ae147bL

    .line 195
    :cond_0
    const-wide/high16 v3, 0x4059

    mul-double/2addr v3, v0

    double-to-int v2, v3

    .line 196
    .local v2, value:I
    const-string v3, "OverViewTabAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calcMobileProgress value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return v2

    .line 184
    .end local v2           #value:I
    :cond_1
    const-wide/high16 v0, 0x3ff0

    goto :goto_0

    .line 185
    :cond_2
    cmp-long v5, p1, p3

    if-gtz v5, :cond_3

    .line 186
    long-to-double v5, p1

    long-to-double v7, p3

    div-double v0, v5, v7

    .line 187
    const-string v5, "OverViewTabAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "limitUsage >=  totalUsage  per = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    :cond_3
    const-wide/high16 v0, 0x3ff0

    .line 190
    const-string v5, "OverViewTabAdapter"

    const-string v6, "limitUsage < totalUsage ,so set per = 1"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private calcWifiTodayProgress(JJ)I
    .locals 7
    .parameter "todayUsage"
    .parameter "totalUsage"

    .prologue
    .line 159
    const-string v3, "OverViewTabAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calcWifiTodayProgress() todayUsage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " totalUsage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-wide/16 v0, 0x0

    .line 162
    .local v0, per:D
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-nez v3, :cond_1

    .line 163
    const-wide/16 v0, 0x0

    .line 170
    :cond_0
    :goto_0
    const-wide/high16 v3, 0x4059

    mul-double/2addr v3, v0

    double-to-int v2, v3

    .line 171
    .local v2, value:I
    const-string v3, "OverViewTabAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calcWifiTodayProgress() value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return v2

    .line 165
    .end local v2           #value:I
    :cond_1
    long-to-double v3, p1

    long-to-double v5, p3

    div-double v0, v3, v5

    .line 166
    const-wide/16 v3, 0x0

    cmpl-double v3, v0, v3

    if-lez v3, :cond_0

    const-wide v3, 0x3f847ae147ae147bL

    cmpg-double v3, v0, v3

    if-gez v3, :cond_0

    .line 167
    const-wide v0, 0x3f847ae147ae147bL

    goto :goto_0
.end method

.method private calcWifiTotalProgress(J)I
    .locals 2
    .parameter "todayUsage"

    .prologue
    .line 176
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 304
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 305
    .local v1, tele:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, actualSubscriberId:Ljava/lang/String;
    const-string v2, "test.subscriberid"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getMobileData()V
    .locals 29

    .prologue
    .line 207
    const-string v3, "OverViewTabAdapter"

    const-string v10, "getMobileData()"

    invoke-static {v3, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v14, Lcom/android/settings/net/ChartData;

    invoke-direct {v14}, Lcom/android/settings/net/ChartData;-><init>()V

    .line 209
    .local v14, data:Lcom/android/settings/net/ChartData;
    const/4 v11, 0x0

    .line 213
    .local v11, count:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSimList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 215
    .local v23, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    iget v10, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v3, v10}, Lcom/mediatek/datausage/OverViewTabAdapter;->getSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v24

    .line 222
    .local v24, template:Landroid/net/NetworkTemplate;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mStatsSession:Landroid/net/INetworkStatsSession;

    const/16 v10, 0xa

    move-object/from16 v0, v24

    invoke-interface {v3, v0, v10}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    iput-object v3, v14, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v25

    aput-wide v25, v3, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    iget-object v3, v14, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v19

    .line 234
    .local v19, historyStart:J
    iget-object v3, v14, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v17

    .line 235
    .local v17, historyEnd:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 236
    .local v8, now:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v22

    .line 237
    .local v22, policy:Landroid/net/NetworkPolicy;
    move-wide/from16 v12, v17

    .line 238
    .local v12, cycleEnd:J
    move-wide/from16 v6, v17

    .line 239
    .local v6, cycleEndBak:J
    move-wide/from16 v4, v19

    .line 240
    .local v4, cycleStart:J
    if-eqz v22, :cond_3

    .line 242
    move-wide/from16 v0, v17

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v12

    .line 244
    :goto_1
    cmp-long v3, v12, v19

    if-lez v3, :cond_0

    .line 245
    move-object/from16 v0, v22

    invoke-static {v12, v13, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .line 246
    cmp-long v3, v4, v8

    if-gtz v3, :cond_1

    cmp-long v3, v8, v12

    if-gtz v3, :cond_1

    .line 247
    const-string v3, "OverViewTabAdapter"

    const-string v10, "cycleStart <= now && now <= cycleEnd"

    invoke-static {v3, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    :goto_2
    const-string v3, "OverViewTabAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "cycleEndBak="

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v25, "cycleStart="

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/16 v16, 0x0

    .line 268
    .local v16, entry:Landroid/net/NetworkStatsHistory$Entry;
    iget-object v3, v14, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v16

    .line 269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v25, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v27, v0

    add-long v25, v25, v27

    :goto_3
    aput-wide v25, v3, v11

    .line 271
    const-string v3, "OverViewTabAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mMobileTotal["

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v25, "]="

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    move-object/from16 v25, v0

    aget-wide v25, v25, v11

    move-wide/from16 v0, v25

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v25, "mLimitBytes"

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v25, "["

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v25, "]="

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    move-object/from16 v25, v0

    aget-wide v25, v25, v11

    move-wide/from16 v0, v25

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    add-int/lit8 v11, v11, 0x1

    .line 275
    goto/16 :goto_0

    .line 226
    .end local v4           #cycleStart:J
    .end local v6           #cycleEndBak:J
    .end local v8           #now:J
    .end local v12           #cycleEnd:J
    .end local v16           #entry:Landroid/net/NetworkStatsHistory$Entry;
    .end local v17           #historyEnd:J
    .end local v19           #historyStart:J
    .end local v22           #policy:Landroid/net/NetworkPolicy;
    :catch_0
    move-exception v15

    .line 228
    .local v15, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    const-wide/16 v25, -0x2

    aput-wide v25, v3, v11

    .line 229
    add-int/lit8 v11, v11, 0x1

    .line 230
    goto/16 :goto_0

    .line 251
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v4       #cycleStart:J
    .restart local v6       #cycleEndBak:J
    .restart local v8       #now:J
    .restart local v12       #cycleEnd:J
    .restart local v17       #historyEnd:J
    .restart local v19       #historyStart:J
    .restart local v22       #policy:Landroid/net/NetworkPolicy;
    :cond_1
    move-wide v6, v12

    .line 252
    move-wide v12, v4

    goto/16 :goto_1

    .line 261
    :cond_2
    move-wide v6, v12

    .line 262
    move-wide v12, v4

    .line 256
    :cond_3
    cmp-long v3, v12, v19

    if-lez v3, :cond_0

    .line 257
    const-wide v25, 0x90321000L

    sub-long v4, v12, v25

    .line 258
    cmp-long v3, v4, v8

    if-gtz v3, :cond_2

    cmp-long v3, v8, v12

    if-gtz v3, :cond_2

    goto/16 :goto_2

    .line 269
    .restart local v16       #entry:Landroid/net/NetworkStatsHistory$Entry;
    :cond_4
    const-wide/16 v25, 0x0

    goto/16 :goto_3

    .line 276
    .end local v4           #cycleStart:J
    .end local v6           #cycleEndBak:J
    .end local v8           #now:J
    .end local v12           #cycleEnd:J
    .end local v16           #entry:Landroid/net/NetworkStatsHistory$Entry;
    .end local v17           #historyEnd:J
    .end local v19           #historyStart:J
    .end local v22           #policy:Landroid/net/NetworkPolicy;
    .end local v23           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v24           #template:Landroid/net/NetworkTemplate;
    :cond_5
    return-void
.end method

.method private getMobileState()V
    .locals 2

    .prologue
    .line 110
    const-string v0, "OverViewTabAdapter"

    const-string v1, "getMobileState()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSimList:Ljava/util/List;

    .line 112
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSimList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSimNum:I

    .line 113
    iget v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSimNum:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    .line 114
    iget v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSimNum:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    .line 116
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSimList:Ljava/util/List;

    new-instance v1, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;

    invoke-direct {v1}, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 117
    return-void
.end method

.method private static getSubscriberId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 201
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 203
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberIdGemini(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getWifiData()V
    .locals 26

    .prologue
    .line 120
    const-string v2, "OverViewTabAdapter"

    const-string v9, "getWifiData()"

    invoke-static {v2, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v19, Lcom/android/settings/net/ChartData;

    invoke-direct/range {v19 .. v19}, Lcom/android/settings/net/ChartData;-><init>()V

    .line 123
    .local v19, data:Lcom/android/settings/net/ChartData;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v9

    const/16 v10, 0xa

    invoke-interface {v2, v9, v10}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    const/16 v21, 0x0

    .line 130
    .local v21, entry:Landroid/net/NetworkStatsHistory$Entry;
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v2}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v24

    .line 131
    .local v24, historyStart:J
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v2}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v22

    .line 132
    .local v22, historyEnd:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 133
    .local v7, now:J
    const-string v2, "OverViewTabAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "historyStart = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v24

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " historyEnd = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v22

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " now = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    move-wide/from16 v17, v22

    .line 135
    .local v17, cycleEnd:J
    move-wide/from16 v5, v22

    .line 136
    .local v5, cycleEndBak:J
    move-wide/from16 v3, v24

    .line 137
    .local v3, cycleStart:J
    :goto_1
    cmp-long v2, v17, v24

    if-lez v2, :cond_0

    .line 139
    const-wide v9, 0x90321000L

    sub-long v3, v17, v9

    .line 140
    cmp-long v2, v3, v7

    if-gtz v2, :cond_1

    cmp-long v2, v7, v17

    if-gtz v2, :cond_1

    .line 142
    const-string v2, "OverViewTabAdapter"

    const-string v9, "cycleStart <= now && now <= cycleEnd"

    invoke-static {v2, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v21

    .line 150
    const-string v2, "OverViewTabAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cycleStart = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cycleEndBak = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    if-eqz v21, :cond_2

    move-object/from16 v0, v21

    iget-wide v9, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-object/from16 v0, v21

    iget-wide v11, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v9, v11

    :goto_2
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiTotal:J

    .line 152
    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/datausage/OverViewTabAdapter;->getUtcDateMillis()J

    move-result-wide v10

    const/16 v16, 0x0

    move-wide v12, v7

    move-wide v14, v7

    invoke-virtual/range {v9 .. v16}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v21

    .line 153
    if-eqz v21, :cond_3

    move-object/from16 v0, v21

    iget-wide v9, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-object/from16 v0, v21

    iget-wide v11, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v9, v11

    :goto_3
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiToday:J

    .line 154
    const-string v2, "OverViewTabAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mWifiTotal = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiTotal:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mWifiToday = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiToday:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void

    .line 126
    .end local v3           #cycleStart:J
    .end local v5           #cycleEndBak:J
    .end local v7           #now:J
    .end local v17           #cycleEnd:J
    .end local v21           #entry:Landroid/net/NetworkStatsHistory$Entry;
    .end local v22           #historyEnd:J
    .end local v24           #historyStart:J
    :catch_0
    move-exception v20

    .line 127
    .local v20, e:Landroid/os/RemoteException;
    const-string v2, "OverViewTabAdapter"

    const-string v9, "Remote Exception happens"

    invoke-static {v2, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 145
    .end local v20           #e:Landroid/os/RemoteException;
    .restart local v3       #cycleStart:J
    .restart local v5       #cycleEndBak:J
    .restart local v7       #now:J
    .restart local v17       #cycleEnd:J
    .restart local v21       #entry:Landroid/net/NetworkStatsHistory$Entry;
    .restart local v22       #historyEnd:J
    .restart local v24       #historyStart:J
    :cond_1
    move-wide/from16 v5, v17

    .line 146
    move-wide/from16 v17, v3

    goto/16 :goto_1

    .line 151
    :cond_2
    const-wide/16 v9, 0x0

    goto :goto_2

    .line 153
    :cond_3
    const-wide/16 v9, 0x0

    goto :goto_3
.end method

.method private initData()V
    .locals 5

    .prologue
    const v4, 0x7f080443

    const/4 v3, 0x0

    .line 288
    const-string v0, "OverViewTabAdapter"

    const-string v1, "initData()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mGroup:Ljava/util/List;

    .line 290
    iget v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSimNum:I

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mGroup:Ljava/util/List;

    iget-object v1, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f080188

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iput v3, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobilePos:I

    .line 294
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mGroup:Ljava/util/List;

    iget-object v1, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiPos:I

    .line 301
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mGroup:Ljava/util/List;

    iget-object v1, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    iput v3, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiPos:I

    goto :goto_0
.end method

.method private initPolicy()V
    .locals 2

    .prologue
    .line 279
    const-string v0, "OverViewTabAdapter"

    const-string v1, "initPolicy()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 282
    new-instance v0, Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v0, v1}, Lcom/android/settings/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    .line 283
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-virtual {v0}, Lcom/android/settings/net/NetworkPolicyEditor;->read()V

    .line 285
    :cond_0
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 318
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 327
    const/4 v8, 0x0

    .line 329
    .local v8, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget v9, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiPos:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_2

    .line 330
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 331
    .local v1, inflate:Landroid/view/LayoutInflater;
    const v9, 0x7f040062

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 333
    const v9, 0x7f0a0108

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 334
    .local v5, textTitle:Landroid/widget/TextView;
    const v9, 0x7f0a010a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 335
    .local v6, textUsage:Landroid/widget/TextView;
    const v9, 0x7f0a0109

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 336
    .local v2, progress:Landroid/widget/ProgressBar;
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/datausage/OverViewTabAdapter;->getWifiData()V

    .line 337
    if-nez p2, :cond_1

    .line 338
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f080186

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiToday:J

    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 341
    .local v7, usage:Ljava/lang/String;
    const-string v9, "OverViewTabAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "childPosition="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " and usage= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiToday:J

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiTotal:J

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v11, v12}, Lcom/mediatek/datausage/OverViewTabAdapter;->calcWifiTodayProgress(JJ)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 416
    .end local v1           #inflate:Landroid/view/LayoutInflater;
    .end local v2           #progress:Landroid/widget/ProgressBar;
    .end local v5           #textTitle:Landroid/widget/TextView;
    .end local v6           #textUsage:Landroid/widget/TextView;
    .end local v7           #usage:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v8

    .line 347
    .restart local v1       #inflate:Landroid/view/LayoutInflater;
    .restart local v2       #progress:Landroid/widget/ProgressBar;
    .restart local v5       #textTitle:Landroid/widget/TextView;
    .restart local v6       #textUsage:Landroid/widget/TextView;
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f080187

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiTotal:J

    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 350
    .restart local v7       #usage:Ljava/lang/String;
    const-string v9, "OverViewTabAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "childPosition = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " and usage= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiTotal:J

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/mediatek/datausage/OverViewTabAdapter;->calcWifiTotalProgress(J)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    goto :goto_0

    .line 355
    .end local v1           #inflate:Landroid/view/LayoutInflater;
    .end local v2           #progress:Landroid/widget/ProgressBar;
    .end local v5           #textTitle:Landroid/widget/TextView;
    .end local v6           #textUsage:Landroid/widget/TextView;
    .end local v7           #usage:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget v9, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobilePos:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_0

    .line 356
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/datausage/OverViewTabAdapter;->getMobileData()V

    .line 357
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 358
    .restart local v1       #inflate:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSimList:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v4, v9, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    .line 359
    .local v4, simColor:I
    const-string v9, "OverViewTabAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "usage : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    aget-wide v11, v11, p2

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " limit : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    aget-wide v11, v11, p2

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    aget-wide v9, v9, p2

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-ltz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    aget-wide v9, v9, p2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    aget-wide v11, v11, p2

    cmp-long v9, v9, v11

    if-lez v9, :cond_3

    .line 361
    const/16 v4, 0xa

    .line 363
    :cond_3
    packed-switch v4, :pswitch_data_0

    .line 385
    :pswitch_0
    const v9, 0x7f04005d

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 389
    :goto_1
    const v9, 0x7f0a0105

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 390
    .restart local v5       #textTitle:Landroid/widget/TextView;
    const v9, 0x7f0a0107

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 391
    .restart local v6       #textUsage:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSimList:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v3, v9, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    .line 392
    .local v3, progressBarColor:I
    const v9, 0x7f0a0106

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 393
    .restart local v2       #progress:Landroid/widget/ProgressBar;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSimList:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-object v9, v9, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    sget-object v9, Lcom/mediatek/datausage/OverViewTabAdapter;->sSettingsMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    invoke-interface {v9, v3, v5}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->DataUsageUpdateSimText(ILandroid/widget/TextView;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    aget-wide v9, v9, p2

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-lez v9, :cond_5

    .line 398
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    aget-wide v9, v9, p2

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-ltz v9, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    aget-wide v9, v9, p2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    aget-wide v11, v11, p2

    cmp-long v9, v9, v11

    if-lez v9, :cond_4

    .line 399
    const-string v9, "OverViewTabAdapter"

    const-string v10, "Usage bytes is bigger than the limit bytes , show warning"

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f08018a

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    aget-wide v14, v14, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    move-object/from16 v16, v0

    aget-wide v16, v16, p2

    sub-long v14, v14, v16

    invoke-static {v13, v14, v15}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    aget-wide v9, v9, p2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    aget-wide v11, v11, p2

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v11, v12}, Lcom/mediatek/datausage/OverViewTabAdapter;->calcMobileProgress(JJ)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 365
    .end local v2           #progress:Landroid/widget/ProgressBar;
    .end local v3           #progressBarColor:I
    .end local v5           #textTitle:Landroid/widget/TextView;
    .end local v6           #textUsage:Landroid/widget/TextView;
    :pswitch_1
    const v9, 0x7f04005d

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 367
    goto/16 :goto_1

    .line 369
    :pswitch_2
    const v9, 0x7f04005f

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 371
    goto/16 :goto_1

    .line 373
    :pswitch_3
    const v9, 0x7f04005e

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 375
    goto/16 :goto_1

    .line 377
    :pswitch_4
    const v9, 0x7f040060

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 379
    goto/16 :goto_1

    .line 381
    :pswitch_5
    const v9, 0x7f040061

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 383
    goto/16 :goto_1

    .line 404
    .restart local v2       #progress:Landroid/widget/ProgressBar;
    .restart local v3       #progressBarColor:I
    .restart local v5       #textTitle:Landroid/widget/TextView;
    .restart local v6       #textUsage:Landroid/widget/TextView;
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f080189

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    aget-wide v14, v14, p2

    invoke-static {v13, v14, v15}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    aget-wide v14, v14, p2

    invoke-static {v13, v14, v15}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 410
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    aget-wide v10, v10, p2

    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public getChildrenCount(I)I
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 421
    iget v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiPos:I

    if-ne p1, v0, :cond_0

    .line 422
    const/4 v0, 0x2

    .line 426
    :goto_0
    return v0

    .line 423
    :cond_0
    iget v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobilePos:I

    if-ne p1, v0, :cond_1

    .line 424
    iget v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSimNum:I

    goto :goto_0

    .line 426
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 432
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mGroup:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 444
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 451
    if-eqz p3, :cond_0

    instance-of v2, p3, Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 452
    :cond_0
    iget-object v2, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 453
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f04004f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 457
    .end local v0           #factory:Landroid/view/LayoutInflater;
    .local v1, item:Landroid/widget/TextView;
    :goto_0
    iget-object v2, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mGroup:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    return-object v1

    .end local v1           #item:Landroid/widget/TextView;
    :cond_1
    move-object v1, p3

    .line 455
    check-cast v1, Landroid/widget/TextView;

    .restart local v1       #item:Landroid/widget/TextView;
    goto :goto_0
.end method

.method public getUtcDateMillis()J
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    const/4 v11, 0x6

    const/4 v10, 0x4

    const/4 v4, 0x0

    .line 479
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v9, v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 481
    .local v9, sdf:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 482
    .local v7, date:Ljava/lang/String;
    invoke-virtual {v7, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 485
    .local v1, year:I
    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 488
    .local v8, month:I
    const/16 v2, 0x8

    invoke-virtual {v7, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 490
    .local v3, day:I
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 491
    .local v0, gc:Ljava/util/Calendar;
    add-int/lit8 v2, v8, -0x1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 492
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    div-long/2addr v4, v12

    mul-long/2addr v4, v12

    return-wide v4
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 470
    const/4 v0, 0x0

    return v0
.end method

.method public updateAdapter()V
    .locals 2

    .prologue
    .line 499
    const-string v0, "OverViewTabAdapter"

    const-string v1, "updateAdapter()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-virtual {v0}, Lcom/android/settings/net/NetworkPolicyEditor;->read()V

    .line 503
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/datausage/OverViewTabAdapter;->getMobileState()V

    .line 504
    invoke-direct {p0}, Lcom/mediatek/datausage/OverViewTabAdapter;->initData()V

    .line 505
    return-void
.end method
