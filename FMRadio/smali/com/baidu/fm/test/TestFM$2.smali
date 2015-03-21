.class Lcom/baidu/fm/test/TestFM$2;
.super Ljava/lang/Object;
.source "TestFM.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/fm/test/TestFM;->onCreate(Landroid/os/Bundle;)V
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
    .line 55
    iput-object p1, p0, Lcom/baidu/fm/test/TestFM$2;->this$0:Lcom/baidu/fm/test/TestFM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/fm/test/TestFM$2;->this$0:Lcom/baidu/fm/test/TestFM;

    #getter for: Lcom/baidu/fm/test/TestFM;->mIsSearch:Z
    invoke-static {v0}, Lcom/baidu/fm/test/TestFM;->access$100(Lcom/baidu/fm/test/TestFM;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/baidu/fm/test/TestFM$2;->this$0:Lcom/baidu/fm/test/TestFM;

    const/4 v1, 0x1

    #setter for: Lcom/baidu/fm/test/TestFM;->mIsSearch:Z
    invoke-static {v0, v1}, Lcom/baidu/fm/test/TestFM;->access$102(Lcom/baidu/fm/test/TestFM;Z)Z

    .line 60
    new-instance v0, Lcom/baidu/fm/test/TestFM$2$1;

    invoke-direct {v0, p0}, Lcom/baidu/fm/test/TestFM$2$1;-><init>(Lcom/baidu/fm/test/TestFM$2;)V

    invoke-virtual {v0}, Lcom/baidu/fm/test/TestFM$2$1;->start()V

    .line 68
    :cond_0
    return-void
.end method
