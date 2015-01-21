.class Lcom/mediatek/gemini/SimManagement$4;
.super Ljava/lang/Object;
.source "SimManagement.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gemini/SimManagement;->addSimInfoPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/SimManagement;

.field final synthetic val$simInfoPref:Lcom/mediatek/gemini/SimInfoEnablePreference;

.field final synthetic val$siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/SimManagement;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Lcom/mediatek/gemini/SimInfoEnablePreference;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 720
    iput-object p1, p0, Lcom/mediatek/gemini/SimManagement$4;->this$0:Lcom/mediatek/gemini/SimManagement;

    iput-object p2, p0, Lcom/mediatek/gemini/SimManagement$4;->val$siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iput-object p3, p0, Lcom/mediatek/gemini/SimManagement$4;->val$simInfoPref:Lcom/mediatek/gemini/SimInfoEnablePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v0, 0x1

    .line 723
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement$4;->val$siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v3, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch is clicking! with isChecked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement$4;->this$0:Lcom/mediatek/gemini/SimManagement;

    #getter for: Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z
    invoke-static {v1}, Lcom/mediatek/gemini/SimManagement;->access$2000(Lcom/mediatek/gemini/SimManagement;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 726
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start to turn radio in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement$4;->this$0:Lcom/mediatek/gemini/SimManagement;

    #setter for: Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z
    invoke-static {v1, v0}, Lcom/mediatek/gemini/SimManagement;->access$2002(Lcom/mediatek/gemini/SimManagement;Z)Z

    .line 737
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$4;->val$simInfoPref:Lcom/mediatek/gemini/SimInfoEnablePreference;

    invoke-virtual {v0, p2}, Lcom/mediatek/gemini/SimInfoPreference;->setCheck(Z)V

    .line 738
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 740
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$4;->this$0:Lcom/mediatek/gemini/SimManagement;

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement$4;->val$siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v1, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    #calls: Lcom/mediatek/gemini/SimManagement;->switchGeminiPlusSimRadioState(I)V
    invoke-static {v0, v1}, Lcom/mediatek/gemini/SimManagement;->access$2100(Lcom/mediatek/gemini/SimManagement;I)V

    .line 748
    :goto_0
    return-void

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$4;->this$0:Lcom/mediatek/gemini/SimManagement;

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement$4;->val$siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v1, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    #calls: Lcom/mediatek/gemini/SimManagement;->switchSimRadioState(IZ)V
    invoke-static {v0, v1, p2}, Lcom/mediatek/gemini/SimManagement;->access$2200(Lcom/mediatek/gemini/SimManagement;IZ)V

    goto :goto_0

    .line 745
    :cond_1
    const-string v1, "SimManagementSettings"

    const-string v2, "Click too fast it is switching and set the switch to previous state"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement$4;->val$simInfoPref:Lcom/mediatek/gemini/SimInfoEnablePreference;

    if-nez p2, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Lcom/mediatek/gemini/SimInfoPreference;->setCheck(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
