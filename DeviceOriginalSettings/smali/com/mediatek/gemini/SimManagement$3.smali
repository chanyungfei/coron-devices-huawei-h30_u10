.class Lcom/mediatek/gemini/SimManagement$3;
.super Landroid/content/BroadcastReceiver;
.source "SimManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/SimManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/SimManagement;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 239
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, action:Ljava/lang/String;
    const-string v8, "SimManagementSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mSimReceiver receive action="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v8, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.intent.action.SIM_NAME_UPDATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 248
    :cond_0
    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #calls: Lcom/mediatek/gemini/SimManagement;->getSimInfo()V
    invoke-static {v6}, Lcom/mediatek/gemini/SimManagement;->access$600(Lcom/mediatek/gemini/SimManagement;)V

    .line 249
    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #calls: Lcom/mediatek/gemini/SimManagement;->updatePreferenceUI()V
    invoke-static {v6}, Lcom/mediatek/gemini/SimManagement;->access$700(Lcom/mediatek/gemini/SimManagement;)V

    .line 250
    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #calls: Lcom/mediatek/gemini/SimManagement;->dealDlgOnAirplaneMode(Ljava/lang/String;)V
    invoke-static {v6, v0}, Lcom/mediatek/gemini/SimManagement;->access$800(Lcom/mediatek/gemini/SimManagement;Ljava/lang/String;)V

    .line 252
    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #calls: Lcom/mediatek/gemini/SimManagement;->handleRadioOffState(Landroid/content/Intent;)V
    invoke-static {v6, p2}, Lcom/mediatek/gemini/SimManagement;->access$900(Lcom/mediatek/gemini/SimManagement;Landroid/content/Intent;)V

    .line 321
    :cond_1
    :goto_0
    return-void

    .line 253
    :cond_2
    const-string v8, "com.android.mms.transaction.START"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 256
    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #getter for: Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;
    invoke-static {v6}, Lcom/mediatek/gemini/SimManagement;->access$1000(Lcom/mediatek/gemini/SimManagement;)Lcom/mediatek/gemini/DefaultSimPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/Preference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 257
    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #getter for: Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;
    invoke-static {v6}, Lcom/mediatek/gemini/SimManagement;->access$1000(Lcom/mediatek/gemini/SimManagement;)Lcom/mediatek/gemini/DefaultSimPreference;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    .line 259
    :cond_3
    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #getter for: Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;
    invoke-static {v6}, Lcom/mediatek/gemini/SimManagement;->access$1000(Lcom/mediatek/gemini/SimManagement;)Lcom/mediatek/gemini/DefaultSimPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    .line 260
    .local v2, dlg:Landroid/app/Dialog;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 261
    const-string v6, "SimManagementSettings"

    const-string v7, "MMS starting dismiss GPRS selection dialog to prohbit data switch"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 264
    .end local v2           #dlg:Landroid/app/Dialog;
    :cond_4
    const-string v8, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 269
    iget-object v8, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #getter for: Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;
    invoke-static {v8}, Lcom/mediatek/gemini/SimManagement;->access$1000(Lcom/mediatek/gemini/SimManagement;)Lcom/mediatek/gemini/DefaultSimPreference;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/Preference;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_5

    .line 270
    iget-object v8, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #getter for: Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;
    invoke-static {v8}, Lcom/mediatek/gemini/SimManagement;->access$1000(Lcom/mediatek/gemini/SimManagement;)Lcom/mediatek/gemini/DefaultSimPreference;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #calls: Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$1100(Lcom/mediatek/gemini/SimManagement;)Z

    move-result v9

    if-nez v9, :cond_6

    :goto_1
    invoke-virtual {v8, v6}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    .line 272
    :cond_5
    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #getter for: Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;
    invoke-static {v6}, Lcom/mediatek/gemini/SimManagement;->access$1000(Lcom/mediatek/gemini/SimManagement;)Lcom/mediatek/gemini/DefaultSimPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    .line 273
    .restart local v2       #dlg:Landroid/app/Dialog;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 274
    const-string v6, "SimManagementSettings"

    const-string v7, "MMS stopped dismiss GPRS selection dialog"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .end local v2           #dlg:Landroid/app/Dialog;
    :cond_6
    move v6, v7

    .line 270
    goto :goto_1

    .line 277
    :cond_7
    sget-object v8, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_LOCK_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 278
    sget-object v8, Lcom/android/internal/telephony/gemini/GeminiPhone;->EXTRA_3G_SWITCH_LOCKED:Ljava/lang/String;

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 280
    .local v3, lockState:Z
    invoke-static {}, Lcom/mediatek/gemini/SimManagement;->access$1200()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 281
    iget-object v8, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #getter for: Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;
    invoke-static {v8}, Lcom/mediatek/gemini/SimManagement;->access$1600(Lcom/mediatek/gemini/SimManagement;)Lcom/mediatek/gemini/DefaultSimPreference;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #getter for: Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$1300(Lcom/mediatek/gemini/SimManagement;)Z

    move-result v9

    if-nez v9, :cond_8

    if-nez v3, :cond_8

    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #getter for: Lcom/mediatek/gemini/SimManagement;->mSimNum:I
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$1400(Lcom/mediatek/gemini/SimManagement;)I

    move-result v9

    if-eq v9, v6, :cond_8

    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #getter for: Lcom/mediatek/gemini/SimManagement;->mIs3GSwitchManualEnabled:Z
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$1500(Lcom/mediatek/gemini/SimManagement;)Z

    move-result v9

    if-eqz v9, :cond_8

    :goto_2
    invoke-virtual {v8, v6}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    .line 283
    const-string v6, "SimManagementSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIs3gOff="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #getter for: Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z
    invoke-static {v8}, Lcom/mediatek/gemini/SimManagement;->access$1300(Lcom/mediatek/gemini/SimManagement;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " lockState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move v6, v7

    .line 281
    goto :goto_2

    .line 286
    .end local v3           #lockState:Z
    :cond_9
    sget-object v8, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 288
    iget-object v7, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #getter for: Lcom/mediatek/gemini/SimManagement;->mTimerHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/mediatek/gemini/SimManagement;->access$1700(Lcom/mediatek/gemini/SimManagement;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x7d2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 289
    iget-object v7, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #calls: Lcom/mediatek/gemini/SimManagement;->removeProgDlg()V
    invoke-static {v7}, Lcom/mediatek/gemini/SimManagement;->access$100(Lcom/mediatek/gemini/SimManagement;)V

    .line 290
    iget-object v7, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #calls: Lcom/mediatek/gemini/SimManagement;->setStatusBarEnableStatus(Z)V
    invoke-static {v7, v6}, Lcom/mediatek/gemini/SimManagement;->access$400(Lcom/mediatek/gemini/SimManagement;Z)V

    .line 291
    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #calls: Lcom/mediatek/gemini/SimManagement;->updateVideoCallDefaultSIM()V
    invoke-static {v6}, Lcom/mediatek/gemini/SimManagement;->access$500(Lcom/mediatek/gemini/SimManagement;)V

    goto/16 :goto_0

    .line 292
    :cond_a
    const-string v6, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 293
    const-string v6, "simId"

    const/4 v8, -0x1

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 294
    .local v4, slotId:I
    const-string v6, "apnType"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, apnTypeList:Ljava/lang/String;
    #calls: Lcom/mediatek/gemini/SimManagement;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {p2}, Lcom/mediatek/gemini/SimManagement;->access$1800(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v5

    .line 296
    .local v5, state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string v6, "SimManagementSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "slotId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v6, "SimManagementSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v6, "SimManagementSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "apnTypeList="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #getter for: Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;
    invoke-static {v6}, Lcom/mediatek/gemini/SimManagement;->access$1900(Lcom/mediatek/gemini/SimManagement;)Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object v6

    iget-object v8, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    invoke-virtual {v8}, Landroid/app/Fragment;->isResumed()Z

    move-result v8

    invoke-interface {v6, p2, v8}, Lcom/mediatek/settings/ext/ISimManagementExt;->dealWithDataConnChanged(Landroid/content/Intent;Z)V

    .line 302
    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v5, v6, :cond_b

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v5, v6, :cond_1

    .line 304
    :cond_b
    const-string v6, "default"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 305
    const-string v6, "SimManagementSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "****the slot "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mIsDataConnectActing="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #getter for: Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$200(Lcom/mediatek/gemini/SimManagement;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #getter for: Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z
    invoke-static {v6}, Lcom/mediatek/gemini/SimManagement;->access$200(Lcom/mediatek/gemini/SimManagement;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 308
    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #getter for: Lcom/mediatek/gemini/SimManagement;->mTimerHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/mediatek/gemini/SimManagement;->access$1700(Lcom/mediatek/gemini/SimManagement;)Landroid/os/Handler;

    move-result-object v6

    const/16 v8, 0x7d0

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 309
    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #calls: Lcom/mediatek/gemini/SimManagement;->removeProgDlg()V
    invoke-static {v6}, Lcom/mediatek/gemini/SimManagement;->access$100(Lcom/mediatek/gemini/SimManagement;)V

    .line 310
    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #setter for: Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z
    invoke-static {v6, v7}, Lcom/mediatek/gemini/SimManagement;->access$202(Lcom/mediatek/gemini/SimManagement;Z)Z

    goto/16 :goto_0

    .line 315
    .end local v1           #apnTypeList:Ljava/lang/String;
    .end local v4           #slotId:I
    .end local v5           #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_c
    const-string v6, "com.mediatek.systemui.net.action.ACTION_DATA_USAGE_DISABLED_DIALOG_OK"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 316
    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #getter for: Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z
    invoke-static {v6}, Lcom/mediatek/gemini/SimManagement;->access$200(Lcom/mediatek/gemini/SimManagement;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 317
    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #setter for: Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z
    invoke-static {v6, v7}, Lcom/mediatek/gemini/SimManagement;->access$202(Lcom/mediatek/gemini/SimManagement;Z)Z

    .line 318
    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    #calls: Lcom/mediatek/gemini/SimManagement;->removeProgDlg()V
    invoke-static {v6}, Lcom/mediatek/gemini/SimManagement;->access$100(Lcom/mediatek/gemini/SimManagement;)V

    goto/16 :goto_0
.end method
