.class Lcom/baidu/fm/test/TestFM$2$1;
.super Ljava/lang/Thread;
.source "TestFM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/fm/test/TestFM$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/fm/test/TestFM$2;


# direct methods
.method constructor <init>(Lcom/baidu/fm/test/TestFM$2;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/baidu/fm/test/TestFM$2$1;->this$1:Lcom/baidu/fm/test/TestFM$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/baidu/fm/test/TestFM$2$1;->this$1:Lcom/baidu/fm/test/TestFM$2;

    iget-object v0, v0, Lcom/baidu/fm/test/TestFM$2;->this$0:Lcom/baidu/fm/test/TestFM;

    iget-object v1, p0, Lcom/baidu/fm/test/TestFM$2$1;->this$1:Lcom/baidu/fm/test/TestFM$2;

    iget-object v1, v1, Lcom/baidu/fm/test/TestFM$2;->this$0:Lcom/baidu/fm/test/TestFM;

    iget-object v2, p0, Lcom/baidu/fm/test/TestFM$2$1;->this$1:Lcom/baidu/fm/test/TestFM$2;

    iget-object v2, v2, Lcom/baidu/fm/test/TestFM$2;->this$0:Lcom/baidu/fm/test/TestFM;

    #getter for: Lcom/baidu/fm/test/TestFM;->mFrequency:F
    invoke-static {v2}, Lcom/baidu/fm/test/TestFM;->access$200(Lcom/baidu/fm/test/TestFM;)F

    move-result v2

    const/4 v3, 0x1

    #calls: Lcom/baidu/fm/test/TestFM;->autoSearch(FZ)F
    invoke-static {v1, v2, v3}, Lcom/baidu/fm/test/TestFM;->access$300(Lcom/baidu/fm/test/TestFM;FZ)F

    move-result v1

    #setter for: Lcom/baidu/fm/test/TestFM;->mFrequency:F
    invoke-static {v0, v1}, Lcom/baidu/fm/test/TestFM;->access$202(Lcom/baidu/fm/test/TestFM;F)F

    .line 63
    iget-object v0, p0, Lcom/baidu/fm/test/TestFM$2$1;->this$1:Lcom/baidu/fm/test/TestFM$2;

    iget-object v0, v0, Lcom/baidu/fm/test/TestFM$2;->this$0:Lcom/baidu/fm/test/TestFM;

    #getter for: Lcom/baidu/fm/test/TestFM;->mFrequency:F
    invoke-static {v0}, Lcom/baidu/fm/test/TestFM;->access$200(Lcom/baidu/fm/test/TestFM;)F

    move-result v0

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioNative;->tune(F)Z

    .line 64
    iget-object v0, p0, Lcom/baidu/fm/test/TestFM$2$1;->this$1:Lcom/baidu/fm/test/TestFM$2;

    iget-object v0, v0, Lcom/baidu/fm/test/TestFM$2;->this$0:Lcom/baidu/fm/test/TestFM;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/fm/test/TestFM;->mIsSearch:Z
    invoke-static {v0, v1}, Lcom/baidu/fm/test/TestFM;->access$102(Lcom/baidu/fm/test/TestFM;Z)Z

    .line 65
    return-void
.end method
