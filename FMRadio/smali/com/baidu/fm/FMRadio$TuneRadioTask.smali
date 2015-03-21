.class Lcom/baidu/fm/FMRadio$TuneRadioTask;
.super Ljava/lang/Thread;
.source "FMRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TuneRadioTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private mFreq:I

.field final synthetic this$0:Lcom/baidu/fm/FMRadio;


# direct methods
.method private constructor <init>(Lcom/baidu/fm/FMRadio;)V
    .locals 1
    .parameter

    .prologue
    .line 2992
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$TuneRadioTask;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2993
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/fm/FMRadio$TuneRadioTask;->mActive:Z

    .line 2994
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/fm/FMRadio$TuneRadioTask;->mDirty:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/fm/FMRadio;Lcom/baidu/fm/FMRadio$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2992
    invoke-direct {p0, p1}, Lcom/baidu/fm/FMRadio$TuneRadioTask;-><init>(Lcom/baidu/fm/FMRadio;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized notifyUpdate(I)V
    .locals 1
    .parameter "newFreq"

    .prologue
    .line 3047
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/baidu/fm/FMRadio$TuneRadioTask;->mDirty:Z

    .line 3048
    iput p1, p0, Lcom/baidu/fm/FMRadio$TuneRadioTask;->mFreq:I

    .line 3049
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3050
    monitor-exit p0

    return-void

    .line 3047
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 2999
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3001
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/baidu/fm/FMRadio$TuneRadioTask;->mActive:Z

    if-eqz v2, :cond_4

    .line 3002
    monitor-enter p0

    .line 3003
    :try_start_0
    iget-boolean v2, p0, Lcom/baidu/fm/FMRadio$TuneRadioTask;->mActive:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/baidu/fm/FMRadio$TuneRadioTask;->mDirty:Z

    if-nez v2, :cond_1

    .line 3004
    invoke-virtual {p0, p0}, Lcom/baidu/fm/FMRadio$TuneRadioTask;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 3005
    monitor-exit p0

    goto :goto_0

    .line 3008
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3007
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/baidu/fm/FMRadio$TuneRadioTask;->mDirty:Z

    .line 3008
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3009
    iget v2, p0, Lcom/baidu/fm/FMRadio$TuneRadioTask;->mFreq:I

    const/16 v3, 0x36b

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/baidu/fm/FMRadio$TuneRadioTask;->mFreq:I

    const/16 v3, 0x438

    if-gt v2, v3, :cond_0

    .line 3010
    invoke-static {}, Lcom/baidu/fm/FMRadio;->access$100()Lcom/baidu/fm/IFMRadioService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3011
    const/4 v0, 0x0

    .line 3013
    .local v0, bStatus:Z
    :try_start_2
    invoke-static {}, Lcom/baidu/fm/FMRadio;->access$100()Lcom/baidu/fm/IFMRadioService;

    move-result-object v2

    iget v3, p0, Lcom/baidu/fm/FMRadio$TuneRadioTask;->mFreq:I

    int-to-float v3, v3

    invoke-interface {v2, v3}, Lcom/baidu/fm/IFMRadioService;->tune(F)Z

    move-result v0

    .line 3014
    iget-object v2, p0, Lcom/baidu/fm/FMRadio$TuneRadioTask;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->cleanupTimeoutHandler()V
    invoke-static {v2}, Lcom/baidu/fm/FMRadio;->access$3400(Lcom/baidu/fm/FMRadio;)V

    .line 3015
    iget-object v2, p0, Lcom/baidu/fm/FMRadio$TuneRadioTask;->this$0:Lcom/baidu/fm/FMRadio;

    const/4 v3, 0x1

    const/16 v4, 0x2ee0

    #calls: Lcom/baidu/fm/FMRadio;->postTimeoutHandler(II)V
    invoke-static {v2, v3, v4}, Lcom/baidu/fm/FMRadio;->access$3000(Lcom/baidu/fm/FMRadio;II)V

    .line 3016
    if-eqz v0, :cond_3

    .line 3017
    iget-object v2, p0, Lcom/baidu/fm/FMRadio$TuneRadioTask;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;
    invoke-static {v2}, Lcom/baidu/fm/FMRadio;->access$600(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    move-result-object v2

    iget v3, p0, Lcom/baidu/fm/FMRadio$TuneRadioTask;->mFreq:I

    #calls: Lcom/baidu/fm/FMRadio$FrequencyIndicator;->setCurrentFrequency(I)V
    invoke-static {v2, v3}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->access$2800(Lcom/baidu/fm/FMRadio$FrequencyIndicator;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3034
    .end local v0           #bStatus:Z
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/baidu/fm/FMRadio$TuneRadioTask;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->cleanupTimeoutHandler()V
    invoke-static {v2}, Lcom/baidu/fm/FMRadio;->access$3400(Lcom/baidu/fm/FMRadio;)V

    .line 3035
    iget-object v2, p0, Lcom/baidu/fm/FMRadio$TuneRadioTask;->this$0:Lcom/baidu/fm/FMRadio;

    iget-object v2, v2, Lcom/baidu/fm/FMRadio;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 3036
    iget-object v2, p0, Lcom/baidu/fm/FMRadio$TuneRadioTask;->this$0:Lcom/baidu/fm/FMRadio;

    iget-object v2, v2, Lcom/baidu/fm/FMRadio;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/baidu/fm/FMRadio$TuneRadioTask$2;

    invoke-direct {v3, p0}, Lcom/baidu/fm/FMRadio$TuneRadioTask$2;-><init>(Lcom/baidu/fm/FMRadio$TuneRadioTask;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3021
    .restart local v0       #bStatus:Z
    :cond_3
    :try_start_3
    const-string v2, "FMRadioApp"

    const-string v3, " mService.tune failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3022
    iget-object v2, p0, Lcom/baidu/fm/FMRadio$TuneRadioTask;->this$0:Lcom/baidu/fm/FMRadio;

    iget-object v2, v2, Lcom/baidu/fm/FMRadio;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 3023
    iget-object v2, p0, Lcom/baidu/fm/FMRadio$TuneRadioTask;->this$0:Lcom/baidu/fm/FMRadio;

    iget-object v2, v2, Lcom/baidu/fm/FMRadio;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/baidu/fm/FMRadio$TuneRadioTask$1;

    invoke-direct {v3, p0}, Lcom/baidu/fm/FMRadio$TuneRadioTask$1;-><init>(Lcom/baidu/fm/FMRadio$TuneRadioTask;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 3030
    :catch_0
    move-exception v1

    .line 3031
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 3044
    .end local v0           #bStatus:Z
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_4
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 3053
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/baidu/fm/FMRadio$TuneRadioTask;->mActive:Z

    .line 3054
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3055
    monitor-exit p0

    return-void

    .line 3053
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public waitWithoutInterrupt(Ljava/lang/Object;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 3059
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3062
    :goto_0
    return-void

    .line 3060
    :catch_0
    move-exception v0

    goto :goto_0
.end method
