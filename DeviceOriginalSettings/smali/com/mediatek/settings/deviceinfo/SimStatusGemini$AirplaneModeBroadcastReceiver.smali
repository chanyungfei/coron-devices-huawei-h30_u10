.class Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimStatusGemini.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/deviceinfo/SimStatusGemini;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirplaneModeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;


# direct methods
.method private constructor <init>(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;Lcom/mediatek/settings/deviceinfo/SimStatusGemini$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;-><init>(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v5, 0x12e

    .line 446
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 448
    const-string v3, "state"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 449
    .local v1, airplaneMode:Z
    if-eqz v1, :cond_0

    .line 450
    iget-object v3, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    #getter for: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v3}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$100(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    #getter for: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I
    invoke-static {v4}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$600(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)I

    move-result v4

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    .line 465
    .end local v1           #airplaneMode:Z
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    const-string v3, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 454
    const-string v3, "mode"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 456
    .local v2, dualMode:I
    if-nez v2, :cond_2

    .line 457
    iget-object v3, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    #getter for: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v3}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$100(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    #getter for: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I
    invoke-static {v4}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$600(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)I

    move-result v4

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    goto :goto_0

    .line 459
    :cond_2
    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    #getter for: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I
    invoke-static {v3}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$600(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 461
    iget-object v3, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    #getter for: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v3}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$100(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    #getter for: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I
    invoke-static {v4}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$600(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)I

    move-result v4

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    goto :goto_0
.end method
