.class Lcom/baidu/fm/freqwheel/WheelScroller$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WheelScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/freqwheel/WheelScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/freqwheel/WheelScroller;


# direct methods
.method constructor <init>(Lcom/baidu/fm/freqwheel/WheelScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/baidu/fm/freqwheel/WheelScroller$1;->this$0:Lcom/baidu/fm/freqwheel/WheelScroller;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x0

    .line 167
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelScroller$1;->this$0:Lcom/baidu/fm/freqwheel/WheelScroller;

    #setter for: Lcom/baidu/fm/freqwheel/WheelScroller;->lastScrollY:I
    invoke-static {v0, v1}, Lcom/baidu/fm/freqwheel/WheelScroller;->access$002(Lcom/baidu/fm/freqwheel/WheelScroller;I)I

    .line 168
    const v9, 0x7fffffff

    .line 169
    .local v9, maxY:I
    const v10, -0x7fffffff

    .line 170
    .local v10, minY:I
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelScroller$1;->this$0:Lcom/baidu/fm/freqwheel/WheelScroller;

    #getter for: Lcom/baidu/fm/freqwheel/WheelScroller;->scroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/baidu/fm/freqwheel/WheelScroller;->access$100(Lcom/baidu/fm/freqwheel/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/fm/freqwheel/WheelScroller$1;->this$0:Lcom/baidu/fm/freqwheel/WheelScroller;

    #getter for: Lcom/baidu/fm/freqwheel/WheelScroller;->lastScrollY:I
    invoke-static {v2}, Lcom/baidu/fm/freqwheel/WheelScroller;->access$000(Lcom/baidu/fm/freqwheel/WheelScroller;)I

    move-result v2

    neg-float v3, p4

    float-to-int v4, v3

    const v7, -0x7fffffff

    const v8, 0x7fffffff

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 171
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelScroller$1;->this$0:Lcom/baidu/fm/freqwheel/WheelScroller;

    #calls: Lcom/baidu/fm/freqwheel/WheelScroller;->setNextMessage(I)V
    invoke-static {v0, v1}, Lcom/baidu/fm/freqwheel/WheelScroller;->access$200(Lcom/baidu/fm/freqwheel/WheelScroller;I)V

    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method
