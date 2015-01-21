.class final Lcom/mediatek/lbs/QuickGpsService$ServiceHandler;
.super Landroid/os/Handler;
.source "QuickGpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/QuickGpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/QuickGpsService;


# direct methods
.method public constructor <init>(Lcom/mediatek/lbs/QuickGpsService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/mediatek/lbs/QuickGpsService$ServiceHandler;->this$0:Lcom/mediatek/lbs/QuickGpsService;

    .line 172
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 173
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 180
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 185
    iget-object v0, p0, Lcom/mediatek/lbs/QuickGpsService$ServiceHandler;->this$0:Lcom/mediatek/lbs/QuickGpsService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/lbs/QuickGpsService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/lbs/QuickGpsService;->access$200(Lcom/mediatek/lbs/QuickGpsService;Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 182
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsService$ServiceHandler;->this$0:Lcom/mediatek/lbs/QuickGpsService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/lbs/QuickGpsService;->handleNewIntent(Landroid/content/Intent;I)V

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
