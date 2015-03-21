.class Lcom/baidu/fm/FMRadio$21;
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
    .line 2244
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$21;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2246
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$21;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->isAntennaAvailable()Z
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$1000(Lcom/baidu/fm/FMRadio;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2247
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$21;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mIsShowNoAntenna:Z
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$900(Lcom/baidu/fm/FMRadio;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2256
    :cond_0
    :goto_0
    return-void

    .line 2250
    :cond_1
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$21;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->showAntennaInvailable()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$4500(Lcom/baidu/fm/FMRadio;)V

    .line 2251
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$21;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->disableRadio()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$3300(Lcom/baidu/fm/FMRadio;)V

    .line 2252
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$21;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->cleanupTimeoutHandler()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$3400(Lcom/baidu/fm/FMRadio;)V

    .line 2254
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$21;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-virtual {v0}, Lcom/baidu/fm/FMRadio;->finish()V

    goto :goto_0
.end method
