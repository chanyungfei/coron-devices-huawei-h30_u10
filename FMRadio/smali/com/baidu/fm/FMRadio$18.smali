.class Lcom/baidu/fm/FMRadio$18;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Lcom/baidu/fm/ImageViewButton$RepeatListener;


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
    .line 1462
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$18;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepeat(Landroid/view/View;JI)V
    .locals 2
    .parameter "v"
    .parameter "duration"
    .parameter "repeatCount"

    .prologue
    .line 1467
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1475
    const-string v0, "FMRadioApp"

    const-string v1, "onRepeat: unkown view listener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :goto_0
    return-void

    .line 1469
    :sswitch_0
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$18;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->onFineTuneNext()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$1900(Lcom/baidu/fm/FMRadio;)V

    goto :goto_0

    .line 1472
    :sswitch_1
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$18;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->onFineTunePrev()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$2000(Lcom/baidu/fm/FMRadio;)V

    goto :goto_0

    .line 1467
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090027 -> :sswitch_1
        0x7f090033 -> :sswitch_0
    .end sparse-switch
.end method
