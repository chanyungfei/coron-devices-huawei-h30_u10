.class Lcom/baidu/fm/FMRadio$ServiceBinder;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceBinder"
.end annotation


# instance fields
.field mCallback:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Landroid/content/ServiceConnection;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 1747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1748
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    .line 1749
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "className"
    .parameter "service"

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 1755
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 1757
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 1760
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 1761
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 1764
    :cond_0
    return-void
.end method
