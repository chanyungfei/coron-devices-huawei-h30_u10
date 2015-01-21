.class Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity$4;
.super Ljava/lang/Object;
.source "DefaultSimPreferenceDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity$4;->this$0:Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity$4;->this$0:Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;

    invoke-virtual {v0}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->dismissDialogs()V

    .line 526
    return-void
.end method
