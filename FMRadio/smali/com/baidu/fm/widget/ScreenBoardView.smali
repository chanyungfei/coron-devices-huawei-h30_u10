.class public Lcom/baidu/fm/widget/ScreenBoardView;
.super Landroid/widget/RelativeLayout;
.source "ScreenBoardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;
    }
.end annotation


# static fields
.field private static final BEGIN_FREQ_INDEX:I = 0x36b

.field private static CONTENT_HEIGHT:I = 0x0

.field private static final END_FREQ_INDEX:I = 0x438

.field private static final FreqIndexUnit:Ljava/lang/String; = "MHZ"

.field private static mDensity:F


# instance fields
.field private mContentHeight:I

.field private mContext:Landroid/content/Context;

.field private mCurrentFreqIndex:I

.field private mDisplayBoardBg:Landroid/graphics/drawable/NinePatchDrawable;

.field private mEndFreqIndex:I

.field private mFreqDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mFreqDividerLayoutParams:Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

.field private mFreqDividerPainter:Landroid/graphics/Paint;

.field private mFreqIndexLayoutParams:Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

.field private mFreqIndexPainter:Landroid/graphics/Paint;

.field private mFreqMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mFreqMarkLayoutParams:Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

.field private mFreqPointerDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private mFreqPointerLayoutParams:Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

.field private mFreqUnitLayoutParams:Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

.field private mFreqUnitPainter:Landroid/graphics/Paint;

.field private mLeftPadding:I

.field private mRightPadding:I

.field private mStartFreqIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0x6e

    sput v0, Lcom/baidu/fm/widget/ScreenBoardView;->CONTENT_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/fm/widget/ScreenBoardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/fm/widget/ScreenBoardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/fm/widget/ScreenBoardView;->setWillNotDraw(Z)V

    .line 74
    invoke-direct {p0, p1}, Lcom/baidu/fm/widget/ScreenBoardView;->initData(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method private convertToString(J)Ljava/lang/String;
    .locals 4
    .parameter "freqIndex"

    .prologue
    .line 340
    long-to-float v2, p1

    const/high16 v3, 0x4120

    div-float v1, v2, v3

    .line 341
    .local v1, freqMhz:F
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "0"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 342
    .local v0, df:Ljava/text/DecimalFormat;
    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 196
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/fm/widget/ScreenBoardView;->mDisplayBoardBg:Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v9, :cond_0

    .line 197
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/fm/widget/ScreenBoardView;->mDisplayBoardBg:Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v10, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/baidu/fm/widget/ScreenBoardView;->mLeftPadding:I

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/fm/widget/ScreenBoardView;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/baidu/fm/widget/ScreenBoardView;->mRightPadding:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/baidu/fm/widget/ScreenBoardView;->mContentHeight:I

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/fm/widget/ScreenBoardView;->mDisplayBoardBg:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 202
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/fm/widget/ScreenBoardView;->getWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v6, v9, 0x2

    .line 203
    .local v6, left:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/baidu/fm/widget/ScreenBoardView;->mContentHeight:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    sub-int/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqDividerLayoutParams:Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

    iget v10, v10, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;->mBottomMargin:I

    sub-int v8, v9, v10

    .line 205
    .local v8, top:I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_1

    .line 206
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqDividerDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/fm/widget/ScreenBoardView;->getWidth()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    add-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/fm/widget/ScreenBoardView;->mContentHeight:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqDividerLayoutParams:Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

    iget v13, v13, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;->mBottomMargin:I

    sub-int/2addr v12, v13

    invoke-direct {v10, v6, v8, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqDividerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 213
    :cond_1
    const/16 v2, 0xa

    .line 215
    .local v2, freqMarkNum:I
    const v9, 0x3cc30c31

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float v7, v9, v10

    .line 217
    .local v7, leftPadding:F
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x4000

    mul-float/2addr v10, v7

    sub-float/2addr v9, v10

    int-to-float v10, v2

    div-float v3, v9, v10

    .line 219
    .local v3, gap:F
    const/4 v9, 0x1

    const/high16 v10, 0x4000

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/fm/widget/ScreenBoardView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 221
    .local v1, bottomMargin:F
    int-to-float v9, v8

    sub-float v5, v9, v1

    .line 222
    .local v5, indexTop:F
    const/4 v4, 0x0

    .local v4, index:I
    :goto_0
    if-gt v4, v2, :cond_2

    .line 223
    mul-int/lit8 v9, v4, 0x2

    mul-int/lit8 v9, v9, 0xa

    add-int/lit16 v9, v9, 0x370

    int-to-long v9, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/baidu/fm/widget/ScreenBoardView;->convertToString(J)Ljava/lang/String;

    move-result-object v9

    int-to-float v10, v6

    add-float/2addr v10, v7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqDividerPainter:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v5, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 225
    int-to-float v9, v6

    add-float/2addr v9, v3

    float-to-int v6, v9

    .line 222
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 228
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_3

    .line 229
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqMarkDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v10, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqMarkLayoutParams:Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

    iget v11, v11, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;->mLeftMargin:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqMarkLayoutParams:Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

    iget v12, v12, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;->mTopMargin:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqMarkLayoutParams:Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

    iget v13, v13, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;->mLeftMargin:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqMarkLayoutParams:Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

    iget v14, v14, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;->mTopMargin:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    add-int/2addr v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqMarkDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 274
    :cond_3
    return-void
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/high16 v10, 0x4000

    .line 278
    iget-object v7, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqIndexPainter:Landroid/graphics/Paint;

    const v8, 0x182b8

    invoke-virtual {p0, v8}, Lcom/baidu/fm/widget/ScreenBoardView;->convertToFreqString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 279
    .local v2, freq_index_width:F
    iget-object v7, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqIndexPainter:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    .line 280
    .local v4, indexFontMetics:Landroid/graphics/Paint$FontMetrics;
    iget-object v7, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqUnitPainter:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 281
    .local v1, freqUnitFontMetics:Landroid/graphics/Paint$FontMetrics;
    invoke-virtual {p0}, Lcom/baidu/fm/widget/ScreenBoardView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v2

    div-float/2addr v7, v10

    iget-object v8, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqIndexLayoutParams:Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

    iget v8, v8, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;->mLeftMargin:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    add-float v6, v7, v2

    .line 283
    .local v6, right:F
    invoke-virtual {p0}, Lcom/baidu/fm/widget/ScreenBoardView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v9, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v8, v9

    add-float/2addr v7, v8

    div-float v0, v7, v10

    .line 285
    .local v0, base:F
    iget-object v7, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqIndexPainter:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 286
    iget v7, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mCurrentFreqIndex:I

    invoke-virtual {p0, v7}, Lcom/baidu/fm/widget/ScreenBoardView;->convertToFreqString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqIndexLayoutParams:Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

    iget v8, v8, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;->mBottomMargin:I

    int-to-float v8, v8

    sub-float v8, v0, v8

    iget-object v9, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqIndexPainter:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v6, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 289
    iget-object v7, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqUnitPainter:Landroid/graphics/Paint;

    const-string v8, "MHZ"

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 290
    .local v3, freq_unit_width:F
    iget-object v7, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqUnitPainter:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 291
    const-string v7, "MHZ"

    iget-object v8, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqUnitLayoutParams:Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

    iget v8, v8, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;->mLeftMargin:I

    int-to-float v8, v8

    add-float/2addr v8, v6

    iget-object v9, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqUnitLayoutParams:Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

    iget v9, v9, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;->mBottomMargin:I

    int-to-float v9, v9

    sub-float v9, v0, v9

    iget-object v10, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqUnitPainter:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 294
    iget-object v7, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqPointerDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v7, :cond_0

    .line 295
    iget v7, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mCurrentFreqIndex:I

    add-int/lit16 v7, v7, -0x36b

    int-to-float v7, v7

    const/high16 v8, 0x4352

    div-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/baidu/fm/widget/ScreenBoardView;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqPointerLayoutParams:Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

    iget v9, v9, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;->mLeftMargin:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqPointerLayoutParams:Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

    iget v9, v9, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;->mRightMargin:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqPointerLayoutParams:Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

    iget v8, v8, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;->mLeftMargin:I

    int-to-float v8, v8

    add-float v5, v7, v8

    .line 300
    .local v5, left:F
    iget-object v7, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqPointerDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v8, Landroid/graphics/Rect;

    float-to-int v9, v5

    iget-object v10, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqPointerLayoutParams:Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

    iget v10, v10, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;->mTopMargin:I

    float-to-int v11, v5

    iget-object v12, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqPointerDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mContentHeight:I

    iget-object v13, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqPointerLayoutParams:Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

    iget v13, v13, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;->mBottomMargin:I

    sub-int/2addr v12, v13

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 304
    iget-object v7, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqPointerDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 306
    .end local v5           #left:F
    :cond_0
    return-void
.end method

.method private initData(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x2

    .line 78
    iput-object p1, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mContext:Landroid/content/Context;

    .line 79
    const/16 v1, 0x36b

    iput v1, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mCurrentFreqIndex:I

    .line 81
    invoke-virtual {p0}, Lcom/baidu/fm/widget/ScreenBoardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v1, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mDisplayBoardBg:Landroid/graphics/drawable/NinePatchDrawable;

    .line 82
    invoke-virtual {p0}, Lcom/baidu/fm/widget/ScreenBoardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 83
    invoke-virtual {p0}, Lcom/baidu/fm/widget/ScreenBoardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v1, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqPointerDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 85
    invoke-virtual {p0}, Lcom/baidu/fm/widget/ScreenBoardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqDividerPainter:Landroid/graphics/Paint;

    .line 88
    const/high16 v1, 0x40e0

    invoke-virtual {p0}, Lcom/baidu/fm/widget/ScreenBoardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 90
    .local v0, pixel:F
    iget-object v1, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqDividerPainter:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 91
    iget-object v1, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqDividerPainter:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object v1, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqDividerPainter:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    iget-object v1, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqDividerPainter:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 95
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqIndexPainter:Landroid/graphics/Paint;

    .line 96
    const/high16 v1, 0x4210

    invoke-virtual {p0}, Lcom/baidu/fm/widget/ScreenBoardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqIndexPainter:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 99
    iget-object v1, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqIndexPainter:Landroid/graphics/Paint;

    const-string v2, "#515466"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v1, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqIndexPainter:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 102
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqUnitPainter:Landroid/graphics/Paint;

    .line 103
    const/high16 v1, 0x4130

    invoke-virtual {p0}, Lcom/baidu/fm/widget/ScreenBoardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 105
    iget-object v1, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqUnitPainter:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 106
    iget-object v1, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqUnitPainter:Landroid/graphics/Paint;

    const-string v2, "#949788"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v1, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/baidu/fm/widget/ScreenBoardView;->mDensity:F

    .line 109
    sget v1, Lcom/baidu/fm/widget/ScreenBoardView;->mDensity:F

    sget v2, Lcom/baidu/fm/widget/ScreenBoardView;->CONTENT_HEIGHT:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mContentHeight:I

    .line 111
    invoke-direct {p0}, Lcom/baidu/fm/widget/ScreenBoardView;->setupChildLayoutParams()V

    .line 112
    return-void
.end method

.method private setupChildLayoutParams()V
    .locals 7

    .prologue
    const v6, 0x7f06001d

    .line 115
    const/4 v2, 0x0

    .line 116
    .local v2, leftMargin:I
    const/4 v3, 0x0

    .line 117
    .local v3, topMargin:I
    const/4 v4, 0x0

    .line 118
    .local v4, rightMargin:I
    const/4 v5, 0x0

    .line 121
    .local v5, bottomMargin:I
    iget-object v0, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 123
    new-instance v0, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;-><init>(Lcom/baidu/fm/widget/ScreenBoardView;IIII)V

    iput-object v0, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqDividerLayoutParams:Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

    .line 125
    const/4 v5, 0x0

    .line 127
    iget-object v0, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move v2, v4

    .line 129
    iget-object v0, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 131
    iget-object v0, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 133
    new-instance v0, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;-><init>(Lcom/baidu/fm/widget/ScreenBoardView;IIII)V

    iput-object v0, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqPointerLayoutParams:Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

    .line 135
    const/4 v5, 0x0

    move v3, v5

    move v4, v5

    move v2, v5

    .line 137
    iget-object v0, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 139
    iget-object v0, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 141
    new-instance v0, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;-><init>(Lcom/baidu/fm/widget/ScreenBoardView;IIII)V

    iput-object v0, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqIndexLayoutParams:Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

    .line 142
    const/4 v5, 0x0

    move v3, v5

    move v4, v5

    move v2, v5

    .line 144
    iget-object v0, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 146
    iget-object v0, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 148
    new-instance v0, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;-><init>(Lcom/baidu/fm/widget/ScreenBoardView;IIII)V

    iput-object v0, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqUnitLayoutParams:Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

    .line 149
    const/4 v5, 0x0

    move v3, v5

    move v4, v5

    move v2, v5

    .line 151
    iget-object v0, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 153
    iget-object v0, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 155
    new-instance v0, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;-><init>(Lcom/baidu/fm/widget/ScreenBoardView;IIII)V

    iput-object v0, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mFreqMarkLayoutParams:Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;

    .line 156
    const/4 v5, 0x0

    move v3, v5

    move v4, v5

    move v2, v5

    .line 157
    return-void
.end method


# virtual methods
.method public convertToFreqString(I)Ljava/lang/String;
    .locals 2
    .parameter "freqIndex"

    .prologue
    .line 328
    int-to-float v0, p1

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFreqIndex()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mCurrentFreqIndex:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/baidu/fm/widget/ScreenBoardView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 192
    invoke-direct {p0, p1}, Lcom/baidu/fm/widget/ScreenBoardView;->drawContent(Landroid/graphics/Canvas;)V

    .line 193
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/baidu/fm/widget/ScreenBoardView;->getChildCount()I

    move-result v1

    .line 181
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 182
    invoke-virtual {p0, v2}, Lcom/baidu/fm/widget/ScreenBoardView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 183
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 181
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 161
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 162
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 163
    .local v4, measureWidth:I
    iget v3, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mContentHeight:I

    .line 164
    .local v3, measureHeigth:I
    invoke-virtual {p0}, Lcom/baidu/fm/widget/ScreenBoardView;->getChildCount()I

    move-result v1

    .line 165
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 166
    invoke-virtual {p0, v2}, Lcom/baidu/fm/widget/ScreenBoardView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 168
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, p1, v5}, Landroid/view/View;->measure(II)V

    .line 165
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v0           #child:Landroid/view/View;
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0, p1, v5}, Lcom/baidu/fm/widget/ScreenBoardView;->setMeasuredDimension(II)V

    .line 176
    return-void
.end method

.method public setCurrentFreqIndex(I)V
    .locals 2
    .parameter "freqIndex"

    .prologue
    .line 309
    move v0, p1

    .line 310
    .local v0, newFreq:I
    const/16 v1, 0x36b

    if-ge v0, v1, :cond_0

    .line 311
    const/16 v0, 0x36b

    .line 313
    :cond_0
    const/16 v1, 0x438

    if-le v0, v1, :cond_1

    .line 314
    const/16 v0, 0x438

    .line 317
    :cond_1
    iget v1, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mCurrentFreqIndex:I

    if-eq v1, p1, :cond_2

    .line 318
    iput p1, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mCurrentFreqIndex:I

    .line 319
    invoke-virtual {p0}, Lcom/baidu/fm/widget/ScreenBoardView;->invalidate()V

    .line 321
    :cond_2
    return-void
.end method

.method public setFreqBoundary(II)V
    .locals 1
    .parameter "startFreq"
    .parameter "endFreq"

    .prologue
    .line 332
    iget v0, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mStartFreqIndex:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mEndFreqIndex:I

    if-eq v0, p2, :cond_1

    .line 333
    :cond_0
    iput p1, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mStartFreqIndex:I

    .line 334
    iput p2, p0, Lcom/baidu/fm/widget/ScreenBoardView;->mEndFreqIndex:I

    .line 336
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/fm/widget/ScreenBoardView;->invalidate()V

    .line 337
    return-void
.end method
