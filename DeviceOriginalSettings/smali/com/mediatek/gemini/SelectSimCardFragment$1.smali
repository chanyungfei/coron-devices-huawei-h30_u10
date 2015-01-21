.class Lcom/mediatek/gemini/SelectSimCardFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SelectSimCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/SelectSimCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/SelectSimCardFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/SelectSimCardFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mediatek/gemini/SelectSimCardFragment$1;->this$0:Lcom/mediatek/gemini/SelectSimCardFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    iget-object v1, p0, Lcom/mediatek/gemini/SelectSimCardFragment$1;->this$0:Lcom/mediatek/gemini/SelectSimCardFragment;

    #getter for: Lcom/mediatek/gemini/SelectSimCardFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/mediatek/gemini/SelectSimCardFragment;->access$000(Lcom/mediatek/gemini/SelectSimCardFragment;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/mediatek/gemini/SelectSimCardFragment$1;->this$0:Lcom/mediatek/gemini/SelectSimCardFragment;

    #getter for: Lcom/mediatek/gemini/SelectSimCardFragment;->mAdapter:Lcom/mediatek/gemini/SimCardListAdpater;
    invoke-static {v1}, Lcom/mediatek/gemini/SelectSimCardFragment;->access$100(Lcom/mediatek/gemini/SelectSimCardFragment;)Lcom/mediatek/gemini/SimCardListAdpater;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/mediatek/gemini/SelectSimCardFragment$1;->this$0:Lcom/mediatek/gemini/SelectSimCardFragment;

    #calls: Lcom/mediatek/gemini/SelectSimCardFragment;->isNoSimInserted()Z
    invoke-static {v1}, Lcom/mediatek/gemini/SelectSimCardFragment;->access$200(Lcom/mediatek/gemini/SelectSimCardFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    iget-object v1, p0, Lcom/mediatek/gemini/SelectSimCardFragment$1;->this$0:Lcom/mediatek/gemini/SelectSimCardFragment;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 42
    :cond_2
    iget-object v1, p0, Lcom/mediatek/gemini/SelectSimCardFragment$1;->this$0:Lcom/mediatek/gemini/SelectSimCardFragment;

    #getter for: Lcom/mediatek/gemini/SelectSimCardFragment;->mAdapter:Lcom/mediatek/gemini/SimCardListAdpater;
    invoke-static {v1}, Lcom/mediatek/gemini/SelectSimCardFragment;->access$100(Lcom/mediatek/gemini/SelectSimCardFragment;)Lcom/mediatek/gemini/SimCardListAdpater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/gemini/SimCardListAdpater;->updateSimInfo()V

    .line 43
    iget-object v1, p0, Lcom/mediatek/gemini/SelectSimCardFragment$1;->this$0:Lcom/mediatek/gemini/SelectSimCardFragment;

    #getter for: Lcom/mediatek/gemini/SelectSimCardFragment;->mAdapter:Lcom/mediatek/gemini/SimCardListAdpater;
    invoke-static {v1}, Lcom/mediatek/gemini/SelectSimCardFragment;->access$100(Lcom/mediatek/gemini/SelectSimCardFragment;)Lcom/mediatek/gemini/SimCardListAdpater;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
