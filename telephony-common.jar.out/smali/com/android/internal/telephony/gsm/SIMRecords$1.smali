.class Lcom/android/internal/telephony/gsm/SIMRecords$1;
.super Landroid/content/BroadcastReceiver;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SIMRecords;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/SIMRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 3082
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3084
    if-nez p2, :cond_1

    .line 3128
    :cond_0
    :goto_0
    return-void

    .line 3085
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3086
    .local v0, action:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHandlePhbReadyReceiver Receive action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3087
    const-string v4, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3088
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$200(Lcom/android/internal/telephony/gsm/SIMRecords;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mHandlePhbReadyReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$100(Lcom/android/internal/telephony/gsm/SIMRecords;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3089
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #setter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mSIMInfoReady:Z
    invoke-static {v4, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$302(Lcom/android/internal/telephony/gsm/SIMRecords;Z)Z

    .line 3090
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->broadcastPhbStateChangedIntent(Z)V

    .line 3092
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 3093
    .local v2, phbFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3094
    const-string v4, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3095
    const-string v4, "android.intent.action.IVSR_NOTIFY"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3096
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$400(Lcom/android/internal/telephony/gsm/SIMRecords;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mHandlePhbReadyReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$100(Lcom/android/internal/telephony/gsm/SIMRecords;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3100
    .end local v2           #phbFilter:Landroid/content/IntentFilter;
    :cond_2
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3101
    const-string v4, "state"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 3102
    .local v1, enabled:Z
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHandlePhbReadyReceiver MTK_FLIGHT_MODE_POWER_OFF_MD flightmode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3103
    if-eqz v1, :cond_3

    .line 3104
    sget-object v4, Lcom/android/internal/telephony/gsm/SIMRecords;->SIMRECORD_PROPERTY_RIL_PHB_READY:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$500(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccCardApplication;->getMySimId()I

    move-result v5

    aget-object v4, v4, v5

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3105
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #setter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mPhbReady:Z
    invoke-static {v4, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$602(Lcom/android/internal/telephony/gsm/SIMRecords;Z)Z

    .line 3110
    .end local v1           #enabled:Z
    :cond_3
    const-string v4, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3111
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    const-string v5, "mHandlePhbReadyReceiver ACTION_SHUTDOWN_IPO: reset PHB_READY"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3113
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #setter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mPhbReady:Z
    invoke-static {v4, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$602(Lcom/android/internal/telephony/gsm/SIMRecords;Z)Z

    .line 3116
    :cond_4
    const-string v4, "android.intent.action.IVSR_NOTIFY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3117
    const-string v4, "simId"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 3118
    .local v3, simId:I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHandlePhbReadyReceiver ACTION_IVSR_NOTIFY: reset SIM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " PHB_READY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3120
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$700(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardApplication;->getMySimId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 3121
    sget-object v4, Lcom/android/internal/telephony/gsm/SIMRecords;->SIMRECORD_PROPERTY_RIL_PHB_READY:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$800(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccCardApplication;->getMySimId()I

    move-result v5

    aget-object v4, v4, v5

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3122
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #setter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mPhbReady:Z
    invoke-static {v4, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$602(Lcom/android/internal/telephony/gsm/SIMRecords;Z)Z

    .line 3123
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHandlePhbReadyReceiver ACTION_IVSR_NOTIFY: set SIM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " PHB_READY false"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
