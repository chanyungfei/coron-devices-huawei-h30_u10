.class Lcom/baidu/fm/FMRadioService$9;
.super Landroid/os/Handler;
.source "FMRadioService.java"


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
    .line 1376
    iput-object p1, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 1379
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3e9

    if-lt v3, v4, :cond_0

    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3eb

    if-gt v3, v4, :cond_0

    .line 1384
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMediaButtonEventHandler, service handle, msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1488
    :cond_0
    :goto_0
    return-void

    .line 1388
    :pswitch_0
    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbResumeAfterCall:Z
    invoke-static {v3}, Lcom/baidu/fm/FMRadioService;->access$300(Lcom/baidu/fm/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1390
    const-string v3, "FMService"

    const-string v4, "Handle media button pause failed, in call state"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1396
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z
    invoke-static {v3}, Lcom/baidu/fm/FMRadioService;->access$100(Lcom/baidu/fm/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mIsMuted:Z
    invoke-static {v3}, Lcom/baidu/fm/FMRadioService;->access$2200(Lcom/baidu/fm/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1398
    const-string v3, "FMService"

    const-string v4, "Unpausing FM radio playback"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mBinder:Lcom/baidu/fm/IFMRadioService$Stub;
    invoke-static {v3}, Lcom/baidu/fm/FMRadioService;->access$700(Lcom/baidu/fm/FMRadioService;)Lcom/baidu/fm/IFMRadioService$Stub;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/baidu/fm/IFMRadioService$Stub;->setMute(Z)I

    .line 1410
    :cond_2
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.baidu.fm.audio_state_change"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1411
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "fm_audio_state_extra"

    iget-object v4, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mIsMuted:Z
    invoke-static {v4}, Lcom/baidu/fm/FMRadioService;->access$2200(Lcom/baidu/fm/FMRadioService;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1412
    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    invoke-virtual {v3, v2}, Lcom/baidu/fm/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1414
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1415
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "FMService"

    const-string v4, "Exception: Cannot call binder function."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1402
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z
    invoke-static {v3}, Lcom/baidu/fm/FMRadioService;->access$100(Lcom/baidu/fm/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mIsMuted:Z
    invoke-static {v3}, Lcom/baidu/fm/FMRadioService;->access$2200(Lcom/baidu/fm/FMRadioService;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1404
    const-string v3, "FMService"

    const-string v4, "Pausing FM radio playback"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mBinder:Lcom/baidu/fm/IFMRadioService$Stub;
    invoke-static {v3}, Lcom/baidu/fm/FMRadioService;->access$700(Lcom/baidu/fm/FMRadioService;)Lcom/baidu/fm/IFMRadioService$Stub;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/baidu/fm/IFMRadioService$Stub;->setMute(Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1420
    :pswitch_1
    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z
    invoke-static {v3}, Lcom/baidu/fm/FMRadioService;->access$100(Lcom/baidu/fm/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/baidu/fm/FMRadioService;->access$3100()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v3}, Lcom/baidu/fm/FMRadioService;->access$400(Lcom/baidu/fm/FMRadioService;)Lcom/baidu/fm/FMPersistence;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1422
    const-string v3, "FMService"

    const-string v4, "Moving next frequency"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v3}, Lcom/baidu/fm/FMRadioService;->access$400(Lcom/baidu/fm/FMRadioService;)Lcom/baidu/fm/FMPersistence;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/fm/FMPersistence;->update()V

    .line 1425
    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v3}, Lcom/baidu/fm/FMRadioService;->access$400(Lcom/baidu/fm/FMRadioService;)Lcom/baidu/fm/FMPersistence;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/fm/FMPersistence;->getStationInfoCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 1426
    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->miCurrentStation:I
    invoke-static {v3}, Lcom/baidu/fm/FMRadioService;->access$1700(Lcom/baidu/fm/FMRadioService;)I

    move-result v3

    invoke-static {v3}, Lcom/baidu/fm/FMStationInfo;->verifyIntFreq(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1427
    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v3}, Lcom/baidu/fm/FMRadioService;->access$400(Lcom/baidu/fm/FMRadioService;)Lcom/baidu/fm/FMPersistence;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->miCurrentStation:I
    invoke-static {v4}, Lcom/baidu/fm/FMRadioService;->access$1700(Lcom/baidu/fm/FMRadioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/baidu/fm/FMPersistence;->getNextNearestStationInfo(I)Lcom/baidu/fm/FMStationInfo;

    move-result-object v1

    .line 1428
    .local v1, info:Lcom/baidu/fm/FMStationInfo;
    if-nez v1, :cond_0

    .line 1429
    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v3}, Lcom/baidu/fm/FMRadioService;->access$400(Lcom/baidu/fm/FMRadioService;)Lcom/baidu/fm/FMPersistence;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/baidu/fm/FMPersistence;->getStationInfoByIndex(J)Lcom/baidu/fm/FMStationInfo;

    goto/16 :goto_0

    .line 1437
    .end local v1           #info:Lcom/baidu/fm/FMStationInfo;
    :cond_4
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong current freq: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->miCurrentStation:I
    invoke-static {v5}, Lcom/baidu/fm/FMRadioService;->access$1700(Lcom/baidu/fm/FMRadioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1449
    :cond_5
    const-string v3, "FMService"

    const-string v4, "can\'t perform media button next event"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1454
    :pswitch_2
    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z
    invoke-static {v3}, Lcom/baidu/fm/FMRadioService;->access$100(Lcom/baidu/fm/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/baidu/fm/FMRadioService;->access$3100()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v3}, Lcom/baidu/fm/FMRadioService;->access$400(Lcom/baidu/fm/FMRadioService;)Lcom/baidu/fm/FMPersistence;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1456
    const-string v3, "FMService"

    const-string v4, "Moving previous frequency"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v3}, Lcom/baidu/fm/FMRadioService;->access$400(Lcom/baidu/fm/FMRadioService;)Lcom/baidu/fm/FMPersistence;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/fm/FMPersistence;->update()V

    .line 1459
    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v3}, Lcom/baidu/fm/FMRadioService;->access$400(Lcom/baidu/fm/FMRadioService;)Lcom/baidu/fm/FMPersistence;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/fm/FMPersistence;->getStationInfoCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 1460
    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->miCurrentStation:I
    invoke-static {v3}, Lcom/baidu/fm/FMRadioService;->access$1700(Lcom/baidu/fm/FMRadioService;)I

    move-result v3

    invoke-static {v3}, Lcom/baidu/fm/FMStationInfo;->verifyIntFreq(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1461
    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v3}, Lcom/baidu/fm/FMRadioService;->access$400(Lcom/baidu/fm/FMRadioService;)Lcom/baidu/fm/FMPersistence;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->miCurrentStation:I
    invoke-static {v4}, Lcom/baidu/fm/FMRadioService;->access$1700(Lcom/baidu/fm/FMRadioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/baidu/fm/FMPersistence;->getPrevNearestStationInfo(I)Lcom/baidu/fm/FMStationInfo;

    move-result-object v1

    .line 1462
    .restart local v1       #info:Lcom/baidu/fm/FMStationInfo;
    if-nez v1, :cond_0

    .line 1463
    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v3}, Lcom/baidu/fm/FMRadioService;->access$400(Lcom/baidu/fm/FMRadioService;)Lcom/baidu/fm/FMPersistence;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v4}, Lcom/baidu/fm/FMRadioService;->access$400(Lcom/baidu/fm/FMRadioService;)Lcom/baidu/fm/FMPersistence;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/fm/FMPersistence;->getStationInfoCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/baidu/fm/FMPersistence;->getStationInfoByIndex(J)Lcom/baidu/fm/FMStationInfo;

    goto/16 :goto_0

    .line 1471
    .end local v1           #info:Lcom/baidu/fm/FMStationInfo;
    :cond_6
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong current freq: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/fm/FMRadioService$9;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->miCurrentStation:I
    invoke-static {v5}, Lcom/baidu/fm/FMRadioService;->access$1700(Lcom/baidu/fm/FMRadioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1483
    :cond_7
    const-string v3, "FMService"

    const-string v4, "can\'t perform media button previous event"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1386
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
