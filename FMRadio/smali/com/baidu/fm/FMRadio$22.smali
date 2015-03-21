.class Lcom/baidu/fm/FMRadio$22;
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
    .line 2259
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$22;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2261
    const-string v0, "FMRadioApp"

    const-string v1, "onFinishActivity msg, app exit "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$22;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->disableRadio()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$3300(Lcom/baidu/fm/FMRadio;)V

    .line 2263
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$22;->this$0:Lcom/baidu/fm/FMRadio;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/baidu/fm/FMRadio;->setResult(I)V

    .line 2264
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$22;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->cleanupTimeoutHandler()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$3400(Lcom/baidu/fm/FMRadio;)V

    .line 2265
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$22;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-virtual {v0}, Lcom/baidu/fm/FMRadio;->finish()V

    .line 2266
    return-void
.end method
