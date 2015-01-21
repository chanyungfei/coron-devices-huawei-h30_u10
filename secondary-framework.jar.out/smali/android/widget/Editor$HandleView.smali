.class abstract Landroid/widget/Editor$HandleView;
.super Landroid/view/View;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandleView"
.end annotation


# static fields
.field private static final HISTORY_SIZE:I = 0x5

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private mActionPopupShower:Ljava/lang/Runnable;

.field protected mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

.field private final mContainer:Landroid/widget/PopupWindow;

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected mEndHandlePosX:I

.field protected mEndHandlePosY:I

.field protected mHotspotX:I

.field private mIdealVerticalOffset:F

.field private mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mNumberPreviousOffsets:I

.field private mPositionHasChanged:Z

.field private mPositionX:I

.field private mPositionY:I

.field private mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field protected mStartHandlePosX:I

.field protected mStartHandlePosY:I

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter
    .parameter "drawableLtr"
    .parameter "drawableRtl"

    .prologue
    const/4 v2, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3061
    iput-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 3062
    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3055
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 3057
    iput-boolean v6, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 3093
    new-array v1, v2, [J

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    .line 3094
    new-array v1, v2, [I

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    .line 3095
    iput v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 3096
    iput v5, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 3063
    new-instance v1, Landroid/widget/PopupWindow;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, #android:attr@textSelectHandleWindowStyle#t

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 3065
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 3066
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 3067
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 3068
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3070
    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 3071
    iput-object p3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 3073
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 3075
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 3076
    .local v0, handleHeight:I
    const v1, -0x41666666

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    .line 3077
    const v1, 0x3f333333

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    .line 3078
    return-void
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4
    .parameter "offset"

    .prologue
    .line 3104
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 3105
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 3106
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 3107
    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 3108
    return-void
.end method

.method private filterOnTouchUp()V
    .locals 9

    .prologue
    .line 3111
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 3112
    .local v3, now:J
    const/4 v0, 0x0

    .line 3113
    .local v0, i:I
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 3114
    .local v2, index:I
    iget v5, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v6, 0x5

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3115
    .local v1, iMax:I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v2

    sub-long v5, v3, v5

    const-wide/16 v7, 0x96

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 3116
    add-int/lit8 v0, v0, 0x1

    .line 3117
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x5

    rem-int/lit8 v2, v5, 0x5

    goto :goto_0

    .line 3120
    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v1, :cond_1

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v2

    sub-long v5, v3, v5

    const-wide/16 v7, 0x15e

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 3122
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    aget v5, v5, v2

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 3124
    :cond_1
    return-void
.end method

.method private saveHandleViewPos(II)V
    .locals 2
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    .line 3408
    instance-of v0, p0, Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    .line 3409
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x1

    #setter for: Landroid/widget/Editor;->mHandleMode:I
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$2602(Landroid/widget/Editor;I)I

    .line 3410
    iput p1, p0, Landroid/widget/Editor$HandleView;->mStartHandlePosX:I

    .line 3411
    iput p2, p0, Landroid/widget/Editor$HandleView;->mStartHandlePosY:I

    .line 3421
    :goto_0
    return-void

    .line 3412
    :cond_0
    instance-of v0, p0, Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v0, :cond_1

    .line 3413
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x2

    #setter for: Landroid/widget/Editor;->mHandleMode:I
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$2602(Landroid/widget/Editor;I)I

    .line 3414
    iput p1, p0, Landroid/widget/Editor$HandleView;->mEndHandlePosX:I

    .line 3415
    iput p2, p0, Landroid/widget/Editor$HandleView;->mEndHandlePosY:I

    goto :goto_0

    .line 3416
    :cond_1
    instance-of v0, p0, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v0, :cond_2

    .line 3417
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x0

    #setter for: Landroid/widget/Editor;->mHandleMode:I
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$2602(Landroid/widget/Editor;I)I

    goto :goto_0

    .line 3419
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v1, -0x1

    #setter for: Landroid/widget/Editor;->mHandleMode:I
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$2602(Landroid/widget/Editor;I)I

    goto :goto_0
.end method

.method private showPopoupWindowAfterDrag(ILandroid/view/MotionEvent;)V
    .locals 12
    .parameter "delay"
    .parameter "ev"

    .prologue
    .line 3375
    iget-object v10, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v10}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v10

    iget-boolean v10, v10, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    if-eqz v10, :cond_1

    .line 3376
    if-eqz p2, :cond_0

    iget-object v10, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v10}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3377
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    .line 3378
    .local v7, rawX:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    .line 3381
    .local v8, rawY:F
    iget v10, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v11, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v11, v11

    sub-float v6, v10, v11

    .line 3382
    .local v6, previousVerticalOffset:F
    iget v10, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v10, v10

    sub-float v10, v8, v10

    iget v11, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v11, v11

    sub-float v0, v10, v11

    .line 3384
    .local v0, currentVerticalOffset:F
    iget v10, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    cmpg-float v10, v6, v10

    if-gez v10, :cond_2

    .line 3385
    iget v10, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v10}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 3386
    .local v3, newVerticalOffset:F
    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 3391
    :goto_0
    iget v10, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v10, v10

    add-float v5, v3, v10

    .line 3393
    .local v5, offsetY:F
    iget v10, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    sub-float v10, v7, v10

    iget v11, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v11, v11

    add-float v1, v10, v11

    .line 3394
    .local v1, newPosX:F
    sub-float v10, v8, v5

    iget v11, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float v2, v10, v11

    .line 3395
    .local v2, newPosY:F
    iget-object v10, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v4

    .line 3396
    .local v4, offset:I
    iget-object v10, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v10}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v9

    .line 3397
    .local v9, selectionController:Landroid/widget/Editor$SelectionModifierCursorController;
    iput v4, v9, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v4, v9, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 3399
    .end local v0           #currentVerticalOffset:F
    .end local v1           #newPosX:F
    .end local v2           #newPosY:F
    .end local v3           #newVerticalOffset:F
    .end local v4           #offset:I
    .end local v5           #offsetY:F
    .end local v6           #previousVerticalOffset:F
    .end local v7           #rawX:F
    .end local v8           #rawY:F
    .end local v9           #selectionController:Landroid/widget/Editor$SelectionModifierCursorController;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->showActionPopupWindow(I)V

    .line 3401
    :cond_1
    return-void

    .line 3388
    .restart local v0       #currentVerticalOffset:F
    .restart local v6       #previousVerticalOffset:F
    .restart local v7       #rawX:F
    .restart local v8       #rawY:F
    :cond_2
    iget v10, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v10}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 3389
    .restart local v3       #newVerticalOffset:F
    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_0
.end method

.method private startTouchUpFilter(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 3099
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 3100
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 3101
    return-void
.end method


# virtual methods
.method protected dismiss()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/widget/Editor$BaiduEditorInjector;->dismiss()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public hide()V
    .locals 1

    .prologue

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 3157
    return-void
.end method

.method protected hideActionPopupWindow()V
    .locals 2

    .prologue
    .line 3180
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3181
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3183
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-eqz v0, :cond_1

    .line 3184
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    .line 3186
    :cond_1
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 3360
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 3189
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected isVisible()Z
    .locals 3

    .prologue
    .line 3196
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 3197
    const/4 v0, 0x1

    .line 3204
    :goto_0
    return v0

    .line 3200
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3201
    const/4 v0, 0x0

    goto :goto_0

    .line 3204
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    #calls: Landroid/widget/Editor;->isPositionVisible(II)Z
    invoke-static {v0, v1, v2}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;II)Z

    move-result v0

    goto :goto_0
.end method

.method public offsetHasBeenChanged()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3127
    iget v1, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 3368
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    .line 3369
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 3290
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mBottom:I

    iget v3, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3291
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3292
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 3364
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    .line 3365
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 3132
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 3133
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 3356
    :goto_0
    return v10

    .line 3298
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v8

    invoke-direct {p0, v8}, Landroid/widget/Editor$HandleView;->startTouchUpFilter(I)V

    .line 3299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iget v9, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 3300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget v9, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 3302
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v8}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v4

    .line 3303
    .local v4, positionListener:Landroid/widget/Editor$PositionListener;
    invoke-virtual {v4}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v8

    iput v8, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 3304
    invoke-virtual {v4}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v8

    iput v8, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 3305
    iput-boolean v10, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    goto :goto_0

    .line 3310
    .end local v4           #positionListener:Landroid/widget/Editor$PositionListener;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    .line 3311
    .local v6, rawX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    .line 3314
    .local v7, rawY:F
    iget v8, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v9, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v9, v9

    sub-float v5, v8, v9

    .line 3315
    .local v5, previousVerticalOffset:F
    iget v8, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v8, v8

    sub-float v8, v7, v8

    iget v9, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v9, v9

    sub-float v0, v8, v9

    .line 3317
    .local v0, currentVerticalOffset:F
    iget v8, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    cmpg-float v8, v5, v8

    if-gez v8, :cond_0

    .line 3318
    iget v8, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 3319
    .local v3, newVerticalOffset:F
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 3324
    :goto_1
    iget v8, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v8, v8

    add-float/2addr v8, v3

    iput v8, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 3326
    iget v8, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    sub-float v8, v6, v8

    iget v9, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v9, v9

    add-float v1, v8, v9

    .line 3327
    .local v1, newPosX:F
    iget v8, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    sub-float v8, v7, v8

    iget v9, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float v2, v8, v9

    .local v2, newPosY:F
    invoke-virtual {p0, v1, v2}, Landroid/widget/Editor$HandleView;->updatePosition(FF)V

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-static {v8, p0}, Landroid/widget/Editor$BaiduEditorInjector;->update(Landroid/widget/TextView;Landroid/widget/Editor$HandleView;)V

    goto :goto_0

    .end local v1           #newPosX:F
    .end local v2           #newPosY:F
    .end local v3           #newVerticalOffset:F
    :cond_0
    iget v8, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 3322
    .restart local v3       #newVerticalOffset:F
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_1

    .line 3334
    .end local v0           #currentVerticalOffset:F
    .end local v3           #newVerticalOffset:F
    .end local v5           #previousVerticalOffset:F
    .end local v6           #rawX:F
    .end local v7           #rawY:F
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->filterOnTouchUp()V

    iput-boolean v9, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    invoke-direct {p0, v9, p1}, Landroid/widget/Editor$HandleView;->showPopoupWindowAfterDrag(ILandroid/view/MotionEvent;)V

    goto/16 :goto_0

    :pswitch_3
    iput-boolean v9, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    const/4 v8, 0x0

    invoke-direct {p0, v9, v8}, Landroid/widget/Editor$HandleView;->showPopoupWindowAfterDrag(ILandroid/view/MotionEvent;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 6
    .parameter "offset"
    .parameter "parentScrolled"

    .prologue
    const/4 v3, 0x1

    .line 3215
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 3216
    .local v0, layout:Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 3218
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 3240
    :cond_0
    :goto_0
    return-void

    .line 3222
    :cond_1
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    if-eq p1, v4, :cond_4

    move v2, v3

    .line 3223
    .local v2, offsetChanged:Z
    :goto_1
    if-nez v2, :cond_2

    if-eqz p2, :cond_0

    .line 3224
    :cond_2
    if-eqz v2, :cond_3

    .line 3225
    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->updateSelection(I)V

    .line 3226
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 3228
    :cond_3
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 3230
    .local v1, line:I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    const/high16 v5, 0x3f00

    sub-float/2addr v4, v5

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    invoke-virtual {p0, v1}, Landroid/widget/Editor$HandleView;->recaculateHandleViewVerticalPosition(I)V

    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 3235
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 3237
    iput p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 3238
    iput-boolean v3, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    goto :goto_0

    .line 3222
    .end local v1           #line:I
    .end local v2           #offsetChanged:Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public show()V
    .locals 2

    .prologue
    .line 3136
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3145
    :goto_0
    return-void

    .line 3138
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 3141
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 3142
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 3144
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    goto :goto_0
.end method

.method showActionPopupWindow(I)V
    .locals 4
    .parameter "delay"

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->createActionPopupWindow()Landroid/widget/Editor$ActionPopupWindow;
    invoke-static {v0}, Landroid/widget/Editor;->access$2300(Landroid/widget/Editor;)Landroid/widget/Editor$ActionPopupWindow;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    .line 3167
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 3168
    new-instance v0, Landroid/widget/Editor$HandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$HandleView$1;-><init>(Landroid/widget/Editor$HandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    .line 3176
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3177
    return-void

    .line 3174
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected updateDrawable()V
    .locals 3

    .prologue
    .line 3081
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 3082
    .local v1, offset:I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 3083
    .local v0, isRtlCharAtOffset:Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 3084
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 3085
    return-void

    .line 3083
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 6
    .parameter "parentPositionX"
    .parameter "parentPositionY"
    .parameter "parentPositionChanged"
    .parameter "parentScrolled"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 3244
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v2

    invoke-virtual {p0, v2, p4}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 3245
    if-nez p3, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    if-eqz v2, :cond_5

    .line 3246
    :cond_0
    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v2, :cond_3

    .line 3248
    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    if-ne p1, v2, :cond_1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    if-eq p2, v2, :cond_2

    .line 3249
    :cond_1
    iget v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 3250
    iget v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 3251
    iput p1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 3252
    iput p2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 3255
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    .line 3258
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3259
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    add-int v0, p1, v2

    .line 3260
    .local v0, positionX:I
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    add-int v1, p2, v2

    .line 3262
    .local v1, positionY:I
    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$HandleView;->saveHandleViewPos(II)V

    .line 3264
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3265
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 3284
    .end local v0           #positionX:I
    .end local v1           #positionY:I
    :cond_4
    :goto_0
    iput-boolean v4, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 3286
    :cond_5
    return-void

    .line 3267
    .restart local v0       #positionX:I
    .restart local v1       #positionY:I
    :cond_6
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 3271
    .end local v0           #positionX:I
    .end local v1           #positionY:I
    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3273
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v2}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v2

    iget-boolean v2, v2, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    if-eqz v2, :cond_8

    .line 3274
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3276
    invoke-virtual {p0, v4}, Landroid/widget/Editor$HandleView;->showActionPopupWindow(I)V

    goto :goto_0

    .line 3278
    :cond_8
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    goto :goto_0
.end method

.method protected abstract updateSelection(I)V
.end method

.method protected recaculateHandleViewVerticalPosition(I)V
    .locals 5
    .parameter "line"

    .prologue
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .local v1, layout:Landroid/text/Layout;
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v3

    const/high16 v4, 0x3f80

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x4080

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .local v2, offsetToBaseLine:I
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v3

    add-int/2addr v3, v2

    iput v3, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .end local v0           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v2           #offsetToBaseLine:I
    :cond_1
    return-void
.end method
