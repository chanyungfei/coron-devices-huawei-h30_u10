.class Lcom/baidu/fm/FMRadio$20;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/FMRadio;


# direct methods
.method constructor <init>(Lcom/baidu/fm/FMRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 1908
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$20;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 1911
    invoke-static {p2}, Lcom/baidu/fm/IFMRadioService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/baidu/fm/IFMRadioService;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$102(Lcom/baidu/fm/IFMRadioService;)Lcom/baidu/fm/IFMRadioService;

    .line 1912
    invoke-static {}, Lcom/baidu/fm/FMRadio;->access$100()Lcom/baidu/fm/IFMRadioService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1913
    const-string v0, "FMRadioApp"

    const-string v1, "bind to service failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$20;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-virtual {v0}, Lcom/baidu/fm/FMRadio;->finish()V

    .line 1954
    :goto_0
    return-void

    .line 1917
    :cond_0
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$20;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->isDeviceOpen()Z
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$2600(Lcom/baidu/fm/FMRadio;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1918
    const-string v0, "FMRadioApp"

    const-string v1, "FM service is not opened."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$20;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->isAntennaAvailable()Z
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$1000(Lcom/baidu/fm/FMRadio;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1921
    const-string v0, "FMRadioApp"

    const-string v1, "ServiceConnection: No Headset when power on"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$20;->this$0:Lcom/baidu/fm/FMRadio;

    const/4 v1, 0x1

    #setter for: Lcom/baidu/fm/FMRadio;->mIsShowNoAntenna:Z
    invoke-static {v0, v1}, Lcom/baidu/fm/FMRadio;->access$902(Lcom/baidu/fm/FMRadio;Z)Z

    .line 1923
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$20;->this$0:Lcom/baidu/fm/FMRadio;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/baidu/fm/FMRadio;->showDialog(I)V

    goto :goto_0

    .line 1927
    :cond_1
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$20;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->enableRadio()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$1100(Lcom/baidu/fm/FMRadio;)V

    goto :goto_0

    .line 1931
    :cond_2
    invoke-static {}, Lcom/baidu/fm/FMRadio;->access$100()Lcom/baidu/fm/IFMRadioService;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/fm/FMRadio$20;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->isPowerUp()Z
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$2500(Lcom/baidu/fm/FMRadio;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1932
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$20;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$600(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1933
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$20;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$600(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->updateTextName()V

    .line 1934
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$20;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$600(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/fm/FMRadio$20;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->getFrequency()I
    invoke-static {v1}, Lcom/baidu/fm/FMRadio;->access$2700(Lcom/baidu/fm/FMRadio;)I

    move-result v1

    #calls: Lcom/baidu/fm/FMRadio$FrequencyIndicator;->setCurrentFrequency(I)V
    invoke-static {v0, v1}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->access$2800(Lcom/baidu/fm/FMRadio$FrequencyIndicator;I)V

    .line 1935
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$20;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$600(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    move-result-object v0

    #calls: Lcom/baidu/fm/FMRadio$FrequencyIndicator;->updateUI()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->access$2900(Lcom/baidu/fm/FMRadio$FrequencyIndicator;)V

    .line 1937
    :cond_3
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$20;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->enableRadioOnOffUI()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$800(Lcom/baidu/fm/FMRadio;)V

    .line 1939
    :cond_4
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$20;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-virtual {v0}, Lcom/baidu/fm/FMRadio;->updateMuteState()V

    .line 1940
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$20;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-virtual {v0}, Lcom/baidu/fm/FMRadio;->updateAudioPathButton()V

    .line 1941
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$20;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->enableRadioOnOffUI()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$800(Lcom/baidu/fm/FMRadio;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "classname"

    .prologue
    .line 1957
    return-void
.end method
