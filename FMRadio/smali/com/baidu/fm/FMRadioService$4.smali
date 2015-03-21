.class Lcom/baidu/fm/FMRadioService$4;
.super Ljava/lang/Object;
.source "FMRadioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/FMRadioService;
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
    .line 382
    iput-object p1, p0, Lcom/baidu/fm/FMRadioService$4;->this$0:Lcom/baidu/fm/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 385
    const-string v4, "FMService"

    const-string v5, "mMusicIntentHandler exit"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v4, p0, Lcom/baidu/fm/FMRadioService$4;->this$0:Lcom/baidu/fm/FMRadioService;

    invoke-virtual {v4}, Lcom/baidu/fm/FMRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/fm/FMRadioService$4;->this$0:Lcom/baidu/fm/FMRadioService;

    const v6, 0x7f070046

    invoke-virtual {v5, v6}, Lcom/baidu/fm/FMRadioService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 390
    .local v3, toast:Landroid/widget/Toast;
    const/16 v4, 0x11

    const/16 v5, 0x14

    invoke-virtual {v3, v4, v7, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 391
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 394
    :try_start_0
    iget-object v4, p0, Lcom/baidu/fm/FMRadioService$4;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z
    invoke-static {v4}, Lcom/baidu/fm/FMRadioService;->access$100(Lcom/baidu/fm/FMRadioService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 395
    iget-object v4, p0, Lcom/baidu/fm/FMRadioService$4;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mBinder:Lcom/baidu/fm/IFMRadioService$Stub;
    invoke-static {v4}, Lcom/baidu/fm/FMRadioService;->access$700(Lcom/baidu/fm/FMRadioService;)Lcom/baidu/fm/IFMRadioService$Stub;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/baidu/fm/IFMRadioService$Stub;->setMute(Z)I

    .line 398
    :cond_0
    iget-object v4, p0, Lcom/baidu/fm/FMRadioService$4;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mServiceInUse:Z
    invoke-static {v4}, Lcom/baidu/fm/FMRadioService;->access$900(Lcom/baidu/fm/FMRadioService;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 399
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.baidu.fm.other_media_intent"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/baidu/fm/FMRadioService$4;->this$0:Lcom/baidu/fm/FMRadioService;

    invoke-virtual {v4, v1}, Lcom/baidu/fm/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 420
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 403
    :cond_2
    iget-object v4, p0, Lcom/baidu/fm/FMRadioService$4;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mTurningOn:Z
    invoke-static {v4}, Lcom/baidu/fm/FMRadioService;->access$200(Lcom/baidu/fm/FMRadioService;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 404
    iget-object v4, p0, Lcom/baidu/fm/FMRadioService$4;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z
    invoke-static {v4}, Lcom/baidu/fm/FMRadioService;->access$100(Lcom/baidu/fm/FMRadioService;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 405
    iget-object v4, p0, Lcom/baidu/fm/FMRadioService$4;->this$0:Lcom/baidu/fm/FMRadioService;

    invoke-virtual {v4}, Lcom/baidu/fm/FMRadioService;->doPowerDown()Z

    .line 407
    :cond_3
    iget-object v4, p0, Lcom/baidu/fm/FMRadioService$4;->this$0:Lcom/baidu/fm/FMRadioService;

    const/4 v5, 0x0

    #setter for: Lcom/baidu/fm/FMRadioService;->mbResumeAfterCall:Z
    invoke-static {v4, v5}, Lcom/baidu/fm/FMRadioService;->access$302(Lcom/baidu/fm/FMRadioService;Z)Z

    .line 408
    iget-object v4, p0, Lcom/baidu/fm/FMRadioService$4;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mBinder:Lcom/baidu/fm/IFMRadioService$Stub;
    invoke-static {v4}, Lcom/baidu/fm/FMRadioService;->access$700(Lcom/baidu/fm/FMRadioService;)Lcom/baidu/fm/IFMRadioService$Stub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/fm/IFMRadioService$Stub;->closeDevice()Z

    .line 409
    const-string v4, "FMService"

    const-string v5, "Headset pull out, no app, exit"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v4, p0, Lcom/baidu/fm/FMRadioService$4;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/baidu/fm/FMRadioService;->access$1000(Lcom/baidu/fm/FMRadioService;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 412
    iget-object v4, p0, Lcom/baidu/fm/FMRadioService$4;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/baidu/fm/FMRadioService;->access$1000(Lcom/baidu/fm/FMRadioService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 413
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/baidu/fm/FMRadioService$4;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/baidu/fm/FMRadioService;->access$1000(Lcom/baidu/fm/FMRadioService;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x32

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 417
    .end local v2           #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 418
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "FMService"

    const-string v5, "Exception: Cannot call binder function."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
