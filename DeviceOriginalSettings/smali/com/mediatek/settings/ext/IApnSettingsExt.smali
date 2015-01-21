.class public interface abstract Lcom/mediatek/settings/ext/IApnSettingsExt;
.super Ljava/lang/Object;
.source "IApnSettingsExt.java"


# static fields
.field public static final MENU_NEW:I = 0x1

.field public static final MENU_RESTORE:I = 0x2

.field public static final PREFERRED_APN_URI:Ljava/lang/String; = "content://telephony/carriers/preferapn"

.field public static final PREFERRED_APN_URI_GEMINI_SIM1:Ljava/lang/String; = "content://telephony/carriers_sim1/preferapn"

.field public static final PREFERRED_APN_URI_GEMINI_SIM2:Ljava/lang/String; = "content://telephony/carriers_sim2/preferapn"

.field public static final PREFERRED_APN_URI_GEMINI_SIM3:Ljava/lang/String; = "content://telephony/carriers_sim3/preferapn"

.field public static final PREFERRED_APN_URI_GEMINI_SIM4:Ljava/lang/String; = "content://telephony/carriers_sim4/preferapn"

.field public static final PREFERRED_URI_LIST:[Landroid/net/Uri; = null

.field public static final TRANSACTION_START:Ljava/lang/String; = "com.android.mms.transaction.START"

.field public static final TRANSACTION_STOP:Ljava/lang/String; = "com.android.mms.transaction.STOP"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    const-string v2, "content://telephony/carriers_sim1/preferapn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "content://telephony/carriers_sim2/preferapn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "content://telephony/carriers_sim3/preferapn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "content://telephony/carriers_sim4/preferapn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/settings/ext/IApnSettingsExt;->PREFERRED_URI_LIST:[Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public abstract addApnTypeExtra(Landroid/content/Intent;)V
.end method

.method public abstract addMenu(Landroid/view/Menu;Landroid/app/Activity;IILjava/lang/String;)V
.end method

.method public abstract getBroadcastReceiver(Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
.end method

.method public abstract getFillListQuery(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getIntentFilter()Landroid/content/IntentFilter;
.end method

.method public abstract getRestoreCarrierUri(I)Landroid/net/Uri;
.end method

.method public abstract getScreenEnableState(ILandroid/app/Activity;)Z
.end method

.method public abstract initTetherField(Landroid/app/Activity;)V
.end method

.method public abstract isAllowEditPresetApn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract isSelectable(Ljava/lang/String;)Z
.end method

.method public abstract isSkipApn(Ljava/lang/String;Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;)Z
.end method

.method public abstract removeTetherApnSettings(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V
.end method

.method public abstract updateTetherState(Landroid/app/Activity;)V
.end method
