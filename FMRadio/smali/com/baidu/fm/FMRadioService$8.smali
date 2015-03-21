.class Lcom/baidu/fm/FMRadioService$8;
.super Ljava/lang/Object;
.source "FMRadioService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1356
    iput-object p1, p0, Lcom/baidu/fm/FMRadioService$8;->this$0:Lcom/baidu/fm/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$8;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v0}, Lcom/baidu/fm/FMRadioService;->access$400(Lcom/baidu/fm/FMRadioService;)Lcom/baidu/fm/FMPersistence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1360
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$8;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v0}, Lcom/baidu/fm/FMRadioService;->access$400(Lcom/baidu/fm/FMRadioService;)Lcom/baidu/fm/FMPersistence;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/fm/FMRadioService$8;->this$0:Lcom/baidu/fm/FMRadioService;

    #getter for: Lcom/baidu/fm/FMRadioService;->miCurrentStation:I
    invoke-static {v1}, Lcom/baidu/fm/FMRadioService;->access$1700(Lcom/baidu/fm/FMRadioService;)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Lcom/baidu/fm/FMPersistence;->setCurrentStation(I)V

    .line 1362
    :cond_0
    iget-object v0, p0, Lcom/baidu/fm/FMRadioService$8;->this$0:Lcom/baidu/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/baidu/fm/FMRadioService;->startNotification()V

    .line 1363
    return-void
.end method
