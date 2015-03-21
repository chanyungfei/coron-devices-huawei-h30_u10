.class Lcom/baidu/fm/FrequencyViewAdapter$2;
.super Ljava/lang/Object;
.source "FrequencyViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/FrequencyViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/FrequencyViewAdapter;


# direct methods
.method constructor <init>(Lcom/baidu/fm/FrequencyViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/baidu/fm/FrequencyViewAdapter$2;->this$0:Lcom/baidu/fm/FrequencyViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 57
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object v2, v4

    check-cast v2, Ljava/lang/Integer;

    .line 60
    .local v2, idx:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/baidu/fm/FrequencyViewAdapter$2;->this$0:Lcom/baidu/fm/FrequencyViewAdapter;

    #getter for: Lcom/baidu/fm/FrequencyViewAdapter;->mCurrentFreqShow:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/baidu/fm/FrequencyViewAdapter;->access$000(Lcom/baidu/fm/FrequencyViewAdapter;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 61
    iget-object v4, p0, Lcom/baidu/fm/FrequencyViewAdapter$2;->this$0:Lcom/baidu/fm/FrequencyViewAdapter;

    #getter for: Lcom/baidu/fm/FrequencyViewAdapter;->mCurrentFreqShow:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/baidu/fm/FrequencyViewAdapter;->access$000(Lcom/baidu/fm/FrequencyViewAdapter;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v4, p0, Lcom/baidu/fm/FrequencyViewAdapter$2;->this$0:Lcom/baidu/fm/FrequencyViewAdapter;

    #getter for: Lcom/baidu/fm/FrequencyViewAdapter;->mFavoriteList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/baidu/fm/FrequencyViewAdapter;->access$100(Lcom/baidu/fm/FrequencyViewAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v4, v4, v6

    check-cast v4, Lcom/baidu/fm/FMStationInfo;

    invoke-virtual {v4}, Lcom/baidu/fm/FMStationInfo;->getStationFreqString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const/4 v3, 0x0

    .local v3, tvCur:I
    const/4 v0, 0x0

    .local v0, alCur:I
    :goto_0
    iget-object v4, p0, Lcom/baidu/fm/FrequencyViewAdapter$2;->this$0:Lcom/baidu/fm/FrequencyViewAdapter;

    #getter for: Lcom/baidu/fm/FrequencyViewAdapter;->STATION_LIST_MAX_NUM:I
    invoke-static {v4}, Lcom/baidu/fm/FrequencyViewAdapter;->access$200(Lcom/baidu/fm/FrequencyViewAdapter;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 67
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 71
    :cond_0
    iget-object v4, p0, Lcom/baidu/fm/FrequencyViewAdapter$2;->this$0:Lcom/baidu/fm/FrequencyViewAdapter;

    #getter for: Lcom/baidu/fm/FrequencyViewAdapter;->mFavoriteList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/baidu/fm/FrequencyViewAdapter;->access$100(Lcom/baidu/fm/FrequencyViewAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v0

    check-cast v4, Lcom/baidu/fm/FMStationInfo;

    invoke-virtual {v4}, Lcom/baidu/fm/FMStationInfo;->getStationFreqString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, freq:Ljava/lang/String;
    iget-object v4, p0, Lcom/baidu/fm/FrequencyViewAdapter$2;->this$0:Lcom/baidu/fm/FrequencyViewAdapter;

    #getter for: Lcom/baidu/fm/FrequencyViewAdapter;->mFavoriteListTextShow:[Landroid/widget/TextView;
    invoke-static {v4}, Lcom/baidu/fm/FrequencyViewAdapter;->access$300(Lcom/baidu/fm/FrequencyViewAdapter;)[Landroid/widget/TextView;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v4, p0, Lcom/baidu/fm/FrequencyViewAdapter$2;->this$0:Lcom/baidu/fm/FrequencyViewAdapter;

    #getter for: Lcom/baidu/fm/FrequencyViewAdapter;->mFavoriteListTextShow:[Landroid/widget/TextView;
    invoke-static {v4}, Lcom/baidu/fm/FrequencyViewAdapter;->access$300(Lcom/baidu/fm/FrequencyViewAdapter;)[Landroid/widget/TextView;

    move-result-object v4

    aget-object v4, v4, v3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 66
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v1           #freq:Ljava/lang/String;
    :cond_1
    return-void
.end method
