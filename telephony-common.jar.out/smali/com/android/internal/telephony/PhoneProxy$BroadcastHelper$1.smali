.class Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;-><init>(Lcom/android/internal/telephony/PhoneProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

.field final synthetic val$this$0:Lcom/android/internal/telephony/PhoneProxy;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1641
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

    iput-object p2, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->val$this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1645
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.ACTION_SIM_RECORDS_READY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1647
    const-string v3, "mccMnc"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1648
    .local v2, mccmnc:Ljava/lang/String;
    const-string v3, "imsi"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1650
    .local v1, imsi:Ljava/lang/String;
    const-string v3, "ecclistCategory"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1652
    .local v0, category:I
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_SIM_RECORDS_READY broadcast simId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_SIM_RECORDS_READY phone simId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getMySimId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getMySimId()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 1656
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

    #getter for: Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->globalParamsAdaptor:Lcom/android/internal/telephony/GlobalParamsAdaptor;
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->access$000(Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;)Lcom/android/internal/telephony/GlobalParamsAdaptor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v2, v1, v4}, Lcom/android/internal/telephony/GlobalParamsAdaptor;->checkPrePostPay(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1658
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/internal/telephony/VirtualNet;->hasIccCard(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1661
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

    #getter for: Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->globalParamsAdaptor:Lcom/android/internal/telephony/GlobalParamsAdaptor;
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->access$000(Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;)Lcom/android/internal/telephony/GlobalParamsAdaptor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/telephony/GlobalParamsAdaptor;->checkGlobalAutoMatchParam(Ljava/lang/String;Landroid/content/Context;)V

    .line 1689
    .end local v0           #category:I
    .end local v1           #imsi:Ljava/lang/String;
    .end local v2           #mccmnc:Ljava/lang/String;
    :cond_1
    return-void
.end method
