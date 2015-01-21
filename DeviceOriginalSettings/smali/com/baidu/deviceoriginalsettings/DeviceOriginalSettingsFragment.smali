.class public Lcom/baidu/deviceoriginalsettings/DeviceOriginalSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "DeviceOriginalSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_COLOR_TEMPERATURE:Ljava/lang/String; = "color_temperature_seekbar"

.field private static final TAG:Ljava/lang/String; = "DeviceOriginalSettingsFragment"


# instance fields
.field private mColorTemperature:Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private initPreferences()V
    .locals 1

    .prologue
    .line 94
    const-string v0, "color_temperature_seekbar"

    invoke-virtual {p0, v0}, Lcom/baidu/deviceoriginalsettings/DeviceOriginalSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;

    iput-object v0, p0, Lcom/baidu/deviceoriginalsettings/DeviceOriginalSettingsFragment;->mColorTemperature:Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;

    .line 95
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/baidu/deviceoriginalsettings/DeviceOriginalSettingsFragment;->addPreferencesFromResource(I)V

    .line 55
    const-string v0, "DeviceOriginalSettingsFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-direct {p0}, Lcom/baidu/deviceoriginalsettings/DeviceOriginalSettingsFragment;->initPreferences()V

    .line 57
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 81
    return-void
.end method
