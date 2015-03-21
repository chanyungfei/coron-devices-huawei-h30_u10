.class Lcom/baidu/fm/test/TestFM$3;
.super Ljava/lang/Thread;
.source "TestFM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/fm/test/TestFM;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/test/TestFM;


# direct methods
.method constructor <init>(Lcom/baidu/fm/test/TestFM;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/baidu/fm/test/TestFM$3;->this$0:Lcom/baidu/fm/test/TestFM;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 74
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->opendev()Z

    .line 75
    iget-object v1, p0, Lcom/baidu/fm/test/TestFM$3;->this$0:Lcom/baidu/fm/test/TestFM;

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Lcom/baidu/fm/test/TestFM;->mMP:Landroid/media/MediaPlayer;
    invoke-static {v1, v2}, Lcom/baidu/fm/test/TestFM;->access$402(Lcom/baidu/fm/test/TestFM;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/baidu/fm/test/TestFM$3;->this$0:Lcom/baidu/fm/test/TestFM;

    #getter for: Lcom/baidu/fm/test/TestFM;->mMP:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/baidu/fm/test/TestFM;->access$400(Lcom/baidu/fm/test/TestFM;)Landroid/media/MediaPlayer;

    move-result-object v1

    const-string v2, "MEDIATEK://MEDIAPLAYER_PLAYERTYPE_FM"

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 88
    iget-object v1, p0, Lcom/baidu/fm/test/TestFM$3;->this$0:Lcom/baidu/fm/test/TestFM;

    #getter for: Lcom/baidu/fm/test/TestFM;->mMP:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/baidu/fm/test/TestFM;->access$400(Lcom/baidu/fm/test/TestFM;)Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 89
    iget-object v1, p0, Lcom/baidu/fm/test/TestFM$3;->this$0:Lcom/baidu/fm/test/TestFM;

    #calls: Lcom/baidu/fm/test/TestFM;->enableFMAudio(Z)V
    invoke-static {v1, v3}, Lcom/baidu/fm/test/TestFM;->access$500(Lcom/baidu/fm/test/TestFM;Z)V

    .line 90
    iget-object v1, p0, Lcom/baidu/fm/test/TestFM$3;->this$0:Lcom/baidu/fm/test/TestFM;

    #calls: Lcom/baidu/fm/test/TestFM;->isHeadset()Z
    invoke-static {v1}, Lcom/baidu/fm/test/TestFM;->access$600(Lcom/baidu/fm/test/TestFM;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/baidu/fm/test/TestFM$3;->this$0:Lcom/baidu/fm/test/TestFM;

    #calls: Lcom/baidu/fm/test/TestFM;->setForceUseSpeaker(Z)V
    invoke-static {v1, v3}, Lcom/baidu/fm/test/TestFM;->access$700(Lcom/baidu/fm/test/TestFM;Z)V

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/baidu/fm/test/TestFM$3;->this$0:Lcom/baidu/fm/test/TestFM;

    #getter for: Lcom/baidu/fm/test/TestFM;->mFrequency:F
    invoke-static {v1}, Lcom/baidu/fm/test/TestFM;->access$200(Lcom/baidu/fm/test/TestFM;)F

    move-result v1

    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioNative;->powerup(F)Z

    .line 94
    iget-object v1, p0, Lcom/baidu/fm/test/TestFM$3;->this$0:Lcom/baidu/fm/test/TestFM;

    #getter for: Lcom/baidu/fm/test/TestFM;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/baidu/fm/test/TestFM;->access$800(Lcom/baidu/fm/test/TestFM;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 95
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "FM radio service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 82
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "FM radio service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 85
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v1, "FM radio service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
