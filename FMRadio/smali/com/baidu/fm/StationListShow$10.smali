.class Lcom/baidu/fm/StationListShow$10;
.super Ljava/lang/Object;
.source "StationListShow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 645
    iput-object p1, p0, Lcom/baidu/fm/StationListShow$10;->this$0:Lcom/baidu/fm/StationListShow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 648
    const-string v2, "StationListShow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick, position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v2, p0, Lcom/baidu/fm/StationListShow$10;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mSelectionMode:Z
    invoke-static {v2}, Lcom/baidu/fm/StationListShow;->access$500(Lcom/baidu/fm/StationListShow;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 650
    iget-object v2, p0, Lcom/baidu/fm/StationListShow$10;->this$0:Lcom/baidu/fm/StationListShow;

    #calls: Lcom/baidu/fm/StationListShow;->handleSelectItemChanged()V
    invoke-static {v2}, Lcom/baidu/fm/StationListShow;->access$700(Lcom/baidu/fm/StationListShow;)V

    .line 656
    :goto_0
    return-void

    .line 652
    :cond_0
    iget-object v2, p0, Lcom/baidu/fm/StationListShow$10;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v2}, Lcom/baidu/fm/StationListShow;->access$100(Lcom/baidu/fm/StationListShow;)Lcom/baidu/fm/FMPersistence;

    move-result-object v2

    int-to-long v3, p3

    invoke-virtual {v2, v3, v4}, Lcom/baidu/fm/FMPersistence;->getStationInfoByIndex(J)Lcom/baidu/fm/FMStationInfo;

    move-result-object v1

    .line 653
    .local v1, info:Lcom/baidu/fm/FMStationInfo;
    invoke-virtual {v1}, Lcom/baidu/fm/FMStationInfo;->getStationFreqString()Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, freqString:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/fm/StationListShow$10;->this$0:Lcom/baidu/fm/StationListShow;

    #calls: Lcom/baidu/fm/StationListShow;->tuneAndExit(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/baidu/fm/StationListShow;->access$1300(Lcom/baidu/fm/StationListShow;Ljava/lang/String;)V

    goto :goto_0
.end method
