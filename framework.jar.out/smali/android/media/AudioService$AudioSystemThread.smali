.class Landroid/media/AudioService$AudioSystemThread;
.super Ljava/lang/Thread;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioSystemThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 1
    .parameter

    .prologue
    .line 3392
    iput-object p1, p0, Landroid/media/AudioService$AudioSystemThread;->this$0:Landroid/media/AudioService;

    .line 3393
    const-string v0, "AudioService"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 3394
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3399
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 3401
    iget-object v1, p0, Landroid/media/AudioService$AudioSystemThread;->this$0:Landroid/media/AudioService;

    monitor-enter v1

    .line 3402
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService$AudioSystemThread;->this$0:Landroid/media/AudioService;

    new-instance v2, Landroid/media/AudioService$AudioHandler;

    iget-object v3, p0, Landroid/media/AudioService$AudioSystemThread;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/media/AudioService$AudioHandler;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    #setter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$102(Landroid/media/AudioService;Landroid/media/AudioService$AudioHandler;)Landroid/media/AudioService$AudioHandler;

    .line 3404
    iget-object v0, p0, Landroid/media/AudioService$AudioSystemThread;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->audioServiceEx:Landroid/media/AudioService$AudioServicesEx;
    invoke-static {v0}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioServicesEx;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioService$AudioServicesEx;->initHandler()V

    .line 3407
    iget-object v0, p0, Landroid/media/AudioService$AudioSystemThread;->this$0:Landroid/media/AudioService;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 3408
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3411
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 3412
    return-void

    .line 3408
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
