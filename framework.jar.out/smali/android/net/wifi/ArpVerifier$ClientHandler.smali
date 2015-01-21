.class Landroid/net/wifi/ArpVerifier$ClientHandler;
.super Landroid/os/Handler;
.source "ArpVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ArpVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# static fields
.field private static final MSG_CHECK_WIFI_STATE:I = 0x7c

.field private static final MSG_DO_ARP_ASYNC:I = 0x7d

.field private static final THRESHOLD_NORMAL_CHECK_FAIL:I = 0x5

.field private static final TIME_CONFIRM_CHECK:I = 0x1388

.field private static final TIME_DEAD_CHECK:I = 0x1d4c0

.field private static final TIME_FIRST_CHECK:I = 0x7530

.field private static final TIME_HEART_CHECK:I = 0x7530

.field private static final TIME_NORMAL_CHECK:I = 0x3e8


# instance fields
.field private mArpRunning:Z

.field private mArpState:Landroid/net/wifi/ArpVerifier$ArpState;

.field private mNormalArpFail:I

.field final synthetic this$0:Landroid/net/wifi/ArpVerifier;


# direct methods
.method public constructor <init>(Landroid/net/wifi/ArpVerifier;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "looper"

    .prologue
    const/4 v0, 0x0

    .line 199
    iput-object p1, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->this$0:Landroid/net/wifi/ArpVerifier;

    .line 200
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 194
    iput v0, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->mNormalArpFail:I

    .line 195
    iput-boolean v0, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->mArpRunning:Z

    .line 197
    sget-object v0, Landroid/net/wifi/ArpVerifier$ArpState;->HEART_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    iput-object v0, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->mArpState:Landroid/net/wifi/ArpVerifier$ArpState;

    .line 201
    return-void
.end method

.method private checkWifiNetworkState(II)V
    .locals 4
    .parameter "token"
    .parameter "mode"

    .prologue
    .line 322
    const-string v1, "ArpVerifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check wifi state mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->this$0:Landroid/net/wifi/ArpVerifier;

    #calls: Landroid/net/wifi/ArpVerifier;->isConnectedToWifi()Z
    invoke-static {v1}, Landroid/net/wifi/ArpVerifier;->access$300(Landroid/net/wifi/ArpVerifier;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 324
    const-string v1, "ArpVerifier"

    const-string v2, "Notify network is not connected, need not to do ARP test."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    sget-object v1, Landroid/net/wifi/ArpVerifier$ArpState;->DONT_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    invoke-direct {p0, v1}, Landroid/net/wifi/ArpVerifier$ClientHandler;->transmitState(Landroid/net/wifi/ArpVerifier$ArpState;)V

    .line 328
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/ArpVerifier$ClientHandler;->isNeedCheck()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 329
    iget-object v1, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->this$0:Landroid/net/wifi/ArpVerifier;

    #calls: Landroid/net/wifi/ArpVerifier;->doArpTest(I)Z
    invoke-static {v1, p2}, Landroid/net/wifi/ArpVerifier;->access$800(Landroid/net/wifi/ArpVerifier;I)Z

    move-result v0

    .line 330
    .local v0, ret:Z
    if-nez v0, :cond_1

    .line 331
    iget-object v1, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->this$0:Landroid/net/wifi/ArpVerifier;

    const/4 v2, 0x2

    #calls: Landroid/net/wifi/ArpVerifier;->pingGateway(I)Z
    invoke-static {v1, v2}, Landroid/net/wifi/ArpVerifier;->access$900(Landroid/net/wifi/ArpVerifier;I)Z

    move-result v0

    .line 333
    :cond_1
    invoke-direct {p0, p1, v0}, Landroid/net/wifi/ArpVerifier$ClientHandler;->handleCheckResult(IZ)V

    .line 335
    .end local v0           #ret:Z
    :cond_2
    return-void
.end method

.method private doCheckWifiNetworkState(I)V
    .locals 5
    .parameter "token"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x7c

    .line 277
    iget-object v1, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->mArpState:Landroid/net/wifi/ArpVerifier$ArpState;

    sget-object v2, Landroid/net/wifi/ArpVerifier$ArpState;->DONT_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    if-ne v1, v2, :cond_1

    .line 278
    iget-object v1, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->this$0:Landroid/net/wifi/ArpVerifier;

    invoke-static {v1}, Landroid/net/wifi/ArpVerifier;->access$208(Landroid/net/wifi/ArpVerifier;)I

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->mArpState:Landroid/net/wifi/ArpVerifier$ArpState;

    sget-object v2, Landroid/net/wifi/ArpVerifier$ArpState;->HEART_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    if-ne v1, v2, :cond_2

    .line 280
    invoke-static {p0, v3, p1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 281
    .local v0, newMsg:Landroid/os/Message;
    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 282
    .end local v0           #newMsg:Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->mArpState:Landroid/net/wifi/ArpVerifier$ArpState;

    sget-object v2, Landroid/net/wifi/ArpVerifier$ArpState;->NORMAL_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    if-ne v1, v2, :cond_3

    .line 283
    invoke-static {p0, v3, p1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 284
    .restart local v0       #newMsg:Landroid/os/Message;
    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 285
    .end local v0           #newMsg:Landroid/os/Message;
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->mArpState:Landroid/net/wifi/ArpVerifier$ArpState;

    sget-object v2, Landroid/net/wifi/ArpVerifier$ArpState;->CONFIRM_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    if-ne v1, v2, :cond_4

    .line 286
    const/4 v1, 0x1

    invoke-static {p0, v3, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 287
    .restart local v0       #newMsg:Landroid/os/Message;
    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 288
    .end local v0           #newMsg:Landroid/os/Message;
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->mArpState:Landroid/net/wifi/ArpVerifier$ArpState;

    sget-object v2, Landroid/net/wifi/ArpVerifier$ArpState;->DEAD_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    if-ne v1, v2, :cond_0

    .line 289
    invoke-static {p0, v3, p1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 290
    .restart local v0       #newMsg:Landroid/os/Message;
    const-wide/32 v1, 0x1d4c0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private handleCheckResult(IZ)V
    .locals 3
    .parameter "token"
    .parameter "result"

    .prologue
    .line 295
    iget-object v0, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->mArpState:Landroid/net/wifi/ArpVerifier$ArpState;

    sget-object v1, Landroid/net/wifi/ArpVerifier$ArpState;->HEART_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->mArpState:Landroid/net/wifi/ArpVerifier$ArpState;

    sget-object v1, Landroid/net/wifi/ArpVerifier$ArpState;->NORMAL_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->mArpState:Landroid/net/wifi/ArpVerifier$ArpState;

    sget-object v1, Landroid/net/wifi/ArpVerifier$ArpState;->CONFIRM_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    if-ne v0, v1, :cond_1

    .line 297
    :cond_0
    if-eqz p2, :cond_2

    .line 298
    const-string v0, "ArpVerifier"

    const-string v1, "Notify network is linked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    sget-object v0, Landroid/net/wifi/ArpVerifier$ArpState;->HEART_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    invoke-direct {p0, v0}, Landroid/net/wifi/ArpVerifier$ClientHandler;->transmitState(Landroid/net/wifi/ArpVerifier$ArpState;)V

    .line 318
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/net/wifi/ArpVerifier$ClientHandler;->doCheckWifiNetworkState(I)V

    .line 319
    return-void

    .line 301
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->mArpState:Landroid/net/wifi/ArpVerifier$ArpState;

    sget-object v1, Landroid/net/wifi/ArpVerifier$ArpState;->HEART_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    if-ne v0, v1, :cond_3

    .line 302
    sget-object v0, Landroid/net/wifi/ArpVerifier$ArpState;->NORMAL_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    invoke-direct {p0, v0}, Landroid/net/wifi/ArpVerifier$ClientHandler;->transmitState(Landroid/net/wifi/ArpVerifier$ArpState;)V

    goto :goto_0

    .line 303
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->mArpState:Landroid/net/wifi/ArpVerifier$ArpState;

    sget-object v1, Landroid/net/wifi/ArpVerifier$ArpState;->CONFIRM_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    if-ne v0, v1, :cond_4

    .line 307
    sget-object v0, Landroid/net/wifi/ArpVerifier$ArpState;->HEART_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    invoke-direct {p0, v0}, Landroid/net/wifi/ArpVerifier$ClientHandler;->transmitState(Landroid/net/wifi/ArpVerifier$ArpState;)V

    goto :goto_0

    .line 308
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->mArpState:Landroid/net/wifi/ArpVerifier$ArpState;

    sget-object v1, Landroid/net/wifi/ArpVerifier$ArpState;->NORMAL_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    if-ne v0, v1, :cond_1

    .line 309
    iget v0, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->mNormalArpFail:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->mNormalArpFail:I

    .line 310
    const-string v0, "ArpVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify wifi network is down for NO."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->mNormalArpFail:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget v0, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->mNormalArpFail:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 312
    sget-object v0, Landroid/net/wifi/ArpVerifier$ArpState;->CONFIRM_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    invoke-direct {p0, v0}, Landroid/net/wifi/ArpVerifier$ClientHandler;->transmitState(Landroid/net/wifi/ArpVerifier$ArpState;)V

    goto :goto_0
.end method

.method private isNeedCheck()Z
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->mArpState:Landroid/net/wifi/ArpVerifier$ArpState;

    sget-object v1, Landroid/net/wifi/ArpVerifier$ArpState;->DONT_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private transmitState(Landroid/net/wifi/ArpVerifier$ArpState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 269
    const-string v0, "ArpVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transmit to state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iput-object p1, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->mArpState:Landroid/net/wifi/ArpVerifier$ArpState;

    .line 271
    iget-object v0, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->mArpState:Landroid/net/wifi/ArpVerifier$ArpState;

    sget-object v1, Landroid/net/wifi/ArpVerifier$ArpState;->NORMAL_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    if-ne v0, v1, :cond_0

    .line 272
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->mNormalArpFail:I

    .line 274
    :cond_0
    return-void
.end method


# virtual methods
.method public doArpTestAsync(III)Z
    .locals 3
    .parameter "arpNum"
    .parameter "minResponse"
    .parameter "timeout"

    .prologue
    .line 221
    const-string v1, "ArpVerifier"

    const-string v2, "doArpTestAsync"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-boolean v1, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->mArpRunning:Z

    if-eqz v1, :cond_0

    .line 223
    const/4 v1, 0x0

    .line 227
    :goto_0
    return v1

    .line 225
    :cond_0
    const/16 v1, 0x7d

    new-instance v2, Landroid/net/wifi/ArpVerifier$MsgItem;

    invoke-direct {v2, p1, p2, p3}, Landroid/net/wifi/ArpVerifier$MsgItem;-><init>(III)V

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 226
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 227
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 232
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x7c

    if-ne v5, v6, :cond_2

    .line 234
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 235
    .local v4, token:I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 237
    .local v1, mode:I
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->this$0:Landroid/net/wifi/ArpVerifier;

    #getter for: Landroid/net/wifi/ArpVerifier;->mCheckStateToken:I
    invoke-static {v6}, Landroid/net/wifi/ArpVerifier;->access$200(Landroid/net/wifi/ArpVerifier;)I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 239
    const-string v5, "ArpVerifier"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ignore msg MSG_CHECK_WIFI_PERIOD, msg token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", expected token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->this$0:Landroid/net/wifi/ArpVerifier;

    #getter for: Landroid/net/wifi/ArpVerifier;->mCheckStateToken:I
    invoke-static {v7}, Landroid/net/wifi/ArpVerifier;->access$200(Landroid/net/wifi/ArpVerifier;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .end local v1           #mode:I
    .end local v4           #token:I
    :cond_0
    :goto_0
    return-void

    .line 244
    .restart local v1       #mode:I
    .restart local v4       #token:I
    :cond_1
    invoke-direct {p0, v4, v1}, Landroid/net/wifi/ArpVerifier$ClientHandler;->checkWifiNetworkState(II)V

    goto :goto_0

    .line 245
    .end local v1           #mode:I
    .end local v4           #token:I
    :cond_2
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x7d

    if-ne v5, v6, :cond_0

    .line 246
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->mArpRunning:Z

    .line 247
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/ArpVerifier$MsgItem;

    .line 248
    .local v2, msgItem:Landroid/net/wifi/ArpVerifier$MsgItem;
    if-eqz v2, :cond_3

    .line 249
    iget-object v5, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->this$0:Landroid/net/wifi/ArpVerifier;

    iget v6, v2, Landroid/net/wifi/ArpVerifier$MsgItem;->arpNum:I

    iget v7, v2, Landroid/net/wifi/ArpVerifier$MsgItem;->minResponse:I

    iget v8, v2, Landroid/net/wifi/ArpVerifier$MsgItem;->timeout:I

    #calls: Landroid/net/wifi/ArpVerifier;->doArp(III)Z
    invoke-static {v5, v6, v7, v8}, Landroid/net/wifi/ArpVerifier;->access$500(Landroid/net/wifi/ArpVerifier;III)Z

    move-result v3

    .line 250
    .local v3, result:Z
    const-string v5, "ArpVerifier"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_DO_ARP_ASYNC:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    if-nez v3, :cond_3

    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.huawei.network.DIAGNOSE_COMPLETE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v0, intent:Landroid/content/Intent;
    const-string v5, "MSG_CODE"

    const/16 v6, 0xe

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    const-string v5, "MaxTime"

    iget-object v6, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->this$0:Landroid/net/wifi/ArpVerifier;

    #getter for: Landroid/net/wifi/ArpVerifier;->mSpendTime:I
    invoke-static {v6}, Landroid/net/wifi/ArpVerifier;->access$600(Landroid/net/wifi/ArpVerifier;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    const-string v5, "PackageName"

    const-string v6, "ArpVerifier"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    iget-object v5, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->this$0:Landroid/net/wifi/ArpVerifier;

    #getter for: Landroid/net/wifi/ArpVerifier;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/net/wifi/ArpVerifier;->access$700(Landroid/net/wifi/ArpVerifier;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 260
    .end local v0           #intent:Landroid/content/Intent;
    .end local v3           #result:Z
    :cond_3
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->mArpRunning:Z

    goto :goto_0
.end method

.method public monitorWifiNetworkState()V
    .locals 4

    .prologue
    .line 204
    iget-object v1, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->this$0:Landroid/net/wifi/ArpVerifier;

    invoke-static {v1}, Landroid/net/wifi/ArpVerifier;->access$208(Landroid/net/wifi/ArpVerifier;)I

    .line 205
    iget-object v1, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->this$0:Landroid/net/wifi/ArpVerifier;

    #calls: Landroid/net/wifi/ArpVerifier;->isConnectedToWifi()Z
    invoke-static {v1}, Landroid/net/wifi/ArpVerifier;->access$300(Landroid/net/wifi/ArpVerifier;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->this$0:Landroid/net/wifi/ArpVerifier;

    #calls: Landroid/net/wifi/ArpVerifier;->isEnableChecker()Z
    invoke-static {v1}, Landroid/net/wifi/ArpVerifier;->access$400(Landroid/net/wifi/ArpVerifier;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    const-string v1, "ArpVerifier"

    const-string/jumbo v2, "monitorWifiNetworkState: started."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v1, Landroid/net/wifi/ArpVerifier$ArpState;->HEART_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    invoke-direct {p0, v1}, Landroid/net/wifi/ArpVerifier$ClientHandler;->transmitState(Landroid/net/wifi/ArpVerifier$ArpState;)V

    .line 210
    const/16 v1, 0x7c

    iget-object v2, p0, Landroid/net/wifi/ArpVerifier$ClientHandler;->this$0:Landroid/net/wifi/ArpVerifier;

    #getter for: Landroid/net/wifi/ArpVerifier;->mCheckStateToken:I
    invoke-static {v2}, Landroid/net/wifi/ArpVerifier;->access$200(Landroid/net/wifi/ArpVerifier;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 211
    .local v0, msg:Landroid/os/Message;
    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 218
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    const-string v1, "ArpVerifier"

    const-string/jumbo v2, "monitorWifiNetworkState: stopped."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sget-object v1, Landroid/net/wifi/ArpVerifier$ArpState;->DONT_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    invoke-direct {p0, v1}, Landroid/net/wifi/ArpVerifier$ClientHandler;->transmitState(Landroid/net/wifi/ArpVerifier$ArpState;)V

    goto :goto_0
.end method
