.class Lcom/baidu/fm/ImageViewButton$1;
.super Ljava/lang/Object;
.source "ImageViewButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/ImageViewButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/ImageViewButton;


# direct methods
.method constructor <init>(Lcom/baidu/fm/ImageViewButton;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/baidu/fm/ImageViewButton$1;->this$0:Lcom/baidu/fm/ImageViewButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/baidu/fm/ImageViewButton$1;->this$0:Lcom/baidu/fm/ImageViewButton;

    const/4 v1, 0x0

    #calls: Lcom/baidu/fm/ImageViewButton;->doRepeat(Z)V
    invoke-static {v0, v1}, Lcom/baidu/fm/ImageViewButton;->access$000(Lcom/baidu/fm/ImageViewButton;Z)V

    .line 174
    iget-object v0, p0, Lcom/baidu/fm/ImageViewButton$1;->this$0:Lcom/baidu/fm/ImageViewButton;

    invoke-virtual {v0}, Lcom/baidu/fm/ImageViewButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/baidu/fm/ImageViewButton$1;->this$0:Lcom/baidu/fm/ImageViewButton;

    iget-object v1, p0, Lcom/baidu/fm/ImageViewButton$1;->this$0:Lcom/baidu/fm/ImageViewButton;

    #getter for: Lcom/baidu/fm/ImageViewButton;->mInterval:J
    invoke-static {v1}, Lcom/baidu/fm/ImageViewButton;->access$100(Lcom/baidu/fm/ImageViewButton;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/baidu/fm/ImageViewButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 177
    :cond_0
    return-void
.end method
