.class public Lcom/baidu/fm/FrequencyViewAdapter;
.super Ljava/lang/Object;
.source "FrequencyViewAdapter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final STATION_LIST_MAX_NUM:I

.field private final TAG:Ljava/lang/String;

.field private mCurrentChangeListener:Lcom/baidu/fm/OnCurrentFreqChangeListener;

.field private final mCurrentFreqShow:Landroid/widget/TextView;

.field private final mFavoriteItemClickListener:Landroid/view/View$OnClickListener;

.field private final mFavoriteItemTouchListener:Landroid/view/View$OnTouchListener;

.field private mFavoriteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/fm/FMStationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mFavoriteListTextShow:[Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/baidu/fm/FrequencyViewAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/baidu/fm/FrequencyViewAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(I[Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 3
    .parameter "maxFavoNum"
    .parameter "favoListTextShow"
    .parameter "currentFreqShow"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v1, "FavoriteListCustomizedAdapter"

    iput-object v1, p0, Lcom/baidu/fm/FrequencyViewAdapter;->TAG:Ljava/lang/String;

    .line 45
    new-instance v1, Lcom/baidu/fm/FrequencyViewAdapter$1;

    invoke-direct {v1, p0}, Lcom/baidu/fm/FrequencyViewAdapter$1;-><init>(Lcom/baidu/fm/FrequencyViewAdapter;)V

    iput-object v1, p0, Lcom/baidu/fm/FrequencyViewAdapter;->mFavoriteItemTouchListener:Landroid/view/View$OnTouchListener;

    .line 53
    new-instance v1, Lcom/baidu/fm/FrequencyViewAdapter$2;

    invoke-direct {v1, p0}, Lcom/baidu/fm/FrequencyViewAdapter$2;-><init>(Lcom/baidu/fm/FrequencyViewAdapter;)V

    iput-object v1, p0, Lcom/baidu/fm/FrequencyViewAdapter;->mFavoriteItemClickListener:Landroid/view/View$OnClickListener;

    .line 82
    sget-boolean v1, Lcom/baidu/fm/FrequencyViewAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p3, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 83
    :cond_0
    sget-boolean v1, Lcom/baidu/fm/FrequencyViewAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-gtz p1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 84
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_3

    .line 85
    sget-boolean v1, Lcom/baidu/fm/FrequencyViewAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    aget-object v1, p2, v0

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 84
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_3
    iput p1, p0, Lcom/baidu/fm/FrequencyViewAdapter;->STATION_LIST_MAX_NUM:I

    .line 89
    iput-object p2, p0, Lcom/baidu/fm/FrequencyViewAdapter;->mFavoriteListTextShow:[Landroid/widget/TextView;

    .line 90
    iput-object p3, p0, Lcom/baidu/fm/FrequencyViewAdapter;->mCurrentFreqShow:Landroid/widget/TextView;

    .line 92
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_4

    .line 93
    iget-object v1, p0, Lcom/baidu/fm/FrequencyViewAdapter;->mFavoriteListTextShow:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v1, p0, Lcom/baidu/fm/FrequencyViewAdapter;->mFavoriteListTextShow:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/baidu/fm/FrequencyViewAdapter;->mFavoriteItemTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 96
    iget-object v1, p0, Lcom/baidu/fm/FrequencyViewAdapter;->mFavoriteListTextShow:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/baidu/fm/FrequencyViewAdapter;->mFavoriteItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/fm/FrequencyViewAdapter;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/fm/FrequencyViewAdapter;->mCurrentFreqShow:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/fm/FrequencyViewAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/fm/FrequencyViewAdapter;->mFavoriteList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/fm/FrequencyViewAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/baidu/fm/FrequencyViewAdapter;->STATION_LIST_MAX_NUM:I

    return v0
.end method

.method static synthetic access$300(Lcom/baidu/fm/FrequencyViewAdapter;)[Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/fm/FrequencyViewAdapter;->mFavoriteListTextShow:[Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public currentIsFavorite()Z
    .locals 3

    .prologue
    .line 124
    iget-object v1, p0, Lcom/baidu/fm/FrequencyViewAdapter;->mCurrentFreqShow:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 126
    .local v0, tag:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/baidu/fm/FrequencyViewAdapter;->STATION_LIST_MAX_NUM:I

    if-ge v1, v2, :cond_0

    .line 128
    const/4 v1, 0x1

    .line 130
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadCurrentFreq(Ljava/lang/String;)V
    .locals 1
    .parameter "currentFreq"

    .prologue
    .line 135
    sget-boolean v0, Lcom/baidu/fm/FrequencyViewAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/baidu/fm/FrequencyViewAdapter;->mCurrentFreqShow:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method

.method public loadFavoriteStations(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/fm/FMStationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, favoriteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/fm/FMStationInfo;>;"
    sget-boolean v2, Lcom/baidu/fm/FrequencyViewAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 107
    :cond_0
    sget-boolean v2, Lcom/baidu/fm/FrequencyViewAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 108
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 109
    sget-boolean v2, Lcom/baidu/fm/FrequencyViewAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 108
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_3
    iput-object p1, p0, Lcom/baidu/fm/FrequencyViewAdapter;->mFavoriteList:Ljava/util/ArrayList;

    .line 114
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 115
    iget-object v2, p0, Lcom/baidu/fm/FrequencyViewAdapter;->mFavoriteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v1

    check-cast v2, Lcom/baidu/fm/FMStationInfo;

    invoke-virtual {v2}, Lcom/baidu/fm/FMStationInfo;->getStationFreqString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, freq:Ljava/lang/String;
    sget-boolean v2, Lcom/baidu/fm/FrequencyViewAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    if-nez v0, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 118
    :cond_4
    iget-object v2, p0, Lcom/baidu/fm/FrequencyViewAdapter;->mFavoriteListTextShow:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v2, p0, Lcom/baidu/fm/FrequencyViewAdapter;->mFavoriteListTextShow:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 121
    .end local v0           #freq:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public setOnCurrentFreqChange(Lcom/baidu/fm/OnCurrentFreqChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/baidu/fm/FrequencyViewAdapter;->mCurrentChangeListener:Lcom/baidu/fm/OnCurrentFreqChangeListener;

    .line 103
    return-void
.end method

.method public updateCurrentFreq(Ljava/lang/String;)V
    .locals 0
    .parameter "newFreq"

    .prologue
    .line 148
    return-void
.end method
