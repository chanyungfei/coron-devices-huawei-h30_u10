.class Lcom/baidu/fm/widget/TunnerView$1;
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
    .line 452
    iput-object p1, p0, Lcom/baidu/fm/widget/TunnerView$1;->this$0:Lcom/baidu/fm/widget/TunnerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 454
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView$1;->this$0:Lcom/baidu/fm/widget/TunnerView;

    const/4 v1, 0x0

    #calls: Lcom/baidu/fm/widget/TunnerView;->doRepeat(Z)V
    invoke-static {v0, v1}, Lcom/baidu/fm/widget/TunnerView;->access$000(Lcom/baidu/fm/widget/TunnerView;Z)V

    .line 455
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView$1;->this$0:Lcom/baidu/fm/widget/TunnerView;

    #getter for: Lcom/baidu/fm/widget/TunnerView;->mbFineFreqDecTouchDown:Z
    invoke-static {v0}, Lcom/baidu/fm/widget/TunnerView;->access$100(Lcom/baidu/fm/widget/TunnerView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView$1;->this$0:Lcom/baidu/fm/widget/TunnerView;

    #getter for: Lcom/baidu/fm/widget/TunnerView;->mbFineFreqIncTouchDown:Z
    invoke-static {v0}, Lcom/baidu/fm/widget/TunnerView;->access$200(Lcom/baidu/fm/widget/TunnerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView$1;->this$0:Lcom/baidu/fm/widget/TunnerView;

    #getter for: Lcom/baidu/fm/widget/TunnerView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/baidu/fm/widget/TunnerView;->access$300(Lcom/baidu/fm/widget/TunnerView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView$1;->this$0:Lcom/baidu/fm/widget/TunnerView;

    #getter for: Lcom/baidu/fm/widget/TunnerView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/baidu/fm/widget/TunnerView;->access$300(Lcom/baidu/fm/widget/TunnerView;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/baidu/fm/widget/TunnerView;->access$400()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 460
    :cond_1
    return-void
.end method
