.class Lcom/baidu/fm/FMRadio$27;
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
    .line 2335
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$27;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2337
    const-string v0, ""

    .line 2338
    .local v0, str:Ljava/lang/String;
    invoke-static {}, Lcom/baidu/fm/FMRadio;->access$100()Lcom/baidu/fm/IFMRadioService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2339
    const-string v1, "FMRadioApp"

    const-string v2, "update radio text thread"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    :cond_0
    return-void
.end method
