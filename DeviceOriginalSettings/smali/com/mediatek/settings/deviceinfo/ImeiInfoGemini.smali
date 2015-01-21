.class public Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;
.super Landroid/preference/PreferenceActivity;
.source "ImeiInfoGemini.java"


# static fields
.field private static final CDMA:Ljava/lang/String; = "CDMA"

.field private static final KEY_IMEI_SLOT1:Ljava/lang/String; = "imei_slot1"

.field private static final KEY_IMEI_SLOT2:Ljava/lang/String; = "imei_slot2"

.field private static final KEY_IMEI_SLOT3:Ljava/lang/String; = "imei_slot3"

.field private static final KEY_IMEI_SV_SLOT1:Ljava/lang/String; = "imei_sv_slot1"

.field private static final KEY_IMEI_SV_SLOT2:Ljava/lang/String; = "imei_sv_slot2"

.field private static final KEY_IMEI_SV_SLOT3:Ljava/lang/String; = "imei_sv_slot3"

.field private static final KEY_MEID_NUMBER_SLOT1:Ljava/lang/String; = "meid_number_slot1"

.field private static final KEY_MEID_NUMBER_SLOT2:Ljava/lang/String; = "meid_number_slot2"

.field private static final KEY_MEID_NUMBER_SLOT3:Ljava/lang/String; = "meid_number_slot3"

.field private static final KEY_MIN_NUMBER_SLOT1:Ljava/lang/String; = "min_number_slot1"

.field private static final KEY_MIN_NUMBER_SLOT2:Ljava/lang/String; = "min_number_slot2"

.field private static final KEY_MIN_NUMBER_SLOT3:Ljava/lang/String; = "min_number_slot3"

.field private static final KEY_PRL_VERSION_SLOT1:Ljava/lang/String; = "prl_version_slot1"

.field private static final KEY_PRL_VERSION_SLOT2:Ljava/lang/String; = "prl_version_slot2"

.field private static final KEY_PRL_VERSION_SLOT3:Ljava/lang/String; = "prl_version_slot3"

.field private static final TAG:Ljava/lang/String; = "ImeiInfoGemini"


# instance fields
.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mParent:Landroid/preference/PreferenceScreen;

.field private mRemovablePref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    return-void
.end method

.method private removePreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "imeiKey"
    .parameter "imeiSvKey"
    .parameter "meidNumberKey"
    .parameter "minNumberKey"
    .parameter "prlVersionKey"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_4

    .line 126
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 127
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 132
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 137
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 142
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 147
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    .line 148
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 153
    :cond_4
    return-void
.end method

.method private setSlotStatus()V
    .locals 7

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    .line 68
    const/4 v1, 0x0

    const-string v2, "imei_slot1"

    const-string v3, "imei_sv_slot1"

    const-string v4, "meid_number_slot1"

    const-string v5, "min_number_slot1"

    const-string v6, "prl_version_slot1"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->showPreference(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v1, 0x1

    const-string v2, "imei_slot2"

    const-string v3, "imei_sv_slot2"

    const-string v4, "meid_number_slot2"

    const-string v5, "min_number_slot2"

    const-string v6, "prl_version_slot2"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->showPreference(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "imei_slot3"

    const-string v2, "imei_sv_slot3"

    const-string v3, "meid_number_slot3"

    const-string v4, "min_number_slot3"

    const-string v5, "prl_version_slot3"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->removePreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "ImeiInfoGemini"

    const-string v1, "MTK_GEMINI_3SIM_SUPPORT is false"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v1, "imei_slot2"

    const-string v2, "imei_sv_slot2"

    const-string v3, "meid_number_slot2"

    const-string v4, "min_number_slot2"

    const-string v5, "prl_version_slot2"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->removePreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "preference"
    .parameter "text"

    .prologue
    .line 156
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 158
    .local v0, p:Landroid/preference/Preference;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080269

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showPreference(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "slotId"
    .parameter "imeiKey"
    .parameter "imeiSvKey"
    .parameter "meidNumberKey"
    .parameter "minNumberKey"
    .parameter "prlVersionKey"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhoneNameGemini(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getMeidGemini(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCdmaMinGemini(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCdmaPrlVersionGemini(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p6, v0}, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 103
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 104
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 105
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 118
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getDeviceIdGemini(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getDeviceSvnGemini(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 112
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 113
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 114
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 115
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 116
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 47
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 53
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->setSlotStatus()V

    .line 54
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 59
    return-void
.end method
