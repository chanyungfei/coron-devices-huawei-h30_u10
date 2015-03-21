.class Lcom/baidu/fm/StationListShow$7;
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
    .line 564
    iput-object p1, p0, Lcom/baidu/fm/StationListShow$7;->this$0:Lcom/baidu/fm/StationListShow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/baidu/fm/StationListShow$7;->this$0:Lcom/baidu/fm/StationListShow;

    invoke-virtual {v0}, Lcom/baidu/fm/StationListShow;->finish()V

    .line 567
    return-void
.end method
