.class public Lcom/mediatek/gemini/GeminiUtils;
.super Ljava/lang/Object;
.source "GeminiUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;
    }
.end annotation


# static fields
.field private static final COLORNUM:I = 0x7

.field public static final ERROR_SLOT_ID:I = -0x2

.field public static final EXTRA_SIMID:Ljava/lang/String; = "simid"

.field public static final EXTRA_SLOTID:Ljava/lang/String; = "slotid"

.field static final IMAGE_GRAY:I = 0x4b

.field public static final INTENT_CARD_SELECT:Ljava/lang/String; = "com.mediatek.action.SIM_SELECTION"

.field static final INTERNET_CALL_COLOR:I = 0x8

.field static final NO_COLOR:I = -0x1

.field static final ORIGINAL_IMAGE:I = 0xff

.field public static final PIN1_REQUEST_CODE:I = 0x12e

.field public static final REQUEST_SIM_SELECT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "GeminiUtils"

.field static final TYPE_GPRS:I = 0x4

.field static final TYPE_SMS:I = 0x3

.field static final TYPE_VIDEOCALL:I = 0x2

.field static final TYPE_VOICECALL:I = 0x1

.field public static final UNDEFINED_SLOT_ID:I = -0x1

.field static sG3SlotID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/gemini/GeminiUtils;->sG3SlotID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method public static backToSimcardUnlock(Landroid/app/Activity;Z)V
    .locals 6
    .parameter "activity"
    .parameter "needFinish"

    .prologue
    .line 107
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 109
    .local v1, simInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 110
    .local v2, simSize:I
    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v3, "GeminiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "className: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 118
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 124
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method static getSimColorResource(I)I
    .locals 1
    .parameter "color"

    .prologue
    .line 67
    if-ltz p0, :cond_0

    const/4 v0, 0x7

    if-gt p0, v0, :cond_0

    .line 68
    sget-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkRes:[I

    aget v0, v0, p0

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static getStatusResource(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 45
    packed-switch p0, :pswitch_data_0

    .line 61
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 47
    :pswitch_1
    const v0, 0x2020114

    goto :goto_0

    .line 49
    :pswitch_2
    const v0, 0x2020101

    goto :goto_0

    .line 51
    :pswitch_3
    const v0, 0x20200fa

    goto :goto_0

    .line 53
    :pswitch_4
    const v0, 0x202011b

    goto :goto_0

    .line 55
    :pswitch_5
    const v0, 0x2020119

    goto :goto_0

    .line 57
    :pswitch_6
    const v0, 0x20200f1

    goto :goto_0

    .line 59
    :pswitch_7
    const v0, 0x202011a

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getTargetSlotId(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 76
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 77
    .local v0, simInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 78
    .local v1, simSize:I
    const/4 v2, -0x1

    .line 79
    .local v2, slotId:I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 80
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v2, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 82
    :cond_0
    return v2
.end method

.method public static goBackSimSelection(Landroid/app/Activity;Z)V
    .locals 6
    .parameter "activity"
    .parameter "needFinish"

    .prologue
    const/4 v5, -0x2

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 88
    .local v0, it:Landroid/content/Intent;
    const-string v2, "slotid"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 89
    .local v1, slotId:I
    const-string v2, "GeminiUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slotid is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    if-eq v1, v5, :cond_1

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 96
    .end local v0           #it:Landroid/content/Intent;
    .end local v1           #slotId:I
    :cond_0
    :goto_0
    return-void

    .line 93
    .restart local v0       #it:Landroid/content/Intent;
    .restart local v1       #slotId:I
    :cond_1
    invoke-static {p0, p1}, Lcom/mediatek/gemini/GeminiUtils;->backToSimcardUnlock(Landroid/app/Activity;Z)V

    goto :goto_0
.end method
