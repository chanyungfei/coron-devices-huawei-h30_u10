.class Lcom/baidu/fm/StationListShow$5;
.super Landroid/content/BroadcastReceiver;
.source "StationListShow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/fm/StationListShow;->registerHeadsetListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/StationListShow;


# direct methods
.method constructor <init>(Lcom/baidu/fm/StationListShow;)V
    .locals 0
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/baidu/fm/StationListShow$5;->this$0:Lcom/baidu/fm/StationListShow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 529
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 531
    const-string v3, "StationListShow"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 532
    const-string v3, "StationListShow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Headset state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "state"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_0
    iget-object v3, p0, Lcom/baidu/fm/StationListShow$5;->this$0:Lcom/baidu/fm/StationListShow;

    const-string v4, "state"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_2

    :goto_0
    #setter for: Lcom/baidu/fm/StationListShow;->mHeadsetPlugged:Z
    invoke-static {v3, v1}, Lcom/baidu/fm/StationListShow;->access$1102(Lcom/baidu/fm/StationListShow;Z)Z

    .line 537
    iget-object v1, p0, Lcom/baidu/fm/StationListShow$5;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/baidu/fm/StationListShow;->access$1200(Lcom/baidu/fm/StationListShow;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/fm/StationListShow$5;->this$0:Lcom/baidu/fm/StationListShow;

    iget-object v2, v2, Lcom/baidu/fm/StationListShow;->mHeadsetStateHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 539
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 536
    goto :goto_0
.end method
