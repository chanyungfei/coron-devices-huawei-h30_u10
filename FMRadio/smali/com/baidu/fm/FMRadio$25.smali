.class Lcom/baidu/fm/FMRadio$25;
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
    .line 2309
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$25;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2311
    const-string v1, "FMRadioApp"

    const-string v2, "onStartScan"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    invoke-static {}, Lcom/baidu/fm/FMRadio;->access$100()Lcom/baidu/fm/IFMRadioService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/fm/FMRadio$25;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->isPowerUp()Z
    invoke-static {v1}, Lcom/baidu/fm/FMRadio;->access$2500(Lcom/baidu/fm/FMRadio;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2314
    :try_start_0
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$25;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mIsSeeking:Z
    invoke-static {v1}, Lcom/baidu/fm/FMRadio;->access$3700(Lcom/baidu/fm/FMRadio;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/baidu/fm/FMRadio$25;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mIsScaning:Z
    invoke-static {v1}, Lcom/baidu/fm/FMRadio;->access$4100(Lcom/baidu/fm/FMRadio;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2315
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$25;->this$0:Lcom/baidu/fm/FMRadio;

    new-instance v2, Lcom/baidu/fm/FMRadio$scanTask;

    iget-object v3, p0, Lcom/baidu/fm/FMRadio$25;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {v2, v3}, Lcom/baidu/fm/FMRadio$scanTask;-><init>(Lcom/baidu/fm/FMRadio;)V

    #setter for: Lcom/baidu/fm/FMRadio;->mScanTask:Lcom/baidu/fm/FMRadio$scanTask;
    invoke-static {v1, v2}, Lcom/baidu/fm/FMRadio;->access$4702(Lcom/baidu/fm/FMRadio;Lcom/baidu/fm/FMRadio$scanTask;)Lcom/baidu/fm/FMRadio$scanTask;

    .line 2316
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$25;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mScanTask:Lcom/baidu/fm/FMRadio$scanTask;
    invoke-static {v1}, Lcom/baidu/fm/FMRadio;->access$4700(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMRadio$scanTask;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/baidu/fm/FMRadio$scanTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2326
    :cond_0
    :goto_0
    return-void

    .line 2319
    :cond_1
    const-string v1, "FMRadioApp"

    const-string v2, "onStartScan, seek or scan is running"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2322
    :catch_0
    move-exception v0

    .line 2323
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
