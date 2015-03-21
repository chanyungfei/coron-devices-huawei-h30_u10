.class public Lcom/baidu/fm/FMMediaButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FMMediaButtonIntentReceiver.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "FMMediaButtonIntentReceiver"

.field public static final MSG_MEDIA_BUTTON_NEXT:I = 0x3ea

.field public static final MSG_MEDIA_BUTTON_PAUSE:I = 0x3e9

.field public static final MSG_MEDIA_BUTTON_PREVIOUS:I = 0x3eb

.field public static final MediaButtonIntent:Ljava/lang/String; = "com.baidu.yi.fm.service.MediaButtonIntent"

.field public static final MediaButtonIntent_CMD:Ljava/lang/String; = "command"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 43
    const-string v5, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 44
    const-string v5, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 46
    .local v2, event:Landroid/view/KeyEvent;
    if-nez v2, :cond_1

    .line 90
    .end local v2           #event:Landroid/view/KeyEvent;
    :cond_0
    :goto_0
    return-void

    .line 50
    .restart local v2       #event:Landroid/view/KeyEvent;
    :cond_1
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 51
    .local v3, keycode:I
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 58
    .local v0, action:I
    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    .line 59
    const/4 v1, 0x0

    .line 61
    .local v1, command:I
    sparse-switch v3, :sswitch_data_0

    .line 76
    :goto_1
    if-eqz v1, :cond_2

    .line 80
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.baidu.yi.fm.service.MediaButtonIntent"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v4, sentIntent:Landroid/content/Intent;
    const-string v5, "command"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 86
    .end local v1           #command:I
    .end local v4           #sentIntent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/fm/FMMediaButtonIntentReceiver;->isOrderedBroadcast()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/baidu/fm/FMMediaButtonIntentReceiver;->abortBroadcast()V

    goto :goto_0

    .line 64
    .restart local v1       #command:I
    :sswitch_0
    const/16 v1, 0x3e9

    .line 65
    goto :goto_1

    .line 68
    :sswitch_1
    const/16 v1, 0x3ea

    .line 69
    goto :goto_1

    .line 72
    :sswitch_2
    const/16 v1, 0x3eb

    goto :goto_1

    .line 61
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x57 -> :sswitch_1
        0x58 -> :sswitch_2
    .end sparse-switch
.end method
