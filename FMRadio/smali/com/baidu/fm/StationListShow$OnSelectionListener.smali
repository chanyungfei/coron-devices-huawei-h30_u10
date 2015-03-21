.class final Lcom/baidu/fm/StationListShow$OnSelectionListener;
.super Ljava/lang/Object;
.source "StationListShow.java"

# interfaces
.implements Lcom/baidu/fm/widget/ActionCustomView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/StationListShow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnSelectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/StationListShow;


# direct methods
.method private constructor <init>(Lcom/baidu/fm/StationListShow;)V
    .locals 0
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/baidu/fm/StationListShow$OnSelectionListener;->this$0:Lcom/baidu/fm/StationListShow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/fm/StationListShow;Lcom/baidu/fm/StationListShow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 476
    invoke-direct {p0, p1}, Lcom/baidu/fm/StationListShow$OnSelectionListener;-><init>(Lcom/baidu/fm/StationListShow;)V

    return-void
.end method


# virtual methods
.method public onSelectRequest(Z)V
    .locals 4
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 480
    iget-object v1, p0, Lcom/baidu/fm/StationListShow$OnSelectionListener;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mSelectionMode:Z
    invoke-static {v1}, Lcom/baidu/fm/StationListShow;->access$500(Lcom/baidu/fm/StationListShow;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 496
    :goto_0
    return-void

    .line 482
    :cond_0
    if-eqz p1, :cond_2

    .line 483
    iget-object v1, p0, Lcom/baidu/fm/StationListShow$OnSelectionListener;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mSelectAll:Z
    invoke-static {v1}, Lcom/baidu/fm/StationListShow;->access$600(Lcom/baidu/fm/StationListShow;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 484
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/baidu/fm/StationListShow$OnSelectionListener;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v1}, Lcom/baidu/fm/StationListShow;->access$100(Lcom/baidu/fm/StationListShow;)Lcom/baidu/fm/FMPersistence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/fm/FMPersistence;->getStationInfoCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 485
    iget-object v1, p0, Lcom/baidu/fm/StationListShow$OnSelectionListener;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mStationListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/baidu/fm/StationListShow;->access$200(Lcom/baidu/fm/StationListShow;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 488
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/baidu/fm/StationListShow$OnSelectionListener;->this$0:Lcom/baidu/fm/StationListShow;

    #setter for: Lcom/baidu/fm/StationListShow;->mSelectAll:Z
    invoke-static {v1, v3}, Lcom/baidu/fm/StationListShow;->access$602(Lcom/baidu/fm/StationListShow;Z)Z

    .line 495
    :goto_2
    iget-object v1, p0, Lcom/baidu/fm/StationListShow$OnSelectionListener;->this$0:Lcom/baidu/fm/StationListShow;

    #calls: Lcom/baidu/fm/StationListShow;->handleSelectItemChanged()V
    invoke-static {v1}, Lcom/baidu/fm/StationListShow;->access$700(Lcom/baidu/fm/StationListShow;)V

    goto :goto_0

    .line 490
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    iget-object v1, p0, Lcom/baidu/fm/StationListShow$OnSelectionListener;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v1}, Lcom/baidu/fm/StationListShow;->access$100(Lcom/baidu/fm/StationListShow;)Lcom/baidu/fm/FMPersistence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/fm/FMPersistence;->getStationInfoCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 491
    iget-object v1, p0, Lcom/baidu/fm/StationListShow$OnSelectionListener;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mStationListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/baidu/fm/StationListShow;->access$200(Lcom/baidu/fm/StationListShow;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 493
    :cond_3
    iget-object v1, p0, Lcom/baidu/fm/StationListShow$OnSelectionListener;->this$0:Lcom/baidu/fm/StationListShow;

    #setter for: Lcom/baidu/fm/StationListShow;->mSelectAll:Z
    invoke-static {v1, v2}, Lcom/baidu/fm/StationListShow;->access$602(Lcom/baidu/fm/StationListShow;Z)Z

    goto :goto_2
.end method
