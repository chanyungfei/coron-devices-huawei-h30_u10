.class Lcom/baidu/fm/FMRadio$19;
.super Landroid/os/Handler;
.source "FMRadio.java"


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
    .line 1824
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$19;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v5, 0x65

    const/4 v4, 0x4

    .line 1827
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1851
    :cond_0
    :goto_0
    return-void

    .line 1829
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "TIME_OUT_CMD"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1831
    .local v0, timeOutCmd:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1832
    const-string v1, "FMRadioApp"

    const-string v2, "+++++++ power on timeout"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$19;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mCommandTimeoutHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/baidu/fm/FMRadio;->access$2300(Lcom/baidu/fm/FMRadio;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1834
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$19;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mTurnOnDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/baidu/fm/FMRadio;->access$2400(Lcom/baidu/fm/FMRadio;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1835
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$19;->this$0:Lcom/baidu/fm/FMRadio;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/baidu/fm/FMRadio;->removeDialog(I)V

    .line 1838
    :cond_1
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$19;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->isPowerUp()Z
    invoke-static {v1}, Lcom/baidu/fm/FMRadio;->access$2500(Lcom/baidu/fm/FMRadio;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1839
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$19;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-virtual {v1, v4}, Lcom/baidu/fm/FMRadio;->showDialog(I)V

    goto :goto_0

    .line 1842
    :cond_2
    if-lez v0, :cond_0

    .line 1843
    const-string v1, "FMRadioApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+++++ Cmd failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$19;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mCommandTimeoutHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/baidu/fm/FMRadio;->access$2300(Lcom/baidu/fm/FMRadio;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1845
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$19;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-virtual {v1, v4}, Lcom/baidu/fm/FMRadio;->showDialog(I)V

    goto :goto_0

    .line 1827
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
