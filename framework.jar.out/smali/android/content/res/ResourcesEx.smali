.class public Landroid/content/res/ResourcesEx;
.super Landroid/content/res/Resources;
.source "ResourcesEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ResourcesEx$ThemeResource;
    }
.end annotation


# static fields
.field private static final ANDROID_RES:Ljava/lang/String; = "android"

.field private static final ANDROID_RES_EXT:Ljava/lang/String; = "androidhwext"

.field private static final DEBUG_DRAWABLE:Z = false

.field private static final DEBUG_ICON:Z = false

.field private static final DEBUG_VERBOSE_ICON:Z = false

.field private static final DEFAULT_EDGE_SIZE:I = 0x8

.field private static final DELTA_X_OF_BACKGROUND:I = 0x0

.field private static final DELTA_Y_OF_BACKGROUND:I = 0x0

.field private static final DYNAMIC_ICONS:Ljava/lang/String; = "dynamic_icons"

.field private static final FRAMEWORK_RES:Ljava/lang/String; = "framework-res"

.field private static final FRAMEWORK_RES_EXT:Ljava/lang/String; = "framework-res-hwext"

.field private static final ICONS_ZIPFILE:Ljava/lang/String; = "icons"

.field private static final ICON_BACKGROUND_PREFIX:Ljava/lang/String; = "icon_background"

.field private static final ICON_BORDER_FILE:Ljava/lang/String; = "icon_border.png"

.field private static final ICON_BORDER_UNFLAT_FILE:Ljava/lang/String; = "icon_border_unflat.png"

.field private static final ICON_MASK_ALL_FILE:Ljava/lang/String; = "icon_mask_all.png"

.field private static final ICON_MASK_FILE:Ljava/lang/String; = "icon_mask.png"

.field private static final ICON_SYS_APP_DEFAULT:Ljava/lang/String; = "sym_def_app_icon"

.field private static final LEN_OF_ANDROID:I = 0x7

.field private static final LEN_OF_ANDROID_EXT:I = 0xc

.field private static final MASK_ABS_VALID_RANGE:I = 0xa

.field private static final SYS_THEME_DIR:Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "ResourcesEx"

.field private static final THEME_DIR:Ljava/lang/String;

.field private static mCacheColorInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mNonThemedPackage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPreloadedThemeColorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sBgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sBmpBorder:Landroid/graphics/Bitmap;

.field private static sBmpMask:Landroid/graphics/Bitmap;

.field private static sBmpSysAppDefault:Landroid/graphics/Bitmap;

.field private static final sConfigAppBigIconSize:I

.field private static final sConfigAppInnerIconSize:I

.field private static sDefaultSizeWithoutEdge:I

.field private static sMaskSizeWithoutEdge:I

.field private static sStandardBgSize:I

.field private static sStandardIconSize:I


# instance fields
.field private isThemeColor:Z

.field private final mDrawableCacheEx:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 65
    sput v2, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    .line 67
    sput v2, Landroid/content/res/ResourcesEx;->sDefaultSizeWithoutEdge:I

    .line 68
    sput v2, Landroid/content/res/ResourcesEx;->sMaskSizeWithoutEdge:I

    .line 74
    sput v2, Landroid/content/res/ResourcesEx;->sStandardIconSize:I

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/skin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/themes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/res/ResourcesEx;->SYS_THEME_DIR:Ljava/lang/String;

    .line 98
    sput-object v3, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    .line 99
    sput-object v3, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 100
    sput-object v3, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesEx;->mCacheColorInfoList:Ljava/util/HashMap;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesEx;->mPreloadedThemeColorList:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesEx;->mNonThemedPackage:Ljava/util/ArrayList;

    .line 122
    const-string/jumbo v0, "ro.config.app_big_icon_size"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/content/res/ResourcesEx;->sConfigAppBigIconSize:I

    .line 124
    const-string/jumbo v0, "ro.config.app_inner_icon_size"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/content/res/ResourcesEx;->sConfigAppInnerIconSize:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 870
    invoke-direct {p0}, Landroid/content/res/Resources;-><init>()V

    .line 109
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    .line 115
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 871
    sget v2, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    if-ne v3, v2, :cond_0

    .line 873
    sget v2, Landroid/content/res/ResourcesEx;->sConfigAppBigIconSize:I

    if-ne v2, v3, :cond_1

    const v2, 0x105007d

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 875
    .local v0, standardBgSize:I
    :goto_0
    sget v2, Landroid/content/res/ResourcesEx;->sConfigAppInnerIconSize:I

    if-ne v2, v3, :cond_2

    const v2, 0x105007c

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 877
    .local v1, standardIconSize:I
    :goto_1
    invoke-static {v0, v1}, Landroid/content/res/ResourcesEx;->setStandardSize(II)V

    .line 886
    .end local v0           #standardBgSize:I
    .end local v1           #standardIconSize:I
    :cond_0
    invoke-static {}, Landroid/content/res/ResourcesEx;->initStatics()V

    .line 887
    return-void

    .line 873
    :cond_1
    sget v0, Landroid/content/res/ResourcesEx;->sConfigAppBigIconSize:I

    goto :goto_0

    .line 875
    .restart local v0       #standardBgSize:I
    :cond_2
    sget v1, Landroid/content/res/ResourcesEx;->sConfigAppInnerIconSize:I

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"

    .prologue
    .line 849
    const/4 v0, 0x0

    check-cast v0, Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/res/ResourcesEx;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 850
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"
    .parameter "compInfo"

    .prologue
    .line 866
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 109
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 867
    return-void
.end method

.method private addIconBackgroud(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bmpSrc"
    .parameter "idAndPackageName"

    .prologue
    .line 301
    const-class v8, Landroid/content/res/ResourcesEx;

    monitor-enter v8

    .line 302
    :try_start_0
    sget-object v7, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v9, "icons"

    invoke-static {v7, v9}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v4

    .line 303
    .local v4, iconZipFileCache:Landroid/content/res/ZipFileCache;
    if-nez v4, :cond_0

    .line 304
    const/4 v7, 0x0

    monitor-exit v8

    .line 336
    :goto_0
    return-object v7

    .line 307
    :cond_0
    invoke-static {v4}, Landroid/content/res/ResourcesEx;->initBorder(Landroid/content/res/ZipFileCache;)V

    .line 313
    invoke-static {v4}, Landroid/content/res/ResourcesEx;->initMask(Landroid/content/res/ZipFileCache;)V

    .line 318
    invoke-direct {p0, p2}, Landroid/content/res/ResourcesEx;->getRandomBgImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 323
    .local v0, bmpBg:Landroid/graphics/Bitmap;
    const/4 v7, 0x1

    invoke-static {v7}, Landroid/content/res/ResourcesEx;->initMaskSizeWithoutEdge(Z)V

    .line 327
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 328
    .local v6, w:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 330
    .local v2, h:I
    sget v3, Landroid/content/res/ResourcesEx;->sDefaultSizeWithoutEdge:I

    .line 331
    .local v3, iconSize:I
    invoke-static {p1}, Landroid/content/IconBitmapUtils;->getIconInfo(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v5

    .line 332
    .local v5, r:Landroid/graphics/Rect;
    if-eqz v5, :cond_1

    .line 333
    sget v7, Landroid/content/res/ResourcesEx;->sMaskSizeWithoutEdge:I

    invoke-direct {p0, v5, v7, v6, v2}, Landroid/content/res/ResourcesEx;->computeDestIconSize(Landroid/graphics/Rect;III)I

    move-result v3

    .line 335
    :cond_1
    sget v7, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    invoke-static {p1, v7, v3}, Landroid/content/IconBitmapUtils;->drawSource(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 336
    .local v1, bmpSrcStd:Landroid/graphics/Bitmap;
    sget-object v7, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    sget-object v9, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    invoke-static {v1, v7, v0, v9}, Landroid/content/IconBitmapUtils;->composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    monitor-exit v8

    goto :goto_0

    .line 339
    .end local v0           #bmpBg:Landroid/graphics/Bitmap;
    .end local v1           #bmpSrcStd:Landroid/graphics/Bitmap;
    .end local v2           #h:I
    .end local v3           #iconSize:I
    .end local v4           #iconZipFileCache:Landroid/content/res/ZipFileCache;
    .end local v5           #r:Landroid/graphics/Rect;
    .end local v6           #w:I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method private checkSpecialIcons(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "entryName"

    .prologue
    const/4 v0, 0x0

    .line 283
    const-string/jumbo v1, "sym_def_app_icon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 285
    invoke-static {v0}, Landroid/content/res/ResourcesEx;->initSysDefault(Landroid/content/res/ZipFileCache;)V

    .line 287
    sget-object v1, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 288
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 291
    :cond_0
    return-object v0
.end method

.method private computeDestIconSize(Landroid/graphics/Rect;III)I
    .locals 9
    .parameter "validRect"
    .parameter "maskSize"
    .parameter "w"
    .parameter "h"

    .prologue
    const-wide/high16 v7, 0x3ff0

    .line 1056
    const-wide/16 v1, 0x0

    .line 1057
    .local v1, validSize:D
    const/4 v0, 0x0

    .line 1058
    .local v0, iconSize:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 1059
    int-to-double v3, p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-double v5, v5

    add-double/2addr v5, v7

    div-double/2addr v3, v5

    int-to-double v5, p4

    mul-double v1, v3, v5

    .line 1064
    :goto_0
    double-to-int v0, v1

    .line 1065
    const/4 v3, 0x1

    rem-int/lit8 v4, v0, 0x2

    if-ne v3, v4, :cond_0

    .line 1066
    const-wide/high16 v3, 0x3fe0

    add-double/2addr v3, v1

    double-to-int v0, v3

    .line 1068
    :cond_0
    return v0

    .line 1061
    :cond_1
    int-to-double v3, p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-double v5, v5

    add-double/2addr v5, v7

    div-double/2addr v3, v5

    int-to-double v5, p3

    mul-double v1, v3, v5

    goto :goto_0
.end method

.method private static getAllBgImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "path"
    .parameter "zip"

    .prologue
    .line 133
    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 155
    :cond_0
    return-void

    .line 136
    :cond_1
    sget-object v3, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v4, "icons"

    invoke-static {v3, v4}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v2

    .line 137
    .local v2, iconZipFileCache:Landroid/content/res/ZipFileCache;
    if-eqz v2, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, bmp:Landroid/graphics/Bitmap;
    const-string v3, "icon_background"

    invoke-virtual {v2, v3}, Landroid/content/res/ZipFileCache;->getBitmapList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    sput-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    .line 142
    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 145
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 146
    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bmp:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 147
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 148
    sget v3, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 149
    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getCode(Ljava/lang/String;)I
    .locals 3
    .parameter "idAndPackageName"

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, code:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 184
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v0, v2

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    :cond_0
    return v0
.end method

.method private getColorValueFromStr(Ljava/lang/String;)I
    .locals 8
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 707
    if-eqz p1, :cond_5

    .line 708
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 709
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Color value \'%s\' must start with #"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 713
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 716
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    .line 717
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Color value \'%s\' is too long. Format is either#AARRGGBB, #RRGGBB, #RGB, or #ARGB"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 723
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 724
    const/16 v1, 0x8

    new-array v0, v1, [C

    .line 725
    .local v0, color:[C
    const/16 v1, 0x46

    aput-char v1, v0, v3

    aput-char v1, v0, v4

    .line 726
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v6

    aput-char v1, v0, v5

    .line 727
    const/4 v1, 0x5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    aput-char v2, v0, v7

    .line 728
    const/4 v1, 0x6

    const/4 v2, 0x7

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v0, v2

    aput-char v3, v0, v1

    .line 729
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    .line 746
    .end local v0           #color:[C
    .restart local p1
    :cond_2
    :goto_0
    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    long-to-int v1, v1

    return v1

    .line 730
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v7, :cond_4

    .line 731
    const/16 v1, 0x8

    new-array v0, v1, [C

    .line 732
    .restart local v0       #color:[C
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v3

    aput-char v1, v0, v4

    .line 733
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v6

    aput-char v1, v0, v5

    .line 734
    const/4 v1, 0x5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    aput-char v2, v0, v7

    .line 735
    const/4 v1, 0x6

    const/4 v2, 0x7

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v0, v2

    aput-char v3, v0, v1

    .line 736
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    .line 737
    .restart local p1
    goto :goto_0

    .end local v0           #color:[C
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 749
    :cond_5
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1
.end method

.method private getIconFileName(Ljava/lang/String;Landroid/content/IconCache$CacheEntry;)Ljava/lang/String;
    .locals 4
    .parameter "packageName"
    .parameter "ce"

    .prologue
    .line 986
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p2, Landroid/content/IconCache$CacheEntry;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object p1, p2, Landroid/content/IconCache$CacheEntry;->name:Ljava/lang/String;

    .end local p1
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 988
    .local v0, imgFile:Ljava/lang/String;
    return-object v0
.end method

.method private getRandomBgImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "idAndPackageName"

    .prologue
    .line 162
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    :cond_0
    sget-object v2, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v3, "icons"

    invoke-static {v2, v3}, Landroid/content/res/ResourcesEx;->getAllBgImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_1
    const/4 v1, 0x0

    .line 166
    .local v1, len:I
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 167
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 169
    :cond_2
    if-lez v1, :cond_3

    .line 170
    invoke-direct {p0, p1}, Landroid/content/res/ResourcesEx;->getCode(Ljava/lang/String;)I

    move-result v2

    rem-int v0, v2, v1

    .line 171
    .local v0, i:I
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 173
    .end local v0           #i:I
    :goto_0
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getThemeResource(I)Landroid/content/res/ResourcesEx$ThemeResource;
    .locals 4
    .parameter "id"

    .prologue
    .line 811
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, packageName:Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 813
    .local v1, resName:Ljava/lang/String;
    const-string v2, "android"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 814
    const-string v0, "framework-res"

    .line 815
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "framework-res"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 818
    :cond_0
    const-string v2, "androidhwext"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 819
    const-string v0, "framework-res-hwext"

    .line 820
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "framework-res-hwext"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 822
    :cond_1
    new-instance v2, Landroid/content/res/ResourcesEx$ThemeResource;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ResourcesEx$ThemeResource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private inflateColorInfoList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 12
    .parameter "parser"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 665
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 669
    .local v3, innerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, type:I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-gt v9, v3, :cond_1

    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    .line 671
    :cond_1
    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 675
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 676
    .local v4, lableName:Ljava/lang/String;
    const-string v9, "color"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "drawable"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 679
    :cond_2
    invoke-interface {p1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    .line 680
    .local v5, name:Ljava/lang/String;
    invoke-interface {p1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, colorName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 682
    .local v7, text:Ljava/lang/String;
    const/4 v1, 0x0

    .line 683
    .local v1, colorVaue:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    .line 684
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    .line 686
    :cond_3
    const-string/jumbo v9, "name"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 687
    invoke-direct {p0, v7}, Landroid/content/res/ResourcesEx;->getColorValueFromStr(Ljava/lang/String;)I

    move-result v1

    .line 689
    const/4 v2, 0x0

    .line 690
    .local v2, fullColorName:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    .local v6, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 698
    sget-object v9, Landroid/content/res/ResourcesEx;->mCacheColorInfoList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 701
    .end local v0           #colorName:Ljava/lang/String;
    .end local v1           #colorVaue:I
    .end local v2           #fullColorName:Ljava/lang/String;
    .end local v4           #lableName:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    .end local v7           #text:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private static initBorder(Landroid/content/res/ZipFileCache;)V
    .locals 3
    .parameter "iconZipFileCache"

    .prologue
    .line 249
    sget-object v0, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 250
    const-string v0, "icon_border.png"

    invoke-virtual {p0, v0}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    .line 251
    sget-object v0, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 252
    sget-object v0, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    sget v1, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    .line 258
    :cond_0
    return-void
.end method

.method private static initMask(Landroid/content/res/ZipFileCache;)V
    .locals 3
    .parameter "iconZipFileCache"

    .prologue
    const/4 v2, 0x1

    .line 229
    sget-object v0, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 230
    const-string v0, "icon_mask.png"

    invoke-virtual {p0, v0}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 231
    sget-object v0, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 232
    sget-object v0, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    sget v1, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    invoke-static {v0, v1, v2}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    const-string v0, "icon_mask_all.png"

    invoke-virtual {p0, v0}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 238
    sget-object v0, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 239
    sget-object v0, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    sget v1, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    invoke-static {v0, v1, v2}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private static initMaskSizeWithoutEdge(Z)V
    .locals 3
    .parameter "useDefault"

    .prologue
    .line 207
    const/4 v1, -0x1

    sget v2, Landroid/content/res/ResourcesEx;->sMaskSizeWithoutEdge:I

    if-ne v1, v2, :cond_0

    .line 208
    sget-object v1, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 212
    sget-object v1, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/content/IconBitmapUtils;->getIconInfo(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v0

    .line 213
    .local v0, info:Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/content/res/ResourcesEx;->sMaskSizeWithoutEdge:I

    .line 226
    .end local v0           #info:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .line 216
    .restart local v0       #info:Landroid/graphics/Rect;
    :cond_1
    sget v1, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    add-int/lit8 v1, v1, -0x8

    sput v1, Landroid/content/res/ResourcesEx;->sMaskSizeWithoutEdge:I

    goto :goto_0

    .line 220
    .end local v0           #info:Landroid/graphics/Rect;
    :cond_2
    if-eqz p0, :cond_0

    .line 222
    sget v1, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    add-int/lit8 v1, v1, -0x8

    sput v1, Landroid/content/res/ResourcesEx;->sMaskSizeWithoutEdge:I

    goto :goto_0
.end method

.method private static initStatics()V
    .locals 3

    .prologue
    .line 190
    sget-object v1, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    .local v0, iconZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_0
    :goto_0
    return-void

    .line 193
    .end local v0           #iconZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_1
    sget-object v1, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v2, "icons"

    invoke-static {v1, v2}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v0

    .line 194
    .restart local v0       #iconZipFileCache:Landroid/content/res/ZipFileCache;
    if-eqz v0, :cond_0

    .line 198
    invoke-static {v0}, Landroid/content/res/ResourcesEx;->initBorder(Landroid/content/res/ZipFileCache;)V

    .line 199
    invoke-static {v0}, Landroid/content/res/ResourcesEx;->initMask(Landroid/content/res/ZipFileCache;)V

    .line 200
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/content/res/ResourcesEx;->initMaskSizeWithoutEdge(Z)V

    .line 201
    invoke-static {v0}, Landroid/content/res/ResourcesEx;->initSysDefault(Landroid/content/res/ZipFileCache;)V

    .line 202
    sget-object v1, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v2, "icons"

    invoke-static {v1, v2}, Landroid/content/res/ResourcesEx;->getAllBgImage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static initSysDefault(Landroid/content/res/ZipFileCache;)V
    .locals 4
    .parameter "iconZipFileCache"

    .prologue
    .line 261
    sget-object v1, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 262
    move-object v0, p0

    .line 263
    .local v0, zip:Landroid/content/res/ZipFileCache;
    if-nez v0, :cond_0

    .line 264
    sget-object v1, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v2, "icons"

    invoke-static {v1, v2}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_0

    .line 267
    const-string/jumbo v1, "sym_def_app_icon.png"

    invoke-virtual {v0, v1}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    .line 268
    sget-object v1, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 269
    sget-object v1, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    sget v2, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    .line 275
    .end local v0           #zip:Landroid/content/res/ZipFileCache;
    :cond_0
    return-void
.end method

.method private static setStandardSize(II)V
    .locals 1
    .parameter "standardBgSize"
    .parameter "standardIconSize"

    .prologue
    .line 891
    sput p0, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    .line 894
    sget v0, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    add-int/lit8 v0, v0, 0x8

    sput v0, Landroid/content/res/ResourcesEx;->sDefaultSizeWithoutEdge:I

    .line 896
    sput p1, Landroid/content/res/ResourcesEx;->sStandardIconSize:I

    .line 897
    return-void
.end method


# virtual methods
.method public getColor(I)I
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 641
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v3

    .line 642
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 643
    .local v1, value:Landroid/util/TypedValue;
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 644
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_1

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v2, v4, :cond_1

    .line 646
    sget-boolean v2, Landroid/content/res/Resources;->sIsHwTheme:Z

    if-eqz v2, :cond_0

    .line 647
    invoke-virtual {p0, v1, p1}, Landroid/content/res/ResourcesEx;->getThemeColor(Landroid/util/TypedValue;I)I

    move-result v0

    .line 648
    .local v0, colorVaue:I
    monitor-exit v3

    .line 653
    .end local v0           #colorVaue:I
    :goto_0
    return v0

    .line 650
    :cond_0
    iget v0, v1, Landroid/util/TypedValue;->data:I

    monitor-exit v3

    goto :goto_0

    .line 655
    .end local v1           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 653
    .restart local v1       #value:Landroid/util/TypedValue;
    :cond_1
    :try_start_1
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getDrawableForDynamic(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "packageName"
    .parameter "iconName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 962
    const/4 v1, 0x0

    .line 963
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    const-string v3, ""

    .line 969
    .local v3, imgFile:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dynamic_icons/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 970
    sget-object v4, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v5, "icons"

    invoke-static {v4, v5}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v2

    .line 971
    .local v2, iconZipFileCache:Landroid/content/res/ZipFileCache;
    if-nez v2, :cond_0

    .line 972
    const/4 v4, 0x0

    .line 979
    :goto_0
    return-object v4

    .line 974
    :cond_0
    invoke-virtual {v2, v3}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 975
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 976
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v1       #dr:Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object v4, v1

    .line 979
    goto :goto_0
.end method

.method public getThemeBitmap(Landroid/util/TypedValue;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 592
    invoke-direct {p0, p2}, Landroid/content/res/ResourcesEx;->getThemeResource(I)Landroid/content/res/ResourcesEx$ThemeResource;

    move-result-object v4

    .line 593
    .local v4, themeRes:Landroid/content/res/ResourcesEx$ThemeResource;
    #getter for: Landroid/content/res/ResourcesEx$ThemeResource;->packageName:Ljava/lang/String;
    invoke-static {v4}, Landroid/content/res/ResourcesEx$ThemeResource;->access$000(Landroid/content/res/ResourcesEx$ThemeResource;)Ljava/lang/String;

    move-result-object v2

    .line 594
    .local v2, packageName:Ljava/lang/String;
    iget-object v6, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, file:Ljava/lang/String;
    const/4 v0, 0x0

    .line 600
    .local v0, bmp:Landroid/graphics/Bitmap;
    const-string v6, "framework-res"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    const-string v6, "_holo"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-object v5

    .line 603
    :cond_1
    sget-object v6, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    invoke-static {v6, v2}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v3

    .line 604
    .local v3, packageZipFileCache:Landroid/content/res/ZipFileCache;
    if-eqz v3, :cond_0

    .line 607
    invoke-virtual {v3, p0, p1, v1}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v5, v0

    .line 608
    goto :goto_0
.end method

.method public getThemeColor(Landroid/util/TypedValue;I)I
    .locals 11
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 758
    invoke-direct {p0, p2}, Landroid/content/res/ResourcesEx;->getThemeResource(I)Landroid/content/res/ResourcesEx$ThemeResource;

    move-result-object v8

    .line 759
    .local v8, themeRes:Landroid/content/res/ResourcesEx$ThemeResource;
    #getter for: Landroid/content/res/ResourcesEx$ThemeResource;->packageName:Ljava/lang/String;
    invoke-static {v8}, Landroid/content/res/ResourcesEx$ThemeResource;->access$000(Landroid/content/res/ResourcesEx$ThemeResource;)Ljava/lang/String;

    move-result-object v4

    .line 760
    .local v4, packageName:Ljava/lang/String;
    #getter for: Landroid/content/res/ResourcesEx$ThemeResource;->resName:Ljava/lang/String;
    invoke-static {v8}, Landroid/content/res/ResourcesEx$ThemeResource;->access$100(Landroid/content/res/ResourcesEx$ThemeResource;)Ljava/lang/String;

    move-result-object v7

    .line 761
    .local v7, resName:Ljava/lang/String;
    sget-object v9, Landroid/content/res/ResourcesEx;->mPreloadedThemeColorList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    sget-object v9, Landroid/content/res/ResourcesEx;->mNonThemedPackage:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 762
    const/4 v5, 0x0

    .line 764
    .local v5, packageZipFileCache:Landroid/content/res/ZipFileCache;
    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v9, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    invoke-direct {v2, v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    .local v2, file:Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 766
    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 767
    sget-object v9, Landroid/content/res/ResourcesEx;->mNonThemedPackage:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    iget v9, p1, Landroid/util/TypedValue;->data:I

    .line 806
    .end local v2           #file:Ljava/io/File;
    .end local v5           #packageZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_1
    :goto_0
    return v9

    .line 770
    .restart local v2       #file:Ljava/io/File;
    .restart local v5       #packageZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_2
    sget-object v9, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    invoke-static {v9, v4}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v5

    .line 771
    if-nez v5, :cond_3

    .line 772
    iget v9, p1, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 774
    .end local v2           #file:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 775
    .local v1, ex:Ljava/lang/Exception;
    iput-boolean v10, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 776
    sget-object v9, Landroid/content/res/ResourcesEx;->mNonThemedPackage:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    iget v9, p1, Landroid/util/TypedValue;->data:I

    goto :goto_0

    .line 780
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v2       #file:Ljava/io/File;
    :cond_3
    const-string/jumbo v9, "theme.xml"

    invoke-virtual {v5, v9}, Landroid/content/res/ZipFileCache;->getInputStreamEntry(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 781
    .local v3, is:Ljava/io/InputStream;
    if-eqz v3, :cond_4

    .line 784
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 785
    .local v6, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v6, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 786
    invoke-direct {p0, v6, v4}, Landroid/content/res/ResourcesEx;->inflateColorInfoList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 792
    if-eqz v3, :cond_4

    .line 793
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 799
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    :goto_1
    sget-object v9, Landroid/content/res/ResourcesEx;->mPreloadedThemeColorList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    .end local v2           #file:Ljava/io/File;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #packageZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_5
    sget-object v9, Landroid/content/res/ResourcesEx;->mCacheColorInfoList:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 802
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 803
    sget-object v9, Landroid/content/res/ResourcesEx;->mCacheColorInfoList:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_0

    .line 787
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #packageZipFileCache:Landroid/content/res/ZipFileCache;
    :catch_1
    move-exception v0

    .line 788
    .local v0, e:Ljava/lang/Exception;
    const/4 v9, 0x0

    :try_start_3
    iput-boolean v9, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 789
    iget v9, p1, Landroid/util/TypedValue;->data:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 792
    if-eqz v3, :cond_1

    .line 793
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 795
    :catch_2
    move-exception v10

    goto :goto_0

    .line 791
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 792
    if-eqz v3, :cond_6

    .line 793
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 796
    :cond_6
    :goto_2
    throw v9

    .line 805
    .end local v2           #file:Ljava/io/File;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #packageZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_7
    iput-boolean v10, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 806
    iget v9, p1, Landroid/util/TypedValue;->data:I

    goto :goto_0

    .line 795
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #packageZipFileCache:Landroid/content/res/ZipFileCache;
    .restart local v6       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v9

    goto :goto_1

    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v10

    goto :goto_2
.end method

.method public getThemeDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 558
    invoke-direct {p0, p2}, Landroid/content/res/ResourcesEx;->getThemeResource(I)Landroid/content/res/ResourcesEx$ThemeResource;

    move-result-object v4

    .line 559
    .local v4, themeRes:Landroid/content/res/ResourcesEx$ThemeResource;
    #getter for: Landroid/content/res/ResourcesEx$ThemeResource;->packageName:Ljava/lang/String;
    invoke-static {v4}, Landroid/content/res/ResourcesEx$ThemeResource;->access$000(Landroid/content/res/ResourcesEx$ThemeResource;)Ljava/lang/String;

    move-result-object v2

    .line 561
    .local v2, packageName:Ljava/lang/String;
    iget-object v6, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v6, :cond_0

    move-object v0, v5

    .line 584
    :goto_0
    return-object v0

    .line 565
    :cond_0
    iget-object v6, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 566
    .local v1, file:Ljava/lang/String;
    const/4 v0, 0x0

    .line 572
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    const-string v6, "framework-res"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    const-string v6, "_holo"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    move-object v0, v5

    .line 573
    goto :goto_0

    .line 576
    :cond_1
    sget-object v6, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    invoke-static {v6, v2}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v3

    .line 577
    .local v3, packageZipFileCache:Landroid/content/res/ZipFileCache;
    if-nez v3, :cond_2

    move-object v0, v5

    .line 578
    goto :goto_0

    .line 582
    :cond_2
    invoke-virtual {v3, p0, p1, v1}, Landroid/content/res/ZipFileCache;->getDrawableEntry(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 584
    goto :goto_0
.end method

.method getThemeIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 14
    .parameter "id"

    .prologue
    .line 393
    const/4 v3, 0x0

    .line 394
    .local v3, dr:Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 397
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v8

    .line 398
    .local v8, packageName:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "#"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 399
    .local v5, idAndPackageName:Ljava/lang/String;
    invoke-static {v5}, Landroid/content/IconCache;->get(Ljava/lang/String;)Landroid/content/IconCache$CacheEntry;

    move-result-object v2

    .line 400
    .local v2, ce:Landroid/content/IconCache$CacheEntry;
    invoke-direct {p0, v8, v2}, Landroid/content/res/ResourcesEx;->getIconFileName(Ljava/lang/String;Landroid/content/IconCache$CacheEntry;)Ljava/lang/String;

    move-result-object v6

    .line 415
    .local v6, imgFile:Ljava/lang/String;
    const/4 v7, 0x0

    .line 416
    .local v7, isCommonIcon:Z
    sget-object v12, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v13, "icons"

    invoke-static {v12, v13}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v4

    .line 419
    .local v4, iconZipFileCache:Landroid/content/res/ZipFileCache;
    if-eqz v4, :cond_2

    .line 420
    invoke-virtual {v4, v6}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 425
    if-nez v0, :cond_0

    .line 426
    sget-object v12, Landroid/content/res/ResourcesEx;->SYS_THEME_DIR:Ljava/lang/String;

    const-string v13, "icons"

    invoke-static {v12, v13}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v11

    .line 427
    .local v11, sysIconZipFileCache:Landroid/content/res/ZipFileCache;
    if-eqz v11, :cond_0

    .line 428
    invoke-virtual {v11, v6}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 429
    const/4 v7, 0x1

    .line 444
    .end local v11           #sysIconZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_0
    if-eqz v0, :cond_1

    .line 446
    sget v12, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    const/4 v13, 0x1

    invoke-static {v0, v12, v13}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 450
    .local v10, srcBitmap:Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 451
    .local v9, resultBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Landroid/content/res/ResourcesEx;->initMask(Landroid/content/res/ZipFileCache;)V

    .line 454
    if-eqz v7, :cond_3

    .line 457
    invoke-static {v4}, Landroid/content/res/ResourcesEx;->initBorder(Landroid/content/res/ZipFileCache;)V

    .line 460
    invoke-direct {p0, v5}, Landroid/content/res/ResourcesEx;->getRandomBgImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 461
    .local v1, bmpBg:Landroid/graphics/Bitmap;
    sget-object v12, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    sget-object v13, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    invoke-static {v10, v12, v1, v13}, Landroid/content/IconBitmapUtils;->composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 467
    .end local v1           #bmpBg:Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v9, :cond_1

    .line 471
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3           #dr:Landroid/graphics/drawable/Drawable;
    invoke-direct {v3, p0, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local v9           #resultBitmap:Landroid/graphics/Bitmap;
    .end local v10           #srcBitmap:Landroid/graphics/Bitmap;
    .restart local v3       #dr:Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object v12, v3

    .line 475
    :goto_1
    return-object v12

    .line 422
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 465
    .restart local v9       #resultBitmap:Landroid/graphics/Bitmap;
    .restart local v10       #srcBitmap:Landroid/graphics/Bitmap;
    :cond_3
    move-object v9, v10

    goto :goto_0
.end method

.method protected handleActivityInfoConfigToNative(I)I
    .locals 1
    .parameter "configChanges"

    .prologue
    .line 953
    or-int/lit16 v0, p1, 0x4000

    return v0
.end method

.method protected handleAddIconBackground(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "id"
    .parameter "dr"

    .prologue
    .line 350
    sget-boolean v4, Landroid/content/res/Resources;->sIsHwTheme:Z

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    .line 351
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, idAndPackageName:Ljava/lang/String;
    invoke-static {v2}, Landroid/content/IconCache;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 365
    invoke-static {p2}, Landroid/content/IconBitmapUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 366
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    move-object v1, p2

    .line 384
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #idAndPackageName:Ljava/lang/String;
    .end local p2
    .local v1, dr:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 370
    .end local v1           #dr:Ljava/lang/Object;
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v2       #idAndPackageName:Ljava/lang/String;
    .restart local p2
    :cond_0
    invoke-direct {p0, v0, v2}, Landroid/content/res/ResourcesEx;->addIconBackgroud(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 371
    .local v3, resultBitmap:Landroid/graphics/Bitmap;
    if-nez v3, :cond_1

    .line 372
    sget v4, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 374
    :cond_1
    if-eqz v3, :cond_2

    .line 378
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2
    invoke-direct {p2, p0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local p2
    move-object v1, p2

    .line 379
    .restart local v1       #dr:Ljava/lang/Object;
    goto :goto_0

    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #dr:Ljava/lang/Object;
    .end local v2           #idAndPackageName:Ljava/lang/String;
    .end local v3           #resultBitmap:Landroid/graphics/Bitmap;
    :cond_2
    move-object v1, p2

    .line 384
    .restart local v1       #dr:Ljava/lang/Object;
    goto :goto_0
.end method

.method protected handleClearCache(I)V
    .locals 4
    .parameter "configChanges"

    .prologue
    .line 906
    const-class v3, Landroid/content/res/ResourcesEx;

    monitor-enter v3

    .line 908
    :try_start_0
    sget-object v2, Landroid/content/res/ResourcesEx;->mCacheColorInfoList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 909
    sget-object v2, Landroid/content/res/ResourcesEx;->mPreloadedThemeColorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 910
    sget-object v2, Landroid/content/res/ResourcesEx;->mNonThemedPackage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 911
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 912
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 913
    .local v1, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 914
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 913
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 916
    :cond_0
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 921
    .end local v0           #i:I
    .end local v1           #listSize:I
    :cond_1
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 922
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 923
    const/4 v2, 0x0

    sput-object v2, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    .line 928
    :cond_2
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 929
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 930
    const/4 v2, 0x0

    sput-object v2, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 935
    const/4 v2, -0x1

    sput v2, Landroid/content/res/ResourcesEx;->sMaskSizeWithoutEdge:I

    .line 938
    :cond_3
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 939
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 940
    const/4 v2, 0x0

    sput-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    .line 942
    :cond_4
    invoke-static {}, Landroid/content/res/ZipFileCache;->clear()V

    .line 943
    invoke-static {}, Landroid/content/res/ResourcesEx;->initStatics()V

    .line 944
    iget-object v2, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_5

    .line 945
    iget-object v2, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v2, p1}, Landroid/content/res/Resources;->clearDrawableCache(Landroid/util/LongSparseArray;I)V

    .line 947
    :cond_5
    monitor-exit v3

    .line 950
    return-void

    .line 947
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;
    .locals 3
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 613
    const/4 v0, 0x0

    .line 614
    .local v0, colorVaue:I
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 615
    const/4 v1, 0x0

    .line 616
    .local v1, csl:Landroid/content/res/ColorStateList;
    sget-boolean v2, Landroid/content/res/Resources;->sIsHwTheme:Z

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 617
    invoke-virtual {p0, p1, p2}, Landroid/content/res/ResourcesEx;->getThemeColor(Landroid/util/TypedValue;I)I

    move-result v0

    .line 618
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 620
    :cond_0
    iget-boolean v2, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    if-nez v2, :cond_1

    .line 621
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 623
    :cond_1
    return-object v1
.end method

.method loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter "value"
    .parameter "id"

    .prologue
    .line 480
    iget v7, p1, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v7, v7

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    iget v9, p1, Landroid/util/TypedValue;->data:I

    int-to-long v9, v9

    or-long v5, v7, v9

    .line 481
    .local v5, key:J
    const/4 v0, 0x0

    .line 482
    .local v0, colorVaue:I
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 483
    const/4 v1, 0x0

    .line 484
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    iget v7, p1, Landroid/util/TypedValue;->type:I

    const/16 v8, 0x1c

    if-lt v7, v8, :cond_1

    iget v7, p1, Landroid/util/TypedValue;->type:I

    const/16 v8, 0x1f

    if-gt v7, v8, :cond_1

    .line 486
    if-eqz p2, :cond_0

    sget-boolean v7, Landroid/content/res/Resources;->sIsHwTheme:Z

    if-eqz v7, :cond_0

    .line 487
    invoke-virtual {p0, p1, p2}, Landroid/content/res/ResourcesEx;->getThemeColor(Landroid/util/TypedValue;I)I

    move-result v0

    .line 488
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 489
    .restart local v1       #dr:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_2

    .line 490
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 495
    :cond_0
    iget-boolean v7, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    if-nez v7, :cond_1

    .line 496
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 499
    :cond_1
    iget-object v7, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v7, v5, v6}, Landroid/content/res/Resources;->getCachedDrawable(Landroid/util/LongSparseArray;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 500
    if-eqz v1, :cond_3

    move-object v2, v1

    .line 550
    :goto_0
    return-object v2

    :cond_2
    move-object v2, v1

    .line 492
    goto :goto_0

    .line 505
    :cond_3
    if-eqz p2, :cond_8

    sget-boolean v7, Landroid/content/res/Resources;->sIsHwTheme:Z

    if-eqz v7, :cond_8

    .line 506
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    .line 507
    .local v3, entryName:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 512
    .local v4, idAndPackageName:Ljava/lang/String;
    invoke-direct {p0, v3}, Landroid/content/res/ResourcesEx;->checkSpecialIcons(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 513
    if-eqz v1, :cond_4

    .line 514
    iget-object v7, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v5, v6, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v2, v1

    .line 515
    goto :goto_0

    .line 518
    :cond_4
    invoke-static {v4}, Landroid/content/IconCache;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 522
    invoke-virtual {p0, p2}, Landroid/content/res/ResourcesEx;->getThemeIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 523
    .local v2, drIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_5

    .line 524
    iget-object v7, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v5, v6, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 529
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v2           #drIcon:Landroid/graphics/drawable/Drawable;
    .end local v3           #entryName:Ljava/lang/String;
    .end local v4           #idAndPackageName:Ljava/lang/String;
    :goto_1
    move-object v2, v1

    .line 550
    goto :goto_0

    .line 536
    .restart local v3       #entryName:Ljava/lang/String;
    .restart local v4       #idAndPackageName:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, p1, p2}, Landroid/content/res/ResourcesEx;->getThemeDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 537
    if-eqz v1, :cond_7

    .line 538
    iget-object v7, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v5, v6, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v2, v1

    .line 539
    goto :goto_0

    .line 541
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 548
    .end local v3           #entryName:Ljava/lang/String;
    .end local v4           #idAndPackageName:Ljava/lang/String;
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1
.end method
