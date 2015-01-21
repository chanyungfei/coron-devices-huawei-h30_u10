.class Lcom/mediatek/lbs/QuickGpsService$2;
.super Landroid/content/BroadcastReceiver;
.source "QuickGpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/QuickGpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/QuickGpsService;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/QuickGpsService;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mediatek/lbs/QuickGpsService$2;->this$0:Lcom/mediatek/lbs/QuickGpsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.mediatek.lbs.quickgps.ALARM_WAKEUP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService$2;->this$0:Lcom/mediatek/lbs/QuickGpsService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ALARM_WAKEUP, times="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/lbs/QuickGpsService$2;->this$0:Lcom/mediatek/lbs/QuickGpsService;

    #getter for: Lcom/mediatek/lbs/QuickGpsService;->mDownLoadTimes:I
    invoke-static {v3}, Lcom/mediatek/lbs/QuickGpsService;->access$100(Lcom/mediatek/lbs/QuickGpsService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/lbs/QuickGpsService;->access$200(Lcom/mediatek/lbs/QuickGpsService;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService$2;->this$0:Lcom/mediatek/lbs/QuickGpsService;

    #calls: Lcom/mediatek/lbs/QuickGpsService;->startDownloadEpoFile()V
    invoke-static {v1}, Lcom/mediatek/lbs/QuickGpsService;->access$300(Lcom/mediatek/lbs/QuickGpsService;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const-string v1, "com.mediatek.lbs.quickgps.ALARM_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService$2;->this$0:Lcom/mediatek/lbs/QuickGpsService;

    const-string v2, "ALARM_TIMEOUT == service imeterdate stop"

    #calls: Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/lbs/QuickGpsService;->access$200(Lcom/mediatek/lbs/QuickGpsService;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService$2;->this$0:Lcom/mediatek/lbs/QuickGpsService;

    invoke-virtual {v1}, Landroid/app/Service;->stopSelf()V

    goto :goto_0
.end method
