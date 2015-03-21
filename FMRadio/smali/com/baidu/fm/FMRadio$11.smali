.class Lcom/baidu/fm/FMRadio$11;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/fm/FMRadio;->createCloseTimeDialog(I)Landroid/app/Dialog;
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
    .line 1217
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$11;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v8, 0x0

    .line 1219
    iget-object v4, p0, Lcom/baidu/fm/FMRadio$11;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-virtual {v4}, Lcom/baidu/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 1220
    .local v0, arrayValue:[I
    iget-object v4, p0, Lcom/baidu/fm/FMRadio$11;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mAutoCloseTimeIndex:I
    invoke-static {v4}, Lcom/baidu/fm/FMRadio;->access$1200(Lcom/baidu/fm/FMRadio;)I

    move-result v4

    aget v4, v0, v4

    const v5, 0xea60

    mul-int/2addr v4, v5

    int-to-long v2, v4

    .line 1222
    .local v2, time:J
    :try_start_0
    invoke-static {}, Lcom/baidu/fm/FMRadio;->access$100()Lcom/baidu/fm/IFMRadioService;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/baidu/fm/IFMRadioService;->setPlayTime(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1226
    :goto_0
    iget-object v4, p0, Lcom/baidu/fm/FMRadio$11;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mAutoCloseTimeIndex:I
    invoke-static {v4}, Lcom/baidu/fm/FMRadio;->access$1200(Lcom/baidu/fm/FMRadio;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 1227
    iget-object v4, p0, Lcom/baidu/fm/FMRadio$11;->this$0:Lcom/baidu/fm/FMRadio;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/baidu/fm/FMRadio$11;->this$0:Lcom/baidu/fm/FMRadio;

    const v7, 0x7f070059

    invoke-virtual {v6, v7}, Lcom/baidu/fm/FMRadio;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/fm/FMRadio$11;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mAutoCloseTimeIndex:I
    invoke-static {v6}, Lcom/baidu/fm/FMRadio;->access$1200(Lcom/baidu/fm/FMRadio;)I

    move-result v6

    aget v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/fm/FMRadio$11;->this$0:Lcom/baidu/fm/FMRadio;

    const v7, 0x7f07005a

    invoke-virtual {v6, v7}, Lcom/baidu/fm/FMRadio;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1233
    :goto_1
    return-void

    .line 1223
    :catch_0
    move-exception v1

    .line 1224
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1231
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Lcom/baidu/fm/FMRadio$11;->this$0:Lcom/baidu/fm/FMRadio;

    const v5, 0x7f07005b

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
