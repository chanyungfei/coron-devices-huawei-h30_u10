.class Lcom/baidu/fm/FMRadio$36;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Lcom/baidu/fm/widget/TunnerView$OnTunnerScrollListener;


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
    .line 2968
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$36;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTunnerScrollBegin()V
    .locals 0

    .prologue
    .line 2971
    return-void
.end method

.method public onTunnerScrollEnd()V
    .locals 0

    .prologue
    .line 2990
    return-void
.end method

.method public onTunnerScrolling(I)V
    .locals 4
    .parameter "distance"

    .prologue
    .line 2974
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$36;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-virtual {v1}, Lcom/baidu/fm/FMRadio;->getCurrentFrequency()I

    move-result v1

    mul-int/lit8 v2, p1, 0x1

    add-int v0, v1, v2

    .line 2975
    .local v0, newFreq:I
    const-string v1, "FMRadioApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTunnerScrolling newFreq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    const/16 v1, 0x36b

    if-ge v0, v1, :cond_0

    .line 2978
    const/16 v0, 0x36b

    .line 2980
    :cond_0
    const/16 v1, 0x438

    if-le v0, v1, :cond_1

    .line 2981
    const/16 v0, 0x438

    .line 2983
    :cond_1
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$36;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mTuneTask:Lcom/baidu/fm/FMRadio$TuneRadioTask;
    invoke-static {v1}, Lcom/baidu/fm/FMRadio;->access$2200(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMRadio$TuneRadioTask;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2984
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$36;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mTuneTask:Lcom/baidu/fm/FMRadio$TuneRadioTask;
    invoke-static {v1}, Lcom/baidu/fm/FMRadio;->access$2200(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMRadio$TuneRadioTask;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/fm/FMRadio$TuneRadioTask;->notifyUpdate(I)V

    .line 2986
    :cond_2
    return-void
.end method
