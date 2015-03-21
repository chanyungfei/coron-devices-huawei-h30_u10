.class Lcom/baidu/fm/FMRadio$2;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/fm/FMRadio;->doTextFreqWithTwoText()V
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
    .line 580
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$2;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 585
    const/16 v3, 0x43

    if-ne p2, v3, :cond_1

    .line 586
    iget-object v3, p0, Lcom/baidu/fm/FMRadio$2;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mInputTextFreqDialogLayout:Landroid/view/View;
    invoke-static {v3}, Lcom/baidu/fm/FMRadio;->access$500(Lcom/baidu/fm/FMRadio;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090061

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 587
    .local v1, frequencyEditMHz:Landroid/widget/EditText;
    iget-object v3, p0, Lcom/baidu/fm/FMRadio$2;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mInputTextFreqDialogLayout:Landroid/view/View;
    invoke-static {v3}, Lcom/baidu/fm/FMRadio;->access$500(Lcom/baidu/fm/FMRadio;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090063

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 589
    .local v0, frequencyEditKHz:Landroid/widget/EditText;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 591
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 592
    .local v2, textString:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 594
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 595
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 597
    :cond_0
    const/4 v3, 0x1

    .line 600
    .end local v0           #frequencyEditKHz:Landroid/widget/EditText;
    .end local v1           #frequencyEditMHz:Landroid/widget/EditText;
    .end local v2           #textString:Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
