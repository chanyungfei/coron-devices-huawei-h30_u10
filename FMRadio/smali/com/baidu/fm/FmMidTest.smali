.class public Lcom/baidu/fm/FmMidTest;
.super Landroid/app/Activity;
.source "FmMidTest.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final FMRADIO_DEVICE_FD_STRING:Ljava/lang/String; = "/dev/radio0"

.field public static final LOGTAG:Ljava/lang/String; = "FmMidTest"

.field private static final SEEKBAR_MAX_SCALE:I = 0xcd

.field private static final TAG:Ljava/lang/String; = "FmMidTest"

.field public static mDefaultFreq:I

.field private static mLocalFreq:I

.field private static mLowBand:I

.field private static mUpBand:I

.field static mVal:I


# instance fields
.field am:Landroid/media/AudioManager;

.field listener:Landroid/view/View$OnClickListener;

.field listener2:Landroid/view/View$OnClickListener;

.field private local_error_button:Landroid/widget/Button;

.field private local_minus_button:Landroid/widget/Button;

.field private local_ok_button:Landroid/widget/Button;

.field private local_plus_button:Landroid/widget/Button;

.field private local_reset_button:Landroid/widget/Button;

.field private mDialog:Landroid/app/AlertDialog;

.field private mFMOn:Z

.field private mFmChip:Ljava/lang/String;

.field private mFreqInfo:Landroid/widget/TextView;

.field private mHeadSetInfo:Landroid/widget/TextView;

.field private mHeadsetPlugged:Z

.field private mHeadsetReceiver:Landroid/content/BroadcastReceiver;

.field private mIsRecording:Z

.field private mMP:Landroid/media/MediaPlayer;

.field private mMuted:Z

.field mRecordThread:Ljava/lang/Thread;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSystemVol:I

.field private mbIsDeviceOpen:Z

.field private mbIsPowerUp:Z

.field minus:Landroid/view/View$OnClickListener;

.field plus:Landroid/view/View$OnClickListener;

.field reset:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const v0, 0x19514

    sput v0, Lcom/baidu/fm/FmMidTest;->mDefaultFreq:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/baidu/fm/FmMidTest;->mDialog:Landroid/app/AlertDialog;

    .line 56
    iput-boolean v1, p0, Lcom/baidu/fm/FmMidTest;->mHeadsetPlugged:Z

    .line 63
    iput-boolean v1, p0, Lcom/baidu/fm/FmMidTest;->mFMOn:Z

    .line 65
    iput-object v0, p0, Lcom/baidu/fm/FmMidTest;->mMP:Landroid/media/MediaPlayer;

    .line 66
    iput v1, p0, Lcom/baidu/fm/FmMidTest;->mSystemVol:I

    .line 67
    iput-boolean v1, p0, Lcom/baidu/fm/FmMidTest;->mMuted:Z

    .line 68
    iput-boolean v1, p0, Lcom/baidu/fm/FmMidTest;->mIsRecording:Z

    .line 72
    iput-object v0, p0, Lcom/baidu/fm/FmMidTest;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 173
    new-instance v0, Lcom/baidu/fm/FmMidTest$1;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FmMidTest$1;-><init>(Lcom/baidu/fm/FmMidTest;)V

    iput-object v0, p0, Lcom/baidu/fm/FmMidTest;->plus:Landroid/view/View$OnClickListener;

    .line 182
    new-instance v0, Lcom/baidu/fm/FmMidTest$2;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FmMidTest$2;-><init>(Lcom/baidu/fm/FmMidTest;)V

    iput-object v0, p0, Lcom/baidu/fm/FmMidTest;->reset:Landroid/view/View$OnClickListener;

    .line 192
    new-instance v0, Lcom/baidu/fm/FmMidTest$3;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FmMidTest$3;-><init>(Lcom/baidu/fm/FmMidTest;)V

    iput-object v0, p0, Lcom/baidu/fm/FmMidTest;->minus:Landroid/view/View$OnClickListener;

    .line 202
    new-instance v0, Lcom/baidu/fm/FmMidTest$4;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FmMidTest$4;-><init>(Lcom/baidu/fm/FmMidTest;)V

    iput-object v0, p0, Lcom/baidu/fm/FmMidTest;->listener:Landroid/view/View$OnClickListener;

    .line 207
    new-instance v0, Lcom/baidu/fm/FmMidTest$5;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FmMidTest$5;-><init>(Lcom/baidu/fm/FmMidTest;)V

    iput-object v0, p0, Lcom/baidu/fm/FmMidTest;->listener2:Landroid/view/View$OnClickListener;

    .line 352
    iput-boolean v1, p0, Lcom/baidu/fm/FmMidTest;->mbIsDeviceOpen:Z

    .line 353
    iput-boolean v1, p0, Lcom/baidu/fm/FmMidTest;->mbIsPowerUp:Z

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/baidu/fm/FmMidTest;->mLocalFreq:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    sput p0, Lcom/baidu/fm/FmMidTest;->mLocalFreq:I

    return p0
.end method

.method static synthetic access$012(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    sget v0, Lcom/baidu/fm/FmMidTest;->mLocalFreq:I

    add-int/2addr v0, p0

    sput v0, Lcom/baidu/fm/FmMidTest;->mLocalFreq:I

    return v0
.end method

.method static synthetic access$020(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    sget v0, Lcom/baidu/fm/FmMidTest;->mLocalFreq:I

    sub-int/2addr v0, p0

    sput v0, Lcom/baidu/fm/FmMidTest;->mLocalFreq:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/baidu/fm/FmMidTest;->mLowBand:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/baidu/fm/FmMidTest;->mUpBand:I

    return v0
.end method

.method static synthetic access$300(Lcom/baidu/fm/FmMidTest;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/fm/FmMidTest;->mFreqInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/fm/FmMidTest;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/fm/FmMidTest;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/fm/FmMidTest;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/baidu/fm/FmMidTest;->mHeadsetPlugged:Z

    return v0
.end method

.method static synthetic access$502(Lcom/baidu/fm/FmMidTest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/baidu/fm/FmMidTest;->mHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$600(Lcom/baidu/fm/FmMidTest;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/fm/FmMidTest;->local_ok_button:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/fm/FmMidTest;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/fm/FmMidTest;->mHeadSetInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/baidu/fm/FmMidTest;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/baidu/fm/FmMidTest;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private enableFMAudio(Z)V
    .locals 3
    .parameter "bEnable"

    .prologue
    .line 305
    if-eqz p1, :cond_1

    .line 306
    iget-object v1, p0, Lcom/baidu/fm/FmMidTest;->mMP:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    const-string v1, "FmMidTest"

    const-string v2, "Error: FM audio is already enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_0
    return-void

    .line 310
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/baidu/fm/FmMidTest;->mMP:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_1
    iget-object v1, p0, Lcom/baidu/fm/FmMidTest;->mMP:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FmMidTest"

    const-string v2, "Exception: Cannot call MediaPlayer prepare."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 318
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/baidu/fm/FmMidTest;->mMP:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 319
    iget-object v1, p0, Lcom/baidu/fm/FmMidTest;->mMP:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_0

    .line 321
    :cond_2
    const-string v1, "FmMidTest"

    const-string v2, "Error: FM audio is already disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private fmOff()Z
    .locals 1

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/baidu/fm/FmMidTest;->stopFM()V

    .line 476
    invoke-virtual {p0}, Lcom/baidu/fm/FmMidTest;->powerDown()Z

    .line 477
    invoke-virtual {p0}, Lcom/baidu/fm/FmMidTest;->closeDevice()Z

    .line 478
    invoke-direct {p0}, Lcom/baidu/fm/FmMidTest;->stop()V

    .line 479
    const/4 v0, 0x1

    return v0
.end method

.method private fmOn()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 463
    invoke-virtual {p0}, Lcom/baidu/fm/FmMidTest;->openDevice()Z

    .line 464
    invoke-virtual {p0}, Lcom/baidu/fm/FmMidTest;->powerUp()Z

    .line 465
    iput-boolean v0, p0, Lcom/baidu/fm/FmMidTest;->mFMOn:Z

    .line 466
    return v0
.end method

.method private startFM()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 337
    const-string v0, "FmMidTest"

    const-string v1, "In startFM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iput-boolean v2, p0, Lcom/baidu/fm/FmMidTest;->mIsRecording:Z

    .line 339
    invoke-direct {p0, v2}, Lcom/baidu/fm/FmMidTest;->enableFMAudio(Z)V

    .line 340
    return-void
.end method

.method private stop()V
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/fm/FmMidTest;->mFMOn:Z

    .line 350
    return-void
.end method

.method private stopFM()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 343
    const-string v0, "FmMidTest"

    const-string v1, "In stopFM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iput-boolean v2, p0, Lcom/baidu/fm/FmMidTest;->mIsRecording:Z

    .line 345
    invoke-direct {p0, v2}, Lcom/baidu/fm/FmMidTest;->enableFMAudio(Z)V

    .line 346
    return-void
.end method


# virtual methods
.method public closeDevice()Z
    .locals 4

    .prologue
    .line 373
    const-string v1, "FmMidTest"

    const-string v2, ">>> FMRadioService.closeDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, bRet:Z
    iget-boolean v1, p0, Lcom/baidu/fm/FmMidTest;->mbIsDeviceOpen:Z

    if-eqz v1, :cond_1

    .line 376
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->closedev()Z

    move-result v0

    .line 377
    if-eqz v0, :cond_0

    .line 378
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/fm/FmMidTest;->mbIsDeviceOpen:Z

    .line 386
    :goto_0
    const-string v1, "FmMidTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.closeDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return v0

    .line 380
    :cond_0
    const-string v1, "FmMidTest"

    const-string v2, "Error: closedev failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 383
    :cond_1
    const-string v1, "FmMidTest"

    const-string v2, "Error: device is already closed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public destroy(I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/baidu/fm/FmMidTest;->fmOff()Z

    .line 165
    iget-object v1, p0, Lcom/baidu/fm/FmMidTest;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/baidu/fm/FmMidTest;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/baidu/fm/FmMidTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 167
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/fm/FmMidTest;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 169
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 170
    .local v0, mIntent:Landroid/content/Intent;
    invoke-virtual {p0, p1, v0}, Lcom/baidu/fm/FmMidTest;->setResult(ILandroid/content/Intent;)V

    .line 171
    invoke-virtual {p0}, Lcom/baidu/fm/FmMidTest;->finish()V

    .line 172
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 251
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 247
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 228
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x4f -> :sswitch_0
        0x50 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public isFmOn()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/baidu/fm/FmMidTest;->mFMOn:Z

    return v0
.end method

.method public mute()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 487
    invoke-virtual {p0, v0}, Lcom/baidu/fm/FmMidTest;->setMute(Z)I

    .line 488
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0xa

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v2, 0x7f030005

    invoke-virtual {p0, v2}, Lcom/baidu/fm/FmMidTest;->setContentView(I)V

    .line 81
    const v2, 0x7f09000e

    invoke-virtual {p0, v2}, Lcom/baidu/fm/FmMidTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/baidu/fm/FmMidTest;->mSeekBar:Landroid/widget/SeekBar;

    .line 82
    const v2, 0x7f090012

    invoke-virtual {p0, v2}, Lcom/baidu/fm/FmMidTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/baidu/fm/FmMidTest;->mFreqInfo:Landroid/widget/TextView;

    .line 83
    const v2, 0x7f09000c

    invoke-virtual {p0, v2}, Lcom/baidu/fm/FmMidTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/baidu/fm/FmMidTest;->mHeadSetInfo:Landroid/widget/TextView;

    .line 84
    iget-object v2, p0, Lcom/baidu/fm/FmMidTest;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 85
    iget-object v2, p0, Lcom/baidu/fm/FmMidTest;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0xcd

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 87
    const v2, 0x7f09001b

    invoke-virtual {p0, v2}, Lcom/baidu/fm/FmMidTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/baidu/fm/FmMidTest;->local_ok_button:Landroid/widget/Button;

    .line 88
    const v2, 0x7f09001c

    invoke-virtual {p0, v2}, Lcom/baidu/fm/FmMidTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/baidu/fm/FmMidTest;->local_error_button:Landroid/widget/Button;

    .line 89
    const v2, 0x7f090018

    invoke-virtual {p0, v2}, Lcom/baidu/fm/FmMidTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/baidu/fm/FmMidTest;->local_plus_button:Landroid/widget/Button;

    .line 90
    const v2, 0x7f090017

    invoke-virtual {p0, v2}, Lcom/baidu/fm/FmMidTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/baidu/fm/FmMidTest;->local_reset_button:Landroid/widget/Button;

    .line 91
    const v2, 0x7f090016

    invoke-virtual {p0, v2}, Lcom/baidu/fm/FmMidTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/baidu/fm/FmMidTest;->local_minus_button:Landroid/widget/Button;

    .line 93
    iget-object v2, p0, Lcom/baidu/fm/FmMidTest;->local_ok_button:Landroid/widget/Button;

    iget-object v3, p0, Lcom/baidu/fm/FmMidTest;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v2, p0, Lcom/baidu/fm/FmMidTest;->local_error_button:Landroid/widget/Button;

    iget-object v3, p0, Lcom/baidu/fm/FmMidTest;->listener2:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v2, p0, Lcom/baidu/fm/FmMidTest;->local_plus_button:Landroid/widget/Button;

    iget-object v3, p0, Lcom/baidu/fm/FmMidTest;->plus:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v2, p0, Lcom/baidu/fm/FmMidTest;->local_minus_button:Landroid/widget/Button;

    iget-object v3, p0, Lcom/baidu/fm/FmMidTest;->minus:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v2, p0, Lcom/baidu/fm/FmMidTest;->local_reset_button:Landroid/widget/Button;

    iget-object v3, p0, Lcom/baidu/fm/FmMidTest;->reset:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const-string v2, "FM test"

    invoke-virtual {p0, v2}, Lcom/baidu/fm/FmMidTest;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v2, p0, Lcom/baidu/fm/FmMidTest;->mHeadSetInfo:Landroid/widget/TextView;

    const v3, 0x7f070055

    invoke-virtual {p0, v3}, Lcom/baidu/fm/FmMidTest;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {p0}, Lcom/baidu/fm/FmMidTest;->registerHeadsetListener()V

    .line 103
    const v2, 0x155cc

    sput v2, Lcom/baidu/fm/FmMidTest;->mLowBand:I

    .line 104
    const v2, 0x1a5e0

    sput v2, Lcom/baidu/fm/FmMidTest;->mUpBand:I

    .line 106
    const-string v2, "FmMidTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLowBand "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/baidu/fm/FmMidTest;->mLowBand:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v2, "FmMidTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUpBand "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/baidu/fm/FmMidTest;->mUpBand:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v2, "FmMidTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDefaultFreq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/baidu/fm/FmMidTest;->mDefaultFreq:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget v2, Lcom/baidu/fm/FmMidTest;->mDefaultFreq:I

    sget v3, Lcom/baidu/fm/FmMidTest;->mLowBand:I

    sub-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0xcd

    sget v3, Lcom/baidu/fm/FmMidTest;->mUpBand:I

    sget v4, Lcom/baidu/fm/FmMidTest;->mLowBand:I

    sub-int/2addr v3, v4

    div-int/2addr v2, v3

    sput v2, Lcom/baidu/fm/FmMidTest;->mVal:I

    .line 117
    iget-object v2, p0, Lcom/baidu/fm/FmMidTest;->mFreqInfo:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/baidu/fm/FmMidTest;->mDefaultFreq:I

    div-int/lit8 v4, v4, 0x64

    int-to-double v4, v4

    const-wide/high16 v6, 0x4024

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v2, p0, Lcom/baidu/fm/FmMidTest;->mSeekBar:Landroid/widget/SeekBar;

    sget v3, Lcom/baidu/fm/FmMidTest;->mVal:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 121
    iget-object v2, p0, Lcom/baidu/fm/FmMidTest;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 123
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/baidu/fm/FmMidTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/baidu/fm/FmMidTest;->am:Landroid/media/AudioManager;

    .line 124
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/baidu/fm/FmMidTest;->mMP:Landroid/media/MediaPlayer;

    .line 126
    :try_start_0
    iget-object v2, p0, Lcom/baidu/fm/FmMidTest;->mMP:Landroid/media/MediaPlayer;

    const-string v3, "MEDIATEK://MEDIAPLAYER_PLAYERTYPE_FM"

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 139
    iget-object v2, p0, Lcom/baidu/fm/FmMidTest;->mMP:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v8}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 140
    iget-object v2, p0, Lcom/baidu/fm/FmMidTest;->am:Landroid/media/AudioManager;

    invoke-virtual {v2, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iput v2, p0, Lcom/baidu/fm/FmMidTest;->mSystemVol:I

    .line 141
    iget-object v2, p0, Lcom/baidu/fm/FmMidTest;->am:Landroid/media/AudioManager;

    invoke-virtual {v2, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 142
    .local v1, vol_max:I
    iget-object v2, p0, Lcom/baidu/fm/FmMidTest;->am:Landroid/media/AudioManager;

    mul-int/lit8 v3, v1, 0x2

    div-int/lit8 v3, v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v8, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 143
    sget v2, Lcom/baidu/fm/FmMidTest;->mDefaultFreq:I

    sput v2, Lcom/baidu/fm/FmMidTest;->mLocalFreq:I

    .line 144
    .end local v1           #vol_max:I
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 129
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "FmMidTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 133
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "FmMidTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 136
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v2, "FmMidTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 156
    iget-object v0, p0, Lcom/baidu/fm/FmMidTest;->am:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/baidu/fm/FmMidTest;->mSystemVol:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 157
    iget-object v0, p0, Lcom/baidu/fm/FmMidTest;->mMP:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/baidu/fm/FmMidTest;->mMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 160
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 161
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 214
    sput p2, Lcom/baidu/fm/FmMidTest;->mVal:I

    .line 215
    sget v0, Lcom/baidu/fm/FmMidTest;->mVal:I

    sget v1, Lcom/baidu/fm/FmMidTest;->mUpBand:I

    sget v2, Lcom/baidu/fm/FmMidTest;->mLowBand:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xcd

    sget v1, Lcom/baidu/fm/FmMidTest;->mLowBand:I

    add-int/2addr v0, v1

    sput v0, Lcom/baidu/fm/FmMidTest;->mLocalFreq:I

    .line 216
    iget-object v0, p0, Lcom/baidu/fm/FmMidTest;->mFreqInfo:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/baidu/fm/FmMidTest;->mLocalFreq:I

    div-int/lit8 v2, v2, 0x64

    int-to-double v2, v2

    const-wide/high16 v4, 0x4024

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 149
    const-string v0, "FmMidTest"

    const-string v1, "FMRadio: onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget v0, Lcom/baidu/fm/FmMidTest;->mDefaultFreq:I

    sput v0, Lcom/baidu/fm/FmMidTest;->mLocalFreq:I

    .line 151
    invoke-direct {p0}, Lcom/baidu/fm/FmMidTest;->fmOn()Z

    .line 152
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 220
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 222
    sget v0, Lcom/baidu/fm/FmMidTest;->mLocalFreq:I

    invoke-virtual {p0, v0}, Lcom/baidu/fm/FmMidTest;->tune(I)Z

    .line 223
    return-void
.end method

.method public openDevice()Z
    .locals 4

    .prologue
    .line 355
    const-string v1, "FmMidTest"

    const-string v2, ">>> FMRadioService.openDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, bRet:Z
    iget-boolean v1, p0, Lcom/baidu/fm/FmMidTest;->mbIsDeviceOpen:Z

    if-eqz v1, :cond_0

    .line 358
    const-string v1, "FmMidTest"

    const-string v2, "Error: device is already open."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v0, 0x1

    .line 368
    :goto_0
    const-string v1, "FmMidTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.openDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return v0

    .line 361
    :cond_0
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->opendev()Z

    move-result v0

    .line 362
    if-eqz v0, :cond_1

    .line 363
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/fm/FmMidTest;->mbIsDeviceOpen:Z

    goto :goto_0

    .line 365
    :cond_1
    const-string v1, "FmMidTest"

    const-string v2, "Error: opendev failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public powerDown()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 416
    const-string v1, "FmMidTest"

    const-string v2, ">>> FMRadioService.powerDown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, bRet:Z
    iget-boolean v1, p0, Lcom/baidu/fm/FmMidTest;->mbIsPowerUp:Z

    if-eqz v1, :cond_1

    .line 419
    invoke-direct {p0, v3}, Lcom/baidu/fm/FmMidTest;->enableFMAudio(Z)V

    .line 420
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioNative;->powerdown(I)Z

    move-result v0

    .line 421
    if-eqz v0, :cond_0

    .line 422
    iput-boolean v3, p0, Lcom/baidu/fm/FmMidTest;->mbIsPowerUp:Z

    .line 430
    :goto_0
    const-string v1, "FmMidTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.powerDown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return v0

    .line 424
    :cond_0
    const-string v1, "FmMidTest"

    const-string v2, "Error: powerdown failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 427
    :cond_1
    const-string v1, "FmMidTest"

    const-string v2, "Error: device is already power down."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public powerUp()Z
    .locals 2

    .prologue
    .line 391
    sget v0, Lcom/baidu/fm/FmMidTest;->mDefaultFreq:I

    int-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/baidu/fm/FmMidTest;->powerUp(F)Z

    move-result v0

    return v0
.end method

.method public powerUp(F)Z
    .locals 5
    .parameter "frequency"

    .prologue
    const/4 v4, 0x1

    .line 395
    const-string v1, "FmMidTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.powerUp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v0, 0x0

    .line 398
    .local v0, bRet:Z
    iget-boolean v1, p0, Lcom/baidu/fm/FmMidTest;->mbIsPowerUp:Z

    if-eqz v1, :cond_0

    .line 399
    const-string v1, "FmMidTest"

    const-string v2, "Error: device is already power up."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/4 v0, 0x1

    .line 411
    :goto_0
    const-string v1, "FmMidTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.powerUp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return v0

    .line 402
    :cond_0
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->powerup(F)Z

    move-result v0

    .line 403
    if-eqz v0, :cond_1

    .line 404
    invoke-direct {p0, v4}, Lcom/baidu/fm/FmMidTest;->enableFMAudio(Z)V

    .line 405
    iput-boolean v4, p0, Lcom/baidu/fm/FmMidTest;->mbIsPowerUp:Z

    goto :goto_0

    .line 407
    :cond_1
    const-string v1, "FmMidTest"

    const-string v2, "Error: powerup failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerHeadsetListener()V
    .locals 2

    .prologue
    .line 256
    iget-object v1, p0, Lcom/baidu/fm/FmMidTest;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 257
    new-instance v1, Lcom/baidu/fm/FmMidTest$6;

    invoke-direct {v1, p0}, Lcom/baidu/fm/FmMidTest$6;-><init>(Lcom/baidu/fm/FmMidTest;)V

    iput-object v1, p0, Lcom/baidu/fm/FmMidTest;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 282
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 283
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/baidu/fm/FmMidTest;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/baidu/fm/FmMidTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 286
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public setMute(Z)I
    .locals 4
    .parameter "mute"

    .prologue
    .line 451
    const-string v1, "FmMidTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.setMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->setmute(Z)I

    move-result v0

    .line 453
    .local v0, iRet:I
    const-string v1, "FmMidTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.setMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return v0
.end method

.method protected show_dialog()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 290
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070056

    invoke-virtual {p0, v1}, Lcom/baidu/fm/FmMidTest;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070055

    invoke-virtual {p0, v1}, Lcom/baidu/fm/FmMidTest;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070057

    invoke-virtual {p0, v1}, Lcom/baidu/fm/FmMidTest;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/baidu/fm/FmMidTest$7;

    invoke-direct {v2, p0}, Lcom/baidu/fm/FmMidTest$7;-><init>(Lcom/baidu/fm/FmMidTest;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public tune(F)Z
    .locals 4
    .parameter "frequency"

    .prologue
    .line 435
    const-string v1, "FmMidTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.tune: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->tune(F)Z

    move-result v0

    .line 437
    .local v0, bRet:Z
    return v0
.end method

.method public tune(I)Z
    .locals 4
    .parameter "frequency"

    .prologue
    .line 441
    const-string v1, "FmMidTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.tune: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    int-to-float v1, p1

    const/high16 v2, 0x447a

    div-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/baidu/fm/FmMidTest;->tune(F)Z

    move-result v0

    .line 443
    .local v0, bRet:Z
    if-eqz v0, :cond_0

    sget v1, Lcom/baidu/fm/FmMidTest;->mLocalFreq:I

    if-eq v1, p1, :cond_0

    .line 444
    sput p1, Lcom/baidu/fm/FmMidTest;->mLocalFreq:I

    .line 446
    :cond_0
    const-string v1, "FmMidTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.tune: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return v0
.end method

.method public unMute()Z
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/fm/FmMidTest;->setMute(Z)I

    .line 497
    const/4 v0, 0x1

    return v0
.end method
