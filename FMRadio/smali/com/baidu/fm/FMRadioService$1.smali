.class Lcom/baidu/fm/FMRadioService$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 298
    iput-object p1, p0, Lcom/baidu/fm/FMRadioService$1;->this$0:Lcom/baidu/fm/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 301
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.baidu.fm.auto.close"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 303
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$1;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z
    invoke-static {v1}, Lcom/baidu/fm/FMRadioService;->access$100(Lcom/baidu/fm/FMRadioService;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$1;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mTurningOn:Z
    invoke-static {v1}, Lcom/baidu/fm/FMRadioService;->access$200(Lcom/baidu/fm/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$1;->this$0:Lcom/baidu/fm/FMRadioService;

    #setter for: Lcom/baidu/fm/FMRadioService;->mbResumeAfterCall:Z
    invoke-static {v1, v2}, Lcom/baidu/fm/FMRadioService;->access$302(Lcom/baidu/fm/FMRadioService;Z)Z

    .line 305
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$1;->this$0:Lcom/baidu/fm/FMRadioService;

    invoke-virtual {v1}, Lcom/baidu/fm/FMRadioService;->doPowerDown()Z

    .line 307
    :cond_1
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$1;->this$0:Lcom/baidu/fm/FMRadioService;

    invoke-virtual {v1}, Lcom/baidu/fm/FMRadioService;->requestFMAppExit()V

    .line 309
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$1;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v1}, Lcom/baidu/fm/FMRadioService;->access$400(Lcom/baidu/fm/FMRadioService;)Lcom/baidu/fm/FMPersistence;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/baidu/fm/FMPersistence;->saveCloseTimeIndex(I)V

    .line 311
    :cond_2
    return-void
.end method
