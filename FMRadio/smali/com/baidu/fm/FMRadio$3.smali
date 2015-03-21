.class Lcom/baidu/fm/FMRadio$3;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/FMRadio;


# direct methods
.method constructor <init>(Lcom/baidu/fm/FMRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 703
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$3;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v6, 0x0

    .line 707
    iget-object v4, p0, Lcom/baidu/fm/FMRadio$3;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mInputTextFreqDialogLayout:Landroid/view/View;
    invoke-static {v4}, Lcom/baidu/fm/FMRadio;->access$500(Lcom/baidu/fm/FMRadio;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090061

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 708
    .local v1, freqEditMHz:Landroid/widget/EditText;
    iget-object v4, p0, Lcom/baidu/fm/FMRadio$3;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mInputTextFreqDialogLayout:Landroid/view/View;
    invoke-static {v4}, Lcom/baidu/fm/FMRadio;->access$500(Lcom/baidu/fm/FMRadio;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090063

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 710
    .local v0, freqEditKHz:Landroid/widget/EditText;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 711
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 713
    .local v2, freqStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/fm/FMStationInfo;->verifyStringFreq(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 714
    if-eqz p1, :cond_0

    .line 715
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 717
    :cond_0
    iget-object v4, p0, Lcom/baidu/fm/FMRadio$3;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;
    invoke-static {v4}, Lcom/baidu/fm/FMRadio;->access$600(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->tune(Ljava/lang/String;)V

    .line 727
    .end local v2           #freqStr:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 721
    .restart local v2       #freqStr:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/baidu/fm/FMRadio$3;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-virtual {v4}, Lcom/baidu/fm/FMRadio;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f070039

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 723
    .local v3, toast:Landroid/widget/Toast;
    const/16 v4, 0x11

    const/16 v5, 0x14

    invoke-virtual {v3, v4, v6, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 724
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
