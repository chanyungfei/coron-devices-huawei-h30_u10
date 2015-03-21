.class final Lcom/baidu/fm/FMRadio$TextFreqButtonHandler;
.super Landroid/os/Handler;
.source "FMRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TextFreqButtonHandler"
.end annotation


# instance fields
.field private mDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/DialogInterface;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/baidu/fm/FMRadio;


# direct methods
.method public constructor <init>(Lcom/baidu/fm/FMRadio;Landroid/content/DialogInterface;)V
    .locals 1
    .parameter
    .parameter "dialog"

    .prologue
    .line 744
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$TextFreqButtonHandler;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 745
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/fm/FMRadio$TextFreqButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    .line 746
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 750
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 757
    :goto_0
    return-void

    .line 754
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/baidu/fm/FMRadio$TextFreqButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    .line 750
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
