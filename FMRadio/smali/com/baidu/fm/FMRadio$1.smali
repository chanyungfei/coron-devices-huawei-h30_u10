.class Lcom/baidu/fm/FMRadio$1;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/fm/FMRadio;->onStart()V
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
    .line 267
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$1;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$1;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->initPersistence()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$000(Lcom/baidu/fm/FMRadio;)V

    .line 270
    invoke-static {}, Lcom/baidu/fm/FMRadio;->access$100()Lcom/baidu/fm/IFMRadioService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$1;->this$0:Lcom/baidu/fm/FMRadio;

    const/4 v1, 0x1

    #calls: Lcom/baidu/fm/FMRadio;->updateRadioUI(Z)V
    invoke-static {v0, v1}, Lcom/baidu/fm/FMRadio;->access$200(Lcom/baidu/fm/FMRadio;Z)V

    .line 273
    :cond_0
    return-void
.end method
