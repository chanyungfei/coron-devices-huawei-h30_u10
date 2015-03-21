.class Lcom/baidu/fm/FMRadio$FMRadioButtonsListener;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FMRadioButtonsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/FMRadio;


# direct methods
.method private constructor <init>(Lcom/baidu/fm/FMRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 1429
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$FMRadioButtonsListener;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/fm/FMRadio;Lcom/baidu/fm/FMRadio$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1429
    invoke-direct {p0, p1}, Lcom/baidu/fm/FMRadio$FMRadioButtonsListener;-><init>(Lcom/baidu/fm/FMRadio;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1432
    const/4 v0, 0x5

    .line 1433
    .local v0, index:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1456
    :cond_0
    :goto_0
    return-void

    .line 1435
    :sswitch_0
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$FMRadioButtonsListener;->this$0:Lcom/baidu/fm/FMRadio;

    iget-object v1, v1, Lcom/baidu/fm/FMRadio;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1436
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$FMRadioButtonsListener;->this$0:Lcom/baidu/fm/FMRadio;

    iget-object v1, v1, Lcom/baidu/fm/FMRadio;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/baidu/fm/FMRadio$FMRadioButtonsListener;->this$0:Lcom/baidu/fm/FMRadio;

    iget-object v2, v2, Lcom/baidu/fm/FMRadio;->mOnMediaButtonNext:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1440
    :sswitch_1
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$FMRadioButtonsListener;->this$0:Lcom/baidu/fm/FMRadio;

    iget-object v1, v1, Lcom/baidu/fm/FMRadio;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1441
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$FMRadioButtonsListener;->this$0:Lcom/baidu/fm/FMRadio;

    iget-object v1, v1, Lcom/baidu/fm/FMRadio;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/baidu/fm/FMRadio$FMRadioButtonsListener;->this$0:Lcom/baidu/fm/FMRadio;

    iget-object v2, v2, Lcom/baidu/fm/FMRadio;->mOnMediaButtonPrevious:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1445
    :sswitch_2
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$FMRadioButtonsListener;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->onStationListBtnClick()V
    invoke-static {v1}, Lcom/baidu/fm/FMRadio;->access$1600(Lcom/baidu/fm/FMRadio;)V

    goto :goto_0

    .line 1448
    :sswitch_3
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$FMRadioButtonsListener;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->onMenuBtnClick()V
    invoke-static {v1}, Lcom/baidu/fm/FMRadio;->access$1700(Lcom/baidu/fm/FMRadio;)V

    goto :goto_0

    .line 1451
    :sswitch_4
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$FMRadioButtonsListener;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->onFavoriteStationBtnClick()V
    invoke-static {v1}, Lcom/baidu/fm/FMRadio;->access$1800(Lcom/baidu/fm/FMRadio;)V

    goto :goto_0

    .line 1433
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090024 -> :sswitch_2
        0x7f090035 -> :sswitch_1
        0x7f090037 -> :sswitch_0
        0x7f090045 -> :sswitch_4
        0x7f090047 -> :sswitch_3
    .end sparse-switch
.end method
