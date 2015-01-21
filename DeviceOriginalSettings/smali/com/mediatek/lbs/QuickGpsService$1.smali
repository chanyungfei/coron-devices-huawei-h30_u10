.class Lcom/mediatek/lbs/QuickGpsService$1;
.super Ljava/lang/Object;
.source "QuickGpsService.java"

# interfaces
.implements Lcom/mediatek/common/epo/MtkEpoStatusListener;


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
    .line 58
    iput-object p1, p0, Lcom/mediatek/lbs/QuickGpsService$1;->this$0:Lcom/mediatek/lbs/QuickGpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/lbs/QuickGpsService$1;->this$0:Lcom/mediatek/lbs/QuickGpsService;

    #calls: Lcom/mediatek/lbs/QuickGpsService;->updateEpoStatus(I)V
    invoke-static {v0, p1}, Lcom/mediatek/lbs/QuickGpsService;->access$000(Lcom/mediatek/lbs/QuickGpsService;I)V

    .line 61
    return-void
.end method
