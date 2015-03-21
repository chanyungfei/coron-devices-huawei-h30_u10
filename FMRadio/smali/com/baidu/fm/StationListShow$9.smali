.class Lcom/baidu/fm/StationListShow$9;
.super Ljava/lang/Object;
.source "StationListShow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/StationListShow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/StationListShow;


# direct methods
.method constructor <init>(Lcom/baidu/fm/StationListShow;)V
    .locals 0
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/baidu/fm/StationListShow$9;->this$0:Lcom/baidu/fm/StationListShow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 596
    const-string v0, "StationListShow"

    const-string v1, "exit from station list activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Lcom/baidu/fm/StationListShow$9;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v0}, Lcom/baidu/fm/StationListShow;->access$100(Lcom/baidu/fm/StationListShow;)Lcom/baidu/fm/FMPersistence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/baidu/fm/StationListShow$9;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v0}, Lcom/baidu/fm/StationListShow;->access$100(Lcom/baidu/fm/StationListShow;)Lcom/baidu/fm/FMPersistence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/fm/FMPersistence;->saveIfDirty()V

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/baidu/fm/StationListShow$9;->this$0:Lcom/baidu/fm/StationListShow;

    invoke-virtual {v0}, Lcom/baidu/fm/StationListShow;->finish()V

    .line 601
    return-void
.end method
