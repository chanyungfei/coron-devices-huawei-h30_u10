.class Landroid/net/wifi/ArpVerifier$MsgItem;
.super Ljava/lang/Object;
.source "ArpVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ArpVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MsgItem"
.end annotation


# instance fields
.field public arpNum:I

.field public minResponse:I

.field public timeout:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter "arpNum"
    .parameter "minResponse"
    .parameter "timeout"

    .prologue
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput p1, p0, Landroid/net/wifi/ArpVerifier$MsgItem;->arpNum:I

    .line 353
    iput p2, p0, Landroid/net/wifi/ArpVerifier$MsgItem;->minResponse:I

    .line 354
    iput p3, p0, Landroid/net/wifi/ArpVerifier$MsgItem;->timeout:I

    .line 355
    return-void
.end method
