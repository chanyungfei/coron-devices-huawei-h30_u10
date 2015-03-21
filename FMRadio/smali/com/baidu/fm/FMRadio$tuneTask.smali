.class Lcom/baidu/fm/FMRadio$tuneTask;
.super Landroid/os/AsyncTask;
.source "FMRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "tuneTask"
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
    .line 2048
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$tuneTask;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 2067
    const/4 v0, 0x0

    .line 2068
    .local v0, bStatus:Z
    aget-object v2, p1, v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2069
    .local v1, freq:I
    const-string v2, "FMRadioApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tuneTask, onPreExecute, freq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    const/16 v2, 0x36b

    if-lt v1, v2, :cond_0

    const/16 v2, 0x438

    if-le v1, v2, :cond_1

    .line 2072
    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 2081
    :goto_0
    return-object v2

    .line 2075
    :cond_1
    iget-object v2, p0, Lcom/baidu/fm/FMRadio$tuneTask;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->isDeviceOpen()Z
    invoke-static {v2}, Lcom/baidu/fm/FMRadio;->access$2600(Lcom/baidu/fm/FMRadio;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/baidu/fm/FMRadio$tuneTask;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->isPowerUp()Z
    invoke-static {v2}, Lcom/baidu/fm/FMRadio;->access$2500(Lcom/baidu/fm/FMRadio;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2076
    :cond_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 2079
    :cond_3
    iget-object v2, p0, Lcom/baidu/fm/FMRadio$tuneTask;->this$0:Lcom/baidu/fm/FMRadio;

    int-to-float v3, v1

    const/high16 v4, 0x4120

    div-float/2addr v3, v4

    #calls: Lcom/baidu/fm/FMRadio;->tuneChannel(F)Z
    invoke-static {v2, v3}, Lcom/baidu/fm/FMRadio;->access$3600(Lcom/baidu/fm/FMRadio;F)Z

    move-result v0

    .line 2081
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2048
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/fm/FMRadio$tuneTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 2051
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 2052
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 2087
    const-string v0, "FMRadioApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tuneTask, onPostExecute, result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2090
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$tuneTask;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->cleanupTimeoutHandler()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$3400(Lcom/baidu/fm/FMRadio;)V

    .line 2091
    invoke-static {}, Lcom/baidu/fm/FMRadio;->access$100()Lcom/baidu/fm/IFMRadioService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2092
    const-string v0, "FMRadioApp"

    const-string v1, "tuneTask, app maybe destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    :goto_0
    return-void

    .line 2095
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2096
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$tuneTask;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$600(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/fm/FMRadio$tuneTask;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->getFrequency()I
    invoke-static {v1}, Lcom/baidu/fm/FMRadio;->access$2700(Lcom/baidu/fm/FMRadio;)I

    move-result v1

    #calls: Lcom/baidu/fm/FMRadio$FrequencyIndicator;->setCurrentFrequency(I)V
    invoke-static {v0, v1}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->access$2800(Lcom/baidu/fm/FMRadio$FrequencyIndicator;I)V

    .line 2097
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$tuneTask;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$600(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    move-result-object v0

    #calls: Lcom/baidu/fm/FMRadio$FrequencyIndicator;->updateUI()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->access$2900(Lcom/baidu/fm/FMRadio$FrequencyIndicator;)V

    .line 2098
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$tuneTask;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->enableRadioOnOffUI()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$800(Lcom/baidu/fm/FMRadio;)V

    .line 2104
    :goto_1
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$tuneTask;->this$0:Lcom/baidu/fm/FMRadio;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/fm/FMRadio;->mIsTuning:Z
    invoke-static {v0, v1}, Lcom/baidu/fm/FMRadio;->access$2102(Lcom/baidu/fm/FMRadio;Z)Z

    goto :goto_0

    .line 2101
    :cond_1
    const-string v0, "FMRadioApp"

    const-string v1, "tune on failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$tuneTask;->this$0:Lcom/baidu/fm/FMRadio;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/baidu/fm/FMRadio;->showDialog(I)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2048
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/fm/FMRadio$tuneTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2057
    const-string v0, "FMRadioApp"

    const-string v1, "tuneTask, onPreExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2060
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$tuneTask;->this$0:Lcom/baidu/fm/FMRadio;

    #setter for: Lcom/baidu/fm/FMRadio;->mIsTuning:Z
    invoke-static {v0, v2}, Lcom/baidu/fm/FMRadio;->access$2102(Lcom/baidu/fm/FMRadio;Z)Z

    .line 2062
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$tuneTask;->this$0:Lcom/baidu/fm/FMRadio;

    const/16 v1, 0x2ee0

    #calls: Lcom/baidu/fm/FMRadio;->postTimeoutHandler(II)V
    invoke-static {v0, v2, v1}, Lcom/baidu/fm/FMRadio;->access$3000(Lcom/baidu/fm/FMRadio;II)V

    .line 2063
    return-void
.end method
