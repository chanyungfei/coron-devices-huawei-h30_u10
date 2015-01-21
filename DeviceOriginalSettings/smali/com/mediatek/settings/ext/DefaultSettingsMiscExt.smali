.class public Lcom/mediatek/settings/ext/DefaultSettingsMiscExt;
.super Ljava/lang/Object;
.source "DefaultSettingsMiscExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/ISettingsMiscExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultSettingsMiscExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DataUsageUpdateSimText(ILandroid/widget/TextView;)V
    .locals 0
    .parameter "simColor"
    .parameter "title"

    .prologue
    .line 49
    return-void
.end method

.method public DataUsageUpdateTabInfo(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/TabHost$TabSpec;Landroid/widget/TabWidget;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 0
    .parameter "activity"
    .parameter "tag"
    .parameter "tab"
    .parameter "tabWidget"
    .parameter "title"

    .prologue
    .line 45
    return-object p3
.end method

.method public getDataUsageBackgroundStrByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "defStr"
    .parameter "tag"

    .prologue
    .line 40
    return-object p1
.end method

.method public getFactoryResetTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "defaultTitle"

    .prologue
    .line 53
    const-string v0, "DefaultSettingsMiscExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-object p1
.end method

.method public getTetherWifiSSID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 31
    const v0, 0x104040c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isWifiToggleCouldDisabled(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public setTimeoutPrefTitle(Landroid/preference/Preference;)V
    .locals 0
    .parameter "pref"

    .prologue
    .line 36
    return-void
.end method
