.class Lcom/baidu/fm/FMRadioService$3;
.super Ljava/lang/Object;
.source "FMRadioService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/FMRadioService;


# direct methods
.method constructor <init>(Lcom/baidu/fm/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/baidu/fm/FMRadioService$3;->this$0:Lcom/baidu/fm/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v1, 0x0

    .line 348
    const/16 v2, 0x64

    if-ne v2, p2, :cond_0

    .line 349
    const-string v2, "FMService"

    const-string v3, "onError: MEDIA_SERVER_DIED"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService$3;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mMP:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/baidu/fm/FMRadioService;->access$800(Lcom/baidu/fm/FMRadioService;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 351
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService$3;->this$0:Lcom/baidu/fm/FMRadioService;

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Lcom/baidu/fm/FMRadioService;->mMP:Landroid/media/MediaPlayer;
    invoke-static {v2, v3}, Lcom/baidu/fm/FMRadioService;->access$802(Lcom/baidu/fm/FMRadioService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 353
    :try_start_0
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService$3;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mMP:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/baidu/fm/FMRadioService;->access$800(Lcom/baidu/fm/FMRadioService;)Landroid/media/MediaPlayer;

    move-result-object v2

    const-string v3, "MEDIATEK://MEDIAPLAYER_PLAYERTYPE_FM"

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 354
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService$3;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mMP:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/baidu/fm/FMRadioService;->access$800(Lcom/baidu/fm/FMRadioService;)Landroid/media/MediaPlayer;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 355
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService$3;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mMP:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/baidu/fm/FMRadioService;->access$800(Lcom/baidu/fm/FMRadioService;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 356
    iget-object v2, p0, Lcom/baidu/fm/FMRadioService$3;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mMP:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/baidu/fm/FMRadioService;->access$800(Lcom/baidu/fm/FMRadioService;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 373
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "FMService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 360
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 361
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "FMService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 363
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 364
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v2, "FMService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
