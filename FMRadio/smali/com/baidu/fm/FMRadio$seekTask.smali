.class Lcom/baidu/fm/FMRadio$seekTask;
.super Landroid/os/AsyncTask;
.source "FMRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "seekTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Float;",
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
    .line 2108
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$seekTask;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Float;
    .locals 4
    .parameter "params"

    .prologue
    .line 2130
    const/4 v2, 0x0

    .line 2131
    .local v2, ret:F
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2134
    .local v0, direction:Z
    :try_start_0
    invoke-static {}, Lcom/baidu/fm/FMRadio;->access$100()Lcom/baidu/fm/IFMRadioService;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/baidu/fm/IFMRadioService;->seek(Z)F

    move-result v2

    .line 2135
    invoke-static {}, Lcom/baidu/fm/FMRadio;->access$100()Lcom/baidu/fm/IFMRadioService;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/baidu/fm/IFMRadioService;->tune(F)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2140
    :goto_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    return-object v3

    .line 2137
    :catch_0
    move-exception v1

    .line 2138
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2108
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/fm/FMRadio$seekTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 2111
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 2112
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Float;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 2146
    const-string v0, "FMRadioApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTask, onPostExecute, result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2150
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$seekTask;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->cleanupTimeoutHandler()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$3400(Lcom/baidu/fm/FMRadio;)V

    .line 2152
    invoke-static {}, Lcom/baidu/fm/FMRadio;->access$100()Lcom/baidu/fm/IFMRadioService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2153
    const-string v0, "FMRadioApp"

    const-string v1, "seekTask, app maybe destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    :goto_0
    return-void

    .line 2157
    :cond_0
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$seekTask;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$3800(Lcom/baidu/fm/FMRadio;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2158
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$seekTask;->this$0:Lcom/baidu/fm/FMRadio;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/fm/FMRadio;->removeDialog(I)V

    .line 2159
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$seekTask;->this$0:Lcom/baidu/fm/FMRadio;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/fm/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/baidu/fm/FMRadio;->access$3802(Lcom/baidu/fm/FMRadio;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 2161
    :cond_1
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$seekTask;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$600(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x4120

    mul-float/2addr v1, v2

    float-to-int v1, v1

    #calls: Lcom/baidu/fm/FMRadio$FrequencyIndicator;->setCurrentFrequency(I)V
    invoke-static {v0, v1}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->access$2800(Lcom/baidu/fm/FMRadio$FrequencyIndicator;I)V

    .line 2162
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$seekTask;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$600(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    move-result-object v0

    #calls: Lcom/baidu/fm/FMRadio$FrequencyIndicator;->updateUI()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->access$2900(Lcom/baidu/fm/FMRadio$FrequencyIndicator;)V

    .line 2163
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$seekTask;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->enableRadioOnOffUI()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$800(Lcom/baidu/fm/FMRadio;)V

    .line 2165
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$seekTask;->this$0:Lcom/baidu/fm/FMRadio;

    iget-object v1, p0, Lcom/baidu/fm/FMRadio$seekTask;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->isMuted()Z
    invoke-static {v1}, Lcom/baidu/fm/FMRadio;->access$3900(Lcom/baidu/fm/FMRadio;)Z

    move-result v1

    #calls: Lcom/baidu/fm/FMRadio;->setMute(Z)I
    invoke-static {v0, v1}, Lcom/baidu/fm/FMRadio;->access$4000(Lcom/baidu/fm/FMRadio;Z)I

    .line 2166
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$seekTask;->this$0:Lcom/baidu/fm/FMRadio;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/fm/FMRadio;->mIsSeeking:Z
    invoke-static {v0, v1}, Lcom/baidu/fm/FMRadio;->access$3702(Lcom/baidu/fm/FMRadio;Z)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2108
    check-cast p1, Ljava/lang/Float;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/fm/FMRadio$seekTask;->onPostExecute(Ljava/lang/Float;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 2117
    const-string v0, "FMRadioApp"

    const-string v1, "seekTask, onPreExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2121
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$seekTask;->this$0:Lcom/baidu/fm/FMRadio;

    const/4 v1, 0x1

    #setter for: Lcom/baidu/fm/FMRadio;->mIsSeeking:Z
    invoke-static {v0, v1}, Lcom/baidu/fm/FMRadio;->access$3702(Lcom/baidu/fm/FMRadio;Z)Z

    .line 2122
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$seekTask;->this$0:Lcom/baidu/fm/FMRadio;

    const/4 v1, 0x6

    const/16 v2, 0x2ee0

    #calls: Lcom/baidu/fm/FMRadio;->postTimeoutHandler(II)V
    invoke-static {v0, v1, v2}, Lcom/baidu/fm/FMRadio;->access$3000(Lcom/baidu/fm/FMRadio;II)V

    .line 2123
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$seekTask;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$3800(Lcom/baidu/fm/FMRadio;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2124
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$seekTask;->this$0:Lcom/baidu/fm/FMRadio;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/fm/FMRadio;->showDialog(I)V

    .line 2126
    :cond_0
    return-void
.end method
