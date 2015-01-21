.class Landroid/webkit/WebViewClassic$1;
.super Lcom/android/internal/view/IInputMethodStatusNotifier$Stub;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter

    .prologue
    .line 1733
    iput-object p1, p0, Landroid/webkit/WebViewClassic$1;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodStatusNotifier$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowHidden()V
    .locals 3

    .prologue
    .line 1742
    const-string/jumbo v0, "webview"

    const-string v1, "input method hidden"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    iget-object v0, p0, Landroid/webkit/WebViewClassic$1;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebViewClassic$1;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x9d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1744
    return-void
.end method

.method public onWindowShown()V
    .locals 2

    .prologue
    .line 1737
    const-string/jumbo v0, "webview"

    const-string v1, "input method shown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    return-void
.end method
