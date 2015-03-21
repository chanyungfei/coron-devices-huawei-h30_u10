.class Lcom/baidu/fm/FMRadio$32;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 2389
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$32;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2391
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$32;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->isPowerUp()Z
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$2500(Lcom/baidu/fm/FMRadio;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/fm/FMRadio$32;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->isAntennaAvailable()Z
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$1000(Lcom/baidu/fm/FMRadio;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/fm/FMRadio$32;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mIsScaning:Z
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$4100(Lcom/baidu/fm/FMRadio;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/fm/FMRadio$32;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mIsSeeking:Z
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$3700(Lcom/baidu/fm/FMRadio;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2405
    :cond_0
    :goto_0
    return-void

    .line 2396
    :cond_1
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$32;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$1500(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMPersistence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2397
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$32;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$1500(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMPersistence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/fm/FMPersistence;->update()V

    .line 2398
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$32;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$1500(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMPersistence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/fm/FMPersistence;->getStationInfoCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 2399
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$32;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->onPrevStationBtnClick()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$5200(Lcom/baidu/fm/FMRadio;)V

    goto :goto_0

    .line 2402
    :cond_2
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$32;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->onSeekPrevStationBtnClick()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$5300(Lcom/baidu/fm/FMRadio;)V

    goto :goto_0
.end method
