.class Lcom/baidu/fm/freqwheel/WheelView$2;
.super Landroid/database/DataSetObserver;
.source "WheelView.java"


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
    .line 207
    iput-object p1, p0, Lcom/baidu/fm/freqwheel/WheelView$2;->this$0:Lcom/baidu/fm/freqwheel/WheelView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView$2;->this$0:Lcom/baidu/fm/freqwheel/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/fm/freqwheel/WheelView;->invalidateWheel(Z)V

    .line 211
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView$2;->this$0:Lcom/baidu/fm/freqwheel/WheelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/fm/freqwheel/WheelView;->invalidateWheel(Z)V

    .line 216
    return-void
.end method
