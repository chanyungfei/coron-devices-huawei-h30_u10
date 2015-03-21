.class public Lcom/baidu/fm/freqwheel/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# static fields
.field private static final DEF_VISIBLE_ITEMS:I = 0x5

.field private static final ITEM_OFFSET_PERCENT:I = 0xa

.field private static final PADDING:I

.field private static final SHADOWS_COLORS:[I


# instance fields
.field private bottomShadow:Landroid/graphics/drawable/GradientDrawable;

.field private centerDrawable:Landroid/graphics/drawable/Drawable;

.field private changingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/fm/freqwheel/OnWheelChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private clickingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/fm/freqwheel/OnWheelClickedListener;",
            ">;"
        }
    .end annotation
.end field

.field private currentItem:I

.field private dataObserver:Landroid/database/DataSetObserver;

.field private firstItem:I

.field isCyclic:Z

.field private isScrollingPerformed:Z

.field private itemHeight:I

.field private itemsLayout:Landroid/widget/LinearLayout;

.field private recycle:Lcom/baidu/fm/freqwheel/WheelRecycle;

.field private scroller:Lcom/baidu/fm/freqwheel/WheelScroller;

.field scrollingListener:Lcom/baidu/fm/freqwheel/WheelScroller$ScrollingListener;

.field private scrollingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/fm/freqwheel/OnWheelScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private scrollingOffset:I

.field private topShadow:Landroid/graphics/drawable/GradientDrawable;

.field private viewAdapter:Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;

.field private visibleItems:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/fm/freqwheel/WheelView;->SHADOWS_COLORS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x11t 0x11t 0x11t 0xfft
        0xaat 0xaat 0xaat 0x0t
        0xaat 0xaat 0xaat 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 61
    iput v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->currentItem:I

    .line 64
    const/4 v0, 0x5

    iput v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->visibleItems:I

    .line 67
    iput v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemHeight:I

    .line 82
    iput-boolean v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->isCyclic:Z

    .line 94
    new-instance v0, Lcom/baidu/fm/freqwheel/WheelRecycle;

    invoke-direct {v0, p0}, Lcom/baidu/fm/freqwheel/WheelRecycle;-><init>(Lcom/baidu/fm/freqwheel/WheelView;)V

    iput-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->recycle:Lcom/baidu/fm/freqwheel/WheelRecycle;

    .line 97
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->changingListeners:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingListeners:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->clickingListeners:Ljava/util/List;

    .line 134
    new-instance v0, Lcom/baidu/fm/freqwheel/WheelView$1;

    invoke-direct {v0, p0}, Lcom/baidu/fm/freqwheel/WheelView$1;-><init>(Lcom/baidu/fm/freqwheel/WheelView;)V

    iput-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingListener:Lcom/baidu/fm/freqwheel/WheelScroller$ScrollingListener;

    .line 207
    new-instance v0, Lcom/baidu/fm/freqwheel/WheelView$2;

    invoke-direct {v0, p0}, Lcom/baidu/fm/freqwheel/WheelView$2;-><init>(Lcom/baidu/fm/freqwheel/WheelView;)V

    iput-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 122
    invoke-direct {p0, p1}, Lcom/baidu/fm/freqwheel/WheelView;->initData(Landroid/content/Context;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->currentItem:I

    .line 64
    const/4 v0, 0x5

    iput v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->visibleItems:I

    .line 67
    iput v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemHeight:I

    .line 82
    iput-boolean v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->isCyclic:Z

    .line 94
    new-instance v0, Lcom/baidu/fm/freqwheel/WheelRecycle;

    invoke-direct {v0, p0}, Lcom/baidu/fm/freqwheel/WheelRecycle;-><init>(Lcom/baidu/fm/freqwheel/WheelView;)V

    iput-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->recycle:Lcom/baidu/fm/freqwheel/WheelRecycle;

    .line 97
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->changingListeners:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingListeners:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->clickingListeners:Ljava/util/List;

    .line 134
    new-instance v0, Lcom/baidu/fm/freqwheel/WheelView$1;

    invoke-direct {v0, p0}, Lcom/baidu/fm/freqwheel/WheelView$1;-><init>(Lcom/baidu/fm/freqwheel/WheelView;)V

    iput-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingListener:Lcom/baidu/fm/freqwheel/WheelScroller$ScrollingListener;

    .line 207
    new-instance v0, Lcom/baidu/fm/freqwheel/WheelView$2;

    invoke-direct {v0, p0}, Lcom/baidu/fm/freqwheel/WheelView$2;-><init>(Lcom/baidu/fm/freqwheel/WheelView;)V

    iput-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 114
    invoke-direct {p0, p1}, Lcom/baidu/fm/freqwheel/WheelView;->initData(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    iput v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->currentItem:I

    .line 64
    const/4 v0, 0x5

    iput v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->visibleItems:I

    .line 67
    iput v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemHeight:I

    .line 82
    iput-boolean v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->isCyclic:Z

    .line 94
    new-instance v0, Lcom/baidu/fm/freqwheel/WheelRecycle;

    invoke-direct {v0, p0}, Lcom/baidu/fm/freqwheel/WheelRecycle;-><init>(Lcom/baidu/fm/freqwheel/WheelView;)V

    iput-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->recycle:Lcom/baidu/fm/freqwheel/WheelRecycle;

    .line 97
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->changingListeners:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingListeners:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->clickingListeners:Ljava/util/List;

    .line 134
    new-instance v0, Lcom/baidu/fm/freqwheel/WheelView$1;

    invoke-direct {v0, p0}, Lcom/baidu/fm/freqwheel/WheelView$1;-><init>(Lcom/baidu/fm/freqwheel/WheelView;)V

    iput-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingListener:Lcom/baidu/fm/freqwheel/WheelScroller$ScrollingListener;

    .line 207
    new-instance v0, Lcom/baidu/fm/freqwheel/WheelView$2;

    invoke-direct {v0, p0}, Lcom/baidu/fm/freqwheel/WheelView$2;-><init>(Lcom/baidu/fm/freqwheel/WheelView;)V

    iput-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 106
    invoke-direct {p0, p1}, Lcom/baidu/fm/freqwheel/WheelView;->initData(Landroid/content/Context;)V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/fm/freqwheel/WheelView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->isScrollingPerformed:Z

    return v0
.end method

.method static synthetic access$002(Lcom/baidu/fm/freqwheel/WheelView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/baidu/fm/freqwheel/WheelView;->isScrollingPerformed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/baidu/fm/freqwheel/WheelView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/baidu/fm/freqwheel/WheelView;->doScroll(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/fm/freqwheel/WheelView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingOffset:I

    return v0
.end method

.method static synthetic access$202(Lcom/baidu/fm/freqwheel/WheelView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingOffset:I

    return p1
.end method

.method static synthetic access$300(Lcom/baidu/fm/freqwheel/WheelView;)Lcom/baidu/fm/freqwheel/WheelScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->scroller:Lcom/baidu/fm/freqwheel/WheelScroller;

    return-object v0
.end method

.method private addViewItem(IZ)Z
    .locals 3
    .parameter "index"
    .parameter "first"

    .prologue
    const/4 v1, 0x0

    .line 827
    invoke-direct {p0, p1}, Lcom/baidu/fm/freqwheel/WheelView;->getItemView(I)Landroid/view/View;

    move-result-object v0

    .line 828
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 829
    if-eqz p2, :cond_1

    .line 830
    iget-object v2, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 835
    :goto_0
    const/4 v1, 0x1

    .line 838
    :cond_0
    return v1

    .line 832
    :cond_1
    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private buildViewForMeasuring()V
    .locals 6

    .prologue
    .line 805
    iget-object v2, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 806
    iget-object v2, p0, Lcom/baidu/fm/freqwheel/WheelView;->recycle:Lcom/baidu/fm/freqwheel/WheelRecycle;

    iget-object v3, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/baidu/fm/freqwheel/WheelView;->firstItem:I

    new-instance v5, Lcom/baidu/fm/freqwheel/ItemsRange;

    invoke-direct {v5}, Lcom/baidu/fm/freqwheel/ItemsRange;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lcom/baidu/fm/freqwheel/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/baidu/fm/freqwheel/ItemsRange;)I

    .line 812
    :goto_0
    iget v2, p0, Lcom/baidu/fm/freqwheel/WheelView;->visibleItems:I

    div-int/lit8 v0, v2, 0x2

    .line 813
    .local v0, addItems:I
    iget v2, p0, Lcom/baidu/fm/freqwheel/WheelView;->currentItem:I

    add-int v1, v2, v0

    .local v1, i:I
    :goto_1
    iget v2, p0, Lcom/baidu/fm/freqwheel/WheelView;->currentItem:I

    sub-int/2addr v2, v0

    if-lt v1, v2, :cond_2

    .line 814
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/baidu/fm/freqwheel/WheelView;->addViewItem(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 815
    iput v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->firstItem:I

    .line 813
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 808
    .end local v0           #addItems:I
    .end local v1           #i:I
    :cond_1
    invoke-direct {p0}, Lcom/baidu/fm/freqwheel/WheelView;->createItemsLayout()V

    goto :goto_0

    .line 818
    .restart local v0       #addItems:I
    .restart local v1       #i:I
    :cond_2
    return-void
.end method

.method private calculateLayoutWidth(II)I
    .locals 6
    .parameter "widthSize"
    .parameter "mode"

    .prologue
    const/high16 v5, 0x4000

    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 482
    invoke-direct {p0}, Lcom/baidu/fm/freqwheel/WheelView;->initResourcesIfNecessary()V

    .line 485
    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 488
    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 490
    .local v0, width:I
    if-ne p2, v5, :cond_1

    .line 491
    move v0, p1

    .line 503
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v2, v0, 0x0

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 506
    return v0

    .line 493
    :cond_1
    add-int/lit8 v0, v0, 0x0

    .line 496
    invoke-virtual {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 498
    const/high16 v1, -0x8000

    if-ne p2, v1, :cond_0

    if-ge p1, v0, :cond_0

    .line 499
    move v0, p1

    goto :goto_0
.end method

.method private createItemsLayout()V
    .locals 2

    .prologue
    .line 794
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 795
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    .line 796
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 798
    :cond_0
    return-void
.end method

.method private doScroll(I)V
    .locals 8
    .parameter "delta"

    .prologue
    .line 640
    iget v6, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingOffset:I

    add-int/2addr v6, p1

    iput v6, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingOffset:I

    .line 642
    invoke-direct {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getItemHeight()I

    move-result v3

    .line 643
    .local v3, itemHeight:I
    iget v6, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingOffset:I

    div-int v0, v6, v3

    .line 645
    .local v0, count:I
    iget v6, p0, Lcom/baidu/fm/freqwheel/WheelView;->currentItem:I

    sub-int v5, v6, v0

    .line 646
    .local v5, pos:I
    iget-object v6, p0, Lcom/baidu/fm/freqwheel/WheelView;->viewAdapter:Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;

    invoke-interface {v6}, Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v2

    .line 648
    .local v2, itemCount:I
    iget v6, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingOffset:I

    rem-int v1, v6, v3

    .line 649
    .local v1, fixPos:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    div-int/lit8 v7, v3, 0x2

    if-gt v6, v7, :cond_0

    .line 650
    const/4 v1, 0x0

    .line 652
    :cond_0
    iget-boolean v6, p0, Lcom/baidu/fm/freqwheel/WheelView;->isCyclic:Z

    if-eqz v6, :cond_6

    if-lez v2, :cond_6

    .line 653
    if-lez v1, :cond_2

    .line 654
    add-int/lit8 v5, v5, -0x1

    .line 655
    add-int/lit8 v0, v0, 0x1

    .line 661
    :cond_1
    :goto_0
    if-gez v5, :cond_3

    .line 662
    add-int/2addr v5, v2

    goto :goto_0

    .line 656
    :cond_2
    if-gez v1, :cond_1

    .line 657
    add-int/lit8 v5, v5, 0x1

    .line 658
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 664
    :cond_3
    rem-int/2addr v5, v2

    .line 682
    :cond_4
    :goto_1
    iget v4, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingOffset:I

    .line 683
    .local v4, offset:I
    iget v6, p0, Lcom/baidu/fm/freqwheel/WheelView;->currentItem:I

    if-eq v5, v6, :cond_a

    .line 684
    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/baidu/fm/freqwheel/WheelView;->setCurrentItem(IZ)V

    .line 690
    :goto_2
    mul-int v6, v0, v3

    sub-int v6, v4, v6

    iput v6, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingOffset:I

    .line 691
    iget v6, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_5

    .line 692
    iget v6, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getHeight()I

    move-result v7

    rem-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingOffset:I

    .line 694
    :cond_5
    return-void

    .line 667
    .end local v4           #offset:I
    :cond_6
    if-gez v5, :cond_7

    .line 668
    iget v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->currentItem:I

    .line 669
    const/4 v5, 0x0

    goto :goto_1

    .line 670
    :cond_7
    if-lt v5, v2, :cond_8

    .line 671
    iget v6, p0, Lcom/baidu/fm/freqwheel/WheelView;->currentItem:I

    sub-int/2addr v6, v2

    add-int/lit8 v0, v6, 0x1

    .line 672
    add-int/lit8 v5, v2, -0x1

    goto :goto_1

    .line 673
    :cond_8
    if-lez v5, :cond_9

    if-lez v1, :cond_9

    .line 674
    add-int/lit8 v5, v5, -0x1

    .line 675
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 676
    :cond_9
    add-int/lit8 v6, v2, -0x1

    if-ge v5, v6, :cond_4

    if-gez v1, :cond_4

    .line 677
    add-int/lit8 v5, v5, 0x1

    .line 678
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 686
    .restart local v4       #offset:I
    :cond_a
    invoke-virtual {p0}, Lcom/baidu/fm/freqwheel/WheelView;->invalidate()V

    goto :goto_2
.end method

.method private drawCenterRect(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 598
    .local v0, center:I
    invoke-direct {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getItemHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    const-wide v4, 0x3ff3333333333333L

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 599
    .local v1, offset:I
    iget-object v2, p0, Lcom/baidu/fm/freqwheel/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    sub-int v4, v0, v1

    invoke-virtual {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getWidth()I

    move-result v5

    add-int v6, v0, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 600
    iget-object v2, p0, Lcom/baidu/fm/freqwheel/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 601
    return-void
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 582
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 584
    iget v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->currentItem:I

    iget v2, p0, Lcom/baidu/fm/freqwheel/WheelView;->firstItem:I

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getItemHeight()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-direct {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getItemHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 585
    .local v0, top:I
    const/4 v1, 0x0

    neg-int v2, v0

    iget v3, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 587
    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 589
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 590
    return-void
.end method

.method private drawShadows(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 569
    const-wide/high16 v1, 0x3ff8

    invoke-direct {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getItemHeight()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 570
    .local v0, height:I
    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v5, v5, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 571
    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 573
    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getHeight()I

    move-result v4

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 574
    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 575
    return-void
.end method

.method private getDesiredHeight(Landroid/widget/LinearLayout;)I
    .locals 3
    .parameter "layout"

    .prologue
    const/4 v2, 0x0

    .line 449
    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 450
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemHeight:I

    .line 453
    :cond_0
    iget v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemHeight:I

    iget v2, p0, Lcom/baidu/fm/freqwheel/WheelView;->visibleItems:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemHeight:I

    mul-int/lit8 v2, v2, 0xa

    div-int/lit8 v2, v2, 0x32

    sub-int v0, v1, v2

    .line 455
    .local v0, desired:I
    invoke-virtual {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getItemHeight()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 463
    iget v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemHeight:I

    if-eqz v0, :cond_0

    .line 464
    iget v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemHeight:I

    .line 472
    :goto_0
    return v0

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemHeight:I

    .line 469
    iget v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemHeight:I

    goto :goto_0

    .line 472
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->visibleItems:I

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method private getItemView(I)Landroid/view/View;
    .locals 4
    .parameter "index"

    .prologue
    .line 857
    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->viewAdapter:Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->viewAdapter:Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;

    invoke-interface {v1}, Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 858
    :cond_0
    const/4 v1, 0x0

    .line 870
    :goto_0
    return-object v1

    .line 860
    :cond_1
    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->viewAdapter:Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;

    invoke-interface {v1}, Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 861
    .local v0, count:I
    invoke-direct {p0, p1}, Lcom/baidu/fm/freqwheel/WheelView;->isValidItemIndex(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 862
    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->viewAdapter:Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;

    iget-object v2, p0, Lcom/baidu/fm/freqwheel/WheelView;->recycle:Lcom/baidu/fm/freqwheel/WheelRecycle;

    invoke-virtual {v2}, Lcom/baidu/fm/freqwheel/WheelRecycle;->getEmptyItem()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-interface {v1, v2, v3}, Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;->getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 864
    :cond_2
    :goto_1
    if-gez p1, :cond_3

    .line 865
    add-int/2addr p1, v0

    goto :goto_1

    .line 869
    :cond_3
    rem-int/2addr p1, v0

    .line 870
    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->viewAdapter:Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;

    iget-object v2, p0, Lcom/baidu/fm/freqwheel/WheelView;->recycle:Lcom/baidu/fm/freqwheel/WheelRecycle;

    invoke-virtual {v2}, Lcom/baidu/fm/freqwheel/WheelRecycle;->getItem()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-interface {v1, p1, v2, v3}, Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method private getItemsRange()Lcom/baidu/fm/freqwheel/ItemsRange;
    .locals 7

    .prologue
    .line 711
    invoke-direct {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getItemHeight()I

    move-result v3

    if-nez v3, :cond_0

    .line 712
    const/4 v3, 0x0

    .line 734
    :goto_0
    return-object v3

    .line 715
    :cond_0
    iget v2, p0, Lcom/baidu/fm/freqwheel/WheelView;->currentItem:I

    .line 716
    .local v2, first:I
    const/4 v0, 0x1

    .line 718
    .local v0, count:I
    :goto_1
    invoke-direct {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getItemHeight()I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 719
    add-int/lit8 v2, v2, -0x1

    .line 720
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 723
    :cond_1
    iget v3, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingOffset:I

    if-eqz v3, :cond_3

    .line 724
    iget v3, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingOffset:I

    if-lez v3, :cond_2

    .line 725
    add-int/lit8 v2, v2, -0x1

    .line 727
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 730
    iget v3, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingOffset:I

    invoke-direct {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getItemHeight()I

    move-result v4

    div-int v1, v3, v4

    .line 731
    .local v1, emptyItems:I
    sub-int/2addr v2, v1

    .line 732
    int-to-double v3, v0

    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-int v0, v3

    .line 734
    .end local v1           #emptyItems:I
    :cond_3
    new-instance v3, Lcom/baidu/fm/freqwheel/ItemsRange;

    invoke-direct {v3, v2, v0}, Lcom/baidu/fm/freqwheel/ItemsRange;-><init>(II)V

    goto :goto_0
.end method

.method private initData(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 130
    new-instance v0, Lcom/baidu/fm/freqwheel/WheelScroller;

    invoke-virtual {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingListener:Lcom/baidu/fm/freqwheel/WheelScroller$ScrollingListener;

    invoke-direct {v0, v1, v2}, Lcom/baidu/fm/freqwheel/WheelScroller;-><init>(Landroid/content/Context;Lcom/baidu/fm/freqwheel/WheelScroller$ScrollingListener;)V

    iput-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->scroller:Lcom/baidu/fm/freqwheel/WheelScroller;

    .line 131
    return-void
.end method

.method private initResourcesIfNecessary()V
    .locals 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_1

    .line 431
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/baidu/fm/freqwheel/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    .line 435
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/baidu/fm/freqwheel/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 439
    :cond_2
    return-void
.end method

.method private isValidItemIndex(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 847
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->viewAdapter:Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->viewAdapter:Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;

    invoke-interface {v0}, Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->isCyclic:Z

    if-nez v0, :cond_0

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->viewAdapter:Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;

    invoke-interface {v0}, Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layout(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 545
    add-int/lit8 v0, p1, 0x0

    .line 547
    .local v0, itemsWidth:I
    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v2, v0, p2}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 548
    return-void
.end method

.method private rebuildItems()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 743
    const/4 v3, 0x0

    .line 744
    .local v3, updated:Z
    invoke-direct {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getItemsRange()Lcom/baidu/fm/freqwheel/ItemsRange;

    move-result-object v2

    .line 745
    .local v2, range:Lcom/baidu/fm/freqwheel/ItemsRange;
    iget-object v6, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_5

    .line 746
    iget-object v6, p0, Lcom/baidu/fm/freqwheel/WheelView;->recycle:Lcom/baidu/fm/freqwheel/WheelRecycle;

    iget-object v7, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget v8, p0, Lcom/baidu/fm/freqwheel/WheelView;->firstItem:I

    invoke-virtual {v6, v7, v8, v2}, Lcom/baidu/fm/freqwheel/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/baidu/fm/freqwheel/ItemsRange;)I

    move-result v0

    .line 747
    .local v0, first:I
    iget v6, p0, Lcom/baidu/fm/freqwheel/WheelView;->firstItem:I

    if-eq v6, v0, :cond_4

    move v3, v4

    .line 748
    :goto_0
    iput v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->firstItem:I

    .line 754
    .end local v0           #first:I
    :goto_1
    if-nez v3, :cond_1

    .line 755
    iget v6, p0, Lcom/baidu/fm/freqwheel/WheelView;->firstItem:I

    invoke-virtual {v2}, Lcom/baidu/fm/freqwheel/ItemsRange;->getFirst()I

    move-result v7

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    invoke-virtual {v2}, Lcom/baidu/fm/freqwheel/ItemsRange;->getCount()I

    move-result v7

    if-eq v6, v7, :cond_6

    :cond_0
    move v3, v4

    .line 758
    :cond_1
    :goto_2
    iget v6, p0, Lcom/baidu/fm/freqwheel/WheelView;->firstItem:I

    invoke-virtual {v2}, Lcom/baidu/fm/freqwheel/ItemsRange;->getFirst()I

    move-result v7

    if-le v6, v7, :cond_8

    iget v6, p0, Lcom/baidu/fm/freqwheel/WheelView;->firstItem:I

    invoke-virtual {v2}, Lcom/baidu/fm/freqwheel/ItemsRange;->getLast()I

    move-result v7

    if-gt v6, v7, :cond_8

    .line 759
    iget v6, p0, Lcom/baidu/fm/freqwheel/WheelView;->firstItem:I

    add-int/lit8 v1, v6, -0x1

    .local v1, i:I
    :goto_3
    invoke-virtual {v2}, Lcom/baidu/fm/freqwheel/ItemsRange;->getFirst()I

    move-result v6

    if-lt v1, v6, :cond_2

    .line 760
    invoke-direct {p0, v1, v4}, Lcom/baidu/fm/freqwheel/WheelView;->addViewItem(IZ)Z

    move-result v6

    if-nez v6, :cond_7

    .line 769
    .end local v1           #i:I
    :cond_2
    :goto_4
    iget v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->firstItem:I

    .line 770
    .restart local v0       #first:I
    iget-object v4, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .restart local v1       #i:I
    :goto_5
    invoke-virtual {v2}, Lcom/baidu/fm/freqwheel/ItemsRange;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_9

    .line 771
    iget v4, p0, Lcom/baidu/fm/freqwheel/WheelView;->firstItem:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4, v5}, Lcom/baidu/fm/freqwheel/WheelView;->addViewItem(IZ)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 772
    add-int/lit8 v0, v0, 0x1

    .line 770
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v1           #i:I
    :cond_4
    move v3, v5

    .line 747
    goto :goto_0

    .line 750
    .end local v0           #first:I
    :cond_5
    invoke-direct {p0}, Lcom/baidu/fm/freqwheel/WheelView;->createItemsLayout()V

    .line 751
    const/4 v3, 0x1

    goto :goto_1

    :cond_6
    move v3, v5

    .line 755
    goto :goto_2

    .line 763
    .restart local v1       #i:I
    :cond_7
    iput v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->firstItem:I

    .line 759
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 766
    .end local v1           #i:I
    :cond_8
    invoke-virtual {v2}, Lcom/baidu/fm/freqwheel/ItemsRange;->getFirst()I

    move-result v4

    iput v4, p0, Lcom/baidu/fm/freqwheel/WheelView;->firstItem:I

    goto :goto_4

    .line 775
    .restart local v0       #first:I
    .restart local v1       #i:I
    :cond_9
    iput v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->firstItem:I

    .line 777
    return v3
.end method

.method private updateView()V
    .locals 2

    .prologue
    .line 784
    invoke-direct {p0}, Lcom/baidu/fm/freqwheel/WheelView;->rebuildItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    invoke-virtual {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getWidth()I

    move-result v0

    const/high16 v1, 0x4000

    invoke-direct {p0, v0, v1}, Lcom/baidu/fm/freqwheel/WheelView;->calculateLayoutWidth(II)I

    .line 786
    invoke-virtual {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/fm/freqwheel/WheelView;->layout(II)V

    .line 788
    :cond_0
    return-void
.end method


# virtual methods
.method public addChangingListener(Lcom/baidu/fm/freqwheel/OnWheelChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    return-void
.end method

.method public addClickingListener(Lcom/baidu/fm/freqwheel/OnWheelClickedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    return-void
.end method

.method public addScrollingListener(Lcom/baidu/fm/freqwheel/OnWheelScrollListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    return-void
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->currentItem:I

    return v0
.end method

.method public getViewAdapter()Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->viewAdapter:Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;

    return-object v0
.end method

.method public getVisibleItems()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->visibleItems:I

    return v0
.end method

.method public invalidateWheel(Z)V
    .locals 4
    .parameter "clearCaches"

    .prologue
    .line 408
    if-eqz p1, :cond_2

    .line 409
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->recycle:Lcom/baidu/fm/freqwheel/WheelRecycle;

    invoke-virtual {v0}, Lcom/baidu/fm/freqwheel/WheelRecycle;->clearAll()V

    .line 410
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 413
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingOffset:I

    .line 419
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/fm/freqwheel/WheelView;->invalidate()V

    .line 420
    return-void

    .line 414
    :cond_2
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->recycle:Lcom/baidu/fm/freqwheel/WheelRecycle;

    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/baidu/fm/freqwheel/WheelView;->firstItem:I

    new-instance v3, Lcom/baidu/fm/freqwheel/ItemsRange;

    invoke-direct {v3}, Lcom/baidu/fm/freqwheel/ItemsRange;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/fm/freqwheel/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/baidu/fm/freqwheel/ItemsRange;)I

    goto :goto_0
.end method

.method public isCyclic()Z
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->isCyclic:Z

    return v0
.end method

.method protected notifyChangingListeners(II)V
    .locals 3
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 259
    iget-object v2, p0, Lcom/baidu/fm/freqwheel/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/fm/freqwheel/OnWheelChangedListener;

    .line 260
    .local v1, listener:Lcom/baidu/fm/freqwheel/OnWheelChangedListener;
    invoke-interface {v1, p0, p1, p2}, Lcom/baidu/fm/freqwheel/OnWheelChangedListener;->onChanged(Lcom/baidu/fm/freqwheel/WheelView;II)V

    goto :goto_0

    .line 262
    .end local v1           #listener:Lcom/baidu/fm/freqwheel/OnWheelChangedListener;
    :cond_0
    return-void
.end method

.method protected notifyClickListenersAboutClick(I)V
    .locals 3
    .parameter "item"

    .prologue
    .line 318
    iget-object v2, p0, Lcom/baidu/fm/freqwheel/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/fm/freqwheel/OnWheelClickedListener;

    .line 319
    .local v1, listener:Lcom/baidu/fm/freqwheel/OnWheelClickedListener;
    invoke-interface {v1, p0, p1}, Lcom/baidu/fm/freqwheel/OnWheelClickedListener;->onItemClicked(Lcom/baidu/fm/freqwheel/WheelView;I)V

    goto :goto_0

    .line 321
    .end local v1           #listener:Lcom/baidu/fm/freqwheel/OnWheelClickedListener;
    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutEnd()V
    .locals 3

    .prologue
    .line 293
    iget-object v2, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/fm/freqwheel/OnWheelScrollListener;

    .line 294
    .local v1, listener:Lcom/baidu/fm/freqwheel/OnWheelScrollListener;
    invoke-interface {v1, p0}, Lcom/baidu/fm/freqwheel/OnWheelScrollListener;->onScrollingFinished(Lcom/baidu/fm/freqwheel/WheelView;)V

    goto :goto_0

    .line 296
    .end local v1           #listener:Lcom/baidu/fm/freqwheel/OnWheelScrollListener;
    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutStart()V
    .locals 3

    .prologue
    .line 284
    iget-object v2, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/fm/freqwheel/OnWheelScrollListener;

    .line 285
    .local v1, listener:Lcom/baidu/fm/freqwheel/OnWheelScrollListener;
    invoke-interface {v1, p0}, Lcom/baidu/fm/freqwheel/OnWheelScrollListener;->onScrollingStarted(Lcom/baidu/fm/freqwheel/WheelView;)V

    goto :goto_0

    .line 287
    .end local v1           #listener:Lcom/baidu/fm/freqwheel/OnWheelScrollListener;
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 552
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 554
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->viewAdapter:Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->viewAdapter:Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;

    invoke-interface {v0}, Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 555
    invoke-direct {p0}, Lcom/baidu/fm/freqwheel/WheelView;->updateView()V

    .line 557
    invoke-direct {p0, p1}, Lcom/baidu/fm/freqwheel/WheelView;->drawItems(Landroid/graphics/Canvas;)V

    .line 562
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 536
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/baidu/fm/freqwheel/WheelView;->layout(II)V

    .line 537
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 511
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 512
    .local v4, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 513
    .local v1, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 514
    .local v5, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 516
    .local v2, heightSize:I
    invoke-direct {p0}, Lcom/baidu/fm/freqwheel/WheelView;->buildViewForMeasuring()V

    .line 518
    invoke-direct {p0, v5, v4}, Lcom/baidu/fm/freqwheel/WheelView;->calculateLayoutWidth(II)I

    move-result v3

    .line 521
    .local v3, width:I
    const/high16 v6, 0x4000

    if-ne v1, v6, :cond_1

    .line 522
    move v0, v2

    .line 531
    .local v0, height:I
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/baidu/fm/freqwheel/WheelView;->setMeasuredDimension(II)V

    .line 532
    return-void

    .line 524
    .end local v0           #height:I
    :cond_1
    iget-object v6, p0, Lcom/baidu/fm/freqwheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v6}, Lcom/baidu/fm/freqwheel/WheelView;->getDesiredHeight(Landroid/widget/LinearLayout;)I

    move-result v0

    .line 526
    .restart local v0       #height:I
    const/high16 v6, -0x8000

    if-ne v1, v6, :cond_0

    .line 527
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 605
    invoke-virtual {p0}, Lcom/baidu/fm/freqwheel/WheelView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getViewAdapter()Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    .line 632
    :cond_0
    :goto_0
    return v2

    .line 609
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 632
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/baidu/fm/freqwheel/WheelView;->scroller:Lcom/baidu/fm/freqwheel/WheelScroller;

    invoke-virtual {v2, p1}, Lcom/baidu/fm/freqwheel/WheelScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 611
    :pswitch_0
    invoke-virtual {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 612
    invoke-virtual {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 617
    :pswitch_1
    iget-boolean v2, p0, Lcom/baidu/fm/freqwheel/WheelView;->isScrollingPerformed:Z

    if-nez v2, :cond_2

    .line 618
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 619
    .local v0, distance:I
    if-lez v0, :cond_3

    .line 620
    invoke-direct {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getItemHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 624
    :goto_2
    invoke-direct {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getItemHeight()I

    move-result v2

    div-int v1, v0, v2

    .line 625
    .local v1, items:I
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/baidu/fm/freqwheel/WheelView;->currentItem:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/baidu/fm/freqwheel/WheelView;->isValidItemIndex(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 626
    iget v2, p0, Lcom/baidu/fm/freqwheel/WheelView;->currentItem:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/baidu/fm/freqwheel/WheelView;->notifyClickListenersAboutClick(I)V

    goto :goto_1

    .line 622
    .end local v1           #items:I
    :cond_3
    invoke-direct {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getItemHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    goto :goto_2

    .line 609
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeChangingListener(Lcom/baidu/fm/freqwheel/OnWheelChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method

.method public removeClickingListener(Lcom/baidu/fm/freqwheel/OnWheelClickedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 312
    return-void
.end method

.method public removeScrollingListener(Lcom/baidu/fm/freqwheel/OnWheelScrollListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 278
    return-void
.end method

.method public scroll(II)V
    .locals 3
    .parameter "itemsToScroll"
    .parameter "time"

    .prologue
    .line 702
    invoke-direct {p0}, Lcom/baidu/fm/freqwheel/WheelView;->getItemHeight()I

    move-result v1

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingOffset:I

    sub-int v0, v1, v2

    .line 703
    .local v0, distance:I
    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->scroller:Lcom/baidu/fm/freqwheel/WheelScroller;

    invoke-virtual {v1, v0, p2}, Lcom/baidu/fm/freqwheel/WheelScroller;->scroll(II)V

    .line 704
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 383
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/fm/freqwheel/WheelView;->setCurrentItem(IZ)V

    .line 384
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 7
    .parameter "index"
    .parameter "animated"

    .prologue
    const/4 v6, 0x0

    .line 339
    iget-object v4, p0, Lcom/baidu/fm/freqwheel/WheelView;->viewAdapter:Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/baidu/fm/freqwheel/WheelView;->viewAdapter:Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;

    invoke-interface {v4}, Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v4, p0, Lcom/baidu/fm/freqwheel/WheelView;->viewAdapter:Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;

    invoke-interface {v4}, Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 344
    .local v0, itemCount:I
    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_4

    .line 345
    :cond_2
    iget-boolean v4, p0, Lcom/baidu/fm/freqwheel/WheelView;->isCyclic:Z

    if-eqz v4, :cond_0

    .line 346
    :goto_1
    if-gez p1, :cond_3

    .line 347
    add-int/2addr p1, v0

    goto :goto_1

    .line 349
    :cond_3
    rem-int/2addr p1, v0

    .line 354
    :cond_4
    iget v4, p0, Lcom/baidu/fm/freqwheel/WheelView;->currentItem:I

    if-eq p1, v4, :cond_0

    .line 355
    if-eqz p2, :cond_7

    .line 356
    iget v4, p0, Lcom/baidu/fm/freqwheel/WheelView;->currentItem:I

    sub-int v1, p1, v4

    .line 357
    .local v1, itemsToScroll:I
    iget-boolean v4, p0, Lcom/baidu/fm/freqwheel/WheelView;->isCyclic:Z

    if-eqz v4, :cond_5

    .line 358
    iget v4, p0, Lcom/baidu/fm/freqwheel/WheelView;->currentItem:I

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v0

    iget v5, p0, Lcom/baidu/fm/freqwheel/WheelView;->currentItem:I

    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int v3, v4, v5

    .line 359
    .local v3, scroll:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 360
    if-gez v1, :cond_6

    move v1, v3

    .line 363
    .end local v3           #scroll:I
    :cond_5
    :goto_2
    invoke-virtual {p0, v1, v6}, Lcom/baidu/fm/freqwheel/WheelView;->scroll(II)V

    goto :goto_0

    .line 360
    .restart local v3       #scroll:I
    :cond_6
    neg-int v1, v3

    goto :goto_2

    .line 365
    .end local v1           #itemsToScroll:I
    .end local v3           #scroll:I
    :cond_7
    iput v6, p0, Lcom/baidu/fm/freqwheel/WheelView;->scrollingOffset:I

    .line 367
    iget v2, p0, Lcom/baidu/fm/freqwheel/WheelView;->currentItem:I

    .line 368
    .local v2, old:I
    iput p1, p0, Lcom/baidu/fm/freqwheel/WheelView;->currentItem:I

    .line 370
    iget v4, p0, Lcom/baidu/fm/freqwheel/WheelView;->currentItem:I

    invoke-virtual {p0, v2, v4}, Lcom/baidu/fm/freqwheel/WheelView;->notifyChangingListeners(II)V

    .line 372
    invoke-virtual {p0}, Lcom/baidu/fm/freqwheel/WheelView;->invalidate()V

    goto :goto_0
.end method

.method public setCyclic(Z)V
    .locals 1
    .parameter "isCyclic"

    .prologue
    .line 399
    iput-boolean p1, p0, Lcom/baidu/fm/freqwheel/WheelView;->isCyclic:Z

    .line 400
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/fm/freqwheel/WheelView;->invalidateWheel(Z)V

    .line 401
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "interpolator"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->scroller:Lcom/baidu/fm/freqwheel/WheelScroller;

    invoke-virtual {v0, p1}, Lcom/baidu/fm/freqwheel/WheelScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 176
    return-void
.end method

.method public setViewAdapter(Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;)V
    .locals 2
    .parameter "viewAdapter"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->viewAdapter:Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->viewAdapter:Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;

    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 229
    :cond_0
    iput-object p1, p0, Lcom/baidu/fm/freqwheel/WheelView;->viewAdapter:Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;

    .line 230
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->viewAdapter:Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->viewAdapter:Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;

    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 234
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/fm/freqwheel/WheelView;->invalidateWheel(Z)V

    .line 235
    return-void
.end method

.method public setVisibleItems(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 195
    iput p1, p0, Lcom/baidu/fm/freqwheel/WheelView;->visibleItems:I

    .line 196
    return-void
.end method

.method public stopScrolling()V
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelView;->scroller:Lcom/baidu/fm/freqwheel/WheelScroller;

    invoke-virtual {v0}, Lcom/baidu/fm/freqwheel/WheelScroller;->stopScrolling()V

    .line 878
    return-void
.end method
