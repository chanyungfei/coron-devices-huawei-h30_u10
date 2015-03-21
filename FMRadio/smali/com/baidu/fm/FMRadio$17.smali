.class Lcom/baidu/fm/FMRadio$17;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/fm/FMRadio;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/FMRadio;

.field final synthetic val$freqString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/fm/FMRadio;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1357
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$17;->this$0:Lcom/baidu/fm/FMRadio;

    iput-object p2, p0, Lcom/baidu/fm/FMRadio$17;->val$freqString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$17;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$1500(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMPersistence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/fm/FMPersistence;->update()V

    .line 1360
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$17;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$600(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/fm/FMRadio$17;->val$freqString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->tune(Ljava/lang/String;)V

    .line 1361
    return-void
.end method
