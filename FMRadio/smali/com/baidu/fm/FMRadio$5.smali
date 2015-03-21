.class Lcom/baidu/fm/FMRadio$5;
.super Landroid/content/BroadcastReceiver;
.source "FMRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/fm/FMRadio;->registerFMServiceListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/FMRadio;


# direct methods
.method constructor <init>(Lcom/baidu/fm/FMRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 779
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$5;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 782
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, action:Ljava/lang/String;
    const-string v1, "FMRadioApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: FM service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const-string v1, "com.baidu.fm.app_kill"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 788
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$5;->this$0:Lcom/baidu/fm/FMRadio;

    iget-object v1, v1, Lcom/baidu/fm/FMRadio;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/baidu/fm/FMRadio$5;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->onFinishActivity:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/baidu/fm/FMRadio;->access$700(Lcom/baidu/fm/FMRadio;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 790
    :cond_1
    const-string v1, "com.baidu.fm.headset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 791
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$5;->this$0:Lcom/baidu/fm/FMRadio;

    iget-object v1, v1, Lcom/baidu/fm/FMRadio;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/baidu/fm/FMRadio$5;->this$0:Lcom/baidu/fm/FMRadio;

    iget-object v2, v2, Lcom/baidu/fm/FMRadio;->mOnAntStatusChange:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 793
    :cond_2
    const-string v1, "com.baidu.fm.other_media_intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 794
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$5;->this$0:Lcom/baidu/fm/FMRadio;

    iget-object v1, v1, Lcom/baidu/fm/FMRadio;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/baidu/fm/FMRadio$5;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->onFinishActivity:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/baidu/fm/FMRadio;->access$700(Lcom/baidu/fm/FMRadio;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 796
    :cond_3
    const-string v1, "com.baidu.fm.power_state_change"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 799
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$5;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->enableRadioOnOffUI()V
    invoke-static {v1}, Lcom/baidu/fm/FMRadio;->access$800(Lcom/baidu/fm/FMRadio;)V

    goto :goto_0

    .line 801
    :cond_4
    const-string v1, "com.baidu.fm.audio_state_change"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 804
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$5;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-virtual {v1}, Lcom/baidu/fm/FMRadio;->updateMuteState()V

    goto :goto_0
.end method
