.class Lcom/baidu/fm/FMRadio$FreqTextTwoEditWatcher;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FreqTextTwoEditWatcher"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FreqTextWatcher"


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/baidu/fm/FMRadio;


# direct methods
.method constructor <init>(Lcom/baidu/fm/FMRadio;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter "editText"

    .prologue
    .line 648
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$FreqTextTwoEditWatcher;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    if-eqz p2, :cond_0

    .line 650
    iput-object p2, p0, Lcom/baidu/fm/FMRadio$FreqTextTwoEditWatcher;->mEditText:Landroid/widget/EditText;

    .line 652
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 10
    .parameter "editable"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 656
    if-eqz p1, :cond_1

    .line 657
    const-string v5, "FreqTextWatcher"

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 658
    const-string v5, "FreqTextWatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "afterTextChanged editable.toString() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 661
    .local v0, buff:[C
    iget-object v5, p0, Lcom/baidu/fm/FMRadio$FreqTextTwoEditWatcher;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mInputTextFreqDialogLayout:Landroid/view/View;
    invoke-static {v5}, Lcom/baidu/fm/FMRadio;->access$500(Lcom/baidu/fm/FMRadio;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f090063

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 662
    .local v1, freqEditKHz:Landroid/widget/EditText;
    iget-object v5, p0, Lcom/baidu/fm/FMRadio$FreqTextTwoEditWatcher;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mInputTextFreqDialogLayout:Landroid/view/View;
    invoke-static {v5}, Lcom/baidu/fm/FMRadio;->access$500(Lcom/baidu/fm/FMRadio;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f090061

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 664
    .local v2, freqEditMHz:Landroid/widget/EditText;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 665
    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v4

    .line 666
    .local v4, nSelStart:I
    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    .line 668
    .local v3, nSelEnd:I
    array-length v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 670
    add-int/lit8 v5, v4, -0x1

    if-ltz v5, :cond_2

    .line 671
    add-int/lit8 v5, v4, -0x1

    invoke-interface {p1, v5, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 689
    .end local v0           #buff:[C
    .end local v1           #freqEditKHz:Landroid/widget/EditText;
    .end local v2           #freqEditMHz:Landroid/widget/EditText;
    .end local v3           #nSelEnd:I
    .end local v4           #nSelStart:I
    :cond_1
    :goto_0
    return-void

    .line 674
    .restart local v0       #buff:[C
    .restart local v1       #freqEditKHz:Landroid/widget/EditText;
    .restart local v2       #freqEditMHz:Landroid/widget/EditText;
    .restart local v3       #nSelEnd:I
    .restart local v4       #nSelStart:I
    :cond_2
    invoke-interface {p1, v8, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 677
    :cond_3
    array-length v5, v0

    if-ne v5, v9, :cond_4

    .line 678
    if-eqz v1, :cond_1

    .line 679
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 682
    :cond_4
    array-length v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    aget-char v5, v0, v8

    const/16 v6, 0x38

    if-eq v5, v6, :cond_5

    aget-char v5, v0, v8

    const/16 v6, 0x39

    if-ne v5, v6, :cond_1

    .line 683
    :cond_5
    if-eqz v1, :cond_1

    .line 684
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "cs"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 695
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 700
    return-void
.end method
