.class public Lcom/mediatek/wifi/WifiGprsSelector;
.super Lcom/android/settings/wifi/WifiSettings;
.source "WifiGprsSelector.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wifi/WifiGprsSelector$SimItem;,
        Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;
    }
.end annotation


# static fields
.field private static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final APN_INDEX:I = 0x2

.field private static final ATTACH_TIME_OUT_LENGTH:I = 0x7530

.field private static final COLOR_INDEX_EIGHT:I = 0x8

.field private static final COLOR_INDEX_SEVEN:I = 0x7

.field private static final COLOR_INDEX_ZERO:I = 0x0

.field private static final DETACH_TIME_OUT_LENGTH:I = 0x2710

.field private static final DIALOG_WAITING:I = 0x3e9

.field private static final DISPLAY_FIRST_FOUR:I = 0x1

.field private static final DISPLAY_LAST_FOUR:I = 0x2

.field private static final DISPLAY_NONE:I = 0x0

.field private static final EVENT_ATTACH_TIME_OUT:I = 0x7d1

.field private static final EVENT_DETACH_TIME_OUT:I = 0x7d0

.field private static final ID_INDEX:I = 0x0

.field private static final KEY_ADD_WIFI_NETWORK:Ljava/lang/String; = "add_network"

.field private static final KEY_APN_LIST:Ljava/lang/String; = "apn_list"

.field private static final KEY_DATA_ENABLER:Ljava/lang/String; = "data_enabler"

.field private static final KEY_DATA_ENABLER_CATEGORY:Ljava/lang/String; = "data_enabler_category"

.field private static final KEY_DATA_ENABLER_GEMINI:Ljava/lang/String; = "data_enabler_gemini"

.field private static final NAME_INDEX:I = 0x1

.field private static final PIN1_REQUEST_CODE:I = 0x12e

.field private static final PREFERAPN_URI:Landroid/net/Uri; = null

.field private static final PREFERAPN_URI_GEMINI_SIM1:Landroid/net/Uri; = null

.field private static final PREFERAPN_URI_GEMINI_SIM2:Landroid/net/Uri; = null

.field private static final PREFERRED_APN_URI:Ljava/lang/String; = "content://telephony/carriers/preferapn"

.field private static final PREFERRED_APN_URI_GEMINI_SIM1:Ljava/lang/String; = "content://telephony/carriers_sim1/preferapn"

.field private static final PREFERRED_APN_URI_GEMINI_SIM2:Ljava/lang/String; = "content://telephony/carriers_sim2/preferapn"

.field private static final PROJECTION_ARRAY:[Ljava/lang/String; = null

.field private static final SIM_CARD_1:I = 0x0

.field private static final SIM_CARD_2:I = 0x1

.field private static final SIM_CARD_SINGLE:I = 0x2

.field private static final SIM_CARD_UNDEFINED:I = -0x1

.field private static final SIM_NUMBER_LEN:I = 0x4

.field private static final SOURCE_TYPE_INDEX:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiGprsSelector"

.field private static final TRANSACTION_START:Ljava/lang/String; = "com.android.mms.transaction.START"

.field private static final TRANSACTION_STOP:Ljava/lang/String; = "com.android.mms.transaction.STOP"

.field private static final TYPES_INDEX:I = 0x3


# instance fields
.field private mAddWifiNetwork:Landroid/preference/Preference;

.field private mAirplaneModeEnabled:Z

.field private mApnList:Landroid/preference/PreferenceCategory;

.field private mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mDataEnabler:Landroid/preference/CheckBoxPreference;

.field private mDataEnablerGemini:Landroid/preference/Preference;

.field mGprsConnectObserver:Landroid/database/ContentObserver;

.field private mInitValue:I

.field private mIsCallStateIdle:Z

.field private mIsGprsSwitching:Z

.field private mIsSIMExist:Z

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRestoreCarrierUri:Landroid/net/Uri;

.field private mScreenEnable:Z

.field private mSelectedKey:Ljava/lang/String;

.field private mServiceComplete:Ljava/lang/Runnable;

.field private mSimMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSimMapKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSimSlot:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

.field mTimeHandler:Landroid/os/Handler;

.field private mUri:Landroid/net/Uri;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 102
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sourcetype"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/wifi/WifiGprsSelector;->PROJECTION_ARRAY:[Ljava/lang/String;

    .line 123
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/wifi/WifiGprsSelector;->PREFERAPN_URI:Landroid/net/Uri;

    .line 124
    const-string v0, "content://telephony/carriers_sim1/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/wifi/WifiGprsSelector;->PREFERAPN_URI_GEMINI_SIM1:Landroid/net/Uri;

    .line 125
    const-string v0, "content://telephony/carriers_sim2/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/wifi/WifiGprsSelector;->PREFERAPN_URI_GEMINI_SIM2:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 71
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    .line 110
    iput-boolean v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mIsCallStateIdle:Z

    .line 111
    iput-boolean v2, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mAirplaneModeEnabled:Z

    .line 137
    iput-boolean v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mIsSIMExist:Z

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mSimMapKeyList:Ljava/util/List;

    .line 149
    iput-boolean v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mScreenEnable:Z

    .line 150
    iput-boolean v2, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mIsGprsSwitching:Z

    .line 152
    new-instance v0, Lcom/mediatek/wifi/WifiGprsSelector$1;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/WifiGprsSelector$1;-><init>(Lcom/mediatek/wifi/WifiGprsSelector;)V

    iput-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    new-instance v0, Lcom/mediatek/wifi/WifiGprsSelector$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/wifi/WifiGprsSelector$2;-><init>(Lcom/mediatek/wifi/WifiGprsSelector;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mGprsConnectObserver:Landroid/database/ContentObserver;

    .line 215
    new-instance v0, Lcom/mediatek/wifi/WifiGprsSelector$3;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/WifiGprsSelector$3;-><init>(Lcom/mediatek/wifi/WifiGprsSelector;)V

    iput-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 226
    new-instance v0, Lcom/mediatek/wifi/WifiGprsSelector$4;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/WifiGprsSelector$4;-><init>(Lcom/mediatek/wifi/WifiGprsSelector;)V

    iput-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mServiceComplete:Ljava/lang/Runnable;

    .line 231
    new-instance v0, Lcom/mediatek/wifi/WifiGprsSelector$5;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/WifiGprsSelector$5;-><init>(Lcom/mediatek/wifi/WifiGprsSelector;)V

    iput-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mTimeHandler:Landroid/os/Handler;

    .line 1016
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-static {p0}, Lcom/mediatek/wifi/WifiGprsSelector;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/wifi/WifiGprsSelector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mIsGprsSwitching:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/wifi/WifiGprsSelector;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/mediatek/wifi/WifiGprsSelector;->getSimSlot()I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/wifi/WifiGprsSelector;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mIsGprsSwitching:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/mediatek/wifi/WifiGprsSelector;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mIsCallStateIdle:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/mediatek/wifi/WifiGprsSelector;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/wifi/WifiGprsSelector;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/mediatek/wifi/WifiGprsSelector;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/wifi/WifiGprsSelector;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/mediatek/wifi/WifiGprsSelector;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/wifi/WifiGprsSelector;)Lcom/mediatek/CellConnService/CellConnMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/wifi/WifiGprsSelector;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/mediatek/wifi/WifiGprsSelector;->switchGprsDefautlSIM(J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/wifi/WifiGprsSelector;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mInitValue:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/wifi/WifiGprsSelector;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/mediatek/wifi/WifiGprsSelector;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/wifi/WifiGprsSelector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/mediatek/wifi/WifiGprsSelector;->updateDataEnabler()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/wifi/WifiGprsSelector;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/mediatek/wifi/WifiGprsSelector;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/wifi/WifiGprsSelector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mAirplaneModeEnabled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/mediatek/wifi/WifiGprsSelector;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mAirplaneModeEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/wifi/WifiGprsSelector;)Landroid/preference/PreferenceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mApnList:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/wifi/WifiGprsSelector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mScreenEnable:Z

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/wifi/WifiGprsSelector;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mScreenEnable:Z

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/wifi/WifiGprsSelector;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/mediatek/wifi/WifiGprsSelector;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/wifi/WifiGprsSelector;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mSimSlot:I

    return v0
.end method

.method static synthetic access$902(Lcom/mediatek/wifi/WifiGprsSelector;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mSimSlot:I

    return p1
.end method

.method private dealWithConnChange(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 765
    const-string v0, "WifiGprsSelector"

    const-string v1, "only sigle SIM load can controling data connection"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    return-void
.end method

.method private fillList(I)V
    .locals 25
    .parameter "simSlot"

    .prologue
    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mApnList:Landroid/preference/PreferenceCategory;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 427
    const-string v21, "WifiGprsSelector"

    const-string v22, "mApnList == null"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mApnList:Landroid/preference/PreferenceCategory;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 432
    if-ltz p1, :cond_0

    const/16 v21, 0x2

    move/from16 v0, p1

    move/from16 v1, v21

    if-gt v0, v1, :cond_0

    .line 435
    const-string v21, "WifiGprsSelector"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "fillList(), simSlot="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ";"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "numeric=\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-direct/range {p0 .. p1}, Lcom/mediatek/wifi/WifiGprsSelector;->getQueryWhere(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 439
    .local v20, where:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/wifi/WifiGprsSelector;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    sget-object v23, Lcom/mediatek/wifi/WifiGprsSelector;->PROJECTION_ARRAY:[Ljava/lang/String;

    const-string v24, "name ASC"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v20

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 444
    .local v7, cursor:Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v11, mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    const/4 v9, 0x0

    .line 447
    .local v9, keySetChecked:Z
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wifi/WifiGprsSelector;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/wifi/WifiGprsSelector;->mSelectedKey:Ljava/lang/String;

    .line 448
    const-string v21, "WifiGprsSelector"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mSelectedKey = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mSelectedKey:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ";"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 451
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v21

    if-nez v21, :cond_6

    .line 452
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 453
    .local v12, name:Ljava/lang/String;
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 454
    .local v5, apn:Ljava/lang/String;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 455
    .local v8, key:Ljava/lang/String;
    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 456
    .local v19, type:Ljava/lang/String;
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 459
    .local v18, sourcetype:I
    new-instance v13, Lcom/android/settings/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/wifi/WifiGprsSelector;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 461
    .local v13, pref:Lcom/android/settings/ApnPreference;
    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/settings/ApnPreference;->setSlotId(I)V

    .line 462
    invoke-virtual {v13, v8}, Lcom/android/settings/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v13, v12}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 464
    invoke-virtual {v13, v5}, Lcom/android/settings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 465
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/settings/ApnPreference;->setSourceType(I)V

    .line 466
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/settings/ApnPreference;->setPersistent(Z)V

    .line 467
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 469
    if-eqz v19, :cond_2

    const-string v21, "mms"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    const-string v21, "cmmail"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    const-string v21, "CMDM"

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_4

    :cond_2
    const/4 v14, 0x1

    .line 471
    .local v14, selectable:Z
    :goto_2
    invoke-virtual {v13, v14}, Lcom/android/settings/ApnPreference;->setSelectable(Z)V

    .line 472
    if-eqz v14, :cond_5

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mSelectedKey:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mSelectedKey:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 474
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/mediatek/wifi/WifiGprsSelector;->setSelectedApnKey(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v13}, Lcom/android/settings/ApnPreference;->setChecked()V

    .line 476
    const/4 v9, 0x1

    .line 477
    const-string v21, "WifiGprsSelector"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "apn key: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " set."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ";"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_3
    const-string v21, "WifiGprsSelector"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "key:  "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " added!"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ";"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mApnList:Landroid/preference/PreferenceCategory;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 482
    const-string v21, "data_enabler_gemini"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/settings/ApnPreference;->setDependency(Ljava/lang/String;)V

    .line 489
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 469
    .end local v14           #selectable:Z
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 487
    .restart local v14       #selectable:Z
    :cond_5
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 492
    .end local v5           #apn:Ljava/lang/String;
    .end local v8           #key:Ljava/lang/String;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #pref:Lcom/android/settings/ApnPreference;
    .end local v14           #selectable:Z
    .end local v18           #sourcetype:I
    .end local v19           #type:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mApnList:Landroid/preference/PreferenceCategory;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v10

    .line 494
    .local v10, mSelectableApnCount:I
    if-nez v9, :cond_7

    if-lez v10, :cond_7

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mApnList:Landroid/preference/PreferenceCategory;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/ApnPreference;

    .line 496
    .local v6, apnPref:Lcom/android/settings/ApnPreference;
    if-eqz v6, :cond_7

    .line 497
    invoke-virtual {v6}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/wifi/WifiGprsSelector;->setSelectedApnKey(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v6}, Lcom/android/settings/ApnPreference;->setChecked()V

    .line 499
    const-string v21, "WifiGprsSelector"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Key does not match.Set key: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    .end local v6           #apnPref:Lcom/android/settings/ApnPreference;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v21

    if-nez v21, :cond_8

    const/16 v21, 0x1

    :goto_4
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/wifi/WifiGprsSelector;->mIsCallStateIdle:Z

    .line 506
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mSimSlot:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    goto/16 :goto_0

    .line 508
    :pswitch_0
    const/16 v21, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    const/4 v15, 0x1

    .line 510
    .local v15, sim1Ready:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mApnList:Landroid/preference/PreferenceCategory;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mScreenEnable:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mIsCallStateIdle:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mAirplaneModeEnabled:Z

    move/from16 v21, v0

    if-nez v21, :cond_a

    if-eqz v15, :cond_a

    const/16 v21, 0x1

    :goto_6
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto/16 :goto_0

    .line 504
    .end local v15           #sim1Ready:Z
    :cond_8
    const/16 v21, 0x0

    goto :goto_4

    .line 508
    :cond_9
    const/4 v15, 0x0

    goto :goto_5

    .line 510
    .restart local v15       #sim1Ready:Z
    :cond_a
    const/16 v21, 0x0

    goto :goto_6

    .line 514
    .end local v15           #sim1Ready:Z
    :pswitch_1
    const/16 v21, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    const/16 v16, 0x1

    .line 516
    .local v16, sim2Ready:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mApnList:Landroid/preference/PreferenceCategory;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mScreenEnable:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mIsCallStateIdle:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mAirplaneModeEnabled:Z

    move/from16 v21, v0

    if-nez v21, :cond_c

    if-eqz v16, :cond_c

    const/16 v21, 0x1

    :goto_8
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto/16 :goto_0

    .line 514
    .end local v16           #sim2Ready:Z
    :cond_b
    const/16 v16, 0x0

    goto :goto_7

    .line 516
    .restart local v16       #sim2Ready:Z
    :cond_c
    const/16 v21, 0x0

    goto :goto_8

    .line 520
    .end local v16           #sim2Ready:Z
    :pswitch_2
    const/16 v21, 0x5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    const/16 v17, 0x1

    .line 522
    .local v17, simReady:Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mApnList:Landroid/preference/PreferenceCategory;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mScreenEnable:Z

    move/from16 v21, v0

    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mIsCallStateIdle:Z

    move/from16 v21, v0

    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mAirplaneModeEnabled:Z

    move/from16 v21, v0

    if-nez v21, :cond_e

    if-eqz v17, :cond_e

    const/16 v21, 0x1

    :goto_a
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto/16 :goto_0

    .line 520
    .end local v17           #simReady:Z
    :cond_d
    const/16 v17, 0x0

    goto :goto_9

    .line 522
    .restart local v17       #simReady:Z
    :cond_e
    const/16 v21, 0x0

    goto :goto_a

    .line 506
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .parameter "intent"

    .prologue
    .line 258
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, str:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 260
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 262
    :goto_0
    return-object v1

    :cond_0
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private getQueryWhere(I)Ljava/lang/String;
    .locals 4
    .parameter "simSlot"

    .prologue
    .line 532
    const-string v0, ""

    .line 534
    .local v0, where:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 557
    invoke-virtual {p0}, Lcom/mediatek/wifi/WifiGprsSelector;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "Can\'t get any valid SIM information"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 561
    invoke-virtual {p0}, Lcom/mediatek/wifi/WifiGprsSelector;->finish()V

    .line 565
    :goto_0
    const-string v1, "WifiGprsSelector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "where = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v1, "WifiGprsSelector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    return-object v0

    .line 536
    :pswitch_0
    sget-object v1, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mUri:Landroid/net/Uri;

    .line 537
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, "-1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 539
    sget-object v1, Lcom/mediatek/wifi/WifiGprsSelector;->PREFERAPN_URI_GEMINI_SIM1:Landroid/net/Uri;

    iput-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mRestoreCarrierUri:Landroid/net/Uri;

    goto :goto_0

    .line 543
    :pswitch_1
    sget-object v1, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mUri:Landroid/net/Uri;

    .line 544
    const-string v1, "gsm.sim.operator.numeric.2"

    const-string v2, "-1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    sget-object v1, Lcom/mediatek/wifi/WifiGprsSelector;->PREFERAPN_URI_GEMINI_SIM2:Landroid/net/Uri;

    iput-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mRestoreCarrierUri:Landroid/net/Uri;

    goto :goto_0

    .line 550
    :pswitch_2
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mUri:Landroid/net/Uri;

    .line 551
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 553
    sget-object v1, Lcom/mediatek/wifi/WifiGprsSelector;->PREFERAPN_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mRestoreCarrierUri:Landroid/net/Uri;

    goto :goto_0

    .line 534
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 719
    const/4 v1, 0x0

    .line 720
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/wifi/WifiGprsSelector;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mRestoreCarrierUri:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v7

    const/4 v5, 0x0

    const-string v6, "name ASC"

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 724
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 725
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 726
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 729
    :cond_0
    return-object v1
.end method

.method private getSimSlot()I
    .locals 8

    .prologue
    .line 677
    const/4 v3, -0x1

    .line 679
    .local v3, slotId:I
    invoke-virtual {p0}, Lcom/mediatek/wifi/WifiGprsSelector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gprs_connection_sim_setting"

    const-wide/16 v6, -0x5

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    long-to-int v4, v4

    int-to-long v0, v4

    .line 682
    .local v0, dataConnectId:J
    const-string v4, "WifiGprsSelector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimSlot,dataConnectId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 685
    iget-object v4, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mSimMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 686
    .local v2, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v2, :cond_0

    .line 687
    iget v3, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 694
    .end local v2           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    return v3
.end method

.method private handleWifiStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 697
    const-string v0, "WifiGprsSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWifiStateChanged(), new state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const-string v0, "WifiGprsSelector"

    const-string v1, "[0- stoping 1-stoped 2-starting 3-started 4-unknown]"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mAddWifiNetwork:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 701
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mAddWifiNetwork:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mAddWifiNetwork:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private init()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 353
    const-string v4, "WifiGprsSelector"

    const-string v5, "init()"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 355
    .local v1, mITelephony:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 375
    :goto_0
    return v2

    .line 360
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v1, v4}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v4, v3

    :goto_1
    iput-boolean v4, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mIsSIMExist:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 375
    goto :goto_0

    :cond_2
    move v4, v2

    .line 360
    goto :goto_1

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiGprsSelector"

    const-string v4, "RemoteException happens......"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initPhoneState()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 404
    const-string v1, "WifiGprsSelector"

    const-string v2, "initPhoneState()"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {p0}, Lcom/mediatek/wifi/WifiGprsSelector;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 407
    .local v0, it:Landroid/content/Intent;
    const-string v1, "simId"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mSimSlot:I

    .line 409
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 410
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mSimMap:Ljava/util/Map;

    .line 411
    invoke-direct {p0}, Lcom/mediatek/wifi/WifiGprsSelector;->initSimMap()V

    .line 413
    iget v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mSimSlot:I

    if-ne v1, v3, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/mediatek/wifi/WifiGprsSelector;->getSimSlot()I

    move-result v1

    iput v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mSimSlot:I

    .line 416
    :cond_0
    const-string v1, "WifiGprsSelector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GEMINI_SIM_ID_KEY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mSimSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return-void
.end method

.method private initSimMap()V
    .locals 6

    .prologue
    .line 800
    invoke-virtual {p0}, Lcom/mediatek/wifi/WifiGprsSelector;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 801
    .local v1, simList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    new-instance v3, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;

    invoke-direct {v3}, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;-><init>()V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 802
    iget-object v3, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mSimMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 803
    const-string v3, "WifiGprsSelector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim number is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 805
    .local v2, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-object v3, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mSimMap:Ljava/util/Map;

    iget-wide v4, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 807
    .end local v2           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mSimMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mSimMapKeyList:Ljava/util/List;

    .line 808
    return-void
.end method

.method private isMMSNotTransaction()Z
    .locals 7

    .prologue
    .line 339
    const/4 v1, 0x1

    .line 340
    .local v1, isMMSNotProcess:Z
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/mediatek/wifi/WifiGprsSelector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 341
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 342
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 343
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 344
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 345
    .local v3, state:Landroid/net/NetworkInfo$State;
    const-string v4, "WifiGprsSelector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mms state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1

    const/4 v1, 0x1

    .line 350
    .end local v2           #networkInfo:Landroid/net/NetworkInfo;
    .end local v3           #state:Landroid/net/NetworkInfo$State;
    :cond_0
    :goto_0
    return v1

    .line 346
    .restart local v2       #networkInfo:Landroid/net/NetworkInfo;
    .restart local v3       #state:Landroid/net/NetworkInfo$State;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 711
    iput-object p1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mSelectedKey:Ljava/lang/String;

    .line 712
    invoke-virtual {p0}, Lcom/mediatek/wifi/WifiGprsSelector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 713
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 714
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v2, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mRestoreCarrierUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 716
    return-void
.end method

.method private switchGprsDefautlSIM(J)V
    .locals 10
    .parameter "value"

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, -0x5

    .line 817
    cmp-long v3, p1, v8

    if-gez v3, :cond_1

    .line 841
    :cond_0
    :goto_0
    return-void

    .line 821
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/wifi/WifiGprsSelector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gprs_connection_sim_setting"

    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 823
    .local v0, gprsValue:J
    const-string v3, "WifiGprsSelector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", gprsValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", valueOfNotSet"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    cmp-long v3, p1, v0

    if-eqz v3, :cond_0

    .line 828
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DATA_DEFAULT_SIM"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 829
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "simid"

    invoke-virtual {v2, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 830
    invoke-virtual {p0}, Lcom/mediatek/wifi/WifiGprsSelector;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 831
    const-string v3, "WifiGprsSelector"

    const-string v4, "send gprs switch broadcast"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/16 v3, 0x3e9

    invoke-virtual {p0, v3}, Lcom/mediatek/wifi/WifiGprsSelector;->showDialog(I)V

    .line 833
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mIsGprsSwitching:Z

    .line 834
    cmp-long v3, p1, v8

    if-lez v3, :cond_2

    .line 835
    iget-object v3, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mTimeHandler:Landroid/os/Handler;

    const/16 v4, 0x7d1

    const-wide/16 v5, 0x7530

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 836
    const-string v3, "WifiGprsSelector"

    const-string v4, "set ATTACH_TIME_OUT"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 838
    :cond_2
    iget-object v3, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mTimeHandler:Landroid/os/Handler;

    const/16 v4, 0x7d0

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 839
    const-string v3, "WifiGprsSelector"

    const-string v4, "set DETACH_TIME_OUT"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateDataEnabler()V
    .locals 3

    .prologue
    .line 734
    const-string v0, "WifiGprsSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataEnabler, mSimSlot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mSimSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mSimSlot:I

    invoke-direct {p0, v0}, Lcom/mediatek/wifi/WifiGprsSelector;->fillList(I)V

    .line 738
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mDataEnablerGemini:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 739
    iget-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mDataEnablerGemini:Landroid/preference/Preference;

    iget-boolean v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mIsSIMExist:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mAirplaneModeEnabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 757
    :cond_0
    return-void

    .line 739
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getSimColorResource(I)I
    .locals 1
    .parameter "color"

    .prologue
    .line 844
    if-ltz p1, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 845
    sget-object v0, Landroid/provider/Telephony;->SIMBackgroundDarkRes:[I

    aget v0, v0, p1

    .line 847
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getStatusResource(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 852
    packed-switch p1, :pswitch_data_0

    .line 868
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 854
    :pswitch_1
    const v0, 0x2020114

    goto :goto_0

    .line 856
    :pswitch_2
    const v0, 0x2020101

    goto :goto_0

    .line 858
    :pswitch_3
    const v0, 0x20200fa

    goto :goto_0

    .line 860
    :pswitch_4
    const v0, 0x202011b

    goto :goto_0

    .line 862
    :pswitch_5
    const v0, 0x2020119

    goto :goto_0

    .line 864
    :pswitch_6
    const v0, 0x20200f1

    goto :goto_0

    .line 866
    :pswitch_7
    const v0, 0x202011a

    goto :goto_0

    .line 852
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V

    .line 268
    const-string v1, "WifiGprsSelector"

    const-string v2, "onActivityCreated()"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v1, "apn_list"

    invoke-virtual {p0, v1}, Lcom/mediatek/wifi/WifiGprsSelector;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mApnList:Landroid/preference/PreferenceCategory;

    .line 271
    const-string v1, "add_network"

    invoke-virtual {p0, v1}, Lcom/mediatek/wifi/WifiGprsSelector;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mAddWifiNetwork:Landroid/preference/Preference;

    .line 273
    const-string v1, "data_enabler_category"

    invoke-virtual {p0, v1}, Lcom/mediatek/wifi/WifiGprsSelector;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 277
    .local v0, dataEnableCategory:Landroid/preference/PreferenceCategory;
    if-eqz v0, :cond_1

    .line 279
    const-string v1, "data_enabler"

    invoke-virtual {p0, v1}, Lcom/mediatek/wifi/WifiGprsSelector;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mDataEnabler:Landroid/preference/CheckBoxPreference;

    .line 280
    const-string v1, "WifiGprsSelector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityCreated() mDataEnabler = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mDataEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v1, "data_enabler_gemini"

    invoke-virtual {p0, v1}, Lcom/mediatek/wifi/WifiGprsSelector;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mDataEnablerGemini:Landroid/preference/Preference;

    .line 282
    iget-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mDataEnablerGemini:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 283
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mDataEnabler:Landroid/preference/CheckBoxPreference;

    .line 285
    :cond_0
    const-string v1, "data_enabler"

    invoke-virtual {p0, v1}, Lcom/mediatek/wifi/WifiGprsSelector;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 297
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/wifi/WifiGprsSelector;->initPhoneState()V

    .line 298
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 300
    iget-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.mms.transaction.START"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.mms.transaction.STOP"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/mediatek/wifi/WifiGprsSelector;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080132

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 307
    invoke-direct {p0}, Lcom/mediatek/wifi/WifiGprsSelector;->init()Z

    .line 308
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mediatek/wifi/WifiGprsSelector;->setHasOptionsMenu(Z)V

    .line 309
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 787
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/mediatek/wifi/WifiGprsSelector;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 788
    .local v0, dialog:Landroid/app/ProgressDialog;
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 789
    invoke-virtual {p0}, Lcom/mediatek/wifi/WifiGprsSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 790
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 791
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 794
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 402
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mTimeHandler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 395
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mTimeHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 396
    invoke-super {p0}, Lcom/android/settings/wifi/WifiSettings;->onDestroy()V

    .line 397
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 380
    const-string v0, "WifiGprsSelector"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-super {p0}, Lcom/android/settings/wifi/WifiSettings;->onPause()V

    .line 382
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 383
    invoke-virtual {p0}, Lcom/mediatek/wifi/WifiGprsSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 385
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 386
    invoke-virtual {p0}, Lcom/mediatek/wifi/WifiGprsSelector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mGprsConnectObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 388
    iget-boolean v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mIsGprsSwitching:Z

    if-eqz v0, :cond_0

    .line 389
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/mediatek/wifi/WifiGprsSelector;->removeDialog(I)V

    .line 391
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 573
    const-string v2, "WifiGprsSelector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceChange(): Preference - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newValue - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newValue type - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    if-nez p1, :cond_1

    const-string v1, ""

    .line 577
    .local v1, key:Ljava/lang/String;
    :goto_0
    const-string v2, "data_enabler"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 578
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 579
    .local v0, checked:Z
    const-string v2, "WifiGprsSelector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data connection enabled?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-direct {p0, v0}, Lcom/mediatek/wifi/WifiGprsSelector;->dealWithConnChange(Z)V

    .line 587
    .end local v0           #checked:Z
    :cond_0
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 576
    .end local v1           #key:Ljava/lang/String;
    .restart local p2
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 582
    .restart local v1       #key:Ljava/lang/String;
    :cond_2
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 583
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/mediatek/wifi/WifiGprsSelector;->setSelectedApnKey(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 26
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 591
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    .line 592
    .local v13, key:Ljava/lang/String;
    const-string v22, "add_network"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 594
    const-string v22, "WifiGprsSelector"

    const-string v23, "add network"

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-super/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->addNetworkForSelector()V

    .line 674
    :cond_0
    :goto_0
    const/16 v22, 0x1

    :goto_1
    return v22

    .line 597
    :cond_1
    const-string v22, "data_enabler_gemini"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 600
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 601
    .local v16, simItemList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/wifi/WifiGprsSelector$SimItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mSimMapKeyList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    .line 602
    .local v18, simid:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mSimMap:Ljava/util/Map;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 604
    .local v19, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v19, :cond_2

    .line 605
    new-instance v20, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;-><init>(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    .line 607
    .local v20, simitem:Lcom/mediatek/wifi/WifiGprsSelector$SimItem;
    :try_start_0
    const-string v22, "phone"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v11

    .line 608
    .local v11, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v11, :cond_2

    .line 609
    move-object/from16 v0, v19

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-interface {v11, v0}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorStateGemini(I)I

    move-result v21

    .line 610
    .local v21, state:I
    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mState:I

    .line 611
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 613
    .end local v11           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    .end local v21           #state:I
    :catch_0
    move-exception v8

    .line 614
    .local v8, e:Landroid/os/RemoteException;
    const-string v22, "WifiGprsSelector"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[e = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 618
    .end local v8           #e:Landroid/os/RemoteException;
    .end local v18           #simid:Ljava/lang/Long;
    .end local v19           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v20           #simitem:Lcom/mediatek/wifi/WifiGprsSelector$SimItem;
    :cond_3
    new-instance v20, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;

    const v22, 0x7f0800dc

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mediatek/wifi/WifiGprsSelector;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    const-wide/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;-><init>(Ljava/lang/String;IJ)V

    .line 620
    .restart local v20       #simitem:Lcom/mediatek/wifi/WifiGprsSelector$SimItem;
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    .line 622
    .local v17, simListSize:I
    const-string v22, "WifiGprsSelector"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "simListSize = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    add-int/lit8 v15, v17, -0x1

    .line 624
    .local v15, offItem:I
    const/4 v12, -0x1

    .line 625
    .local v12, index:I
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/wifi/WifiGprsSelector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "gprs_connection_sim_setting"

    const-wide/16 v24, -0x5

    invoke-static/range {v22 .. v25}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v5, v0

    .line 628
    .local v5, dataConnectId:J
    const-string v22, "WifiGprsSelector"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "getSimSlot,dataConnectId = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    if-ge v9, v15, :cond_5

    .line 630
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mSimId:J

    move-wide/from16 v22, v0

    cmp-long v22, v22, v5

    if-nez v22, :cond_4

    .line 631
    move v12, v9

    .line 629
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 634
    :cond_5
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v12, v0, :cond_6

    .end local v15           #offItem:I
    :goto_4
    move-object/from16 v0, p0

    iput v15, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mInitValue:I

    .line 635
    const-string v22, "WifiGprsSelector"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mInitValue = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mInitValue:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    new-instance v14, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v1}, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;-><init>(Lcom/mediatek/wifi/WifiGprsSelector;Ljava/util/List;)V

    .line 638
    .local v14, mAdapter:Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;
    new-instance v22, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/wifi/WifiGprsSelector;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/wifi/WifiGprsSelector;->mInitValue:I

    move/from16 v23, v0

    new-instance v24, Lcom/mediatek/wifi/WifiGprsSelector$7;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/mediatek/wifi/WifiGprsSelector$7;-><init>(Lcom/mediatek/wifi/WifiGprsSelector;Ljava/util/List;)V

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v14, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0800d8

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x1040009

    new-instance v24, Lcom/mediatek/wifi/WifiGprsSelector$6;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mediatek/wifi/WifiGprsSelector$6;-><init>(Lcom/mediatek/wifi/WifiGprsSelector;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 670
    .local v7, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .end local v7           #dialog:Landroid/app/AlertDialog;
    .end local v14           #mAdapter:Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;
    .restart local v15       #offItem:I
    :cond_6
    move v15, v12

    .line 634
    goto :goto_4

    .line 672
    .end local v5           #dataConnectId:J
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #index:I
    .end local v15           #offItem:I
    .end local v16           #simItemList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/wifi/WifiGprsSelector$SimItem;>;"
    .end local v17           #simListSize:I
    .end local v20           #simitem:Lcom/mediatek/wifi/WifiGprsSelector$SimItem;
    :cond_7
    invoke-super/range {p0 .. p2}, Lcom/android/settings/wifi/WifiSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v22

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 313
    const-string v0, "WifiGprsSelector"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-super {p0}, Lcom/android/settings/wifi/WifiSettings;->onResume()V

    .line 315
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/mediatek/wifi/WifiGprsSelector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 316
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 317
    invoke-virtual {p0}, Lcom/mediatek/wifi/WifiGprsSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 318
    invoke-virtual {p0}, Lcom/mediatek/wifi/WifiGprsSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mAirplaneModeEnabled:Z

    .line 320
    invoke-virtual {p0}, Lcom/mediatek/wifi/WifiGprsSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 322
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/wifi/WifiGprsSelector;->handleWifiStateChanged(I)V

    .line 324
    invoke-direct {p0}, Lcom/mediatek/wifi/WifiGprsSelector;->isMMSNotTransaction()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mScreenEnable:Z

    .line 326
    iget v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mSimSlot:I

    invoke-direct {p0, v0}, Lcom/mediatek/wifi/WifiGprsSelector;->fillList(I)V

    .line 327
    invoke-direct {p0}, Lcom/mediatek/wifi/WifiGprsSelector;->updateDataEnabler()V

    .line 329
    new-instance v0, Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mServiceComplete:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 330
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {p0}, Lcom/mediatek/wifi/WifiGprsSelector;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 331
    invoke-virtual {p0}, Lcom/mediatek/wifi/WifiGprsSelector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gprs_connection_sim_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mGprsConnectObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 334
    iget-boolean v0, p0, Lcom/mediatek/wifi/WifiGprsSelector;->mIsGprsSwitching:Z

    if-eqz v0, :cond_0

    .line 335
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/mediatek/wifi/WifiGprsSelector;->showDialog(I)V

    .line 337
    :cond_0
    return-void
.end method
