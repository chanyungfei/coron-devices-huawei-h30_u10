.class Lcom/baidu/fm/FMRadioService$6;
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
    .line 648
    iput-object p1, p0, Lcom/baidu/fm/FMRadioService$6;->this$0:Lcom/baidu/fm/FMRadioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$6;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z
    invoke-static {v0}, Lcom/baidu/fm/FMRadioService;->access$100(Lcom/baidu/fm/FMRadioService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$6;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mServiceInUse:Z
    invoke-static {v0}, Lcom/baidu/fm/FMRadioService;->access$900(Lcom/baidu/fm/FMRadioService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$6;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mTurningOn:Z
    invoke-static {v0}, Lcom/baidu/fm/FMRadioService;->access$200(Lcom/baidu/fm/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    const-string v0, "FMService"

    const-string v1, "mDelayedStopHandler, exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$6;->this$0:Lcom/baidu/fm/FMRadioService;

    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$6;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mServiceStartId:I
    invoke-static {v1}, Lcom/baidu/fm/FMRadioService;->access$1300(Lcom/baidu/fm/FMRadioService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/fm/FMRadioService;->stopSelf(I)V

    goto :goto_0
.end method
