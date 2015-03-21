.class public Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;
.super Ljava/lang/Object;
.source "ScreenBoardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/widget/ScreenBoardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LayoutParams"
.end annotation


# instance fields
.field public mBottomMargin:I

.field public mLeftMargin:I

.field public mRightMargin:I

.field public mTopMargin:I

.field final synthetic this$0:Lcom/baidu/fm/widget/ScreenBoardView;


# direct methods
.method public constructor <init>(Lcom/baidu/fm/widget/ScreenBoardView;IIII)V
    .locals 0
    .parameter
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 351
    iput-object p1, p0, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;->this$0:Lcom/baidu/fm/widget/ScreenBoardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput p2, p0, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;->mLeftMargin:I

    .line 353
    iput p3, p0, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;->mTopMargin:I

    .line 354
    iput p4, p0, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;->mRightMargin:I

    .line 355
    iput p5, p0, Lcom/baidu/fm/widget/ScreenBoardView$LayoutParams;->mBottomMargin:I

    .line 356
    return-void
.end method
