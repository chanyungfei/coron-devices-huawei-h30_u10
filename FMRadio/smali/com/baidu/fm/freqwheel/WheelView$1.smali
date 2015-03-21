.class Lcom/baidu/fm/freqwheel/WheelView$1;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Lcom/baidu/fm/freqwheel/WheelScroller$ScrollingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/freqwheel/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/freqwheel/WheelView;


# direct methods
.method constructor <init>(Lcom/baidu/fm/freqwheel/WheelView;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/baidu/fm/freqwheel/WheelView$1;->this$0:Lcom/baidu/fm/freqwheel/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView$1;->this$0:Lcom/baidu/fm/freqwheel/WheelView;

    #getter for: Lcom/baidu/fm/freqwheel/WheelView;->isScrollingPerformed:Z
    invoke-static {v0}, Lcom/baidu/fm/freqwheel/WheelView;->access$000(Lcom/baidu/fm/freqwheel/WheelView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView$1;->this$0:Lcom/baidu/fm/freqwheel/WheelView;

    invoke-virtual {v0}, Lcom/baidu/fm/freqwheel/WheelView;->notifyScrollingListenersAboutEnd()V

    .line 156
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView$1;->this$0:Lcom/baidu/fm/freqwheel/WheelView;

    #setter for: Lcom/baidu/fm/freqwheel/WheelView;->isScrollingPerformed:Z
    invoke-static {v0, v1}, Lcom/baidu/fm/freqwheel/WheelView;->access$002(Lcom/baidu/fm/freqwheel/WheelView;Z)Z

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView$1;->this$0:Lcom/baidu/fm/freqwheel/WheelView;

    #setter for: Lcom/baidu/fm/freqwheel/WheelView;->scrollingOffset:I
    invoke-static {v0, v1}, Lcom/baidu/fm/freqwheel/WheelView;->access$202(Lcom/baidu/fm/freqwheel/WheelView;I)I

    .line 160
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView$1;->this$0:Lcom/baidu/fm/freqwheel/WheelView;

    invoke-virtual {v0}, Lcom/baidu/fm/freqwheel/WheelView;->invalidate()V

    .line 161
    return-void
.end method

.method public onJustify()V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView$1;->this$0:Lcom/baidu/fm/freqwheel/WheelView;

    #getter for: Lcom/baidu/fm/freqwheel/WheelView;->scrollingOffset:I
    invoke-static {v0}, Lcom/baidu/fm/freqwheel/WheelView;->access$200(Lcom/baidu/fm/freqwheel/WheelView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView$1;->this$0:Lcom/baidu/fm/freqwheel/WheelView;

    #getter for: Lcom/baidu/fm/freqwheel/WheelView;->scroller:Lcom/baidu/fm/freqwheel/WheelScroller;
    invoke-static {v0}, Lcom/baidu/fm/freqwheel/WheelView;->access$300(Lcom/baidu/fm/freqwheel/WheelView;)Lcom/baidu/fm/freqwheel/WheelScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView$1;->this$0:Lcom/baidu/fm/freqwheel/WheelView;

    #getter for: Lcom/baidu/fm/freqwheel/WheelView;->scrollingOffset:I
    invoke-static {v1}, Lcom/baidu/fm/freqwheel/WheelView;->access$200(Lcom/baidu/fm/freqwheel/WheelView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/fm/freqwheel/WheelScroller;->scroll(II)V

    .line 167
    :cond_0
    return-void
.end method

.method public onScroll(I)V
    .locals 3
    .parameter "distance"

    .prologue
    .line 141
    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView$1;->this$0:Lcom/baidu/fm/freqwheel/WheelView;

    #calls: Lcom/baidu/fm/freqwheel/WheelView;->doScroll(I)V
    invoke-static {v1, p1}, Lcom/baidu/fm/freqwheel/WheelView;->access$100(Lcom/baidu/fm/freqwheel/WheelView;I)V

    .line 143
    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView$1;->this$0:Lcom/baidu/fm/freqwheel/WheelView;

    invoke-virtual {v1}, Lcom/baidu/fm/freqwheel/WheelView;->getHeight()I

    move-result v0

    .line 144
    .local v0, height:I
    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView$1;->this$0:Lcom/baidu/fm/freqwheel/WheelView;

    #getter for: Lcom/baidu/fm/freqwheel/WheelView;->scrollingOffset:I
    invoke-static {v1}, Lcom/baidu/fm/freqwheel/WheelView;->access$200(Lcom/baidu/fm/freqwheel/WheelView;)I

    move-result v1

    if-le v1, v0, :cond_1

    .line 145
    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView$1;->this$0:Lcom/baidu/fm/freqwheel/WheelView;

    #setter for: Lcom/baidu/fm/freqwheel/WheelView;->scrollingOffset:I
    invoke-static {v1, v0}, Lcom/baidu/fm/freqwheel/WheelView;->access$202(Lcom/baidu/fm/freqwheel/WheelView;I)I

    .line 146
    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView$1;->this$0:Lcom/baidu/fm/freqwheel/WheelView;

    #getter for: Lcom/baidu/fm/freqwheel/WheelView;->scroller:Lcom/baidu/fm/freqwheel/WheelScroller;
    invoke-static {v1}, Lcom/baidu/fm/freqwheel/WheelView;->access$300(Lcom/baidu/fm/freqwheel/WheelView;)Lcom/baidu/fm/freqwheel/WheelScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/fm/freqwheel/WheelScroller;->stopScrolling()V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView$1;->this$0:Lcom/baidu/fm/freqwheel/WheelView;

    #getter for: Lcom/baidu/fm/freqwheel/WheelView;->scrollingOffset:I
    invoke-static {v1}, Lcom/baidu/fm/freqwheel/WheelView;->access$200(Lcom/baidu/fm/freqwheel/WheelView;)I

    move-result v1

    neg-int v2, v0

    if-ge v1, v2, :cond_0

    .line 148
    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView$1;->this$0:Lcom/baidu/fm/freqwheel/WheelView;

    neg-int v2, v0

    #setter for: Lcom/baidu/fm/freqwheel/WheelView;->scrollingOffset:I
    invoke-static {v1, v2}, Lcom/baidu/fm/freqwheel/WheelView;->access$202(Lcom/baidu/fm/freqwheel/WheelView;I)I

    .line 149
    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView$1;->this$0:Lcom/baidu/fm/freqwheel/WheelView;

    #getter for: Lcom/baidu/fm/freqwheel/WheelView;->scroller:Lcom/baidu/fm/freqwheel/WheelScroller;
    invoke-static {v1}, Lcom/baidu/fm/freqwheel/WheelView;->access$300(Lcom/baidu/fm/freqwheel/WheelView;)Lcom/baidu/fm/freqwheel/WheelScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/fm/freqwheel/WheelScroller;->stopScrolling()V

    goto :goto_0
.end method

.method public onStarted()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView$1;->this$0:Lcom/baidu/fm/freqwheel/WheelView;

    const/4 v1, 0x1

    #setter for: Lcom/baidu/fm/freqwheel/WheelView;->isScrollingPerformed:Z
    invoke-static {v0, v1}, Lcom/baidu/fm/freqwheel/WheelView;->access$002(Lcom/baidu/fm/freqwheel/WheelView;Z)Z

    .line 137
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView$1;->this$0:Lcom/baidu/fm/freqwheel/WheelView;

    invoke-virtual {v0}, Lcom/baidu/fm/freqwheel/WheelView;->notifyScrollingListenersAboutStart()V

    .line 138
    return-void
.end method
