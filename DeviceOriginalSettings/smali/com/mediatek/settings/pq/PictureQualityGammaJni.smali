.class public Lcom/mediatek/settings/pq/PictureQualityGammaJni;
.super Ljava/lang/Object;
.source "PictureQualityGammaJni.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery2/PictureQualityJni"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "GAMMAjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static native nativeGetGammaIndex()I
.end method

.method public static native nativeGetGammaRange()I
.end method

.method public static native nativeSetGammaIndex(I)Z
.end method
