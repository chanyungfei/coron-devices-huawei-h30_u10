.class Lcom/baidu/fm/test/TestFM$1;
.super Landroid/os/Handler;
.source "TestFM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/test/TestFM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/test/TestFM;


# direct methods
.method constructor <init>(Lcom/baidu/fm/test/TestFM;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/baidu/fm/test/TestFM$1;->this$0:Lcom/baidu/fm/test/TestFM;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 39
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/baidu/fm/test/TestFM$1;->this$0:Lcom/baidu/fm/test/TestFM;

    #getter for: Lcom/baidu/fm/test/TestFM;->mSearch:Landroid/widget/Button;
    invoke-static {v0}, Lcom/baidu/fm/test/TestFM;->access$000(Lcom/baidu/fm/test/TestFM;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 42
    :cond_0
    return-void
.end method
