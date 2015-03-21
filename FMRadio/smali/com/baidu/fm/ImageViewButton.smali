.class public Lcom/baidu/fm/ImageViewButton;
.super Landroid/widget/ImageView;
.source "ImageViewButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/fm/ImageViewButton$RepeatListener;
    }
.end annotation


# instance fields
.field private final NAMESPACE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mCurrentState:I

.field private mDisabledStatePictureRes:[I

.field private mEnableAutoSwitchState:Z

.field private mInterval:J

.field private mListener:Lcom/baidu/fm/ImageViewButton$RepeatListener;

.field private mMaxState:I

.field private mNormalStatePictureRes:[I

.field private mPressedStatePictureRes:[I

.field private mRepeatCount:I

.field private mRepeater:Ljava/lang/Runnable;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x2

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    const-string v0, "ImageViewButton"

    iput-object v0, p0, Lcom/baidu/fm/ImageViewButton;->TAG:Ljava/lang/String;

    .line 30
    const-string v0, "fmradio"

    iput-object v0, p0, Lcom/baidu/fm/ImageViewButton;->NAMESPACE:Ljava/lang/String;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/fm/ImageViewButton;->mEnableAutoSwitchState:Z

    .line 43
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/baidu/fm/ImageViewButton;->mInterval:J

    .line 171
    new-instance v0, Lcom/baidu/fm/ImageViewButton$1;

    invoke-direct {v0, p0}, Lcom/baidu/fm/ImageViewButton$1;-><init>(Lcom/baidu/fm/ImageViewButton;)V

    iput-object v0, p0, Lcom/baidu/fm/ImageViewButton;->mRepeater:Ljava/lang/Runnable;

    .line 53
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/baidu/fm/ImageViewButton;->mNormalStatePictureRes:[I

    .line 54
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/baidu/fm/ImageViewButton;->mPressedStatePictureRes:[I

    .line 55
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/baidu/fm/ImageViewButton;->mDisabledStatePictureRes:[I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/fm/ImageViewButton;->mCurrentState:I

    .line 57
    return-void

    .line 53
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 54
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 55
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const-string v3, "ImageViewButton"

    iput-object v3, p0, Lcom/baidu/fm/ImageViewButton;->TAG:Ljava/lang/String;

    .line 30
    const-string v3, "fmradio"

    iput-object v3, p0, Lcom/baidu/fm/ImageViewButton;->NAMESPACE:Ljava/lang/String;

    .line 38
    iput-boolean v6, p0, Lcom/baidu/fm/ImageViewButton;->mEnableAutoSwitchState:Z

    .line 43
    const-wide/16 v3, 0x32

    iput-wide v3, p0, Lcom/baidu/fm/ImageViewButton;->mInterval:J

    .line 171
    new-instance v3, Lcom/baidu/fm/ImageViewButton$1;

    invoke-direct {v3, p0}, Lcom/baidu/fm/ImageViewButton$1;-><init>(Lcom/baidu/fm/ImageViewButton;)V

    iput-object v3, p0, Lcom/baidu/fm/ImageViewButton;->mRepeater:Ljava/lang/Runnable;

    .line 68
    new-array v3, v7, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/baidu/fm/ImageViewButton;->mNormalStatePictureRes:[I

    .line 69
    new-array v3, v7, [I

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/baidu/fm/ImageViewButton;->mPressedStatePictureRes:[I

    .line 70
    new-array v3, v7, [I

    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/baidu/fm/ImageViewButton;->mDisabledStatePictureRes:[I

    .line 71
    iput v5, p0, Lcom/baidu/fm/ImageViewButton;->mCurrentState:I

    .line 73
    sget-object v3, Lcom/baidu/fm/R$styleable;->ImageViewButton:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 76
    .local v2, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-lez v1, :cond_0

    .line 77
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 78
    .local v0, attr:I
    packed-switch v0, :pswitch_data_0

    .line 76
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 80
    :pswitch_0
    iget-object v3, p0, Lcom/baidu/fm/ImageViewButton;->mNormalStatePictureRes:[I

    invoke-virtual {v2, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v5

    goto :goto_1

    .line 84
    :pswitch_1
    iget-object v3, p0, Lcom/baidu/fm/ImageViewButton;->mPressedStatePictureRes:[I

    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v5

    goto :goto_1

    .line 88
    :pswitch_2
    iget-object v3, p0, Lcom/baidu/fm/ImageViewButton;->mDisabledStatePictureRes:[I

    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v5

    goto :goto_1

    .line 92
    :pswitch_3
    iget-object v3, p0, Lcom/baidu/fm/ImageViewButton;->mNormalStatePictureRes:[I

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v6

    goto :goto_1

    .line 96
    :pswitch_4
    iget-object v3, p0, Lcom/baidu/fm/ImageViewButton;->mPressedStatePictureRes:[I

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v6

    goto :goto_1

    .line 100
    :pswitch_5
    iget-object v3, p0, Lcom/baidu/fm/ImageViewButton;->mDisabledStatePictureRes:[I

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v6

    goto :goto_1

    .line 108
    .end local v0           #attr:I
    :cond_0
    iget-object v3, p0, Lcom/baidu/fm/ImageViewButton;->mNormalStatePictureRes:[I

    aget v3, v3, v6

    if-eqz v3, :cond_1

    .line 109
    iput v7, p0, Lcom/baidu/fm/ImageViewButton;->mMaxState:I

    .line 116
    :goto_2
    iget-object v3, p0, Lcom/baidu/fm/ImageViewButton;->mNormalStatePictureRes:[I

    iget v4, p0, Lcom/baidu/fm/ImageViewButton;->mCurrentState:I

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/baidu/fm/ImageViewButton;->setImageResource(I)V

    .line 117
    return-void

    .line 111
    :cond_1
    iput v6, p0, Lcom/baidu/fm/ImageViewButton;->mMaxState:I

    goto :goto_2

    .line 68
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 69
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 70
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const-string v0, "ImageViewButton"

    iput-object v0, p0, Lcom/baidu/fm/ImageViewButton;->TAG:Ljava/lang/String;

    .line 30
    const-string v0, "fmradio"

    iput-object v0, p0, Lcom/baidu/fm/ImageViewButton;->NAMESPACE:Ljava/lang/String;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/fm/ImageViewButton;->mEnableAutoSwitchState:Z

    .line 43
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/baidu/fm/ImageViewButton;->mInterval:J

    .line 171
    new-instance v0, Lcom/baidu/fm/ImageViewButton$1;

    invoke-direct {v0, p0}, Lcom/baidu/fm/ImageViewButton$1;-><init>(Lcom/baidu/fm/ImageViewButton;)V

    iput-object v0, p0, Lcom/baidu/fm/ImageViewButton;->mRepeater:Ljava/lang/Runnable;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/fm/ImageViewButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/baidu/fm/ImageViewButton;->doRepeat(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/fm/ImageViewButton;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/baidu/fm/ImageViewButton;->mInterval:J

    return-wide v0
.end method

.method private doRepeat(Z)V
    .locals 7
    .parameter "last"

    .prologue
    .line 164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 165
    .local v0, now:J
    iget-object v2, p0, Lcom/baidu/fm/ImageViewButton;->mListener:Lcom/baidu/fm/ImageViewButton$RepeatListener;

    if-eqz v2, :cond_0

    .line 166
    iget-object v3, p0, Lcom/baidu/fm/ImageViewButton;->mListener:Lcom/baidu/fm/ImageViewButton$RepeatListener;

    iget-wide v4, p0, Lcom/baidu/fm/ImageViewButton;->mStartTime:J

    sub-long v4, v0, v4

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    :goto_0
    invoke-interface {v3, p0, v4, v5, v2}, Lcom/baidu/fm/ImageViewButton$RepeatListener;->onRepeat(Landroid/view/View;JI)V

    .line 169
    :cond_0
    return-void

    .line 166
    :cond_1
    iget v2, p0, Lcom/baidu/fm/ImageViewButton;->mRepeatCount:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lcom/baidu/fm/ImageViewButton;->mRepeatCount:I

    goto :goto_0
.end method


# virtual methods
.method public disableAutoSwitchState()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/fm/ImageViewButton;->mEnableAutoSwitchState:Z

    .line 138
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 196
    invoke-virtual {p0}, Lcom/baidu/fm/ImageViewButton;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/baidu/fm/ImageViewButton;->mDisabledStatePictureRes:[I

    iget v1, p0, Lcom/baidu/fm/ImageViewButton;->mCurrentState:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/baidu/fm/ImageViewButton;->setImageResource(I)V

    .line 211
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/fm/ImageViewButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/baidu/fm/ImageViewButton;->mPressedStatePictureRes:[I

    iget v1, p0, Lcom/baidu/fm/ImageViewButton;->mCurrentState:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/baidu/fm/ImageViewButton;->setImageResource(I)V

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/baidu/fm/ImageViewButton;->mNormalStatePictureRes:[I

    iget v1, p0, Lcom/baidu/fm/ImageViewButton;->mCurrentState:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/baidu/fm/ImageViewButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public enableAutoSwitchState()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/fm/ImageViewButton;->mEnableAutoSwitchState:Z

    .line 134
    return-void
.end method

.method public getCurrentStatus()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/baidu/fm/ImageViewButton;->mCurrentState:I

    return v0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/baidu/fm/ImageViewButton;->mEnableAutoSwitchState:Z

    if-eqz v0, :cond_0

    .line 126
    iget v0, p0, Lcom/baidu/fm/ImageViewButton;->mCurrentState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/fm/ImageViewButton;->mCurrentState:I

    iget v1, p0, Lcom/baidu/fm/ImageViewButton;->mMaxState:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/fm/ImageViewButton;->mCurrentState:I

    .line 129
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 2

    .prologue
    .line 184
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/fm/ImageViewButton;->mStartTime:J

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/fm/ImageViewButton;->mRepeatCount:I

    .line 186
    iget-object v0, p0, Lcom/baidu/fm/ImageViewButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/baidu/fm/ImageViewButton;->post(Ljava/lang/Runnable;)Z

    .line 188
    invoke-super {p0}, Landroid/widget/ImageView;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public setButtonState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 147
    iget v0, p0, Lcom/baidu/fm/ImageViewButton;->mMaxState:I

    rem-int v0, p1, v0

    iput v0, p0, Lcom/baidu/fm/ImageViewButton;->mCurrentState:I

    .line 148
    iget-object v0, p0, Lcom/baidu/fm/ImageViewButton;->mNormalStatePictureRes:[I

    iget v1, p0, Lcom/baidu/fm/ImageViewButton;->mCurrentState:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/baidu/fm/ImageViewButton;->setImageResource(I)V

    .line 149
    invoke-virtual {p0}, Lcom/baidu/fm/ImageViewButton;->refreshDrawableState()V

    .line 150
    return-void
.end method

.method public setRepeatListener(Lcom/baidu/fm/ImageViewButton$RepeatListener;)V
    .locals 1
    .parameter "lsn"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/baidu/fm/ImageViewButton;->mListener:Lcom/baidu/fm/ImageViewButton$RepeatListener;

    .line 160
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/fm/ImageViewButton;->setLongClickable(Z)V

    .line 161
    return-void
.end method

.method public setRepeatListener(Lcom/baidu/fm/ImageViewButton$RepeatListener;J)V
    .locals 1
    .parameter "lsn"
    .parameter "interval"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/baidu/fm/ImageViewButton;->mListener:Lcom/baidu/fm/ImageViewButton$RepeatListener;

    .line 154
    iput-wide p2, p0, Lcom/baidu/fm/ImageViewButton;->mInterval:J

    .line 155
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/fm/ImageViewButton;->setLongClickable(Z)V

    .line 156
    return-void
.end method

.method public switchButtonState()V
    .locals 2

    .prologue
    .line 141
    iget v0, p0, Lcom/baidu/fm/ImageViewButton;->mCurrentState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/fm/ImageViewButton;->mCurrentState:I

    iget v1, p0, Lcom/baidu/fm/ImageViewButton;->mMaxState:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/fm/ImageViewButton;->mCurrentState:I

    .line 142
    iget-object v0, p0, Lcom/baidu/fm/ImageViewButton;->mNormalStatePictureRes:[I

    iget v1, p0, Lcom/baidu/fm/ImageViewButton;->mCurrentState:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/baidu/fm/ImageViewButton;->setImageResource(I)V

    .line 143
    invoke-virtual {p0}, Lcom/baidu/fm/ImageViewButton;->refreshDrawableState()V

    .line 144
    return-void
.end method
