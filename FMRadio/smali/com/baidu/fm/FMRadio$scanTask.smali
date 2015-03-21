.class Lcom/baidu/fm/FMRadio$scanTask;
.super Landroid/os/AsyncTask;
.source "FMRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "scanTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "[I>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/FMRadio;


# direct methods
.method constructor <init>(Lcom/baidu/fm/FMRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 2170
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$scanTask;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2170
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/fm/FMRadio$scanTask;->doInBackground([Ljava/lang/Boolean;)[I

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)[I
    .locals 3
    .parameter "params"

    .prologue
    .line 2192
    const/4 v1, 0x0

    .line 2195
    .local v1, iChannels:[I
    :try_start_0
    iget-object v2, p0, Lcom/baidu/fm/FMRadio$scanTask;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->startScan()[I
    invoke-static {v2}, Lcom/baidu/fm/FMRadio;->access$4300(Lcom/baidu/fm/FMRadio;)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2201
    :goto_0
    return-object v1

    .line 2197
    :catch_0
    move-exception v0

    .line 2198
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 2173
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 2174
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2170
    check-cast p1, [I

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/fm/FMRadio$scanTask;->onPostExecute([I)V

    return-void
.end method

.method protected onPostExecute([I)V
    .locals 3
    .parameter "result"

    .prologue
    .line 2207
    const-string v0, "FMRadioApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scanTask, onPostExecute, result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2210
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$scanTask;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->cleanupTimeoutHandler()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$3400(Lcom/baidu/fm/FMRadio;)V

    .line 2211
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$scanTask;->this$0:Lcom/baidu/fm/FMRadio;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/fm/FMRadio;->mIsScaning:Z
    invoke-static {v0, v1}, Lcom/baidu/fm/FMRadio;->access$4102(Lcom/baidu/fm/FMRadio;Z)Z

    .line 2213
    invoke-static {}, Lcom/baidu/fm/FMRadio;->access$100()Lcom/baidu/fm/IFMRadioService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2214
    const-string v0, "FMRadioApp"

    const-string v1, "scanTask, app maybe destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    :goto_0
    return-void

    .line 2218
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/fm/FMRadio$scanTask;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$1500(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMPersistence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2219
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$scanTask;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$1500(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMPersistence;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/fm/FMPersistence;->setStationList([I)V

    .line 2220
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$scanTask;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$1500(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMPersistence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/fm/FMPersistence;->saveIfDirty()V

    .line 2222
    :cond_1
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$scanTask;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mScanDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$4200(Lcom/baidu/fm/FMRadio;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2223
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$scanTask;->this$0:Lcom/baidu/fm/FMRadio;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/fm/FMRadio;->removeDialog(I)V

    .line 2224
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$scanTask;->this$0:Lcom/baidu/fm/FMRadio;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/fm/FMRadio;->mScanDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/baidu/fm/FMRadio;->access$4202(Lcom/baidu/fm/FMRadio;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 2226
    :cond_2
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$scanTask;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->onNextStationBtnClick()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$4400(Lcom/baidu/fm/FMRadio;)V

    .line 2227
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$scanTask;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$600(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    move-result-object v0

    #calls: Lcom/baidu/fm/FMRadio$FrequencyIndicator;->updateUI()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->access$2900(Lcom/baidu/fm/FMRadio$FrequencyIndicator;)V

    .line 2228
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$scanTask;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->enableRadioOnOffUI()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$800(Lcom/baidu/fm/FMRadio;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2179
    const-string v0, "FMRadioApp"

    const-string v1, "scanTask, onPreExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2183
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$scanTask;->this$0:Lcom/baidu/fm/FMRadio;

    #setter for: Lcom/baidu/fm/FMRadio;->mIsScaning:Z
    invoke-static {v0, v3}, Lcom/baidu/fm/FMRadio;->access$4102(Lcom/baidu/fm/FMRadio;Z)Z

    .line 2184
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$scanTask;->this$0:Lcom/baidu/fm/FMRadio;

    const/4 v1, 0x7

    const/16 v2, 0x61a8

    #calls: Lcom/baidu/fm/FMRadio;->postTimeoutHandler(II)V
    invoke-static {v0, v1, v2}, Lcom/baidu/fm/FMRadio;->access$3000(Lcom/baidu/fm/FMRadio;II)V

    .line 2185
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$scanTask;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mScanDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$4200(Lcom/baidu/fm/FMRadio;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2186
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$scanTask;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-virtual {v0, v3}, Lcom/baidu/fm/FMRadio;->showDialog(I)V

    .line 2188
    :cond_0
    return-void
.end method
