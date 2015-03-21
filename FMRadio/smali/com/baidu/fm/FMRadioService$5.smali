.class Lcom/baidu/fm/FMRadioService$5;
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
    .line 423
    iput-object p1, p0, Lcom/baidu/fm/FMRadioService$5;->this$0:Lcom/baidu/fm/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 426
    const-string v2, "FMService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHeadsetPluginHandler plugin= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/fm/FMRadioService$5;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mHeadsetPlugged:Z
    invoke-static {v4}, Lcom/baidu/fm/FMRadioService;->access$1100(Lcom/baidu/fm/FMRadioService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mTurningOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/fm/FMRadioService$5;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mTurningOn:Z
    invoke-static {v4}, Lcom/baidu/fm/FMRadioService;->access$200(Lcom/baidu/fm/FMRadioService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mServiceInUse: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/fm/FMRadioService$5;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mServiceInUse:Z
    invoke-static {v4}, Lcom/baidu/fm/FMRadioService;->access$900(Lcom/baidu/fm/FMRadioService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService$5;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mHeadsetPlugged:Z
    invoke-static {v2}, Lcom/baidu/fm/FMRadioService;->access$1100(Lcom/baidu/fm/FMRadioService;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 432
    :try_start_0
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService$5;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z
    invoke-static {v2}, Lcom/baidu/fm/FMRadioService;->access$100(Lcom/baidu/fm/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 433
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService$5;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mBinder:Lcom/baidu/fm/IFMRadioService$Stub;
    invoke-static {v2}, Lcom/baidu/fm/FMRadioService;->access$700(Lcom/baidu/fm/FMRadioService;)Lcom/baidu/fm/IFMRadioService$Stub;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/baidu/fm/IFMRadioService$Stub;->setMute(Z)I

    .line 435
    :cond_0
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService$5;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mServiceInUse:Z
    invoke-static {v2}, Lcom/baidu/fm/FMRadioService;->access$900(Lcom/baidu/fm/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 436
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.fm.headset"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 437
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService$5;->this$0:Lcom/baidu/fm/FMRadioService;

    invoke-virtual {v2, v1}, Lcom/baidu/fm/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 456
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 440
    :cond_2
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService$5;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mTurningOn:Z
    invoke-static {v2}, Lcom/baidu/fm/FMRadioService;->access$200(Lcom/baidu/fm/FMRadioService;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 441
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService$5;->this$0:Lcom/baidu/fm/FMRadioService;

    #calls: Lcom/baidu/fm/FMRadioService;->showAntennaInvailable()V
    invoke-static {v2}, Lcom/baidu/fm/FMRadioService;->access$1200(Lcom/baidu/fm/FMRadioService;)V

    .line 442
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService$5;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z
    invoke-static {v2}, Lcom/baidu/fm/FMRadioService;->access$100(Lcom/baidu/fm/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 443
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService$5;->this$0:Lcom/baidu/fm/FMRadioService;

    invoke-virtual {v2}, Lcom/baidu/fm/FMRadioService;->doPowerDown()Z

    .line 445
    :cond_3
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService$5;->this$0:Lcom/baidu/fm/FMRadioService;

    const/4 v3, 0x0

    #setter for: Lcom/baidu/fm/FMRadioService;->mbResumeAfterCall:Z
    invoke-static {v2, v3}, Lcom/baidu/fm/FMRadioService;->access$302(Lcom/baidu/fm/FMRadioService;Z)Z

    .line 446
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService$5;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mBinder:Lcom/baidu/fm/IFMRadioService$Stub;
    invoke-static {v2}, Lcom/baidu/fm/FMRadioService;->access$700(Lcom/baidu/fm/FMRadioService;)Lcom/baidu/fm/IFMRadioService$Stub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/fm/IFMRadioService$Stub;->closeDevice()Z

    .line 447
    const-string v2, "FMService"

    const-string v3, "Headset pull out, no app, exit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService$5;->this$0:Lcom/baidu/fm/FMRadioService;

    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$5;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mServiceStartId:I
    invoke-static {v3}, Lcom/baidu/fm/FMRadioService;->access$1300(Lcom/baidu/fm/FMRadioService;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/fm/FMRadioService;->stopSelf(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMService"

    const-string v3, "Exception: Cannot call binder function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
