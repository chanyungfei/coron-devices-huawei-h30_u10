.class Lcom/baidu/fm/StationListShow$StationListShowAdapter;
.super Landroid/widget/BaseAdapter;
.source "StationListShow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/StationListShow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StationListShowAdapter"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/baidu/fm/StationListShow;


# direct methods
.method private constructor <init>(Lcom/baidu/fm/StationListShow;)V
    .locals 1
    .parameter

    .prologue
    .line 950
    iput-object p1, p0, Lcom/baidu/fm/StationListShow$StationListShowAdapter;->this$0:Lcom/baidu/fm/StationListShow;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 951
    const-string v0, "StationListShowAdapter"

    iput-object v0, p0, Lcom/baidu/fm/StationListShow$StationListShowAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/fm/StationListShow;Lcom/baidu/fm/StationListShow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 950
    invoke-direct {p0, p1}, Lcom/baidu/fm/StationListShow$StationListShowAdapter;-><init>(Lcom/baidu/fm/StationListShow;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/baidu/fm/StationListShow$StationListShowAdapter;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v0}, Lcom/baidu/fm/StationListShow;->access$100(Lcom/baidu/fm/StationListShow;)Lcom/baidu/fm/FMPersistence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/fm/FMPersistence;->getStationInfoCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1041
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1045
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 955
    iget-object v7, p0, Lcom/baidu/fm/StationListShow$StationListShowAdapter;->this$0:Lcom/baidu/fm/StationListShow;

    invoke-virtual {v7}, Lcom/baidu/fm/StationListShow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 956
    .local v3, inf:Landroid/view/LayoutInflater;
    if-nez v3, :cond_0

    .line 957
    const-string v7, "StationListShowAdapter"

    const-string v8, "inflater is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 1032
    :goto_0
    return-object v0

    .line 961
    :cond_0
    iget-object v7, p0, Lcom/baidu/fm/StationListShow$StationListShowAdapter;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v7}, Lcom/baidu/fm/StationListShow;->access$100(Lcom/baidu/fm/StationListShow;)Lcom/baidu/fm/FMPersistence;

    move-result-object v7

    int-to-long v8, p1

    invoke-virtual {v7, v8, v9}, Lcom/baidu/fm/FMPersistence;->getStationInfoByIndex(J)Lcom/baidu/fm/FMStationInfo;

    move-result-object v4

    .line 963
    .local v4, info:Lcom/baidu/fm/FMStationInfo;
    const/4 v0, 0x0

    .line 965
    .local v0, cur:Landroid/view/View;
    if-eqz p2, :cond_1

    .line 966
    move-object v0, p2

    .line 969
    :cond_1
    if-nez v0, :cond_2

    .line 970
    const v7, 0x7f030002

    invoke-virtual {v3, v7, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 973
    :cond_2
    if-nez v0, :cond_3

    .line 974
    const-string v7, "StationListShowAdapter"

    const-string v8, "list item view is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 975
    goto :goto_0

    .line 978
    :cond_3
    const v7, 0x7f090003

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 979
    .local v5, textView:Landroid/widget/TextView;
    const-string v7, ""

    invoke-virtual {v4}, Lcom/baidu/fm/FMStationInfo;->getStationName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 981
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FM "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/baidu/fm/FMStationInfo;->getStationName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Hz"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 986
    :goto_1
    const v7, 0x7f090002

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 987
    .local v2, imageView:Landroid/widget/ImageView;
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 989
    const v7, 0x7f090004

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #imageView:Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .line 991
    .restart local v2       #imageView:Landroid/widget/ImageView;
    const v7, 0x7f090005

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 992
    .local v1, delCheckBox:Landroid/widget/CheckBox;
    iget-object v7, p0, Lcom/baidu/fm/StationListShow$StationListShowAdapter;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mSelectionMode:Z
    invoke-static {v7}, Lcom/baidu/fm/StationListShow;->access$500(Lcom/baidu/fm/StationListShow;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 993
    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 994
    iget-object v7, p0, Lcom/baidu/fm/StationListShow$StationListShowAdapter;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mStationListView:Landroid/widget/ListView;
    invoke-static {v7}, Lcom/baidu/fm/StationListShow;->access$200(Lcom/baidu/fm/StationListShow;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 999
    :goto_2
    invoke-virtual {v4}, Lcom/baidu/fm/FMStationInfo;->isFavorite()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1004
    const v7, 0x7f0200b7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1005
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1006
    iget-object v7, p0, Lcom/baidu/fm/StationListShow$StationListShowAdapter;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mSelectionMode:Z
    invoke-static {v7}, Lcom/baidu/fm/StationListShow;->access$500(Lcom/baidu/fm/StationListShow;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1007
    iget-object v6, p0, Lcom/baidu/fm/StationListShow$StationListShowAdapter;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mClickToNonFavoriteListener:Landroid/view/View$OnClickListener;
    invoke-static {v6}, Lcom/baidu/fm/StationListShow;->access$1600(Lcom/baidu/fm/StationListShow;)Landroid/view/View$OnClickListener;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 983
    .end local v1           #delCheckBox:Landroid/widget/CheckBox;
    .end local v2           #imageView:Landroid/widget/ImageView;
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FM "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/baidu/fm/FMStationInfo;->getStationFreqString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Hz"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 996
    .restart local v1       #delCheckBox:Landroid/widget/CheckBox;
    .restart local v2       #imageView:Landroid/widget/ImageView;
    :cond_5
    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2

    .line 1009
    :cond_6
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1015
    :cond_7
    iget-object v7, p0, Lcom/baidu/fm/StationListShow$StationListShowAdapter;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v7}, Lcom/baidu/fm/StationListShow;->access$100(Lcom/baidu/fm/StationListShow;)Lcom/baidu/fm/FMPersistence;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/fm/FMPersistence;->getFavoriteStationCount()I

    move-result v7

    const/16 v8, 0x64

    if-ge v7, v8, :cond_9

    .line 1017
    const v7, 0x7f0200b6

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1018
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1019
    iget-object v7, p0, Lcom/baidu/fm/StationListShow$StationListShowAdapter;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mSelectionMode:Z
    invoke-static {v7}, Lcom/baidu/fm/StationListShow;->access$500(Lcom/baidu/fm/StationListShow;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1020
    iget-object v6, p0, Lcom/baidu/fm/StationListShow$StationListShowAdapter;->this$0:Lcom/baidu/fm/StationListShow;

    #getter for: Lcom/baidu/fm/StationListShow;->mClickToFavoriteListener:Landroid/view/View$OnClickListener;
    invoke-static {v6}, Lcom/baidu/fm/StationListShow;->access$1700(Lcom/baidu/fm/StationListShow;)Landroid/view/View$OnClickListener;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1022
    :cond_8
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1027
    :cond_9
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1028
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1029
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method
