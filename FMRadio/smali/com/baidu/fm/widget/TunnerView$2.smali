.class Lcom/baidu/fm/widget/TunnerView$2;
.super Ljava/lang/Object;
.source "TunnerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/widget/TunnerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/widget/TunnerView;


# direct methods
.method constructor <init>(Lcom/baidu/fm/widget/TunnerView;)V
    .locals 0
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/baidu/fm/widget/TunnerView$2;->this$0:Lcom/baidu/fm/widget/TunnerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 466
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView$2;->this$0:Lcom/baidu/fm/widget/TunnerView;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    #setter for: Lcom/baidu/fm/widget/TunnerView;->mStartTime:J
    invoke-static {v0, v1, v2}, Lcom/baidu/fm/widget/TunnerView;->access$502(Lcom/baidu/fm/widget/TunnerView;J)J

    .line 467
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView$2;->this$0:Lcom/baidu/fm/widget/TunnerView;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/fm/widget/TunnerView;->mRepeatCount:I
    invoke-static {v0, v1}, Lcom/baidu/fm/widget/TunnerView;->access$602(Lcom/baidu/fm/widget/TunnerView;I)I

    .line 468
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView$2;->this$0:Lcom/baidu/fm/widget/TunnerView;

    #getter for: Lcom/baidu/fm/widget/TunnerView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/baidu/fm/widget/TunnerView;->access$300(Lcom/baidu/fm/widget/TunnerView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView$2;->this$0:Lcom/baidu/fm/widget/TunnerView;

    #getter for: Lcom/baidu/fm/widget/TunnerView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/baidu/fm/widget/TunnerView;->access$300(Lcom/baidu/fm/widget/TunnerView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/fm/widget/TunnerView$2;->this$0:Lcom/baidu/fm/widget/TunnerView;

    #getter for: Lcom/baidu/fm/widget/TunnerView;->mRepeater:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/baidu/fm/widget/TunnerView;->access$700(Lcom/baidu/fm/widget/TunnerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 471
    :cond_0
    return-void
.end method
