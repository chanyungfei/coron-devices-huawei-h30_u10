.class Lcom/baidu/fm/FMRadioService$7;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/fm/FMRadioService;->registerEventListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/FMRadioService;


# direct methods
.method constructor <init>(Lcom/baidu/fm/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 674
    iput-object p1, p0, Lcom/baidu/fm/FMRadioService$7;->this$0:Lcom/baidu/fm/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 677
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, action:Ljava/lang/String;
    const-string v7, "FMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Intent received: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 682
    :try_start_0
    iget-object v5, p0, Lcom/baidu/fm/FMRadioService$7;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z
    invoke-static {v5}, Lcom/baidu/fm/FMRadioService;->access$100(Lcom/baidu/fm/FMRadioService;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 683
    iget-object v5, p0, Lcom/baidu/fm/FMRadioService$7;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mBinder:Lcom/baidu/fm/IFMRadioService$Stub;
    invoke-static {v5}, Lcom/baidu/fm/FMRadioService;->access$700(Lcom/baidu/fm/FMRadioService;)Lcom/baidu/fm/IFMRadioService$Stub;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/baidu/fm/IFMRadioService$Stub;->setMute(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 686
    :catch_0
    move-exception v2

    .line 687
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "FMService"

    const-string v6, "Exception: Cannot call binder function."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 690
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    const-string v7, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 691
    const-string v5, "command"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 692
    .local v1, cmd:Ljava/lang/String;
    const-string v5, "from_app"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 694
    .local v3, fromApp:Ljava/lang/String;
    const-string v5, "FMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Media intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    if-eqz v3, :cond_2

    const-string v5, "FM"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 702
    :cond_2
    if-eqz v1, :cond_0

    const-string v5, "pause"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 703
    iget-object v5, p0, Lcom/baidu/fm/FMRadioService$7;->this$0:Lcom/baidu/fm/FMRadioService;

    iget-object v5, v5, Lcom/baidu/fm/FMRadioService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/baidu/fm/FMRadioService$7;->this$0:Lcom/baidu/fm/FMRadioService;

    iget-object v6, v6, Lcom/baidu/fm/FMRadioService;->mMusicIntentHandler:Ljava/lang/Runnable;

    const-wide/16 v7, 0x14

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 706
    .end local v1           #cmd:Ljava/lang/String;
    .end local v3           #fromApp:Ljava/lang/String;
    :cond_3
    const-string v7, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 708
    const-string v7, "FMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Headset state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "state"

    invoke-virtual {p2, v9, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "name"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v7, p0, Lcom/baidu/fm/FMRadioService$7;->this$0:Lcom/baidu/fm/FMRadioService;

    const-string v8, "state"

    invoke-virtual {p2, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v5, :cond_4

    :goto_1
    #setter for: Lcom/baidu/fm/FMRadioService;->mHeadsetPlugged:Z
    invoke-static {v7, v5}, Lcom/baidu/fm/FMRadioService;->access$1102(Lcom/baidu/fm/FMRadioService;Z)Z

    .line 713
    iget-object v5, p0, Lcom/baidu/fm/FMRadioService$7;->this$0:Lcom/baidu/fm/FMRadioService;

    iget-object v5, v5, Lcom/baidu/fm/FMRadioService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/baidu/fm/FMRadioService$7;->this$0:Lcom/baidu/fm/FMRadioService;

    iget-object v6, v6, Lcom/baidu/fm/FMRadioService;->mHeadsetPluginHandler:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_4
    move v5, v6

    .line 712
    goto :goto_1

    .line 715
    :cond_5
    const-string v5, "com.baidu.yi.fm.service.MediaButtonIntent"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 716
    const-string v5, "command"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 718
    .local v1, cmd:I
    const-string v5, "FMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Media button receiver, cmd: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/16 v5, 0x3e9

    if-lt v1, v5, :cond_0

    const/16 v5, 0x3eb

    if-gt v1, v5, :cond_0

    iget-object v5, p0, Lcom/baidu/fm/FMRadioService$7;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mMediaButtonEventHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/baidu/fm/FMRadioService;->access$1800(Lcom/baidu/fm/FMRadioService;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 725
    iget-object v5, p0, Lcom/baidu/fm/FMRadioService$7;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mMediaButtonEventHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/baidu/fm/FMRadioService;->access$1800(Lcom/baidu/fm/FMRadioService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 726
    .local v4, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/baidu/fm/FMRadioService$7;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mMediaButtonEventHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/baidu/fm/FMRadioService;->access$1800(Lcom/baidu/fm/FMRadioService;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 727
    iget-object v5, p0, Lcom/baidu/fm/FMRadioService$7;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mMediaButtonEventHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/baidu/fm/FMRadioService;->access$1800(Lcom/baidu/fm/FMRadioService;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method
