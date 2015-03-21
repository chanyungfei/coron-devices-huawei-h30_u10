.class Lcom/baidu/fm/FmMidTest$6;
.super Landroid/content/BroadcastReceiver;
.source "FmMidTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/fm/FmMidTest;->registerHeadsetListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/FmMidTest;


# direct methods
.method constructor <init>(Lcom/baidu/fm/FmMidTest;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/baidu/fm/FmMidTest$6;->this$0:Lcom/baidu/fm/FmMidTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/high16 v6, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 260
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    const-string v1, "FmMidTest"

    const-string v4, "ACTION_HEADSET_PLUG Intent received"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v1, "FmMidTest"

    const-string v4, "mReceiver: ACTION_HEADSET_PLUG"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v1, "FmMidTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "state"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v4, p0, Lcom/baidu/fm/FmMidTest$6;->this$0:Lcom/baidu/fm/FmMidTest;

    const-string v1, "state"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    #setter for: Lcom/baidu/fm/FmMidTest;->mHeadsetPlugged:Z
    invoke-static {v4, v1}, Lcom/baidu/fm/FmMidTest;->access$502(Lcom/baidu/fm/FmMidTest;Z)Z

    .line 266
    iget-object v1, p0, Lcom/baidu/fm/FmMidTest$6;->this$0:Lcom/baidu/fm/FmMidTest;

    #getter for: Lcom/baidu/fm/FmMidTest;->mHeadsetPlugged:Z
    invoke-static {v1}, Lcom/baidu/fm/FmMidTest;->access$500(Lcom/baidu/fm/FmMidTest;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    iget-object v1, p0, Lcom/baidu/fm/FmMidTest$6;->this$0:Lcom/baidu/fm/FmMidTest;

    #getter for: Lcom/baidu/fm/FmMidTest;->local_ok_button:Landroid/widget/Button;
    invoke-static {v1}, Lcom/baidu/fm/FmMidTest;->access$600(Lcom/baidu/fm/FmMidTest;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 268
    iget-object v1, p0, Lcom/baidu/fm/FmMidTest$6;->this$0:Lcom/baidu/fm/FmMidTest;

    #getter for: Lcom/baidu/fm/FmMidTest;->mHeadSetInfo:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/baidu/fm/FmMidTest;->access$700(Lcom/baidu/fm/FmMidTest;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/fm/FmMidTest$6;->this$0:Lcom/baidu/fm/FmMidTest;

    const v3, 0x7f070051

    invoke-virtual {v2, v3}, Lcom/baidu/fm/FmMidTest;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v1, p0, Lcom/baidu/fm/FmMidTest$6;->this$0:Lcom/baidu/fm/FmMidTest;

    #getter for: Lcom/baidu/fm/FmMidTest;->mHeadSetInfo:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/baidu/fm/FmMidTest;->access$700(Lcom/baidu/fm/FmMidTest;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    iget-object v1, p0, Lcom/baidu/fm/FmMidTest$6;->this$0:Lcom/baidu/fm/FmMidTest;

    invoke-virtual {v1}, Lcom/baidu/fm/FmMidTest;->isFmOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/baidu/fm/FmMidTest$6;->this$0:Lcom/baidu/fm/FmMidTest;

    invoke-virtual {v1}, Lcom/baidu/fm/FmMidTest;->unMute()Z

    .line 280
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 265
    goto :goto_0

    .line 274
    :cond_2
    iget-object v1, p0, Lcom/baidu/fm/FmMidTest$6;->this$0:Lcom/baidu/fm/FmMidTest;

    #getter for: Lcom/baidu/fm/FmMidTest;->local_ok_button:Landroid/widget/Button;
    invoke-static {v1}, Lcom/baidu/fm/FmMidTest;->access$600(Lcom/baidu/fm/FmMidTest;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 275
    iget-object v1, p0, Lcom/baidu/fm/FmMidTest$6;->this$0:Lcom/baidu/fm/FmMidTest;

    #getter for: Lcom/baidu/fm/FmMidTest;->mHeadSetInfo:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/baidu/fm/FmMidTest;->access$700(Lcom/baidu/fm/FmMidTest;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/fm/FmMidTest$6;->this$0:Lcom/baidu/fm/FmMidTest;

    const v3, 0x7f070055

    invoke-virtual {v2, v3}, Lcom/baidu/fm/FmMidTest;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v1, p0, Lcom/baidu/fm/FmMidTest$6;->this$0:Lcom/baidu/fm/FmMidTest;

    #getter for: Lcom/baidu/fm/FmMidTest;->mHeadSetInfo:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/baidu/fm/FmMidTest;->access$700(Lcom/baidu/fm/FmMidTest;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    iget-object v1, p0, Lcom/baidu/fm/FmMidTest$6;->this$0:Lcom/baidu/fm/FmMidTest;

    invoke-virtual {v1}, Lcom/baidu/fm/FmMidTest;->mute()Z

    goto :goto_1
.end method
