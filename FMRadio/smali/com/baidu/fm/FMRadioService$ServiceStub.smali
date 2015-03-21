.class Lcom/baidu/fm/FMRadioService$ServiceStub;
.super Lcom/baidu/fm/IFMRadioService$Stub;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/FMRadioService;


# direct methods
.method constructor <init>(Lcom/baidu/fm/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 868
    iput-object p1, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    invoke-direct {p0}, Lcom/baidu/fm/IFMRadioService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public activeAF()I
    .locals 4

    .prologue
    .line 1020
    const-string v1, "FMService"

    const-string v2, ">>> FMRadioService.activeAF"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->activeAF()S

    move-result v0

    .line 1022
    .local v0, frequency:I
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.activeAF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    return v0
.end method

.method public activeTA()I
    .locals 4

    .prologue
    .line 1027
    const-string v1, "FMService"

    const-string v2, ">>> FMRadioService.activeTA"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->activeTA()S

    move-result v0

    .line 1029
    .local v0, frequency:I
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.activeTA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    return v0
.end method

.method public closeDevice()Z
    .locals 4

    .prologue
    .line 890
    const/4 v0, 0x0

    .line 891
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbIsDeviceOpen:Z
    invoke-static {v1}, Lcom/baidu/fm/FMRadioService;->access$1900(Lcom/baidu/fm/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 892
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->closedev()Z

    move-result v0

    .line 893
    if-eqz v0, :cond_0

    .line 894
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    const/4 v2, 0x0

    #setter for: Lcom/baidu/fm/FMRadioService;->mbIsDeviceOpen:Z
    invoke-static {v1, v2}, Lcom/baidu/fm/FMRadioService;->access$1902(Lcom/baidu/fm/FMRadioService;Z)Z

    .line 904
    :goto_0
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.closeDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    return v0

    .line 897
    :cond_0
    const-string v1, "FMService"

    const-string v2, "Error: closedev failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 901
    :cond_1
    const-string v1, "FMService"

    const-string v2, "Error: device is already closed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deactiveTA()I
    .locals 4

    .prologue
    .line 1034
    const-string v1, "FMService"

    const-string v2, ">>> FMRadioService.deactiveTA"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->deactiveTA()S

    move-result v0

    .line 1036
    .local v0, frequency:I
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.deactiveTA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    return v0
.end method

.method public enableAF(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 1100
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.enableAF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #setter for: Lcom/baidu/fm/FMRadioService;->mbAFEnabled:Z
    invoke-static {v0, p1}, Lcom/baidu/fm/FMRadioService;->access$2802(Lcom/baidu/fm/FMRadioService;Z)Z

    .line 1103
    const-string v0, "FMService"

    const-string v1, "<<< FMRadioService.enableAF"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    return-void
.end method

.method public enablePSRT(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 1091
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.enablePSRT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #setter for: Lcom/baidu/fm/FMRadioService;->mbPSRTEnabled:Z
    invoke-static {v0, p1}, Lcom/baidu/fm/FMRadioService;->access$2702(Lcom/baidu/fm/FMRadioService;Z)Z

    .line 1093
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbPSRTEnabled:Z
    invoke-static {v0}, Lcom/baidu/fm/FMRadioService;->access$2700(Lcom/baidu/fm/FMRadioService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1096
    :cond_0
    const-string v0, "FMService"

    const-string v1, "<<< FMRadioService.enablePSRT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    return-void
.end method

.method public enableTA(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 1107
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.enableTA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #setter for: Lcom/baidu/fm/FMRadioService;->mbTAEnabled:Z
    invoke-static {v0, p1}, Lcom/baidu/fm/FMRadioService;->access$2902(Lcom/baidu/fm/FMRadioService;Z)Z

    .line 1109
    const-string v0, "FMService"

    const-string v1, "<<< FMRadioService.enableTA"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    return-void
.end method

.method public getFrequency()I
    .locals 3

    .prologue
    .line 1131
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.getFrequency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->miCurrentStation:I
    invoke-static {v2}, Lcom/baidu/fm/FMRadioService;->access$1700(Lcom/baidu/fm/FMRadioService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->miCurrentStation:I
    invoke-static {v0}, Lcom/baidu/fm/FMRadioService;->access$1700(Lcom/baidu/fm/FMRadioService;)I

    move-result v0

    return v0
.end method

.method public getLRText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1014
    const-string v0, "FMService"

    const-string v1, ">>> FMRadioService.getLRText"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.getLRText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->msLRText:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/fm/FMRadioService;->access$2100(Lcom/baidu/fm/FMRadioService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->msLRText:Ljava/lang/String;
    invoke-static {v0}, Lcom/baidu/fm/FMRadioService;->access$2100(Lcom/baidu/fm/FMRadioService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPS()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1008
    const-string v0, "FMService"

    const-string v1, ">>> FMRadioService.getPS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.getPS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->msPS:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/fm/FMRadioService;->access$2000(Lcom/baidu/fm/FMRadioService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->msPS:Ljava/lang/String;
    invoke-static {v0}, Lcom/baidu/fm/FMRadioService;->access$2000(Lcom/baidu/fm/FMRadioService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStereoMono()Z
    .locals 2

    .prologue
    .line 1160
    const-string v0, "FMService"

    const-string v1, ">>> FMRadioService.getStereoMono"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->stereoMono()Z

    move-result v0

    return v0
.end method

.method public isAFEnabled()Z
    .locals 3

    .prologue
    .line 1119
    const-string v0, "FMService"

    const-string v1, ">>> FMRadioService.isAFEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.isAFEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbAFEnabled:Z
    invoke-static {v2}, Lcom/baidu/fm/FMRadioService;->access$2800(Lcom/baidu/fm/FMRadioService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbAFEnabled:Z
    invoke-static {v0}, Lcom/baidu/fm/FMRadioService;->access$2800(Lcom/baidu/fm/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public isDeviceOpen()Z
    .locals 3

    .prologue
    .line 909
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.isDeviceOpen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbIsDeviceOpen:Z
    invoke-static {v2}, Lcom/baidu/fm/FMRadioService;->access$1900(Lcom/baidu/fm/FMRadioService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbIsDeviceOpen:Z
    invoke-static {v0}, Lcom/baidu/fm/FMRadioService;->access$1900(Lcom/baidu/fm/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public isEarphoneUsed()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1086
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.isEarphoneUsed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbEarphoneUsed:Z
    invoke-static {v3}, Lcom/baidu/fm/FMRadioService;->access$2600(Lcom/baidu/fm/FMRadioService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    iget v1, v1, Lcom/baidu/fm/FMRadioService;->mForcedUseForMedia:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMuted()Z
    .locals 2

    .prologue
    .line 1061
    const-string v0, "FMService"

    const-string v1, ">>> FMRadioService.isMuted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mIsMuted:Z
    invoke-static {v0}, Lcom/baidu/fm/FMRadioService;->access$2200(Lcom/baidu/fm/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public isPSRTEnabled()Z
    .locals 3

    .prologue
    .line 1113
    const-string v0, "FMService"

    const-string v1, ">>> FMRadioService.isPSRTEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.isPSRTEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbPSRTEnabled:Z
    invoke-static {v2}, Lcom/baidu/fm/FMRadioService;->access$2700(Lcom/baidu/fm/FMRadioService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbPSRTEnabled:Z
    invoke-static {v0}, Lcom/baidu/fm/FMRadioService;->access$2700(Lcom/baidu/fm/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public isPowerUp()Z
    .locals 3

    .prologue
    .line 923
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.isPowerUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z
    invoke-static {v2}, Lcom/baidu/fm/FMRadioService;->access$100(Lcom/baidu/fm/FMRadioService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z
    invoke-static {v0}, Lcom/baidu/fm/FMRadioService;->access$100(Lcom/baidu/fm/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public isRDSSupported()I
    .locals 4

    .prologue
    .line 1067
    const-string v1, "FMService"

    const-string v2, ">>> FMRadioService.isRDSSupported"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->isRDSsupport()I

    move-result v0

    .line 1069
    .local v0, iRet:I
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.isRDSSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    return v0
.end method

.method public isTAEnabled()Z
    .locals 3

    .prologue
    .line 1125
    const-string v0, "FMService"

    const-string v1, ">>> FMRadioService.isTAEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.isTAEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbTAEnabled:Z
    invoke-static {v2}, Lcom/baidu/fm/FMRadioService;->access$2900(Lcom/baidu/fm/FMRadioService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbTAEnabled:Z
    invoke-static {v0}, Lcom/baidu/fm/FMRadioService;->access$2900(Lcom/baidu/fm/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public openDevice()Z
    .locals 4

    .prologue
    .line 871
    const/4 v0, 0x0

    .line 872
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbIsDeviceOpen:Z
    invoke-static {v1}, Lcom/baidu/fm/FMRadioService;->access$1900(Lcom/baidu/fm/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 873
    const-string v1, "FMService"

    const-string v2, "Error: device is already open."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const/4 v0, 0x1

    .line 885
    :goto_0
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.openDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    return v0

    .line 877
    :cond_0
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->opendev()Z

    move-result v0

    .line 878
    if-eqz v0, :cond_1

    .line 879
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    const/4 v2, 0x1

    #setter for: Lcom/baidu/fm/FMRadioService;->mbIsDeviceOpen:Z
    invoke-static {v1, v2}, Lcom/baidu/fm/FMRadioService;->access$1902(Lcom/baidu/fm/FMRadioService;Z)Z

    goto :goto_0

    .line 882
    :cond_1
    const-string v1, "FMService"

    const-string v2, "Error: opendev failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public powerDown()Z
    .locals 2

    .prologue
    .line 918
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/fm/FMRadioService;->mbResumeAfterCall:Z
    invoke-static {v0, v1}, Lcom/baidu/fm/FMRadioService;->access$302(Lcom/baidu/fm/FMRadioService;Z)Z

    .line 919
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/baidu/fm/FMRadioService;->doPowerDown()Z

    move-result v0

    return v0
.end method

.method public powerUp(F)Z
    .locals 1
    .parameter "frequency"

    .prologue
    .line 914
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/baidu/fm/FMRadioService;->doPowerUp(F)Z

    move-result v0

    return v0
.end method

.method public readCapArray()I
    .locals 2

    .prologue
    .line 1148
    const-string v0, "FMService"

    const-string v1, ">>> FMRadioService.readCapArray"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->readCapArray()S

    move-result v0

    return v0
.end method

.method public readRDS()I
    .locals 4

    .prologue
    .line 1001
    const-string v1, "FMService"

    const-string v2, ">>> FMRadioService.readRDS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->readrds()S

    move-result v0

    .line 1003
    .local v0, iEvents:I
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.readRDS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    return v0
.end method

.method public readRdsBler()I
    .locals 2

    .prologue
    .line 1172
    const-string v0, "FMService"

    const-string v1, ">>> FMRadioService.readRdsBler"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->readRdsBler()S

    move-result v0

    return v0
.end method

.method public readRssi()I
    .locals 2

    .prologue
    .line 1154
    const-string v0, "FMService"

    const-string v1, ">>> FMRadioService.readRssi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->readRssi()I

    move-result v0

    return v0
.end method

.method public resumeFMAudio()V
    .locals 2

    .prologue
    .line 1136
    const-string v0, "FMService"

    const-string v1, ">>> FMRadioService.resumeFMAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mUsingFMViaBTController:Z
    invoke-static {v0}, Lcom/baidu/fm/FMRadioService;->access$3000(Lcom/baidu/fm/FMRadioService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    const/4 v1, 0x1

    #calls: Lcom/baidu/fm/FMRadioService;->enableFMAudio(Z)V
    invoke-static {v0, v1}, Lcom/baidu/fm/FMRadioService;->access$2300(Lcom/baidu/fm/FMRadioService;Z)V

    .line 1142
    :goto_0
    const-string v0, "FMService"

    const-string v1, "<<< FMRadioService.resumeFMAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    return-void

    .line 1140
    :cond_0
    const-string v0, "FMService"

    const-string v1, "resumeFMAudio: FM over BT via controller ongoing, so do NOT enable FMPlayer!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public seek(Z)F
    .locals 5
    .parameter "isUp"

    .prologue
    const/high16 v4, 0x4120

    .line 939
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.seek: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->miCurrentStation:I
    invoke-static {v1}, Lcom/baidu/fm/FMRadioService;->access$1700(Lcom/baidu/fm/FMRadioService;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-static {v1, p1}, Lcom/mediatek/FMRadio/FMRadioNative;->seek(FZ)F

    move-result v0

    .line 941
    .local v0, fRet:F
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    mul-float v2, v0, v4

    float-to-int v2, v2

    #setter for: Lcom/baidu/fm/FMRadioService;->miCurrentStation:I
    invoke-static {v1, v2}, Lcom/baidu/fm/FMRadioService;->access$1702(Lcom/baidu/fm/FMRadioService;I)I

    .line 942
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    invoke-virtual {v1}, Lcom/baidu/fm/FMRadioService;->startNotification()V

    .line 943
    return v0
.end method

.method public setMute(Z)I
    .locals 4
    .parameter "bmute"

    .prologue
    .line 1041
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.setMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #setter for: Lcom/baidu/fm/FMRadioService;->mIsMuted:Z
    invoke-static {v1, p1}, Lcom/baidu/fm/FMRadioService;->access$2202(Lcom/baidu/fm/FMRadioService;Z)Z

    .line 1043
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->setmute(Z)I

    move-result v0

    .line 1044
    .local v0, iRet:I
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #calls: Lcom/baidu/fm/FMRadioService;->enableFMAudio(Z)V
    invoke-static {v2, v1}, Lcom/baidu/fm/FMRadioService;->access$2300(Lcom/baidu/fm/FMRadioService;Z)V

    .line 1045
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.setMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    return v0

    .line 1044
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPlayTime(J)V
    .locals 5
    .parameter "time"

    .prologue
    .line 1050
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---setPlayTime--- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/baidu/fm/FMRadioService;->access$2400(Lcom/baidu/fm/FMRadioService;)Landroid/app/AlarmManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/baidu/fm/FMRadioService;->access$2400(Lcom/baidu/fm/FMRadioService;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mAlarmPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/baidu/fm/FMRadioService;->access$2500(Lcom/baidu/fm/FMRadioService;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1053
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/baidu/fm/FMRadioService;->access$2400(Lcom/baidu/fm/FMRadioService;)Landroid/app/AlarmManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v4, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mAlarmPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/baidu/fm/FMRadioService;->access$2500(Lcom/baidu/fm/FMRadioService;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1058
    :cond_0
    return-void
.end method

.method public setRDS(Z)I
    .locals 4
    .parameter "on"

    .prologue
    .line 994
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.setRDS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->rdsset(Z)I

    move-result v0

    .line 996
    .local v0, iRet:I
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.setRDS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    return v0
.end method

.method public setStereoMono(Z)Z
    .locals 2
    .parameter "isMono"

    .prologue
    .line 1166
    const-string v0, "FMService"

    const-string v1, ">>> FMRadioService.setStereoMono"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const/4 v0, 0x1

    return v0
.end method

.method public startScan()[I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 947
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>> FMRadioService.startScan: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->miCurrentStation:I
    invoke-static {v5}, Lcom/baidu/fm/FMRadioService;->access$1700(Lcom/baidu/fm/FMRadioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    const/4 v1, 0x0

    .line 950
    .local v1, iChannels:[I
    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z
    invoke-static {v3}, Lcom/baidu/fm/FMRadioService;->access$100(Lcom/baidu/fm/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 956
    :cond_0
    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    const/4 v4, 0x1

    #setter for: Lcom/baidu/fm/FMRadioService;->mbSearching:Z
    invoke-static {v3, v4}, Lcom/baidu/fm/FMRadioService;->access$502(Lcom/baidu/fm/FMRadioService;Z)Z

    .line 957
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->autoscan()[S

    move-result-object v2

    .line 958
    .local v2, shortChannels:[S
    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #setter for: Lcom/baidu/fm/FMRadioService;->mbSearching:Z
    invoke-static {v3, v6}, Lcom/baidu/fm/FMRadioService;->access$502(Lcom/baidu/fm/FMRadioService;Z)Z

    .line 960
    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbIsPowerUp:Z
    invoke-static {v3}, Lcom/baidu/fm/FMRadioService;->access$100(Lcom/baidu/fm/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 961
    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbSIM1Idle:Z
    invoke-static {v3}, Lcom/baidu/fm/FMRadioService;->access$1400(Lcom/baidu/fm/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbSIM2Idle:Z
    invoke-static {v3}, Lcom/baidu/fm/FMRadioService;->access$1500(Lcom/baidu/fm/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 969
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mbStopScanCalled:Z
    invoke-static {v3}, Lcom/baidu/fm/FMRadioService;->access$600(Lcom/baidu/fm/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 972
    const/4 v2, 0x0

    .line 973
    iget-object v3, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    #setter for: Lcom/baidu/fm/FMRadioService;->mbStopScanCalled:Z
    invoke-static {v3, v6}, Lcom/baidu/fm/FMRadioService;->access$602(Lcom/baidu/fm/FMRadioService;Z)Z

    .line 976
    :cond_2
    if-eqz v2, :cond_4

    .line 977
    array-length v3, v2

    new-array v1, v3, [I

    .line 978
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 979
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startScan: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", freq: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-short v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    aget-short v3, v2, v0

    aput v3, v1, v0

    .line 978
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 965
    .end local v0           #i:I
    :cond_3
    const-string v3, "FMService"

    const-string v4, "A phone call is ongoing."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 983
    :cond_4
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<<< FMRadioService.startScan: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    return-object v1
.end method

.method public stopScan()Z
    .locals 4

    .prologue
    .line 988
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->stopscan()Z

    move-result v0

    .line 989
    .local v0, bRet:Z
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.stopScan: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    return v0
.end method

.method public tune(F)Z
    .locals 4
    .parameter "frequency"

    .prologue
    .line 928
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.tune: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->tune(F)Z

    move-result v0

    .line 930
    .local v0, bRet:Z
    if-eqz v0, :cond_0

    .line 931
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    const/high16 v2, 0x4120

    mul-float/2addr v2, p1

    float-to-int v2, v2

    #setter for: Lcom/baidu/fm/FMRadioService;->miCurrentStation:I
    invoke-static {v1, v2}, Lcom/baidu/fm/FMRadioService;->access$1702(Lcom/baidu/fm/FMRadioService;I)I

    .line 933
    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    invoke-virtual {v1}, Lcom/baidu/fm/FMRadioService;->startNotification()V

    .line 935
    :cond_0
    return v0
.end method

.method public useEarphone(Z)V
    .locals 3
    .parameter "use"

    .prologue
    .line 1074
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.useEarphone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    if-eqz p1, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    const/4 v1, 0x0

    iput v1, v0, Lcom/baidu/fm/FMRadioService;->mForcedUseForMedia:I

    .line 1081
    :goto_0
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    iget v1, v1, Lcom/baidu/fm/FMRadioService;->mForcedUseForMedia:I

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1082
    const-string v0, "FMService"

    const-string v1, "<<< FMRadioService.useEarphone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    return-void

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$ServiceStub;->this$0:Lcom/baidu/fm/FMRadioService;

    const/4 v1, 0x1

    iput v1, v0, Lcom/baidu/fm/FMRadioService;->mForcedUseForMedia:I

    goto :goto_0
.end method
