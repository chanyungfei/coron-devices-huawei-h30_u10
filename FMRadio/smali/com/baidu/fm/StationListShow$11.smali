.class Lcom/baidu/fm/StationListShow$11;
.super Ljava/lang/Object;
.source "StationListShow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 749
    iput-object p1, p0, Lcom/baidu/fm/StationListShow$11;->this$0:Lcom/baidu/fm/StationListShow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 752
    iget-object v2, p0, Lcom/baidu/fm/StationListShow$11;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mInputRenameDialogLayout:Landroid/view/View;
    invoke-static {v2}, Lcom/baidu/fm/StationListShow;->access$1400(Lcom/baidu/fm/StationListShow;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09004b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 754
    .local v0, nameEdit:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 756
    .local v1, nameStr:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/fm/StationListShow$11;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v2}, Lcom/baidu/fm/StationListShow;->access$100(Lcom/baidu/fm/StationListShow;)Lcom/baidu/fm/FMPersistence;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/fm/StationListShow$11;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mCurrentStationIndex:I
    invoke-static {v3}, Lcom/baidu/fm/StationListShow;->access$300(Lcom/baidu/fm/StationListShow;)I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/baidu/fm/FMPersistence;->renameStation(ILjava/lang/String;)V

    .line 757
    iget-object v2, p0, Lcom/baidu/fm/StationListShow$11;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v2}, Lcom/baidu/fm/StationListShow;->access$100(Lcom/baidu/fm/StationListShow;)Lcom/baidu/fm/FMPersistence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/fm/FMPersistence;->saveIfDirty()V

    .line 758
    iget-object v2, p0, Lcom/baidu/fm/StationListShow$11;->this$0:Lcom/baidu/fm/StationListShow;

    #calls: Lcom/baidu/fm/StationListShow;->doLeaveStationListEdit()V
    invoke-static {v2}, Lcom/baidu/fm/StationListShow;->access$1000(Lcom/baidu/fm/StationListShow;)V

    .line 759
    iget-object v2, p0, Lcom/baidu/fm/StationListShow$11;->this$0:Lcom/baidu/fm/StationListShow;

    const/4 v3, -0x1

    #setter for: Lcom/baidu/fm/StationListShow;->mCurrentStationIndex:I
    invoke-static {v2, v3}, Lcom/baidu/fm/StationListShow;->access$302(Lcom/baidu/fm/StationListShow;I)I

    .line 760
    return-void
.end method
