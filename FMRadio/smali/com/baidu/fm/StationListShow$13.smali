.class Lcom/baidu/fm/StationListShow$13;
.super Ljava/lang/Object;
.source "StationListShow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 892
    iput-object p1, p0, Lcom/baidu/fm/StationListShow$13;->this$0:Lcom/baidu/fm/StationListShow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    .line 895
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    .line 896
    .local v1, iv:Landroid/widget/ImageView;
    const v3, 0x7f0200b6

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 898
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 902
    .local v0, i:Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/baidu/fm/StationListShow$13;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v4}, Lcom/baidu/fm/StationListShow;->access$100(Lcom/baidu/fm/StationListShow;)Lcom/baidu/fm/FMPersistence;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/baidu/fm/FMPersistence;->getStationInfoByIndex(J)Lcom/baidu/fm/FMStationInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/fm/FMStationInfo;->getStationFreqString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MHz "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/fm/StationListShow$13;->this$0:Lcom/baidu/fm/StationListShow;

    const v5, 0x7f07004b

    invoke-virtual {v4, v5}, Lcom/baidu/fm/StationListShow;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 904
    .local v2, showText:Ljava/lang/String;
    iget-object v3, p0, Lcom/baidu/fm/StationListShow$13;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/baidu/fm/StationListShow;->access$1500(Lcom/baidu/fm/StationListShow;)Landroid/widget/Toast;

    move-result-object v3

    if-nez v3, :cond_0

    .line 905
    iget-object v3, p0, Lcom/baidu/fm/StationListShow$13;->this$0:Lcom/baidu/fm/StationListShow;

    iget-object v4, p0, Lcom/baidu/fm/StationListShow$13;->this$0:Lcom/baidu/fm/StationListShow;

    invoke-virtual {v4}, Lcom/baidu/fm/StationListShow;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    #setter for: Lcom/baidu/fm/StationListShow;->mToast:Landroid/widget/Toast;
    invoke-static {v3, v4}, Lcom/baidu/fm/StationListShow;->access$1502(Lcom/baidu/fm/StationListShow;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 907
    iget-object v3, p0, Lcom/baidu/fm/StationListShow$13;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/baidu/fm/StationListShow;->access$1500(Lcom/baidu/fm/StationListShow;)Landroid/widget/Toast;

    move-result-object v3

    const/16 v4, 0x11

    const/16 v5, 0x14

    invoke-virtual {v3, v4, v7, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 911
    :goto_0
    iget-object v3, p0, Lcom/baidu/fm/StationListShow$13;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/baidu/fm/StationListShow;->access$1500(Lcom/baidu/fm/StationListShow;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 913
    iget-object v3, p0, Lcom/baidu/fm/StationListShow$13;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v3}, Lcom/baidu/fm/StationListShow;->access$100(Lcom/baidu/fm/StationListShow;)Lcom/baidu/fm/FMPersistence;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/baidu/fm/FMPersistence;->cancelFavoriteById(I)V

    .line 914
    iget-object v3, p0, Lcom/baidu/fm/StationListShow$13;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v3}, Lcom/baidu/fm/StationListShow;->access$100(Lcom/baidu/fm/StationListShow;)Lcom/baidu/fm/FMPersistence;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/fm/FMPersistence;->saveIfDirty()V

    .line 915
    iget-object v3, p0, Lcom/baidu/fm/StationListShow$13;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mStationListAdapter:Lcom/baidu/fm/StationListShow$StationListShowAdapter;
    invoke-static {v3}, Lcom/baidu/fm/StationListShow;->access$900(Lcom/baidu/fm/StationListShow;)Lcom/baidu/fm/StationListShow$StationListShowAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/fm/StationListShow$StationListShowAdapter;->notifyDataSetChanged()V

    .line 916
    return-void

    .line 909
    :cond_0
    iget-object v3, p0, Lcom/baidu/fm/StationListShow$13;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/baidu/fm/StationListShow;->access$1500(Lcom/baidu/fm/StationListShow;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
