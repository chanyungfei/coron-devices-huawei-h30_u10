.class public Lcom/baidu/fm/test/TestFM;
.super Landroid/app/Activity;
.source "TestFM.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final FOR_PROPRIETARY:I = 0x5

.field public static final TAG:Ljava/lang/String; = "FM radio service"


# instance fields
.field private mFail:Landroid/widget/Button;

.field private mFrequency:F

.field private mHandler:Landroid/os/Handler;

.field private mIsSearch:Z

.field private mMP:Landroid/media/MediaPlayer;

.field private mSearch:Landroid/widget/Button;

.field private mSuccess:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/baidu/fm/test/TestFM;->mSuccess:Landroid/widget/Button;

    .line 23
    iput-object v1, p0, Lcom/baidu/fm/test/TestFM;->mFail:Landroid/widget/Button;

    .line 25
    iput-object v1, p0, Lcom/baidu/fm/test/TestFM;->mSearch:Landroid/widget/Button;

    .line 27
    const v0, 0x42c23333

    iput v0, p0, Lcom/baidu/fm/test/TestFM;->mFrequency:F

    .line 29
    iput-object v1, p0, Lcom/baidu/fm/test/TestFM;->mMP:Landroid/media/MediaPlayer;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/fm/test/TestFM;->mIsSearch:Z

    .line 36
    new-instance v0, Lcom/baidu/fm/test/TestFM$1;

    invoke-direct {v0, p0}, Lcom/baidu/fm/test/TestFM$1;-><init>(Lcom/baidu/fm/test/TestFM;)V

    iput-object v0, p0, Lcom/baidu/fm/test/TestFM;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/fm/test/TestFM;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/baidu/fm/test/TestFM;->mSearch:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/fm/test/TestFM;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/baidu/fm/test/TestFM;->mIsSearch:Z

    return v0
.end method

.method static synthetic access$102(Lcom/baidu/fm/test/TestFM;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/baidu/fm/test/TestFM;->mIsSearch:Z

    return p1
.end method

.method static synthetic access$200(Lcom/baidu/fm/test/TestFM;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/baidu/fm/test/TestFM;->mFrequency:F

    return v0
.end method

.method static synthetic access$202(Lcom/baidu/fm/test/TestFM;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput p1, p0, Lcom/baidu/fm/test/TestFM;->mFrequency:F

    return p1
.end method

.method static synthetic access$300(Lcom/baidu/fm/test/TestFM;FZ)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/baidu/fm/test/TestFM;->autoSearch(FZ)F

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/baidu/fm/test/TestFM;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/baidu/fm/test/TestFM;->mMP:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$402(Lcom/baidu/fm/test/TestFM;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/baidu/fm/test/TestFM;->mMP:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/baidu/fm/test/TestFM;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/baidu/fm/test/TestFM;->enableFMAudio(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/baidu/fm/test/TestFM;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/baidu/fm/test/TestFM;->isHeadset()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/baidu/fm/test/TestFM;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/baidu/fm/test/TestFM;->setForceUseSpeaker(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/baidu/fm/test/TestFM;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/baidu/fm/test/TestFM;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private autoSearch(FZ)F
    .locals 1
    .parameter "action"
    .parameter "isUp"

    .prologue
    .line 146
    invoke-static {p1, p2}, Lcom/mediatek/FMRadio/FMRadioNative;->seek(FZ)F

    move-result v0

    return v0
.end method

.method private enableFMAudio(Z)V
    .locals 3
    .parameter "bEnable"

    .prologue
    .line 112
    if-eqz p1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/baidu/fm/test/TestFM;->mMP:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const-string v1, "FM radio service"

    const-string v2, "Error: FM audio is already enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_0
    return-void

    .line 117
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/baidu/fm/test/TestFM;->mMP:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_1
    iget-object v1, p0, Lcom/baidu/fm/test/TestFM;->mMP:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FM radio service"

    const-string v2, "Exception: Cannot call MediaPlayer prepare."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 124
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/baidu/fm/test/TestFM;->mMP:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/baidu/fm/test/TestFM;->mMP:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 126
    iget-object v1, p0, Lcom/baidu/fm/test/TestFM;->mMP:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 127
    iget-object v1, p0, Lcom/baidu/fm/test/TestFM;->mMP:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0

    .line 129
    :cond_2
    const-string v1, "FM radio service"

    const-string v2, "Error: FM audio is already disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isHeadset()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method private setForceUseSpeaker(Z)V
    .locals 2
    .parameter "isOn"

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, mForcedUseForMedia:I
    if-eqz p1, :cond_0

    .line 154
    const/4 v0, 0x1

    .line 157
    :cond_0
    const/4 v1, 0x5

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 158
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->isFMPoweredUp()I

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-direct {p0, v1}, Lcom/baidu/fm/test/TestFM;->enableFMAudio(Z)V

    .line 103
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->closedev()Z

    .line 105
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 106
    .local v0, data:Landroid/content/Intent;
    const-string v2, "result"

    iget-object v3, p0, Lcom/baidu/fm/test/TestFM;->mSuccess:Landroid/widget/Button;

    if-ne p1, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/baidu/fm/test/TestFM;->setResult(ILandroid/content/Intent;)V

    .line 108
    invoke-virtual {p0}, Lcom/baidu/fm/test/TestFM;->finish()V

    .line 109
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/baidu/fm/test/TestFM;->setContentView(I)V

    .line 50
    const v0, 0x7f09005c

    invoke-virtual {p0, v0}, Lcom/baidu/fm/test/TestFM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/fm/test/TestFM;->mSuccess:Landroid/widget/Button;

    .line 51
    const v0, 0x7f09005d

    invoke-virtual {p0, v0}, Lcom/baidu/fm/test/TestFM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/fm/test/TestFM;->mFail:Landroid/widget/Button;

    .line 52
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/baidu/fm/test/TestFM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/fm/test/TestFM;->mSearch:Landroid/widget/Button;

    .line 53
    iget-object v0, p0, Lcom/baidu/fm/test/TestFM;->mSuccess:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/baidu/fm/test/TestFM;->mFail:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/baidu/fm/test/TestFM;->mSearch:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/fm/test/TestFM$2;

    invoke-direct {v1, p0}, Lcom/baidu/fm/test/TestFM$2;-><init>(Lcom/baidu/fm/test/TestFM;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/baidu/fm/test/TestFM;->mSearch:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 72
    new-instance v0, Lcom/baidu/fm/test/TestFM$3;

    invoke-direct {v0, p0}, Lcom/baidu/fm/test/TestFM$3;-><init>(Lcom/baidu/fm/test/TestFM;)V

    invoke-virtual {v0}, Lcom/baidu/fm/test/TestFM$3;->start()V

    .line 97
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 137
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->isFMPoweredUp()I

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0, v1}, Lcom/baidu/fm/test/TestFM;->enableFMAudio(Z)V

    .line 139
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->closedev()Z

    .line 141
    :cond_0
    invoke-direct {p0, v1}, Lcom/baidu/fm/test/TestFM;->setForceUseSpeaker(Z)V

    .line 142
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->stopscan()Z

    .line 143
    return-void
.end method
