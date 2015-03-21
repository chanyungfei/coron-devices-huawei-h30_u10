.class public final Lcom/baidu/fm/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ImageViewButton:[I = null

.field public static final ImageViewButton_disabled_picture_0:I = 0x2

.field public static final ImageViewButton_disabled_picture_1:I = 0x5

.field public static final ImageViewButton_normal_picture_0:I = 0x0

.field public static final ImageViewButton_normal_picture_1:I = 0x3

.field public static final ImageViewButton_pressed_picture_0:I = 0x1

.field public static final ImageViewButton_pressed_picture_1:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 603
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/fm/R$styleable;->ImageViewButton:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
