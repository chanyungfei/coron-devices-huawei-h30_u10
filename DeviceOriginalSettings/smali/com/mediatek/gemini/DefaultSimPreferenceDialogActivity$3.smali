.class Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity$3;
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

.field final synthetic val$mDataSwitchMsgIndex:I

.field final synthetic val$simItem:Lcom/mediatek/gemini/SimItem;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;ILcom/mediatek/gemini/SimItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity$3;->this$0:Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;

    iput p2, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity$3;->val$mDataSwitchMsgIndex:I

    iput-object p3, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity$3;->val$simItem:Lcom/mediatek/gemini/SimItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 513
    iget v0, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity$3;->val$mDataSwitchMsgIndex:I

    const v1, 0x7f0800fa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity$3;->val$mDataSwitchMsgIndex:I

    const v1, 0x7f0800fd

    if-ne v0, v1, :cond_1

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity$3;->this$0:Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;

    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity$3;->val$simItem:Lcom/mediatek/gemini/SimItem;

    iget-wide v1, v1, Lcom/mediatek/gemini/SimItem;->mSimID:J

    #calls: Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->enableDataRoaming(J)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->access$000(Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;J)V

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity$3;->this$0:Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;

    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity$3;->val$simItem:Lcom/mediatek/gemini/SimItem;

    iget-wide v1, v1, Lcom/mediatek/gemini/SimItem;->mSimID:J

    #calls: Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->switchConSim(J)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;->access$100(Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;J)V

    .line 519
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity$3;->this$0:Lcom/mediatek/gemini/DefaultSimPreferenceDialogActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 520
    return-void
.end method
