.class Lcom/baidu/fm/StationListShow$3;
.super Ljava/lang/Object;
.source "StationListShow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/fm/StationListShow;->createDeleteDialog()Landroid/app/Dialog;
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
    .line 506
    iput-object p1, p0, Lcom/baidu/fm/StationListShow$3;->this$0:Lcom/baidu/fm/StationListShow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/baidu/fm/StationListShow$3;->this$0:Lcom/baidu/fm/StationListShow;

    #calls: Lcom/baidu/fm/StationListShow;->doDeleteStationItem()V
    invoke-static {v0}, Lcom/baidu/fm/StationListShow;->access$800(Lcom/baidu/fm/StationListShow;)V

    .line 509
    iget-object v0, p0, Lcom/baidu/fm/StationListShow$3;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mStationListAdapter:Lcom/baidu/fm/StationListShow$StationListShowAdapter;
    invoke-static {v0}, Lcom/baidu/fm/StationListShow;->access$900(Lcom/baidu/fm/StationListShow;)Lcom/baidu/fm/StationListShow$StationListShowAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/fm/StationListShow$StationListShowAdapter;->notifyDataSetChanged()V

    .line 510
    iget-object v0, p0, Lcom/baidu/fm/StationListShow$3;->this$0:Lcom/baidu/fm/StationListShow;

    #calls: Lcom/baidu/fm/StationListShow;->doLeaveStationListEdit()V
    invoke-static {v0}, Lcom/baidu/fm/StationListShow;->access$1000(Lcom/baidu/fm/StationListShow;)V

    .line 511
    return-void
.end method
