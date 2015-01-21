.class Landroid/webkit/WebViewClassic$4;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewClassic;->setupAcceleratorListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2126
    iput-object p1, p0, Landroid/webkit/WebViewClassic$4;->this$0:Landroid/webkit/WebViewClassic;

    iput-object p2, p0, Landroid/webkit/WebViewClassic$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 2129
    new-instance v3, Landroid/content/ComponentName;

    const-string v7, "com.huawei.android.accelerator.client"

    const-string v8, "com.huawei.android.accelerator.client.service.ResponseService"

    invoke-direct {v3, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    .local v3, notifyComponent:Landroid/content/ComponentName;
    #calls: Landroid/webkit/WebViewClassic;->nativeCheckTimeout()Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$2700()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2133
    #calls: Landroid/webkit/WebViewClassic;->nativeGetProxyIp()Ljava/lang/String;
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$2800()Ljava/lang/String;

    move-result-object v6

    .line 2134
    .local v6, str:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 2135
    const-string v6, "NULL"

    .line 2138
    :cond_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 2139
    .local v5, reportIntent:Landroid/content/Intent;
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2140
    const-string/jumbo v7, "what"

    const/16 v8, 0xf

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2141
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyyMMddHHmmss"

    invoke-direct {v0, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2142
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 2143
    .local v2, formatTime:Ljava/lang/String;
    const-string v7, "exception_time"

    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2144
    const-string v7, "exception_reason"

    const-string v8, "1000"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2145
    const-string/jumbo v7, "network_type"

    invoke-static {}, Landroid/webkit/WebViewClassic;->access$2200()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2146
    const-string v7, "exception_address"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2149
    :try_start_0
    iget-object v7, p0, Landroid/webkit/WebViewClassic$4;->val$context:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2154
    .end local v0           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v2           #formatTime:Ljava/lang/String;
    .end local v5           #reportIntent:Landroid/content/Intent;
    .end local v6           #str:Ljava/lang/String;
    :cond_1
    :goto_0
    #calls: Landroid/webkit/WebViewClassic;->nativeCheckSpdyState()Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$2900()Z

    move-result v7

    if-nez v7, :cond_2

    .line 2156
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2157
    .local v4, notifyIntent:Landroid/content/Intent;
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2158
    const-string/jumbo v7, "what"

    const/16 v8, 0xd

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2160
    :try_start_1
    iget-object v7, p0, Landroid/webkit/WebViewClassic$4;->val$context:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2165
    .end local v4           #notifyIntent:Landroid/content/Intent;
    :cond_2
    :goto_1
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$2000()Landroid/os/Handler;

    move-result-object v7

    const-wide/16 v8, 0x7530

    invoke-virtual {v7, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2166
    return-void

    .line 2150
    .restart local v0       #dateFormat:Ljava/text/SimpleDateFormat;
    .restart local v2       #formatTime:Ljava/lang/String;
    .restart local v5       #reportIntent:Landroid/content/Intent;
    .restart local v6       #str:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2151
    .local v1, e:Ljava/lang/SecurityException;
    const-string/jumbo v7, "webview"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2161
    .end local v0           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v1           #e:Ljava/lang/SecurityException;
    .end local v2           #formatTime:Ljava/lang/String;
    .end local v5           #reportIntent:Landroid/content/Intent;
    .end local v6           #str:Ljava/lang/String;
    .restart local v4       #notifyIntent:Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 2162
    .restart local v1       #e:Ljava/lang/SecurityException;
    const-string/jumbo v7, "webview"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
