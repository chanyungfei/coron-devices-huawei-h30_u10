.class Lcom/baidu/fm/FMRadio$35;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Lcom/baidu/fm/widget/TunnerView$OnButtonRepeatListener;


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
    .line 2951
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$35;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonRepeat(Landroid/view/View;IJI)V
    .locals 2
    .parameter "v"
    .parameter "whichId"
    .parameter "duration"
    .parameter "repeatCount"

    .prologue
    .line 2954
    packed-switch p2, :pswitch_data_0

    .line 2962
    const-string v0, "FMRadioApp"

    const-string v1, "onRepeat: unkown view listener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    :goto_0
    return-void

    .line 2956
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$35;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->onFineTunePrev()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$2000(Lcom/baidu/fm/FMRadio;)V

    goto :goto_0

    .line 2959
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$35;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->onFineTuneNext()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$1900(Lcom/baidu/fm/FMRadio;)V

    goto :goto_0

    .line 2954
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
