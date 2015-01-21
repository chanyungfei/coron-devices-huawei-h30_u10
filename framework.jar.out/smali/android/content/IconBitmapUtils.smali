.class public Landroid/content/IconBitmapUtils;
.super Ljava/lang/Object;
.source "IconBitmapUtils.java"


# static fields
.field private static final DEBUG_ICON:Z = false

.field private static final HFACTOR:F = 0.9f

.field private static final MASK_ABS_VALID_RANGE:I = 0xa

.field private static final SFACTOR:F = 0.8f

.field private static final SMALLER_HUE:F = 30.0f

.field private static TAG:Ljava/lang/String; = null

.field private static TAG_ICON:Ljava/lang/String; = null

.field private static VALID_TRANSPARENCY:I = 0x0

.field private static final VFACTOR:F = 1.2f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "IconBitmapUtils"

    sput-object v0, Landroid/content/IconBitmapUtils;->TAG:Ljava/lang/String;

    .line 42
    const/16 v0, 0x28

    sput v0, Landroid/content/IconBitmapUtils;->VALID_TRANSPARENCY:I

    .line 44
    const-string v0, "RsourcesEx"

    sput-object v0, Landroid/content/IconBitmapUtils;->TAG_ICON:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkTransparency(I)Z
    .locals 2
    .parameter "argb"

    .prologue
    .line 229
    ushr-int/lit8 v0, p0, 0x18

    sget v1, Landroid/content/IconBitmapUtils;->VALID_TRANSPARENCY:I

    if-lt v0, v1, :cond_0

    .line 230
    const/4 v0, 0x1

    .line 232
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "src"
    .parameter "mask"
    .parameter "background"
    .parameter "border"

    .prologue
    .line 325
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 326
    .local v3, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 327
    .local v7, h:I
    mul-int v2, v3, v7

    new-array v1, v2, [I

    .line 328
    .local v1, pixels:[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 329
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 330
    .local v11, resultBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 331
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 332
    .local v10, paint:Landroid/graphics/Paint;
    if-eqz p1, :cond_0

    .line 333
    invoke-static {v1, v3, v7, p1}, Landroid/content/IconBitmapUtils;->mask([IIILandroid/graphics/Bitmap;)V

    .line 336
    :cond_0
    if-eqz p2, :cond_1

    .line 337
    invoke-static {v0, p2, v3, v7, v1}, Landroid/content/IconBitmapUtils;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II[I)V

    .line 339
    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 340
    if-eqz p3, :cond_2

    .line 341
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, p3, v2, v4, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 344
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 345
    return-object v11
.end method

.method private static drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II[I)V
    .locals 23
    .parameter "canvas"
    .parameter "background"
    .parameter "w"
    .parameter "h"
    .parameter "pixels"

    .prologue
    .line 394
    move-object/from16 v0, p4

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroid/content/IconBitmapUtils;->getAvgColor([III)I

    move-result v13

    .line 395
    .local v13, avgColor:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 396
    .local v6, bw:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 397
    .local v10, bh:I
    mul-int v3, v6, v10

    new-array v4, v3, [I

    .line 398
    .local v4, backPixels:[I
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p1

    move v9, v6

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 400
    invoke-static {v13}, Landroid/graphics/Color;->hue(I)F

    move-result v3

    const/high16 v5, 0x43b4

    mul-float/2addr v3, v5

    float-to-int v0, v3

    move/from16 v19, v0

    .line 401
    .local v19, hue:I
    invoke-static {v13}, Landroid/graphics/Color;->saturation(I)F

    move-result v22

    .line 402
    .local v22, saturation:F
    invoke-static {v13}, Landroid/graphics/Color;->brightness(I)F

    move-result v17

    .line 403
    .local v17, brightness:F
    const v3, 0x3f666666

    move/from16 v0, v19

    invoke-static {v0, v3}, Landroid/content/IconBitmapUtils;->getHue(IF)F

    move-result v3

    const v5, 0x3f4ccccd

    move/from16 v0, v19

    invoke-static {v0, v5}, Landroid/content/IconBitmapUtils;->getSaturationFactor(IF)F

    move-result v5

    mul-float v5, v5, v22

    const v7, 0x3f99999a

    move/from16 v0, v19

    invoke-static {v0, v7}, Landroid/content/IconBitmapUtils;->getBrightnessFactor(IF)F

    move-result v7

    mul-float v7, v7, v17

    invoke-static {v3, v5, v7}, Landroid/graphics/Color;->HSBtoColor(FFF)I

    move-result v15

    .line 406
    .local v15, backColor:I
    invoke-static {v15}, Landroid/graphics/Color;->red(I)I

    move-result v21

    .line 407
    .local v21, r:I
    invoke-static {v15}, Landroid/graphics/Color;->green(I)I

    move-result v18

    .line 408
    .local v18, g:I
    invoke-static {v15}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    .line 409
    .local v14, b:I
    mul-int v3, v6, v10

    add-int/lit8 v20, v3, -0x1

    .local v20, i:I
    :goto_0
    if-ltz v20, :cond_0

    .line 410
    aget v16, v4, v20

    .line 411
    .local v16, backPixel:I
    const/high16 v3, -0x100

    and-int v3, v3, v16

    const/high16 v5, 0xff

    const/high16 v7, 0xff

    and-int v7, v7, v16

    mul-int v7, v7, v21

    ushr-int/lit8 v7, v7, 0x8

    and-int/2addr v5, v7

    or-int/2addr v3, v5

    const v5, 0xff00

    const v7, 0xff00

    and-int v7, v7, v16

    mul-int v7, v7, v18

    ushr-int/lit8 v7, v7, 0x8

    and-int/2addr v5, v7

    or-int/2addr v3, v5

    move/from16 v0, v16

    and-int/lit16 v5, v0, 0xff

    mul-int/2addr v5, v14

    ushr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    aput v3, v4, v20

    .line 409
    add-int/lit8 v20, v20, -0x1

    goto :goto_0

    .line 416
    .end local v16           #backPixel:I
    :cond_0
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move v9, v6

    invoke-virtual/range {v3 .. v12}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 417
    return-void
.end method

.method public static drawSource(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bmp"
    .parameter "standardSize"
    .parameter "iconSize"

    .prologue
    const/high16 v6, 0x4000

    .line 350
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 351
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 352
    .local v1, paint:Landroid/graphics/Paint;
    const/4 v2, 0x0

    .line 353
    .local v2, resultBitmap:Landroid/graphics/Bitmap;
    monitor-enter v0

    .line 355
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 356
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 358
    const/4 v4, 0x1

    invoke-static {p0, p2, p2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 359
    .local v3, tmp:Landroid/graphics/Bitmap;
    sub-int v4, p1, p2

    int-to-float v4, v4

    div-float/2addr v4, v6

    sub-int v5, p1, p2

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 360
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 361
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 363
    monitor-exit v0

    .line 364
    return-object v2

    .line 363
    .end local v3           #tmp:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "drawable"

    .prologue
    .line 207
    instance-of v3, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 208
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 217
    .restart local p0
    :goto_0
    return-object v0

    .line 211
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 212
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 213
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 214
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 217
    .local v2, ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getAvgColor([III)I
    .locals 8
    .parameter "tempPixels"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 370
    const/4 v4, 0x0

    .line 371
    .local v4, count:I
    const/4 v3, 0x0

    .line 372
    .local v3, color:I
    const/4 v2, 0x0

    .line 373
    .local v2, aR:I
    const/4 v1, 0x0

    .line 374
    .local v1, aG:I
    const/4 v0, 0x0

    .line 376
    .local v0, aB:I
    mul-int v6, p1, p2

    add-int/lit8 v5, v6, -0x1

    .local v5, j:I
    :goto_0
    if-ltz v5, :cond_1

    .line 377
    const v6, 0xffffff

    aget v7, p0, v5

    and-int v3, v6, v7

    .line 378
    if-gtz v3, :cond_0

    .line 376
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 380
    :cond_0
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v6

    add-int/2addr v2, v6

    .line 381
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 382
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    add-int/2addr v0, v6

    .line 383
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 385
    :cond_1
    if-lez v4, :cond_2

    .line 386
    div-int/2addr v2, v4

    .line 387
    div-int/2addr v1, v4

    .line 388
    div-int/2addr v0, v4

    .line 390
    :cond_2
    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    return v6
.end method

.method private static getBrightnessFactor(IF)F
    .locals 2
    .parameter "hue"
    .parameter "factor"

    .prologue
    .line 435
    int-to-float v0, p0

    const/high16 v1, 0x41f0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 436
    const/high16 v0, 0x3f00

    mul-float/2addr p1, v0

    .line 438
    .end local p1
    :cond_0
    return p1
.end method

.method private static getHue(IF)F
    .locals 2
    .parameter "hue"
    .parameter "factor"

    .prologue
    .line 421
    int-to-float v0, p0

    const/high16 v1, 0x41f0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 422
    rsub-int p0, p0, 0x168

    .line 424
    :cond_0
    int-to-float v0, p0

    mul-float/2addr v0, p1

    const/high16 v1, 0x43b4

    div-float/2addr v0, v1

    return v0
.end method

.method public static getIconInfo(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;
    .locals 12
    .parameter "bmp"

    .prologue
    const/4 v2, 0x0

    .line 306
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 307
    .local v3, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 308
    .local v7, h:I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, pixels:[I
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 309
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 310
    invoke-static {v1, v3, v7}, Landroid/content/IconBitmapUtils;->getValidTop([III)I

    move-result v11

    .line 311
    .local v11, top:I
    invoke-static {v1, v3, v7}, Landroid/content/IconBitmapUtils;->getValidBottom([III)I

    move-result v8

    .line 312
    .local v8, bottom:I
    invoke-static {v1, v3, v7}, Landroid/content/IconBitmapUtils;->getValidLeft([III)I

    move-result v9

    .line 313
    .local v9, left:I
    invoke-static {v1, v3, v7}, Landroid/content/IconBitmapUtils;->getValidRight([III)I

    move-result v10

    .line 314
    .local v10, right:I
    if-ge v9, v10, :cond_0

    if-ge v11, v8, :cond_0

    .line 316
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v9, v11, v10, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 319
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getSaturationFactor(IF)F
    .locals 2
    .parameter "hue"
    .parameter "factor"

    .prologue
    .line 428
    int-to-float v0, p0

    const/high16 v1, 0x41f0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 429
    const/high16 v0, 0x3f00

    mul-float/2addr p1, v0

    .line 431
    .end local p1
    :cond_0
    return p1
.end method

.method private static getValidBottom([III)I
    .locals 5
    .parameter "pixels"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 256
    rem-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_1

    div-int/lit8 v4, p1, 0x2

    add-int/lit8 v2, v4, -0x1

    .line 257
    .local v2, mid_w:I
    :goto_0
    add-int/lit8 v0, p2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_4

    .line 258
    mul-int v3, v0, p1

    .line 259
    .local v3, y:I
    move v1, v2

    .local v1, j:I
    :goto_2
    if-ltz v1, :cond_3

    .line 260
    add-int v4, v3, v1

    aget v4, p0, v4

    invoke-static {v4}, Landroid/content/IconBitmapUtils;->checkTransparency(I)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v4, p1, -0x1

    sub-int/2addr v4, v1

    add-int/2addr v4, v3

    aget v4, p0, v4

    invoke-static {v4}, Landroid/content/IconBitmapUtils;->checkTransparency(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 265
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v3           #y:I
    :cond_0
    :goto_3
    return v0

    .line 256
    .end local v2           #mid_w:I
    :cond_1
    div-int/lit8 v2, p1, 0x2

    goto :goto_0

    .line 259
    .restart local v0       #i:I
    .restart local v1       #j:I
    .restart local v2       #mid_w:I
    .restart local v3       #y:I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 257
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 265
    .end local v1           #j:I
    .end local v3           #y:I
    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static getValidLeft([III)I
    .locals 4
    .parameter "pixels"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 272
    rem-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_1

    div-int/lit8 v3, p2, 0x2

    add-int/lit8 v2, v3, -0x1

    .line 273
    .local v2, mid_h:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_4

    .line 274
    move v1, v2

    .local v1, j:I
    :goto_2
    if-ltz v1, :cond_3

    .line 276
    mul-int v3, v1, p1

    add-int/2addr v3, v0

    aget v3, p0, v3

    invoke-static {v3}, Landroid/content/IconBitmapUtils;->checkTransparency(I)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v3, p2, -0x1

    sub-int/2addr v3, v1

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    aget v3, p0, v3

    invoke-static {v3}, Landroid/content/IconBitmapUtils;->checkTransparency(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 282
    .end local v0           #i:I
    .end local v1           #j:I
    :cond_0
    :goto_3
    return v0

    .line 272
    .end local v2           #mid_h:I
    :cond_1
    div-int/lit8 v2, p2, 0x2

    goto :goto_0

    .line 274
    .restart local v0       #i:I
    .restart local v1       #j:I
    .restart local v2       #mid_h:I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 273
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #j:I
    :cond_4
    move v0, p1

    .line 282
    goto :goto_3
.end method

.method private static getValidRight([III)I
    .locals 4
    .parameter "pixels"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 289
    rem-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_1

    div-int/lit8 v3, p2, 0x2

    add-int/lit8 v2, v3, -0x1

    .line 290
    .local v2, mid_h:I
    :goto_0
    add-int/lit8 v0, p1, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_4

    .line 291
    move v1, v2

    .local v1, j:I
    :goto_2
    if-ltz v1, :cond_3

    .line 293
    mul-int v3, v1, p1

    add-int/2addr v3, v0

    aget v3, p0, v3

    invoke-static {v3}, Landroid/content/IconBitmapUtils;->checkTransparency(I)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v3, p2, -0x1

    sub-int/2addr v3, v1

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    aget v3, p0, v3

    invoke-static {v3}, Landroid/content/IconBitmapUtils;->checkTransparency(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 299
    .end local v0           #i:I
    .end local v1           #j:I
    :cond_0
    :goto_3
    return v0

    .line 289
    .end local v2           #mid_h:I
    :cond_1
    div-int/lit8 v2, p2, 0x2

    goto :goto_0

    .line 291
    .restart local v0       #i:I
    .restart local v1       #j:I
    .restart local v2       #mid_h:I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 290
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 299
    .end local v1           #j:I
    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static getValidTop([III)I
    .locals 5
    .parameter "pixels"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 240
    rem-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_1

    div-int/lit8 v4, p1, 0x2

    add-int/lit8 v2, v4, -0x1

    .line 241
    .local v2, mid_w:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_4

    .line 242
    mul-int v3, v0, p1

    .line 243
    .local v3, y:I
    move v1, v2

    .local v1, j:I
    :goto_2
    if-ltz v1, :cond_3

    .line 244
    add-int v4, v3, v1

    aget v4, p0, v4

    invoke-static {v4}, Landroid/content/IconBitmapUtils;->checkTransparency(I)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v4, p1, -0x1

    sub-int/2addr v4, v1

    add-int/2addr v4, v3

    aget v4, p0, v4

    invoke-static {v4}, Landroid/content/IconBitmapUtils;->checkTransparency(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 249
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v3           #y:I
    :cond_0
    :goto_3
    return v0

    .line 240
    .end local v2           #mid_w:I
    :cond_1
    div-int/lit8 v2, p1, 0x2

    goto :goto_0

    .line 243
    .restart local v0       #i:I
    .restart local v1       #j:I
    .restart local v2       #mid_w:I
    .restart local v3       #y:I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 241
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #j:I
    .end local v3           #y:I
    :cond_4
    move v0, p2

    .line 249
    goto :goto_3
.end method

.method public static mask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 22
    .parameter "bmpSrc"
    .parameter "bmpMask"

    .prologue
    .line 81
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 82
    :cond_0
    const/4 v9, 0x0

    .line 135
    :goto_0
    return-object v9

    .line 85
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 87
    .local v9, newBitMap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 88
    .local v4, w:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 89
    .local v8, h:I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .line 90
    .local v21, wMask:I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 92
    .local v18, hMask:I
    const/4 v5, 0x0

    .line 93
    .local v5, srcStartX:I
    const/4 v6, 0x0

    .line 95
    .local v6, srcStartY:I
    move/from16 v0, v21

    if-le v4, v0, :cond_2

    .line 96
    sub-int v1, v4, v21

    div-int/lit8 v5, v1, 0x2

    .line 97
    move/from16 v4, v21

    .line 99
    :cond_2
    move/from16 v0, v18

    if-le v8, v0, :cond_3

    .line 100
    sub-int v1, v8, v18

    div-int/lit8 v6, v1, 0x2

    .line 101
    move/from16 v8, v18

    .line 105
    :cond_3
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .line 106
    .local v2, srcPixels:[I
    mul-int v1, v4, v8

    new-array v10, v1, [I

    .line 108
    .local v10, maskPixels:[I
    const/4 v3, 0x0

    move-object/from16 v1, p0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 110
    const/4 v11, 0x0

    sub-int v1, v21, v4

    div-int/lit8 v13, v1, 0x2

    sub-int v1, v18, v8

    div-int/lit8 v14, v1, 0x2

    move v12, v4

    move v15, v4

    move/from16 v16, v8

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 113
    mul-int v1, v4, v8

    add-int/lit8 v20, v1, -0x1

    .local v20, i:I
    :goto_1
    if-ltz v20, :cond_4

    .line 114
    aget v1, v10, v20

    ushr-int/lit8 v1, v1, 0x18

    aget v3, v2, v20

    ushr-int/lit8 v3, v3, 0x18

    mul-int/2addr v1, v3

    div-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    aget v3, v2, v20

    const v7, 0xffffff

    and-int/2addr v3, v7

    or-int/2addr v1, v3

    aput v1, v10, v20

    .line 113
    add-int/lit8 v20, v20, -0x1

    goto :goto_1

    .line 119
    :cond_4
    const/4 v11, 0x0

    sub-int v1, v21, v4

    div-int/lit8 v13, v1, 0x2

    sub-int v1, v18, v8

    div-int/lit8 v14, v1, 0x2

    move v12, v4

    move v15, v4

    move/from16 v16, v8

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 120
    mul-int v1, v21, v18

    new-array v12, v1, [I

    .line 121
    .local v12, mask:[I
    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v9

    move/from16 v14, v21

    move/from16 v17, v21

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 122
    const/4 v14, 0x0

    const/4 v15, 0x0

    sub-int v1, v18, v8

    div-int/lit8 v17, v1, 0x2

    move/from16 v13, v21

    move/from16 v16, v21

    invoke-static/range {v12 .. v17}, Landroid/content/IconBitmapUtils;->setTransparent([IIIIII)V

    .line 123
    const/4 v14, 0x0

    add-int v1, v18, v8

    div-int/lit8 v15, v1, 0x2

    move/from16 v13, v21

    move/from16 v16, v21

    move/from16 v17, v18

    invoke-static/range {v12 .. v17}, Landroid/content/IconBitmapUtils;->setTransparent([IIIIII)V

    .line 124
    const/4 v14, 0x0

    const/4 v15, 0x0

    sub-int v1, v21, v4

    div-int/lit8 v16, v1, 0x2

    move/from16 v13, v21

    move/from16 v17, v18

    invoke-static/range {v12 .. v17}, Landroid/content/IconBitmapUtils;->setTransparent([IIIIII)V

    .line 125
    add-int v1, v21, v4

    div-int/lit8 v14, v1, 0x2

    const/4 v15, 0x0

    move/from16 v13, v21

    move/from16 v16, v21

    move/from16 v17, v18

    invoke-static/range {v12 .. v17}, Landroid/content/IconBitmapUtils;->setTransparent([IIIIII)V

    .line 126
    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v9

    move/from16 v14, v21

    move/from16 v17, v21

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 128
    .end local v2           #srcPixels:[I
    .end local v4           #w:I
    .end local v5           #srcStartX:I
    .end local v6           #srcStartY:I
    .end local v8           #h:I
    .end local v10           #maskPixels:[I
    .end local v12           #mask:[I
    .end local v18           #hMask:I
    .end local v20           #i:I
    .end local v21           #wMask:I
    :catch_0
    move-exception v19

    .line 130
    .local v19, e:Ljava/lang/RuntimeException;
    if-eqz v9, :cond_5

    .line 131
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 133
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public static mask([IIILandroid/graphics/Bitmap;)V
    .locals 11
    .parameter "pixels"
    .parameter "w"
    .parameter "h"
    .parameter "mask"

    .prologue
    .line 59
    if-eqz p3, :cond_1

    .line 60
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 61
    .local v10, wMask:I
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 62
    .local v8, hMask:I
    if-lt v10, p1, :cond_0

    if-ge v8, p2, :cond_2

    .line 63
    :cond_0
    sget-object v0, Landroid/content/IconBitmapUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mask size error, wMask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",hMask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v8           #hMask:I
    .end local v10           #wMask:I
    :cond_1
    return-void

    .line 66
    .restart local v8       #hMask:I
    .restart local v10       #wMask:I
    :cond_2
    mul-int v0, p1, p2

    new-array v1, v0, [I

    .line 67
    .local v1, maskPixels:[I
    const/4 v2, 0x0

    sub-int v0, v10, p1

    div-int/lit8 v4, v0, 0x2

    sub-int v0, v10, p2

    div-int/lit8 v5, v0, 0x2

    move-object v0, p3

    move v3, p1

    move v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 68
    mul-int v0, p1, p2

    add-int/lit8 v9, v0, -0x1

    .local v9, i:I
    :goto_0
    if-ltz v9, :cond_1

    .line 69
    aget v0, p0, v9

    ushr-int/lit8 v0, v0, 0x18

    aget v2, v1, v9

    ushr-int/lit8 v2, v2, 0x18

    mul-int/2addr v0, v2

    div-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    aget v2, p0, v9

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    aput v0, p0, v9

    .line 68
    add-int/lit8 v9, v9, -0x1

    goto :goto_0
.end method

.method public static overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "bmpSrc"
    .parameter "bmpBg"

    .prologue
    const/4 v0, 0x0

    .line 184
    invoke-static {p0, p1, v0, v0}, Landroid/content/IconBitmapUtils;->overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "bmpSrc"
    .parameter "bmpBg"
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v4, 0x0

    .line 154
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-object v4

    .line 157
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 158
    .local v6, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 159
    .local v1, h:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 160
    .local v7, wBg:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 161
    .local v2, hBg:I
    if-gt v6, v7, :cond_2

    if-le v1, v2, :cond_3

    .line 162
    :cond_2
    sget-object v9, Landroid/content/IconBitmapUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The size of background("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") little than the source bitmap("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 166
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 167
    .local v5, paint:Landroid/graphics/Paint;
    const/4 v4, 0x0

    .line 168
    .local v4, newBitmap:Landroid/graphics/Bitmap;
    monitor-enter v0

    .line 170
    :try_start_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v2, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 171
    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 172
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, p1, v9, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 173
    sub-int v9, v7, v6

    shr-int/lit8 v9, v9, 0x1

    add-int v8, v9, p2

    .line 174
    .local v8, wMargin:I
    sub-int v9, v2, v1

    shr-int/lit8 v9, v9, 0x1

    add-int v3, v9, p3

    .line 175
    .local v3, hMargin:I
    int-to-float v9, v8

    int-to-float v10, v3

    invoke-virtual {v0, p0, v9, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 176
    monitor-exit v0

    goto :goto_0

    .end local v3           #hMargin:I
    .end local v8           #wMargin:I
    :catchall_0
    move-exception v9

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method private static setTransparent([IIIIII)V
    .locals 5
    .parameter "pixels"
    .parameter "w"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 141
    const/4 v2, 0x0

    .line 142
    .local v2, pos:I
    move v0, p3

    .local v0, i:I
    :goto_0
    if-ge v0, p5, :cond_1

    .line 143
    move v1, p2

    .local v1, j:I
    :goto_1
    if-ge v1, p4, :cond_0

    .line 144
    mul-int v3, v0, p1

    add-int v2, v3, v1

    .line 145
    aget v3, p0, v2

    const v4, 0xffffff

    and-int/2addr v3, v4

    aput v3, p0, v2

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v1           #j:I
    :cond_1
    return-void
.end method

.method public static zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "bmp"
    .parameter "standardSize"
    .parameter "recycledWhenScaled"

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 193
    .local v2, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 195
    .local v0, h:I
    if-ne v2, p1, :cond_0

    if-eq v0, p1, :cond_2

    .line 197
    :cond_0
    const/4 v3, 0x1

    invoke-static {p0, p1, p1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 198
    .local v1, tmpBitmap:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_1

    .line 199
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p0, v1

    .line 203
    .end local v1           #tmpBitmap:Landroid/graphics/Bitmap;
    .end local p0
    :cond_2
    return-object p0
.end method
