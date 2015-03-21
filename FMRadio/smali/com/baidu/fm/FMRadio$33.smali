.class Lcom/baidu/fm/FMRadio$33;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/FMRadio;
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
    .line 2408
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$33;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2412
    :try_start_0
    invoke-static {}, Lcom/baidu/fm/FMRadio;->access$100()Lcom/baidu/fm/IFMRadioService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2413
    invoke-static {}, Lcom/baidu/fm/FMRadio;->access$100()Lcom/baidu/fm/IFMRadioService;

    move-result-object v1

    invoke-interface {v1}, Lcom/baidu/fm/IFMRadioService;->isPowerUp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2414
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$33;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-virtual {v1}, Lcom/baidu/fm/FMRadio;->updateMuteState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2422
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$33;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->enableRadioOnOffUI()V
    invoke-static {v1}, Lcom/baidu/fm/FMRadio;->access$800(Lcom/baidu/fm/FMRadio;)V

    .line 2423
    return-void

    .line 2418
    :catch_0
    move-exception v0

    .line 2419
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
