.class public Lcom/baidu/fm/widget/TunnerView;
.super Landroid/view/View;
.source "TunnerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/fm/widget/TunnerView$OnButtonRepeatListener;,
        Lcom/baidu/fm/widget/TunnerView$OnButtonClickListener;,
        Lcom/baidu/fm/widget/TunnerView$OnTunnerScrollListener;
    }
.end annotation


# static fields
.field private static final BOTTOM_MARGIN:I = 0xa

.field private static CONTENT_HEIGHT:I = 0x0

.field private static final INVALID_POINTER:I = -0x1

.field private static final LEFT_MARGIN:I = 0x8

.field private static final RIGHT_MARGIN:I = 0x8

.field public static final SCROLL_LEFT:I = 0x1

.field public static final SCROLL_RIGHT:I = 0x2

.field private static final TOP_MARGIN:I = 0x8

.field private static mDensity:F = 0.0f

.field public static final mFineDecButtonId:I = 0x3e9

.field public static final mFineIncButtonId:I = 0x3ea

.field private static mInterval:J


# instance fields
.field private canScroll:I

.field private lisId2Icon:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mActivePointerId:I

.field private mButtonClickListener:Lcom/baidu/fm/widget/TunnerView$OnButtonClickListener;

.field private mButtonLongClickListener:Ljava/lang/Runnable;

.field private mButtonRepeatListener:Lcom/baidu/fm/widget/TunnerView$OnButtonRepeatListener;

.field private mContentHeight:I

.field private mContext:Landroid/content/Context;

.field private mFineFreqDecBitmap:Landroid/graphics/Bitmap;

.field private mFineFreqDecBitmapPressed:Landroid/graphics/Bitmap;

.field private mFineFreqDecButtonRect:Landroid/graphics/RectF;

.field private mFineFreqIncBitmap:Landroid/graphics/Bitmap;

.field private mFineFreqIncBitmapPressed:Landroid/graphics/Bitmap;

.field private mFineFreqIncButtonRect:Landroid/graphics/RectF;

.field private mHandler:Landroid/os/Handler;

.field private mLastMotionX:F

.field private mLeftPadding:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mRepeatCount:I

.field private mRepeater:Ljava/lang/Runnable;

.field private mRightPadding:I

.field private mScrollDelta:F

.field private mScrollRect:Landroid/graphics/RectF;

.field private mStartTime:J

.field private mTopMargin:F

.field private mTouchSlop:I

.field private mTunnerBg:Landroid/graphics/drawable/Drawable;

.field private mTunnerDrawableIndex:J

.field private mTunnerScrollListener:Lcom/baidu/fm/widget/TunnerView$OnTunnerScrollListener;

.field private mTunnerScrollerBg:Landroid/graphics/drawable/Drawable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mbFineFreqDecTouchDown:Z

.field private mbFineFreqIncTouchDown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const/16 v0, 0x3c

    sput v0, Lcom/baidu/fm/widget/TunnerView;->CONTENT_HEIGHT:I

    .line 76
    const-wide/16 v0, 0x32

    sput-wide v0, Lcom/baidu/fm/widget/TunnerView;->mInterval:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/fm/widget/TunnerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/fm/widget/TunnerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/fm/widget/TunnerView;->mActivePointerId:I

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->lisId2Icon:Ljava/util/Map;

    .line 66
    iput-boolean v1, p0, Lcom/baidu/fm/widget/TunnerView;->mbFineFreqDecTouchDown:Z

    .line 67
    iput-boolean v1, p0, Lcom/baidu/fm/widget/TunnerView;->mbFineFreqIncTouchDown:Z

    .line 452
    new-instance v0, Lcom/baidu/fm/widget/TunnerView$1;

    invoke-direct {v0, p0}, Lcom/baidu/fm/widget/TunnerView$1;-><init>(Lcom/baidu/fm/widget/TunnerView;)V

    iput-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mRepeater:Ljava/lang/Runnable;

    .line 463
    new-instance v0, Lcom/baidu/fm/widget/TunnerView$2;

    invoke-direct {v0, p0}, Lcom/baidu/fm/widget/TunnerView$2;-><init>(Lcom/baidu/fm/widget/TunnerView;)V

    iput-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mButtonLongClickListener:Ljava/lang/Runnable;

    .line 476
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/fm/widget/TunnerView;->canScroll:I

    .line 95
    iput-object p1, p0, Lcom/baidu/fm/widget/TunnerView;->mContext:Landroid/content/Context;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mHandler:Landroid/os/Handler;

    .line 97
    invoke-direct {p0}, Lcom/baidu/fm/widget/TunnerView;->initData()V

    .line 98
    invoke-direct {p0}, Lcom/baidu/fm/widget/TunnerView;->initView()V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/fm/widget/TunnerView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/baidu/fm/widget/TunnerView;->doRepeat(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/fm/widget/TunnerView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/baidu/fm/widget/TunnerView;->mbFineFreqDecTouchDown:Z

    return v0
.end method

.method static synthetic access$200(Lcom/baidu/fm/widget/TunnerView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/baidu/fm/widget/TunnerView;->mbFineFreqIncTouchDown:Z

    return v0
.end method

.method static synthetic access$300(Lcom/baidu/fm/widget/TunnerView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()J
    .locals 2

    .prologue
    .line 27
    sget-wide v0, Lcom/baidu/fm/widget/TunnerView;->mInterval:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/baidu/fm/widget/TunnerView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/baidu/fm/widget/TunnerView;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/baidu/fm/widget/TunnerView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/baidu/fm/widget/TunnerView;->mRepeatCount:I

    return p1
.end method

.method static synthetic access$700(Lcom/baidu/fm/widget/TunnerView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mRepeater:Ljava/lang/Runnable;

    return-object v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 392
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 395
    return-void
.end method

.method private doRepeat(Z)V
    .locals 8
    .parameter "last"

    .prologue
    .line 438
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 439
    .local v6, now:J
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mButtonRepeatListener:Lcom/baidu/fm/widget/TunnerView$OnButtonRepeatListener;

    if-eqz v0, :cond_0

    .line 440
    const/4 v2, -0x1

    .line 442
    .local v2, whichId:I
    iget-boolean v0, p0, Lcom/baidu/fm/widget/TunnerView;->mbFineFreqDecTouchDown:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 443
    const/16 v2, 0x3e9

    .line 447
    :goto_0
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mButtonRepeatListener:Lcom/baidu/fm/widget/TunnerView$OnButtonRepeatListener;

    iget-wide v3, p0, Lcom/baidu/fm/widget/TunnerView;->mStartTime:J

    sub-long v3, v6, v3

    if-eqz p1, :cond_2

    const/4 v5, -0x1

    :goto_1
    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/baidu/fm/widget/TunnerView$OnButtonRepeatListener;->onButtonRepeat(Landroid/view/View;IJI)V

    .line 450
    .end local v2           #whichId:I
    :cond_0
    return-void

    .line 445
    .restart local v2       #whichId:I
    :cond_1
    const/16 v2, 0x3ea

    goto :goto_0

    .line 447
    :cond_2
    iget v5, p0, Lcom/baidu/fm/widget/TunnerView;->mRepeatCount:I

    add-int/lit8 v1, v5, 0x1

    iput v1, p0, Lcom/baidu/fm/widget/TunnerView;->mRepeatCount:I

    goto :goto_1
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 190
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerBg:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/baidu/fm/widget/TunnerView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/baidu/fm/widget/TunnerView;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 192
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 194
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/fm/widget/TunnerView;->drawScrollerBackground(Landroid/graphics/Canvas;)V

    .line 195
    return-void
.end method

.method private drawButton(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 239
    iget-boolean v0, p0, Lcom/baidu/fm/widget/TunnerView;->mbFineFreqDecTouchDown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/fm/widget/TunnerView;->isScrollEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mFineFreqDecBitmapPressed:Landroid/graphics/Bitmap;

    :goto_0
    iget-object v1, p0, Lcom/baidu/fm/widget/TunnerView;->mFineFreqDecButtonRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/baidu/fm/widget/TunnerView;->mFineFreqDecButtonRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 243
    iget-boolean v0, p0, Lcom/baidu/fm/widget/TunnerView;->mbFineFreqIncTouchDown:Z

    if-nez v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/baidu/fm/widget/TunnerView;->isScrollEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mFineFreqIncBitmapPressed:Landroid/graphics/Bitmap;

    :goto_1
    iget-object v1, p0, Lcom/baidu/fm/widget/TunnerView;->mFineFreqIncButtonRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/baidu/fm/widget/TunnerView;->mFineFreqIncButtonRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 247
    return-void

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mFineFreqDecBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mFineFreqIncBitmap:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const-wide/16 v10, 0x7

    .line 208
    const/16 v3, 0x8

    .line 209
    .local v3, minDistance:I
    iget-object v4, p0, Lcom/baidu/fm/widget/TunnerView;->lisId2Icon:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    mul-int/2addr v4, v3

    div-int/lit8 v2, v4, 0x2

    .line 213
    .local v2, maxDistance:I
    iget v4, p0, Lcom/baidu/fm/widget/TunnerView;->mScrollDelta:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v3

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    .line 214
    iget v4, p0, Lcom/baidu/fm/widget/TunnerView;->mScrollDelta:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 215
    iget v4, p0, Lcom/baidu/fm/widget/TunnerView;->mScrollDelta:F

    int-to-float v5, v2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 216
    int-to-float v4, v2

    iput v4, p0, Lcom/baidu/fm/widget/TunnerView;->mScrollDelta:F

    .line 221
    :cond_0
    :goto_0
    iget-wide v4, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerDrawableIndex:J

    iget v6, p0, Lcom/baidu/fm/widget/TunnerView;->mScrollDelta:F

    float-to-long v6, v6

    int-to-long v8, v3

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerDrawableIndex:J

    .line 222
    iget-wide v4, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerDrawableIndex:J

    rem-long/2addr v4, v10

    iput-wide v4, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerDrawableIndex:J

    .line 223
    iget-wide v4, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerDrawableIndex:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 224
    iget-wide v4, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerDrawableIndex:J

    add-long/2addr v4, v10

    iput-wide v4, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerDrawableIndex:J

    .line 226
    :cond_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/baidu/fm/widget/TunnerView;->mScrollDelta:F

    .line 229
    :cond_2
    iget-object v4, p0, Lcom/baidu/fm/widget/TunnerView;->lisId2Icon:Ljava/util/Map;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/baidu/fm/widget/TunnerView;->lisId2Icon:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 230
    iget-object v4, p0, Lcom/baidu/fm/widget/TunnerView;->lisId2Icon:Ljava/util/Map;

    iget-wide v5, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerDrawableIndex:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 231
    .local v0, currentBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/baidu/fm/widget/TunnerView;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 232
    .local v1, margin:I
    int-to-float v4, v1

    sget v5, Lcom/baidu/fm/widget/TunnerView;->mDensity:F

    const/high16 v6, 0x4120

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/baidu/fm/widget/TunnerView;->mTopMargin:F

    add-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 235
    .end local v0           #currentBitmap:Landroid/graphics/Bitmap;
    .end local v1           #margin:I
    :cond_3
    invoke-direct {p0, p1}, Lcom/baidu/fm/widget/TunnerView;->drawButton(Landroid/graphics/Canvas;)V

    .line 236
    return-void

    .line 218
    :cond_4
    neg-int v4, v2

    int-to-float v4, v4

    iput v4, p0, Lcom/baidu/fm/widget/TunnerView;->mScrollDelta:F

    goto :goto_0
.end method

.method private drawScrollerBackground(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 198
    iget-object v1, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerScrollerBg:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/baidu/fm/widget/TunnerView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerScrollerBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 200
    .local v0, margin:I
    iget-object v1, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerScrollerBg:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/baidu/fm/widget/TunnerView;->mTopMargin:F

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/baidu/fm/widget/TunnerView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    iget v5, p0, Lcom/baidu/fm/widget/TunnerView;->mTopMargin:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerScrollerBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 202
    iget-object v1, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerScrollerBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 204
    .end local v0           #margin:I
    :cond_0
    return-void
.end method

.method private initData()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 102
    iput-wide v3, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerDrawableIndex:J

    .line 103
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/baidu/fm/widget/TunnerView;->mDensity:F

    .line 104
    sget v0, Lcom/baidu/fm/widget/TunnerView;->mDensity:F

    sget v1, Lcom/baidu/fm/widget/TunnerView;->CONTENT_HEIGHT:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/baidu/fm/widget/TunnerView;->mContentHeight:I

    .line 105
    const/4 v0, 0x1

    const/high16 v1, 0x4100

    invoke-virtual {p0}, Lcom/baidu/fm/widget/TunnerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/baidu/fm/widget/TunnerView;->mTopMargin:F

    .line 107
    iput-wide v3, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerDrawableIndex:J

    .line 108
    invoke-direct {p0}, Lcom/baidu/fm/widget/TunnerView;->preLoadImageData()V

    .line 109
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lcom/baidu/fm/widget/TunnerView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/baidu/fm/widget/TunnerView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 114
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/baidu/fm/widget/TunnerView;->mMaximumVelocity:I

    .line 115
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/baidu/fm/widget/TunnerView;->mMinimumVelocity:I

    .line 117
    .end local v0           #configuration:Landroid/view/ViewConfiguration;
    :cond_0
    return-void
.end method

.method private onButtonTouchDown(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v0, 0x1

    .line 319
    iget-object v1, p0, Lcom/baidu/fm/widget/TunnerView;->mFineFreqDecButtonRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    iput-boolean v0, p0, Lcom/baidu/fm/widget/TunnerView;->mbFineFreqDecTouchDown:Z

    .line 321
    iget-object v1, p0, Lcom/baidu/fm/widget/TunnerView;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/baidu/fm/widget/TunnerView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/baidu/fm/widget/TunnerView;->mButtonLongClickListener:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/fm/widget/TunnerView;->invalidate()V

    .line 336
    :goto_0
    return v0

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/baidu/fm/widget/TunnerView;->mFineFreqIncButtonRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 328
    iput-boolean v0, p0, Lcom/baidu/fm/widget/TunnerView;->mbFineFreqIncTouchDown:Z

    .line 329
    iget-object v1, p0, Lcom/baidu/fm/widget/TunnerView;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 330
    iget-object v1, p0, Lcom/baidu/fm/widget/TunnerView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/baidu/fm/widget/TunnerView;->mButtonLongClickListener:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 333
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/fm/widget/TunnerView;->invalidate()V

    goto :goto_0

    .line 336
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onButtonTouchMove(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 340
    iget-boolean v2, p0, Lcom/baidu/fm/widget/TunnerView;->mbFineFreqDecTouchDown:Z

    if-eqz v2, :cond_1

    .line 341
    iget-object v2, p0, Lcom/baidu/fm/widget/TunnerView;->mFineFreqDecButtonRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_2

    .line 342
    iput-boolean v1, p0, Lcom/baidu/fm/widget/TunnerView;->mbFineFreqDecTouchDown:Z

    .line 343
    iget-object v1, p0, Lcom/baidu/fm/widget/TunnerView;->mButtonLongClickListener:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/fm/widget/TunnerView;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/baidu/fm/widget/TunnerView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/baidu/fm/widget/TunnerView;->mButtonLongClickListener:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 357
    :cond_0
    :goto_0
    return v0

    .line 348
    :cond_1
    iget-boolean v2, p0, Lcom/baidu/fm/widget/TunnerView;->mbFineFreqIncTouchDown:Z

    if-eqz v2, :cond_2

    .line 349
    iget-object v2, p0, Lcom/baidu/fm/widget/TunnerView;->mFineFreqIncButtonRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_2

    .line 350
    iput-boolean v1, p0, Lcom/baidu/fm/widget/TunnerView;->mbFineFreqIncTouchDown:Z

    .line 351
    iget-object v1, p0, Lcom/baidu/fm/widget/TunnerView;->mButtonLongClickListener:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/fm/widget/TunnerView;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/baidu/fm/widget/TunnerView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/baidu/fm/widget/TunnerView;->mButtonLongClickListener:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 357
    goto :goto_0
.end method

.method private onButtonTouchUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 361
    iget-boolean v2, p0, Lcom/baidu/fm/widget/TunnerView;->mbFineFreqDecTouchDown:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/baidu/fm/widget/TunnerView;->mbFineFreqIncTouchDown:Z

    if-eqz v2, :cond_4

    .line 362
    :cond_0
    iget-boolean v2, p0, Lcom/baidu/fm/widget/TunnerView;->mbFineFreqDecTouchDown:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/baidu/fm/widget/TunnerView;->isScrollEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 363
    iget-object v2, p0, Lcom/baidu/fm/widget/TunnerView;->mButtonClickListener:Lcom/baidu/fm/widget/TunnerView$OnButtonClickListener;

    if-eqz v2, :cond_1

    .line 364
    iget-object v2, p0, Lcom/baidu/fm/widget/TunnerView;->mButtonClickListener:Lcom/baidu/fm/widget/TunnerView$OnButtonClickListener;

    const/16 v3, 0x3e9

    invoke-interface {v2, p0, v3}, Lcom/baidu/fm/widget/TunnerView$OnButtonClickListener;->onButtonClick(Landroid/view/View;I)V

    .line 365
    invoke-virtual {p0, v0}, Lcom/baidu/fm/widget/TunnerView;->playSoundEffect(I)V

    .line 373
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/baidu/fm/widget/TunnerView;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_3

    .line 374
    iget-object v2, p0, Lcom/baidu/fm/widget/TunnerView;->mButtonLongClickListener:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 375
    iget-object v2, p0, Lcom/baidu/fm/widget/TunnerView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/baidu/fm/widget/TunnerView;->mButtonLongClickListener:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 378
    :cond_2
    iget-object v2, p0, Lcom/baidu/fm/widget/TunnerView;->mRepeater:Ljava/lang/Runnable;

    if-eqz v2, :cond_3

    .line 379
    iget-object v2, p0, Lcom/baidu/fm/widget/TunnerView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/baidu/fm/widget/TunnerView;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 383
    :cond_3
    iput-boolean v0, p0, Lcom/baidu/fm/widget/TunnerView;->mbFineFreqIncTouchDown:Z

    iput-boolean v0, p0, Lcom/baidu/fm/widget/TunnerView;->mbFineFreqDecTouchDown:Z

    .line 384
    invoke-virtual {p0}, Lcom/baidu/fm/widget/TunnerView;->invalidate()V

    move v0, v1

    .line 387
    :cond_4
    return v0

    .line 367
    :cond_5
    iget-boolean v2, p0, Lcom/baidu/fm/widget/TunnerView;->mbFineFreqIncTouchDown:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/baidu/fm/widget/TunnerView;->isScrollEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    iget-object v2, p0, Lcom/baidu/fm/widget/TunnerView;->mButtonClickListener:Lcom/baidu/fm/widget/TunnerView$OnButtonClickListener;

    if-eqz v2, :cond_1

    .line 369
    iget-object v2, p0, Lcom/baidu/fm/widget/TunnerView;->mButtonClickListener:Lcom/baidu/fm/widget/TunnerView$OnButtonClickListener;

    const/16 v3, 0x3ea

    invoke-interface {v2, p0, v3}, Lcom/baidu/fm/widget/TunnerView$OnButtonClickListener;->onButtonClick(Landroid/view/View;I)V

    .line 370
    invoke-virtual {p0, v0}, Lcom/baidu/fm/widget/TunnerView;->playSoundEffect(I)V

    goto :goto_0
.end method

.method private preLoadImageData()V
    .locals 4

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/baidu/fm/widget/TunnerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerBg:Landroid/graphics/drawable/Drawable;

    .line 121
    invoke-virtual {p0}, Lcom/baidu/fm/widget/TunnerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerScrollerBg:Landroid/graphics/drawable/Drawable;

    .line 123
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mFineFreqDecBitmap:Landroid/graphics/Bitmap;

    .line 125
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mFineFreqDecBitmapPressed:Landroid/graphics/Bitmap;

    .line 128
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020010

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mFineFreqIncBitmap:Landroid/graphics/Bitmap;

    .line 130
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020011

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mFineFreqIncBitmapPressed:Landroid/graphics/Bitmap;

    .line 133
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->lisId2Icon:Ljava/util/Map;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/fm/widget/TunnerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200bb

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->lisId2Icon:Ljava/util/Map;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/fm/widget/TunnerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200bc

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->lisId2Icon:Ljava/util/Map;

    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/fm/widget/TunnerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200bd

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->lisId2Icon:Ljava/util/Map;

    const-wide/16 v1, 0x3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/fm/widget/TunnerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200be

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->lisId2Icon:Ljava/util/Map;

    const-wide/16 v1, 0x4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/fm/widget/TunnerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200bf

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->lisId2Icon:Ljava/util/Map;

    const-wide/16 v1, 0x5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/fm/widget/TunnerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200c0

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->lisId2Icon:Ljava/util/Map;

    const-wide/16 v1, 0x6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/fm/widget/TunnerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200c1

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/fm/widget/TunnerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 402
    :cond_0
    return-void
.end method


# virtual methods
.method public disableScrollDirection(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 479
    iget v0, p0, Lcom/baidu/fm/widget/TunnerView;->canScroll:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/fm/widget/TunnerView;->canScroll:I

    .line 480
    invoke-virtual {p0}, Lcom/baidu/fm/widget/TunnerView;->postInvalidate()V

    .line 481
    return-void
.end method

.method public enableScrollDirection(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 484
    iget v0, p0, Lcom/baidu/fm/widget/TunnerView;->canScroll:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/baidu/fm/widget/TunnerView;->canScroll:I

    .line 485
    invoke-virtual {p0}, Lcom/baidu/fm/widget/TunnerView;->postInvalidate()V

    .line 486
    return-void
.end method

.method public isScrollEnabled(I)Z
    .locals 1
    .parameter "direction"

    .prologue
    .line 489
    iget v0, p0, Lcom/baidu/fm/widget/TunnerView;->canScroll:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/baidu/fm/widget/TunnerView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/baidu/fm/widget/TunnerView;->drawContent(Landroid/graphics/Canvas;)V

    .line 187
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/high16 v9, 0x4100

    .line 151
    if-eqz p1, :cond_0

    .line 152
    sub-int v3, p4, p2

    .line 153
    .local v3, width:I
    sub-int v0, p5, p3

    .line 155
    .local v0, height:I
    iget-object v4, p0, Lcom/baidu/fm/widget/TunnerView;->mFineFreqDecBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, v0, v4

    div-int/lit8 v2, v4, 0x2

    .line 157
    .local v2, topMargin:I
    new-instance v4, Landroid/graphics/RectF;

    sget v5, Lcom/baidu/fm/widget/TunnerView;->mDensity:F

    mul-float/2addr v5, v9

    int-to-float v6, v2

    sget v7, Lcom/baidu/fm/widget/TunnerView;->mDensity:F

    mul-float/2addr v7, v9

    iget-object v8, p0, Lcom/baidu/fm/widget/TunnerView;->mFineFreqDecBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/baidu/fm/widget/TunnerView;->mFineFreqDecBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/2addr v8, v2

    int-to-float v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/baidu/fm/widget/TunnerView;->mFineFreqDecButtonRect:Landroid/graphics/RectF;

    .line 161
    iget-object v4, p0, Lcom/baidu/fm/widget/TunnerView;->mFineFreqIncBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, v0, v4

    div-int/lit8 v2, v4, 0x2

    .line 162
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/baidu/fm/widget/TunnerView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/baidu/fm/widget/TunnerView;->mDensity:F

    mul-float/2addr v6, v9

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/baidu/fm/widget/TunnerView;->mFineFreqIncBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    int-to-float v6, v2

    invoke-virtual {p0}, Lcom/baidu/fm/widget/TunnerView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sget v8, Lcom/baidu/fm/widget/TunnerView;->mDensity:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/baidu/fm/widget/TunnerView;->mFineFreqIncBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/2addr v8, v2

    int-to-float v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/baidu/fm/widget/TunnerView;->mFineFreqIncButtonRect:Landroid/graphics/RectF;

    .line 166
    invoke-virtual {p0}, Lcom/baidu/fm/widget/TunnerView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerScrollerBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 167
    .local v1, margin:I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v1

    iget v6, p0, Lcom/baidu/fm/widget/TunnerView;->mTopMargin:F

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/baidu/fm/widget/TunnerView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v1

    int-to-float v7, v7

    iget v8, p0, Lcom/baidu/fm/widget/TunnerView;->mTopMargin:F

    float-to-int v8, v8

    iget-object v9, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerScrollerBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/baidu/fm/widget/TunnerView;->mScrollRect:Landroid/graphics/RectF;

    .line 171
    .end local v0           #height:I
    .end local v1           #margin:I
    .end local v2           #topMargin:I
    .end local v3           #width:I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 175
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 177
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 178
    .local v1, measureWidth:I
    iget v0, p0, Lcom/baidu/fm/widget/TunnerView;->mContentHeight:I

    .line 179
    .local v0, measureHeigth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/baidu/fm/widget/TunnerView;->setMeasuredDimension(II)V

    .line 181
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 251
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 252
    .local v0, action:I
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    .line 315
    :cond_0
    :goto_0
    return v8

    .line 254
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/baidu/fm/widget/TunnerView;->onButtonTouchDown(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 256
    iget-object v5, p0, Lcom/baidu/fm/widget/TunnerView;->mScrollRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 257
    invoke-direct {p0, p1}, Lcom/baidu/fm/widget/TunnerView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/baidu/fm/widget/TunnerView;->mLastMotionX:F

    .line 259
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/baidu/fm/widget/TunnerView;->mActivePointerId:I

    .line 260
    iget-object v5, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerScrollListener:Lcom/baidu/fm/widget/TunnerView$OnTunnerScrollListener;

    if-eqz v5, :cond_1

    .line 261
    iget-object v5, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerScrollListener:Lcom/baidu/fm/widget/TunnerView$OnTunnerScrollListener;

    invoke-interface {v5}, Lcom/baidu/fm/widget/TunnerView$OnTunnerScrollListener;->onTunnerScrollBegin()V

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/fm/widget/TunnerView;->postInvalidate()V

    goto :goto_0

    .line 267
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/baidu/fm/widget/TunnerView;->onButtonTouchMove(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 269
    iget-object v5, p0, Lcom/baidu/fm/widget/TunnerView;->mScrollRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 270
    iget v5, p0, Lcom/baidu/fm/widget/TunnerView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 272
    .local v2, pointerIndex:I
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 273
    .local v4, x:F
    const-string v5, "TunnerView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_MOVE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/baidu/fm/widget/TunnerView;->mLastMotionX:F

    sub-float v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget v5, p0, Lcom/baidu/fm/widget/TunnerView;->mLastMotionX:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_2

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/baidu/fm/widget/TunnerView;->isScrollEnabled(I)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    iget v5, p0, Lcom/baidu/fm/widget/TunnerView;->mLastMotionX:F

    cmpg-float v5, v4, v5

    if-gez v5, :cond_4

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/baidu/fm/widget/TunnerView;->isScrollEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 276
    :cond_3
    iget v5, p0, Lcom/baidu/fm/widget/TunnerView;->mScrollDelta:F

    iget v6, p0, Lcom/baidu/fm/widget/TunnerView;->mLastMotionX:F

    sub-float v6, v4, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/baidu/fm/widget/TunnerView;->mScrollDelta:F

    .line 277
    iget-object v5, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerScrollListener:Lcom/baidu/fm/widget/TunnerView$OnTunnerScrollListener;

    if-eqz v5, :cond_4

    .line 278
    iget-object v5, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerScrollListener:Lcom/baidu/fm/widget/TunnerView$OnTunnerScrollListener;

    iget v6, p0, Lcom/baidu/fm/widget/TunnerView;->mLastMotionX:F

    sub-float v6, v4, v6

    sget v7, Lcom/baidu/fm/widget/TunnerView;->mDensity:F

    div-float/2addr v6, v7

    float-to-int v6, v6

    invoke-interface {v5, v6}, Lcom/baidu/fm/widget/TunnerView$OnTunnerScrollListener;->onTunnerScrolling(I)V

    .line 282
    :cond_4
    iput v4, p0, Lcom/baidu/fm/widget/TunnerView;->mLastMotionX:F

    .line 283
    invoke-virtual {p0}, Lcom/baidu/fm/widget/TunnerView;->postInvalidate()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 284
    .end local v4           #x:F
    :catch_0
    move-exception v1

    .line 285
    .local v1, e:Ljava/lang/IllegalArgumentException;
    iput v9, p0, Lcom/baidu/fm/widget/TunnerView;->mActivePointerId:I

    .line 286
    invoke-direct {p0}, Lcom/baidu/fm/widget/TunnerView;->releaseVelocityTracker()V

    .line 287
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 292
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .end local v2           #pointerIndex:I
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/baidu/fm/widget/TunnerView;->onButtonTouchUp(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 294
    iget-object v5, p0, Lcom/baidu/fm/widget/TunnerView;->mScrollRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 295
    iget-object v3, p0, Lcom/baidu/fm/widget/TunnerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 296
    .local v3, velocityTracker:Landroid/view/VelocityTracker;
    if-eqz v3, :cond_5

    .line 297
    const/16 v5, 0x3e8

    iget v6, p0, Lcom/baidu/fm/widget/TunnerView;->mMaximumVelocity:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 298
    iget v5, p0, Lcom/baidu/fm/widget/TunnerView;->mActivePointerId:I

    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v5

    float-to-int v5, v5

    .line 300
    :cond_5
    iget-object v5, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerScrollListener:Lcom/baidu/fm/widget/TunnerView$OnTunnerScrollListener;

    if-eqz v5, :cond_6

    .line 301
    iget-object v5, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerScrollListener:Lcom/baidu/fm/widget/TunnerView$OnTunnerScrollListener;

    invoke-interface {v5}, Lcom/baidu/fm/widget/TunnerView$OnTunnerScrollListener;->onTunnerScrollEnd()V

    .line 303
    :cond_6
    iput v9, p0, Lcom/baidu/fm/widget/TunnerView;->mActivePointerId:I

    .line 304
    invoke-direct {p0}, Lcom/baidu/fm/widget/TunnerView;->releaseVelocityTracker()V

    .line 305
    invoke-virtual {p0}, Lcom/baidu/fm/widget/TunnerView;->postInvalidate()V

    goto/16 :goto_0

    .line 309
    .end local v3           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_3
    iput v9, p0, Lcom/baidu/fm/widget/TunnerView;->mActivePointerId:I

    .line 310
    invoke-direct {p0}, Lcom/baidu/fm/widget/TunnerView;->releaseVelocityTracker()V

    goto/16 :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setOnButtonClickListener(Lcom/baidu/fm/widget/TunnerView$OnButtonClickListener;)V
    .locals 0
    .parameter "lsn"

    .prologue
    .line 421
    iput-object p1, p0, Lcom/baidu/fm/widget/TunnerView;->mButtonClickListener:Lcom/baidu/fm/widget/TunnerView$OnButtonClickListener;

    .line 422
    return-void
.end method

.method public setOnButtonRepeatListener(Lcom/baidu/fm/widget/TunnerView$OnButtonRepeatListener;)V
    .locals 0
    .parameter "lsn"

    .prologue
    .line 434
    iput-object p1, p0, Lcom/baidu/fm/widget/TunnerView;->mButtonRepeatListener:Lcom/baidu/fm/widget/TunnerView$OnButtonRepeatListener;

    .line 435
    return-void
.end method

.method public setOnButtonRepeatListener(Lcom/baidu/fm/widget/TunnerView$OnButtonRepeatListener;J)V
    .locals 0
    .parameter "lsn"
    .parameter "interval"

    .prologue
    .line 429
    iput-object p1, p0, Lcom/baidu/fm/widget/TunnerView;->mButtonRepeatListener:Lcom/baidu/fm/widget/TunnerView$OnButtonRepeatListener;

    .line 430
    sput-wide p2, Lcom/baidu/fm/widget/TunnerView;->mInterval:J

    .line 431
    return-void
.end method

.method public setTunnerScrollListener(Lcom/baidu/fm/widget/TunnerView$OnTunnerScrollListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 413
    iput-object p1, p0, Lcom/baidu/fm/widget/TunnerView;->mTunnerScrollListener:Lcom/baidu/fm/widget/TunnerView$OnTunnerScrollListener;

    .line 414
    return-void
.end method
