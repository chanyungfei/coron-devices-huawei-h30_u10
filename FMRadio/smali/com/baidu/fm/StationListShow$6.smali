.class Lcom/baidu/fm/StationListShow$6;
.super Landroid/content/BroadcastReceiver;
.source "StationListShow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/fm/StationListShow;->registerFMRadioListener()V
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
    .line 549
    iput-object p1, p0, Lcom/baidu/fm/StationListShow$6;->this$0:Lcom/baidu/fm/StationListShow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 552
    const-string v0, "StationListShow"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    const-string v0, "StationListShow"

    const-string v1, "onReceive: FM ask to exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/baidu/fm/StationListShow$6;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/baidu/fm/StationListShow;->access$1200(Lcom/baidu/fm/StationListShow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/fm/StationListShow$6;->this$0:Lcom/baidu/fm/StationListShow;

    iget-object v1, v1, Lcom/baidu/fm/StationListShow;->mFMRadioIntentHandler:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 556
    return-void
.end method
