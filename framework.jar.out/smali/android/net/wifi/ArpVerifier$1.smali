.class Landroid/net/wifi/ArpVerifier$1;
.super Landroid/content/BroadcastReceiver;
.source "ArpVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ArpVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/ArpVerifier;


# direct methods
.method constructor <init>(Landroid/net/wifi/ArpVerifier;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Landroid/net/wifi/ArpVerifier$1;->this$0:Landroid/net/wifi/ArpVerifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 160
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    iget-object v2, p0, Landroid/net/wifi/ArpVerifier$1;->this$0:Landroid/net/wifi/ArpVerifier;

    const-string/jumbo v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    #setter for: Landroid/net/wifi/ArpVerifier;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2, v1}, Landroid/net/wifi/ArpVerifier;->access$002(Landroid/net/wifi/ArpVerifier;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 166
    sget-object v1, Landroid/net/wifi/ArpVerifier$2;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    iget-object v2, p0, Landroid/net/wifi/ArpVerifier$1;->this$0:Landroid/net/wifi/ArpVerifier;

    #getter for: Landroid/net/wifi/ArpVerifier;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Landroid/net/wifi/ArpVerifier;->access$000(Landroid/net/wifi/ArpVerifier;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 169
    :pswitch_0
    iget-object v1, p0, Landroid/net/wifi/ArpVerifier$1;->this$0:Landroid/net/wifi/ArpVerifier;

    #getter for: Landroid/net/wifi/ArpVerifier;->mClientHandler:Landroid/net/wifi/ArpVerifier$ClientHandler;
    invoke-static {v1}, Landroid/net/wifi/ArpVerifier;->access$100(Landroid/net/wifi/ArpVerifier;)Landroid/net/wifi/ArpVerifier$ClientHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Landroid/net/wifi/ArpVerifier$1;->this$0:Landroid/net/wifi/ArpVerifier;

    #getter for: Landroid/net/wifi/ArpVerifier;->mClientHandler:Landroid/net/wifi/ArpVerifier$ClientHandler;
    invoke-static {v1}, Landroid/net/wifi/ArpVerifier;->access$100(Landroid/net/wifi/ArpVerifier;)Landroid/net/wifi/ArpVerifier$ClientHandler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/ArpVerifier$ClientHandler;->monitorWifiNetworkState()V

    goto :goto_0

    .line 176
    :cond_2
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Landroid/net/wifi/ArpVerifier$1;->this$0:Landroid/net/wifi/ArpVerifier;

    const/4 v2, 0x2

    const/16 v3, 0x1388

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/net/wifi/ArpVerifier;->doArpTest(IIIZ)Z

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
