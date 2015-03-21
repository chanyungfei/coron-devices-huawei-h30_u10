.class Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FMPhoneStateListener"
.end annotation


# instance fields
.field private miSIMID:I

.field final synthetic this$0:Lcom/baidu/fm/FMRadioService;


# direct methods
.method private constructor <init>(Lcom/baidu/fm/FMRadioService;)V
    .locals 1
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;->this$0:Lcom/baidu/fm/FMRadioService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 548
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;->miSIMID:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/fm/FMRadioService;Lcom/baidu/fm/FMRadioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 547
    invoke-direct {p0, p1}, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;-><init>(Lcom/baidu/fm/FMRadioService;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 554
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> onCallStateChanged SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;->miSIMID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    if-eq p1, v4, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    .line 561
    :cond_0
    if-ne p1, v4, :cond_2

    .line 562
    const-string v1, "FMService"

    const-string v2, "CALL_STATE_RINGING"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :goto_0
    iget v1, p0, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;->miSIMID:I

    if-nez v1, :cond_3

    .line 570
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;->this$0:Lcom/baidu/fm/FMRadioService;

    #setter for: Lcom/baidu/fm/FMRadioService;->mbSIM1Idle:Z
    invoke-static {v1, v5}, Lcom/baidu/fm/FMRadioService;->access$1402(Lcom/baidu/fm/FMRadioService;Z)Z

    .line 576
    :goto_1
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbResumeAfterCall:Z
    invoke-static {v1}, Lcom/baidu/fm/FMRadioService;->access$300(Lcom/baidu/fm/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 577
    const-string v1, "FMService"

    const-string v2, "Already know current is in a call."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_1
    :goto_2
    return-void

    .line 565
    :cond_2
    const-string v1, "FMService"

    const-string v2, "CALL_STATE_OFFHOOK"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 573
    :cond_3
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;->this$0:Lcom/baidu/fm/FMRadioService;

    #setter for: Lcom/baidu/fm/FMRadioService;->mbSIM2Idle:Z
    invoke-static {v1, v5}, Lcom/baidu/fm/FMRadioService;->access$1502(Lcom/baidu/fm/FMRadioService;Z)Z

    goto :goto_1

    .line 580
    :cond_4
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbSearching:Z
    invoke-static {v1}, Lcom/baidu/fm/FMRadioService;->access$500(Lcom/baidu/fm/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;->this$0:Lcom/baidu/fm/FMRadioService;

    const/4 v2, 0x1

    #setter for: Lcom/baidu/fm/FMRadioService;->mbStopScanCalled:Z
    invoke-static {v1, v2}, Lcom/baidu/fm/FMRadioService;->access$602(Lcom/baidu/fm/FMRadioService;Z)Z

    .line 583
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mBinder:Lcom/baidu/fm/IFMRadioService$Stub;
    invoke-static {v1}, Lcom/baidu/fm/FMRadioService;->access$700(Lcom/baidu/fm/FMRadioService;)Lcom/baidu/fm/IFMRadioService$Stub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/fm/IFMRadioService$Stub;->stopScan()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 590
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z
    invoke-static {v1}, Lcom/baidu/fm/FMRadioService;->access$100(Lcom/baidu/fm/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 591
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;->this$0:Lcom/baidu/fm/FMRadioService;

    #setter for: Lcom/baidu/fm/FMRadioService;->mbResumeAfterCall:Z
    invoke-static {v1, v4}, Lcom/baidu/fm/FMRadioService;->access$302(Lcom/baidu/fm/FMRadioService;Z)Z

    .line 593
    :try_start_1
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;->this$0:Lcom/baidu/fm/FMRadioService;

    invoke-virtual {v1}, Lcom/baidu/fm/FMRadioService;->doPowerDown()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FMService"

    const-string v2, "Exception: Cannot call binder function."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 585
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 586
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "FMService"

    const-string v2, "Exception: Cannot call binder function."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 600
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    const-string v1, "FMService"

    const-string v2, "FM is not playing, so do nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 604
    :cond_7
    if-nez p1, :cond_c

    .line 606
    iget v1, p0, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;->miSIMID:I

    if-nez v1, :cond_8

    .line 607
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;->this$0:Lcom/baidu/fm/FMRadioService;

    #setter for: Lcom/baidu/fm/FMRadioService;->mbSIM1Idle:Z
    invoke-static {v1, v4}, Lcom/baidu/fm/FMRadioService;->access$1402(Lcom/baidu/fm/FMRadioService;Z)Z

    .line 613
    :goto_4
    const-string v1, "FMService"

    const-string v2, "CALL_STATE_IDLE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbSIM1Idle:Z
    invoke-static {v1}, Lcom/baidu/fm/FMRadioService;->access$1400(Lcom/baidu/fm/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbSIM2Idle:Z
    invoke-static {v1}, Lcom/baidu/fm/FMRadioService;->access$1500(Lcom/baidu/fm/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 616
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbResumeAfterCall:Z
    invoke-static {v1}, Lcom/baidu/fm/FMRadioService;->access$300(Lcom/baidu/fm/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 617
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;->this$0:Lcom/baidu/fm/FMRadioService;

    #setter for: Lcom/baidu/fm/FMRadioService;->mbResumeAfterCall:Z
    invoke-static {v1, v5}, Lcom/baidu/fm/FMRadioService;->access$302(Lcom/baidu/fm/FMRadioService;Z)Z

    .line 618
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z
    invoke-static {v1}, Lcom/baidu/fm/FMRadioService;->access$100(Lcom/baidu/fm/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 619
    const-string v1, "FMService"

    const-string v2, "FM is already playing, no need to resume."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 610
    :cond_8
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;->this$0:Lcom/baidu/fm/FMRadioService;

    #setter for: Lcom/baidu/fm/FMRadioService;->mbSIM2Idle:Z
    invoke-static {v1, v4}, Lcom/baidu/fm/FMRadioService;->access$1502(Lcom/baidu/fm/FMRadioService;Z)Z

    goto :goto_4

    .line 622
    :cond_9
    const-string v1, "FMService"

    const-string v2, "Need to resume FM."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const-wide/16 v1, 0x3e8

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 625
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;->this$0:Lcom/baidu/fm/FMRadioService;

    #calls: Lcom/baidu/fm/FMRadioService;->isAntennaAvailable()Z
    invoke-static {v1}, Lcom/baidu/fm/FMRadioService;->access$1600(Lcom/baidu/fm/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 626
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;->this$0:Lcom/baidu/fm/FMRadioService;

    iget-object v2, p0, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->miCurrentStation:I
    invoke-static {v2}, Lcom/baidu/fm/FMRadioService;->access$1700(Lcom/baidu/fm/FMRadioService;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4120

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/baidu/fm/FMRadioService;->doPowerUp(F)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 629
    :catch_2
    move-exception v0

    .line 630
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "FMService"

    const-string v2, "Exception: Cannot call binder function."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 635
    .end local v0           #e:Ljava/lang/Exception;
    :cond_a
    const-string v1, "FMService"

    const-string v2, "Do not need to resume, so do nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 639
    :cond_b
    const-string v1, "FMService"

    const-string v2, "The other SIM is not idle. So do nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 643
    :cond_c
    const-string v1, "FMService"

    const-string v2, "Error: Invalid call status."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public setSIMID(I)V
    .locals 0
    .parameter "iSIMID"

    .prologue
    .line 551
    iput p1, p0, Lcom/baidu/fm/FMRadioService$FMPhoneStateListener;->miSIMID:I

    .line 552
    return-void
.end method
