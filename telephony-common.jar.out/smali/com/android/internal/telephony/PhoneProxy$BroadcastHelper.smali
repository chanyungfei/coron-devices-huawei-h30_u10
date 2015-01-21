.class Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;
.super Ljava/lang/Object;
.source "PhoneProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadcastHelper"
.end annotation


# instance fields
.field private globalParamsAdaptor:Lcom/android/internal/telephony/GlobalParamsAdaptor;

.field private mPhoneProxyReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/internal/telephony/PhoneProxy;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 1
    .parameter

    .prologue
    .line 1639
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1640
    new-instance v0, Lcom/android/internal/telephony/GlobalParamsAdaptor;

    invoke-direct {v0}, Lcom/android/internal/telephony/GlobalParamsAdaptor;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->globalParamsAdaptor:Lcom/android/internal/telephony/GlobalParamsAdaptor;

    .line 1641
    new-instance v0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;-><init>(Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;Lcom/android/internal/telephony/PhoneProxy;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->mPhoneProxyReceiver:Landroid/content/BroadcastReceiver;

    .line 1691
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;)Lcom/android/internal/telephony/GlobalParamsAdaptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->globalParamsAdaptor:Lcom/android/internal/telephony/GlobalParamsAdaptor;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1695
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1696
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.ACTION_SIM_RECORDS_READY"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1697
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->mPhoneProxyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1699
    const-string v5, "set default emergency number"

    #calls: Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/internal/telephony/PhoneProxy;->access$100(Ljava/lang/String;)V

    .line 1700
    new-instance v0, Lcom/android/internal/telephony/GlobalParamsAdaptor;

    invoke-direct {v0}, Lcom/android/internal/telephony/GlobalParamsAdaptor;-><init>()V

    .line 1701
    .local v0, globalParamsAdaptor:Lcom/android/internal/telephony/GlobalParamsAdaptor;
    const/4 v4, 0x0

    .line 1702
    .local v4, sp:Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    #getter for: Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/internal/telephony/PhoneProxy;->access$200(Lcom/android/internal/telephony/PhoneProxy;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v3

    .line 1703
    .local v3, simId:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/internal/telephony/PhoneProxy;->access$100(Ljava/lang/String;)V

    .line 1705
    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 1706
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.phone_defaultplmn2"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1711
    :goto_0
    if-eqz v4, :cond_0

    .line 1712
    const-string v5, "lastPlmn"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1713
    .local v2, lastPlmn:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lastPlmn ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/internal/telephony/PhoneProxy;->access$100(Ljava/lang/String;)V

    .line 1714
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1715
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5, v2, v3}, Lcom/android/internal/telephony/GlobalParamsAdaptor;->globalEccCustom(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1717
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5, v2, v3}, Lcom/android/internal/telephony/GlobalParamsAdaptor;->checkGlobalEccNum(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1722
    .end local v2           #lastPlmn:Ljava/lang/String;
    :cond_0
    return-void

    .line 1708
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.phone_defaultplmn"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    goto :goto_0
.end method
