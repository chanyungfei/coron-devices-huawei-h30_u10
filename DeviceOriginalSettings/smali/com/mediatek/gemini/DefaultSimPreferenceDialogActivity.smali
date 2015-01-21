.class public Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;
.super Landroid/app/Activity;
.source "DefaultSimPreferenceDialogActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final ALL_RADIO_OFF:I = 0x0

.field private static final ALL_RADIO_ON:I = 0x3

.field private static final COLOR_INTERNET_CALL:I = 0x8

.field private static final DEFAULT_SIM_DIALOG:I = 0x1

.field private static final DISPLAY_FIRST_FOUR:I = 0x1

.field private static final DISPLAY_LAST_FOUR:I = 0x2

.field private static final DISPLAY_NONE:I = 0x0

.field private static final KEY_SIM_INFO_CATEGORY:Ljava/lang/String; = "sim_info"

.field private static final MSG_DATA_CONN_CHANGED:I = 0x65

.field private static final NUM_WIDTH:I = 0x4

.field private static final PIN1_REQUEST_CODE:I = 0x12e

.field private static final SIM_SLOT_1_RADIO_ON:I = 0x1

.field private static final SIM_SLOT_2_RADIO_ON:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DefaultSimPreferenceDialogActivity"

.field private static final VIDEO_CALL_OFF:I = -0x1


# instance fields
.field private mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mDefaultSimPreference:Lcom/mediatek/gemini/DefaultSimPreference;

.field private mDialog:Landroid/app/AlertDialog;

.field private mIs3GSwitchManualEnabled:Z

.field private mIsManuAllowed:Z

.field private mIsManuSelected:Z

.field private mListView:Landroid/widget/ListView;

.field private mSimItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/gemini/SimItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSimNum:I

.field private mSiminfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchDialog:Landroid/app/AlertDialog;

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSiminfoList:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSimItemList:Ljava/util/List;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mType:I

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->enableDataRoaming(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->switchConSim(J)V

    return-void
.end method

.method private current3GSlotId()I
    .locals 4

    .prologue
    .line 447
    const/4 v1, -0x1

    .line 449
    .local v1, slot3G:I
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_0

    .line 450
    iget-object v2, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->get3GCapabilitySIM()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 455
    :cond_0
    :goto_0
    return v1

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DefaultSimPreferenceDialogActivity"

    const-string v3, "mTelephony exception"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dataSwitchConfirmDlgMsg(J)I
    .locals 7
    .parameter "simid"

    .prologue
    const/4 v1, 0x1

    .line 397
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->findSIMInfoBySimId(J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v2

    .line 398
    .local v2, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    .line 399
    .local v3, telephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    iget v4, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->isNetworkRoaming(I)Z

    move-result v0

    .line 400
    .local v0, isInRoaming:Z
    iget v4, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDataRoaming:I

    if-ne v4, v1, :cond_0

    .line 401
    .local v1, isRoamingDataAllowed:Z
    :goto_0
    const-string v4, "DefaultSimPreferenceDialogActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isInRoaming="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isRoamingDataAllowed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    if-eqz v0, :cond_1

    .line 406
    if-nez v1, :cond_1

    .line 422
    const v4, 0x7f0800fa

    .line 443
    :goto_1
    return v4

    .line 400
    .end local v1           #isRoamingDataAllowed:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 443
    .restart local v1       #isRoamingDataAllowed:Z
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private enableDataRoaming(J)V
    .locals 7
    .parameter "value"

    .prologue
    const/4 v6, 0x1

    .line 374
    const-string v3, "DefaultSimPreferenceDialogActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableDataRoaming with SimId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->isSimInsertedIn(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 378
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v3, :cond_0

    .line 379
    iget-object v3, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    const/4 v4, 0x1

    invoke-static {p0, p1, p2}, Lcom/mediatek/telephony/SimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/ITelephony;->setDataRoamingEnabledGemini(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :cond_0
    invoke-static {p0, v6, p1, p2}, Lcom/mediatek/telephony/SimInfoManager;->setDataRoaming(Landroid/content/Context;IJ)I

    move-result v0

    .line 387
    .local v0, count:I
    if-lez v0, :cond_1

    .line 388
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SIM_DATAROAMING_INFO_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 394
    .end local v0           #count:I
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v1

    .line 383
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "DefaultSimPreferenceDialogActivity"

    const-string v4, "mTelephony exception"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 392
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v3, "DefaultSimPreferenceDialogActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim Id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not inserted in phone do nothing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findSIMInfoBySimId(J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 4
    .parameter "simid"

    .prologue
    .line 459
    iget-object v2, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 460
    .local v1, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-wide v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 465
    .end local v1           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :goto_0
    return-object v1

    .line 464
    :cond_1
    const-string v2, "DefaultSimPreferenceDialogActivity"

    const-string v3, "Error happend on findSIMInfoBySimId no siminfo find"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCurConSimId()J
    .locals 6

    .prologue
    .line 235
    const-wide/16 v0, 0x0

    .line 237
    .local v0, simid:J
    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gprs_connection_sim_setting"

    const-wide/16 v4, -0x5

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 248
    return-wide v0
.end method

.method private getSimIndicator(I)I
    .locals 6
    .parameter "slotId"

    .prologue
    const/4 v2, -0x1

    .line 324
    const-string v3, "DefaultSimPreferenceDialogActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimIndicator---slotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v3, :cond_0

    .line 327
    iget-object v3, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 338
    :cond_0
    :goto_0
    return v2

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "DefaultSimPreferenceDialogActivity"

    const-string v4, "RemoteException"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 336
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 337
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v3, "DefaultSimPreferenceDialogActivity"

    const-string v4, "NullPointerException"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSimInfo()V
    .locals 7

    .prologue
    .line 343
    const-string v2, "DefaultSimPreferenceDialogActivity"

    const-string v3, "getSimInfo()"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSiminfoList:Ljava/util/List;

    .line 345
    iget-object v2, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSimNum:I

    .line 346
    const-string v2, "DefaultSimPreferenceDialogActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "total inserted sim card ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSimNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v2, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSiminfoList:Ljava/util/List;

    new-instance v3, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;

    invoke-direct {v3}, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 350
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 351
    const-string v3, "DefaultSimPreferenceDialogActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mDisplayName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-object v2, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v3, "DefaultSimPreferenceDialogActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mNumber = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-object v2, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v2, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v1, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 354
    .local v1, slot:I
    const-string v2, "DefaultSimPreferenceDialogActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mSimSlotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-string v3, "DefaultSimPreferenceDialogActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mColor = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v2, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v3, "DefaultSimPreferenceDialogActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mDispalyNumberFormat = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v2, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDispalyNumberFormat:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string v3, "DefaultSimPreferenceDialogActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mSimInfoId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-wide v5, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 365
    .end local v1           #slot:I
    :cond_0
    return-void
.end method

.method private getcurConnSimPos()I
    .locals 7

    .prologue
    .line 222
    const/4 v3, -0x1

    .line 223
    .local v3, pos:I
    invoke-direct {p0}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->getCurConSimId()J

    move-result-wide v0

    .line 224
    .local v0, curConSimId:J
    const-string v4, "DefaultSimPreferenceDialogActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "curConSimId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSimItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 227
    iget-object v4, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSimItemList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/gemini/SimItem;

    iget-wide v4, v4, Lcom/mediatek/gemini/SimItem;->mSimID:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 231
    .end local v2           #i:I
    :goto_1
    return v2

    .line 226
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 231
    goto :goto_1
.end method

.method private isRadioOff()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    .line 314
    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dual_sim_mode_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSimNum:I

    if-nez v1, :cond_1

    .line 319
    .local v0, isAllRadioOff:Z
    :cond_0
    :goto_0
    const-string v1, "DefaultSimPreferenceDialogActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllRadioOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return v0

    .line 314
    .end local v0           #isAllRadioOff:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSimInsertedIn(J)Z
    .locals 5
    .parameter "simId"

    .prologue
    .line 275
    iget-object v2, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 276
    .local v1, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-wide v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 277
    const/4 v2, 0x1

    .line 281
    .end local v1           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :goto_0
    return v2

    .line 280
    :cond_1
    const-string v2, "DefaultSimPreferenceDialogActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not inserted in phone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private switchConSim(J)V
    .locals 9
    .parameter "simId"

    .prologue
    const-wide/16 v7, 0x0

    .line 252
    const-string v4, "DefaultSimPreferenceDialogActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switchConSim() with simid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    cmp-long v4, p1, v7

    if-ltz v4, :cond_0

    cmp-long v4, p1, v7

    if-lez v4, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->isSimInsertedIn(J)Z

    move-result v4

    if-nez v4, :cond_2

    .line 254
    :cond_0
    const-string v4, "DefaultSimPreferenceDialogActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not available anymore"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_1
    :goto_0
    return-void

    .line 257
    :cond_2
    cmp-long v4, p1, v7

    if-lez v4, :cond_3

    const/4 v3, 0x1

    .line 259
    .local v3, isConnect:Z
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->getCurConSimId()J

    move-result-wide v0

    .line 260
    .local v0, curConSimId:J
    cmp-long v4, p1, v0

    if-eqz v4, :cond_1

    .line 263
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.DATA_DEFAULT_SIM"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "simid"

    invoke-virtual {v2, v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 257
    .end local v0           #curConSimId:J
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #isConnect:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public dismissDialogs()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSwitchDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSwitchDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 371
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 112
    const-string v1, "DefaultSimPreferenceDialogActivity"

    const-string v4, "onCreate()"

    invoke-static {v1, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mConnService:Landroid/net/ConnectivityManager;

    .line 116
    const-string v4, "DefaultSimPreferenceDialogActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mConnService is null ? "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mConnService:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->is3GSwitchManualEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mIsManuAllowed:Z

    .line 123
    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->is3GSwitchManualChange3GAllowed()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mIsManuSelected:Z

    .line 124
    iget-boolean v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mIsManuAllowed:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mIsManuSelected:Z

    if-eqz v1, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mIs3GSwitchManualEnabled:Z

    .line 125
    const-string v1, "DefaultSimPreferenceDialogActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsManuAllowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mIsManuAllowed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mIsManuSelected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mIsManuSelected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIs3GSwitchManualEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mIs3GSwitchManualEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 135
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->showDialog(I)V

    .line 136
    return-void

    :cond_1
    move v1, v3

    .line 116
    goto :goto_0

    :cond_2
    move v2, v3

    .line 124
    goto :goto_1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DefaultSimPreferenceDialogActivity"

    const-string v2, "mTelephony exception"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 13
    .parameter "id"

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 140
    const-string v1, "DefaultSimPreferenceDialogActivity"

    const-string v3, "onCreateDialog()"

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    packed-switch p1, :pswitch_data_0

    .line 215
    const-string v1, "DefaultSimPreferenceDialogActivity"

    const-string v2, "onCreateDialog() case default"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    return-object v1

    .line 143
    :pswitch_0
    const-string v1, "DefaultSimPreferenceDialogActivity"

    const-string v3, "onCreateDialog() case MSG_DATA_CONN_CHANGED"

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 147
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {p0}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->getSimInfo()V

    .line 149
    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSimItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 151
    const/4 v9, 0x0

    .line 152
    .local v9, simState:I
    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSiminfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 153
    .local v10, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v10, :cond_0

    .line 154
    new-instance v11, Lcom/mediatek/gemini/SimItem;

    invoke-direct {v11, v10}, Lcom/mediatek/gemini/SimItem;-><init>(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    .line 155
    .local v11, simitem:Lcom/mediatek/gemini/SimItem;
    iget v1, v10, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-direct {p0, v1}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->getSimIndicator(I)I

    move-result v9

    .line 156
    iput v9, v11, Lcom/mediatek/gemini/SimItem;->mState:I

    .line 161
    invoke-direct {p0}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->isRadioOff()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    const-string v1, "DefaultSimPreferenceDialogActivity"

    const-string v3, "Force the state to be radio off as airplane mode or dual sim mode"

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iput v12, v11, Lcom/mediatek/gemini/SimItem;->mState:I

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSimItemList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 168
    .end local v10           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v11           #simitem:Lcom/mediatek/gemini/SimItem;
    :cond_2
    new-instance v11, Lcom/mediatek/gemini/SimItem;

    const v1, 0x7f0800dc

    invoke-virtual {p0, v1}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    invoke-direct {v11, v1, v3, v4, v5}, Lcom/mediatek/gemini/SimItem;-><init>(Ljava/lang/String;IJ)V

    .line 172
    .restart local v11       #simitem:Lcom/mediatek/gemini/SimItem;
    invoke-direct {p0}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->isRadioOff()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 173
    iput v12, v11, Lcom/mediatek/gemini/SimItem;->mState:I

    .line 175
    :cond_3
    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSimItemList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSimItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .line 177
    .local v8, simListSize:I
    const-string v1, "DefaultSimPreferenceDialogActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimItemList.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v1, Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-direct {v1}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>()V

    iput-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 180
    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v1, p0}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 181
    new-instance v1, Lcom/mediatek/gemini/DefaultSimPreference;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/mediatek/gemini/DefaultSimPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mDefaultSimPreference:Lcom/mediatek/gemini/DefaultSimPreference;

    .line 182
    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mDefaultSimPreference:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v3, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v1, v3}, Lcom/mediatek/gemini/DefaultSimPreference;->setCellConnMgr(Lcom/mediatek/CellConnService/CellConnMgr;)V

    .line 183
    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mDefaultSimPreference:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v3, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSimItemList:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitData(Ljava/util/List;)V

    .line 184
    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mDefaultSimPreference:Lcom/mediatek/gemini/DefaultSimPreference;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/mediatek/gemini/DefaultSimPreference;->setType(I)V

    .line 186
    invoke-direct {p0}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->getcurConnSimPos()I

    move-result v7

    .line 187
    .local v7, pos:I
    const-string v1, "DefaultSimPreferenceDialogActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mDefaultSimPreference:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v1, v7}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    .line 189
    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mDefaultSimPreference:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v1, p0}, Lcom/mediatek/gemini/DefaultSimPreference;->getPreparedListView(Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mListView:Landroid/widget/ListView;

    .line 191
    const v1, 0x7f0800d8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 192
    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mListView:Landroid/widget/ListView;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 195
    const/high16 v1, 0x104

    new-instance v2, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity$1;

    invoke-direct {v2, p0}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity$1;-><init>(Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 203
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mDialog:Landroid/app/AlertDialog;

    .line 204
    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 205
    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity$2;

    invoke-direct {v2, p0}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity$2;-><init>(Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 211
    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 306
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 307
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 472
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v3, "DefaultSimPreferenceDialogActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "positon is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    if-eqz p2, :cond_0

    .line 474
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iget-object v3, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSimItemList:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gemini/SimItem;

    .line 478
    .local v2, simItem:Lcom/mediatek/gemini/SimItem;
    iget v3, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Lcom/mediatek/gemini/SimItem;->mIsSim:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/mediatek/gemini/SimItem;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 481
    iget-object v3, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    iget v4, v2, Lcom/mediatek/gemini/SimItem;->mSlot:I

    const/16 v5, 0x12e

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    goto :goto_0

    .line 484
    :cond_2
    if-eqz v2, :cond_7

    .line 485
    iget-boolean v3, v2, Lcom/mediatek/gemini/SimItem;->mIsSim:Z

    if-eqz v3, :cond_3

    iget-wide v3, v2, Lcom/mediatek/gemini/SimItem;->mSimID:J

    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gprs_connection_sim_setting"

    const-wide/16 v7, -0x5

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 488
    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->dismissDialogs()V

    .line 489
    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->finish()V

    goto :goto_0

    .line 491
    :cond_3
    iget-boolean v3, v2, Lcom/mediatek/gemini/SimItem;->mIsSim:Z

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gprs_connection_sim_setting"

    const-wide/16 v5, -0x5

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 494
    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->dismissDialogs()V

    .line 495
    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->finish()V

    goto :goto_0

    .line 500
    :cond_4
    iget-wide v3, v2, Lcom/mediatek/gemini/SimItem;->mSimID:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_5

    iget-wide v3, v2, Lcom/mediatek/gemini/SimItem;->mSimID:J

    invoke-direct {p0, v3, v4}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->dataSwitchConfirmDlgMsg(J)I

    move-result v1

    .line 501
    .local v1, mDataSwitchMsgIndex:I
    :goto_1
    const/4 v3, -0x1

    if-ne v1, v3, :cond_6

    .line 502
    iget-wide v3, v2, Lcom/mediatek/gemini/SimItem;->mSimID:J

    invoke-direct {p0, v3, v4}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->switchConSim(J)V

    .line 503
    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->finish()V

    goto :goto_0

    .line 500
    .end local v1           #mDataSwitchMsgIndex:I
    :cond_5
    const/4 v1, -0x1

    goto :goto_1

    .line 505
    .restart local v1       #mDataSwitchMsgIndex:I
    :cond_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 506
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x1040014

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 507
    const v3, 0x1080027

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 508
    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 510
    const v3, 0x1040013

    new-instance v4, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity$3;

    invoke-direct {v4, p0, v1, v2}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity$3;-><init>(Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;ILcom/mediatek/gemini/SimItem;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 522
    const v3, 0x1040009

    new-instance v4, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity$4;

    invoke-direct {v4, p0}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity$4;-><init>(Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 528
    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->dismissDialogs()V

    .line 529
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSwitchDialog:Landroid/app/AlertDialog;

    .line 531
    iget-object v3, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->mSwitchDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 534
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #mDataSwitchMsgIndex:I
    :cond_7
    const-string v3, "DefaultSimPreferenceDialogActivity"

    const-string v4, "MobileIcon clicked and clicked a null sim item"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->dismissDialogs()V

    .line 295
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 296
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 286
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 288
    return-void
.end method
