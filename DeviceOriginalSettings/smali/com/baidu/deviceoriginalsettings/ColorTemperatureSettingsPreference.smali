.class public Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "ColorTemperatureSettingsPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;
    }
.end annotation


# static fields
.field private static final COLOR_TEMPERATURE:Ljava/lang/String; = "color_temperature"

.field private static final COLOR_TEMPERATURE_DEFAULT_VALUE:I = 0xb

.field private static final COLOR_TEMPERATURE_MODE:Ljava/lang/String; = "color_temperature_mode"

.field private static final COLOR_TEMPERATURE_MODE_DEFAULT:I = 0x1

.field private static final COLOR_TEMPERATURE_MODE_MANUAL:I


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mColorTemperatureModeObserver:Landroid/database/ContentObserver;

.field private mColorTemperatureObserver:Landroid/database/ContentObserver;

.field private mIsDefultSetChecked:Z

.field private mIsOldDefultSelected:Z

.field private mOldColorTemperature:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoredOldState:Z

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mWarmColdLinear:Landroid/widget/LinearLayout;

.field private pauseModeChecked:Z

.field private pauseSeekprocess:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$1;-><init>(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mColorTemperatureObserver:Landroid/database/ContentObserver;

    .line 64
    new-instance v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$2;-><init>(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mColorTemperatureModeObserver:Landroid/database/ContentObserver;

    .line 71
    new-instance v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$3;

    invoke-direct {v0, p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$3;-><init>(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;)V

    iput-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->pauseSeekprocess:I

    .line 85
    iput-boolean v2, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->pauseModeChecked:Z

    .line 86
    iput-boolean v2, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsDefultSetChecked:Z

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mRestoredOldState:Z

    .line 89
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->setDialogLayoutResource(I)V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->onColorTemperatureChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->onColorTemperatureModeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsDefultSetChecked:Z

    return v0
.end method

.method static synthetic access$300(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->setColorTemperature(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->setMode(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mRestoredOldState:Z

    return p1
.end method

.method private getColorTemperature()I
    .locals 4

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "color_temperature"

    const/16 v3, 0xb

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 96
    .local v0, colorTemperature:I
    return v0
.end method

.method protected static getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "dialogView"

    .prologue
    .line 276
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    return-object v0
.end method

.method private isColorTemperDefaultMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 100
    invoke-virtual {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "color_temperature_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 103
    .local v0, colorTemperMode:I
    if-ne v1, v0, :cond_0

    .line 106
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onColorTemperatureChanged()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->getColorTemperature()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 111
    return-void
.end method

.method private onColorTemperatureModeChanged()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->isColorTemperDefaultMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 115
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->getColorTemperature()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 116
    invoke-direct {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->isColorTemperDefaultMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->setMode(I)V

    .line 117
    invoke-virtual {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->updateUIStatus()V

    .line 118
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private restoreOldState()V
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsOldDefultSelected:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    :goto_1
    invoke-direct {p0, v0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->setColorTemperature(I)V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mRestoredOldState:Z

    goto :goto_0

    .line 123
    :cond_1
    iget v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mOldColorTemperature:I

    goto :goto_1
.end method

.method private setColorTemperature(I)V
    .locals 2
    .parameter "colorTemperature"

    .prologue
    .line 137
    const-string v0, "persist.sys.disp.pq.gammaidx"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {p1}, Lcom/mediatek/settings/pq/PictureQualityGammaJni;->nativeSetGammaIndex(I)Z

    .line 139
    invoke-virtual {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_temperature"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    return-void
.end method

.method private setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_temperature_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 170
    invoke-static {p1}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 171
    iget-object v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 172
    invoke-direct {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->getColorTemperature()I

    move-result v1

    iput v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mOldColorTemperature:I

    .line 173
    iget-object v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mOldColorTemperature:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 175
    const v1, 0x7f080001

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 176
    const v1, 0x7f080003

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mWarmColdLinear:Landroid/widget/LinearLayout;

    .line 178
    iget-object v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 179
    invoke-direct {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->isColorTemperDefaultMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsOldDefultSelected:Z

    .line 180
    iget-object v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsOldDefultSelected:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 181
    iget-object v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 182
    iget-boolean v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsOldDefultSelected:Z

    iput-boolean v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsDefultSetChecked:Z

    .line 183
    iget-boolean v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsDefultSetChecked:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    :goto_0
    invoke-direct {p0, v1}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->setColorTemperature(I)V

    .line 184
    iget-boolean v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsDefultSetChecked:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v1}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->setMode(I)V

    .line 185
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 186
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->updateUIStatus()V

    .line 190
    return-void

    .line 183
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    iget v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mOldColorTemperature:I

    goto :goto_0

    .line 184
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 193
    iput-boolean p2, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsDefultSetChecked:Z

    .line 194
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->setMode(I)V

    .line 195
    if-eqz p2, :cond_1

    const/16 v0, 0xb

    :goto_1
    invoke-direct {p0, v0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->setColorTemperature(I)V

    .line 196
    invoke-virtual {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->updateUIStatus()V

    .line 197
    return-void

    .line 194
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    goto :goto_1
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 203
    invoke-virtual {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 205
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz p1, :cond_2

    .line 206
    const-string v2, "color_temperature"

    iget-boolean v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsDefultSetChecked:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 209
    const-string v2, "color_temperature_mode"

    iget-boolean v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsDefultSetChecked:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    :goto_2
    iget-object v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mColorTemperatureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 216
    iget-object v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mColorTemperatureModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 217
    return-void

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    goto :goto_0

    .line 209
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 212
    :cond_2
    invoke-direct {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->restoreOldState()V

    goto :goto_2
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 220
    invoke-direct {p0, p2}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->setColorTemperature(I)V

    .line 221
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 225
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 237
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 231
    check-cast v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;

    .line 232
    .local v0, myState:Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;
    invoke-virtual {v0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 233
    iget v1, v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;->oldProgress:I

    iput v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mOldColorTemperature:I

    .line 234
    iget-boolean v1, v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;->mIsOldDefaultSelected:Z

    iput-boolean v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsOldDefultSelected:Z

    .line 235
    iget-boolean v1, v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;->mIsDefaultSelected:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v1}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->setMode(I)V

    .line 236
    iget-boolean v1, v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;->mIsDefaultSelected:Z

    if-eqz v1, :cond_3

    const/16 v1, 0xb

    :goto_2
    invoke-direct {p0, v1}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->setColorTemperature(I)V

    goto :goto_0

    .line 235
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 236
    :cond_3
    iget v1, v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;->progress:I

    goto :goto_2
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 241
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 242
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 251
    :goto_0
    return-object v0

    .line 244
    :cond_1
    new-instance v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 245
    .local v0, myState:Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;
    iget-object v2, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;->mIsDefaultSelected:Z

    .line 246
    iget-object v2, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iput v2, v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;->progress:I

    .line 247
    iget-boolean v2, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsOldDefultSelected:Z

    iput-boolean v2, v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;->mIsOldDefaultSelected:Z

    .line 248
    iget v2, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mOldColorTemperature:I

    iput v2, v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;->oldProgress:I

    .line 250
    invoke-direct {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->restoreOldState()V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 256
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 260
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 264
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 266
    invoke-virtual {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_temperature"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mColorTemperatureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 269
    invoke-virtual {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_temperature_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mColorTemperatureModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mRestoredOldState:Z

    .line 273
    return-void
.end method

.method protected updateUIStatus()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 149
    iget-boolean v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsDefultSetChecked:Z

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mWarmColdLinear:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mWarmColdLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    :cond_1
    :goto_0
    return-void

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mWarmColdLinear:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mWarmColdLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
