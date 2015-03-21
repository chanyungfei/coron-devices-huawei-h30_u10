.class Lcom/baidu/fm/FMRadioService$2;
.super Ljava/lang/Object;
.source "FMRadioService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
    .line 315
    iput-object p1, p0, Lcom/baidu/fm/FMRadioService$2;->this$0:Lcom/baidu/fm/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 4
    .parameter "focusChange"

    .prologue
    .line 317
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioFocus, focusChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 v1, -0x2

    if-ne p1, v1, :cond_2

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$2;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbSearching:Z
    invoke-static {v1}, Lcom/baidu/fm/FMRadioService;->access$500(Lcom/baidu/fm/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$2;->this$0:Lcom/baidu/fm/FMRadioService;

    const/4 v2, 0x1

    #setter for: Lcom/baidu/fm/FMRadioService;->mbStopScanCalled:Z
    invoke-static {v1, v2}, Lcom/baidu/fm/FMRadioService;->access$602(Lcom/baidu/fm/FMRadioService;Z)Z

    .line 322
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$2;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mBinder:Lcom/baidu/fm/IFMRadioService$Stub;
    invoke-static {v1}, Lcom/baidu/fm/FMRadioService;->access$700(Lcom/baidu/fm/FMRadioService;)Lcom/baidu/fm/IFMRadioService$Stub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/fm/IFMRadioService$Stub;->stopScan()Z

    .line 323
    const-string v1, "FMService"

    const-string v2, "FM loss focus,so stop scan channel."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$2;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z
    invoke-static {v1}, Lcom/baidu/fm/FMRadioService;->access$100(Lcom/baidu/fm/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 330
    :try_start_1
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$2;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mBinder:Lcom/baidu/fm/IFMRadioService$Stub;
    invoke-static {v1}, Lcom/baidu/fm/FMRadioService;->access$700(Lcom/baidu/fm/FMRadioService;)Lcom/baidu/fm/IFMRadioService$Stub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/fm/IFMRadioService$Stub;->powerDown()Z

    .line 331
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$2;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mBinder:Lcom/baidu/fm/IFMRadioService$Stub;
    invoke-static {v1}, Lcom/baidu/fm/FMRadioService;->access$700(Lcom/baidu/fm/FMRadioService;)Lcom/baidu/fm/IFMRadioService$Stub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/fm/IFMRadioService$Stub;->closeDevice()Z

    .line 332
    const-string v1, "FMService"

    const-string v2, "FM loss focus,so powerdown FM."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 339
    :goto_1
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$2;->this$0:Lcom/baidu/fm/FMRadioService;

    invoke-virtual {v1}, Lcom/baidu/fm/FMRadioService;->requestFMAppExit()V

    .line 342
    :cond_2
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FMService"

    const-string v2, "Exception: Cannot call binder function."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 334
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "FMService"

    const-string v2, "Exception: Cannot call binder function."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 337
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    const-string v1, "FMService"

    const-string v2, "FM is not playing, so do nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
