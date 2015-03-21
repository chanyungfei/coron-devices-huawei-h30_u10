.class Lcom/baidu/fm/FMRadio$openTask;
.super Landroid/os/AsyncTask;
.source "FMRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "openTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/FMRadio;


# direct methods
.method constructor <init>(Lcom/baidu/fm/FMRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 1963
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$openTask;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 1982
    const/4 v0, 0x0

    .line 1983
    .local v0, bStatus:Z
    aget-object v2, p1, v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1984
    .local v1, freq:I
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openTask, onPreExecute, freq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    const/16 v2, 0x36b

    if-lt v1, v2, :cond_0

    const/16 v2, 0x438

    if-le v1, v2, :cond_1

    .line 1987
    :cond_0
    const/16 v1, 0x36b

    .line 1990
    :cond_1
    const/16 v2, -0x10

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1991
    iget-object v2, p0, Lcom/baidu/fm/FMRadio$openTask;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->isDeviceOpen()Z
    invoke-static {v2}, Lcom/baidu/fm/FMRadio;->access$2600(Lcom/baidu/fm/FMRadio;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1992
    iget-object v2, p0, Lcom/baidu/fm/FMRadio$openTask;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->openDevice()Z
    invoke-static {v2}, Lcom/baidu/fm/FMRadio;->access$3100(Lcom/baidu/fm/FMRadio;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1993
    const-string v2, "FMRadioApp"

    const-string v3, "Error: opendev failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 2001
    :goto_0
    return-object v2

    .line 1998
    :cond_2
    iget-object v2, p0, Lcom/baidu/fm/FMRadio$openTask;->this$0:Lcom/baidu/fm/FMRadio;

    int-to-float v3, v1

    const/high16 v4, 0x4120

    div-float/2addr v3, v4

    #calls: Lcom/baidu/fm/FMRadio;->powerUp(F)Z
    invoke-static {v2, v3}, Lcom/baidu/fm/FMRadio;->access$3200(Lcom/baidu/fm/FMRadio;F)Z

    move-result v0

    .line 1999
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2001
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1963
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/fm/FMRadio$openTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 1966
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 1967
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 2007
    const-string v0, "FMRadioApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openTask, onPostExecute, result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2011
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$openTask;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->isAntennaAvailable()Z
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$1000(Lcom/baidu/fm/FMRadio;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2012
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$openTask;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->disableRadio()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$3300(Lcom/baidu/fm/FMRadio;)V

    .line 2013
    const-string v0, "FMRadioApp"

    const-string v1, "power on compelete, no antenna"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$openTask;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-virtual {v0}, Lcom/baidu/fm/FMRadio;->finish()V

    .line 2045
    :goto_0
    return-void

    .line 2018
    :cond_0
    invoke-static {}, Lcom/baidu/fm/FMRadio;->access$100()Lcom/baidu/fm/IFMRadioService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2019
    const-string v0, "FMRadioApp"

    const-string v1, "openTask, app maybe destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2023
    :cond_1
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$openTask;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->cleanupTimeoutHandler()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$3400(Lcom/baidu/fm/FMRadio;)V

    .line 2024
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$openTask;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mTurnOnDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$2400(Lcom/baidu/fm/FMRadio;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2025
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$openTask;->this$0:Lcom/baidu/fm/FMRadio;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/baidu/fm/FMRadio;->removeDialog(I)V

    .line 2026
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$openTask;->this$0:Lcom/baidu/fm/FMRadio;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/fm/FMRadio;->mTurnOnDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/baidu/fm/FMRadio;->access$2402(Lcom/baidu/fm/FMRadio;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 2029
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2030
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$openTask;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$1500(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMPersistence;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/fm/FMRadio$openTask;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$1500(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMPersistence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/fm/FMPersistence;->getIfFirstLoad()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2031
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$openTask;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->launchScan()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$1400(Lcom/baidu/fm/FMRadio;)V

    .line 2038
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$openTask;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->enableRadioOnOffUI()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$800(Lcom/baidu/fm/FMRadio;)V

    .line 2039
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$openTask;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-virtual {v0}, Lcom/baidu/fm/FMRadio;->updateMuteState()V

    goto :goto_0

    .line 2034
    :cond_4
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$openTask;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$600(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2035
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$openTask;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$600(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    move-result-object v0

    #calls: Lcom/baidu/fm/FMRadio$FrequencyIndicator;->tuneFrequency()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->access$3500(Lcom/baidu/fm/FMRadio$FrequencyIndicator;)V

    goto :goto_1

    .line 2042
    :cond_5
    const-string v0, "FMRadioApp"

    const-string v1, "power on failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$openTask;->this$0:Lcom/baidu/fm/FMRadio;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/baidu/fm/FMRadio;->showDialog(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1963
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/fm/FMRadio$openTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 1972
    const-string v0, "FMRadioApp"

    const-string v1, "openTask, onPreExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1977
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$openTask;->this$0:Lcom/baidu/fm/FMRadio;

    const/4 v1, 0x2

    const/16 v2, 0x2ee0

    #calls: Lcom/baidu/fm/FMRadio;->postTimeoutHandler(II)V
    invoke-static {v0, v1, v2}, Lcom/baidu/fm/FMRadio;->access$3000(Lcom/baidu/fm/FMRadio;II)V

    .line 1978
    return-void
.end method
