.class Lcom/baidu/fm/StationListShow$1;
.super Ljava/lang/Object;
.source "StationListShow.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/fm/StationListShow;->onCreate(Landroid/os/Bundle;)V
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
    .line 161
    iput-object p1, p0, Lcom/baidu/fm/StationListShow$1;->this$0:Lcom/baidu/fm/StationListShow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v4, 0x0

    .line 166
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 168
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, p0, Lcom/baidu/fm/StationListShow$1;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v2}, Lcom/baidu/fm/StationListShow;->access$100(Lcom/baidu/fm/StationListShow;)Lcom/baidu/fm/FMPersistence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/fm/FMPersistence;->getStationList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    array-length v1, v2

    .line 170
    .local v1, listLength:I
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-ge v2, v1, :cond_0

    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/fm/StationListShow$1;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mStationListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/baidu/fm/StationListShow;->access$200(Lcom/baidu/fm/StationListShow;)Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/fm/StationListShow$1;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mStationListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/baidu/fm/StationListShow;->access$200(Lcom/baidu/fm/StationListShow;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-nez v2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    const/16 v2, 0x65

    const v3, 0x7f07000f

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 180
    iget-object v2, p0, Lcom/baidu/fm/StationListShow$1;->this$0:Lcom/baidu/fm/StationListShow;

    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    #setter for: Lcom/baidu/fm/StationListShow;->mCurrentStationIndex:I
    invoke-static {v2, v3}, Lcom/baidu/fm/StationListShow;->access$302(Lcom/baidu/fm/StationListShow;I)I

    goto :goto_0
.end method
