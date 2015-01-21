.class public Lcom/mediatek/gemini/SimCardListAdpater;
.super Landroid/widget/BaseAdapter;
.source "SimCardListAdpater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/SimCardListAdpater$ViewHolder;
    }
.end annotation


# static fields
.field private static final NUM_WIDTH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SimCardListAdpater"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSimList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/mediatek/gemini/SimCardListAdpater;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimCardListAdpater;->updateSimInfo()V

    .line 34
    return-void
.end method

.method private getSimIndicator(I)I
    .locals 6
    .parameter "slotId"

    .prologue
    .line 106
    const-string v3, "SimCardListAdpater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimIndicator---slotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v2, -0x1

    .line 109
    .local v2, state:I
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/gemini/SimCardListAdpater;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_0

    .line 110
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/gemini/SimCardListAdpater;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 113
    :cond_0
    iget-object v3, p0, Lcom/mediatek/gemini/SimCardListAdpater;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 119
    :goto_0
    return v2

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "SimCardListAdpater"

    const-string v4, "RemoteException"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 117
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v3, "SimCardListAdpater"

    const-string v4, "NullPointerException"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setTextNumFormat(Landroid/widget/TextView;ILjava/lang/String;)V
    .locals 3
    .parameter "textNumFormat"
    .parameter "format"
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 124
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 125
    if-eqz p3, :cond_0

    .line 126
    packed-switch p2, :pswitch_data_0

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 128
    :pswitch_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 131
    :pswitch_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 132
    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 138
    :pswitch_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_2

    .line 139
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setViewHolderId(Lcom/mediatek/gemini/SimCardListAdpater$ViewHolder;Landroid/view/View;)V
    .locals 1
    .parameter "holder"
    .parameter "convertView"

    .prologue
    .line 152
    const v0, 0x7f0a0144

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mediatek/gemini/SimCardListAdpater$ViewHolder;->mTextName:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f0a0145

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mediatek/gemini/SimCardListAdpater$ViewHolder;->mTextNum:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f0a0141

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mediatek/gemini/SimCardListAdpater$ViewHolder;->mImageStatus:Landroid/widget/ImageView;

    .line 156
    const v0, 0x7f0a0142

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mediatek/gemini/SimCardListAdpater$ViewHolder;->mTextNumFormat:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f0a0140

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/mediatek/gemini/SimCardListAdpater$ViewHolder;->mImageSim:Landroid/widget/RelativeLayout;

    .line 160
    return-void
.end method

.method private setViewProperty(Lcom/mediatek/gemini/SimCardListAdpater$ViewHolder;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V
    .locals 9
    .parameter "holder"
    .parameter "simInfo"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 76
    iget-object v3, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 77
    iget-object v3, p1, Lcom/mediatek/gemini/SimCardListAdpater$ViewHolder;->mTextName:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_0
    iget-object v3, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 80
    iget-object v3, p1, Lcom/mediatek/gemini/SimCardListAdpater$ViewHolder;->mTextNum:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v3, p1, Lcom/mediatek/gemini/SimCardListAdpater$ViewHolder;->mTextNum:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_0
    iget v3, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-static {v3}, Lcom/mediatek/gemini/GeminiUtils;->getSimColorResource(I)I

    move-result v0

    .line 86
    .local v0, colorRes:I
    if-ne v0, v6, :cond_2

    .line 87
    const-string v3, "SimCardListAdpater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "colorRes == -1 and simInfo.mColor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_1
    iget v3, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-direct {p0, v3}, Lcom/mediatek/gemini/SimCardListAdpater;->getSimIndicator(I)I

    move-result v1

    .line 92
    .local v1, simState:I
    const-string v3, "SimCardListAdpater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "simState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {v1}, Lcom/mediatek/gemini/GeminiUtils;->getStatusResource(I)I

    move-result v2

    .line 94
    .local v2, statusRes:I
    const-string v3, "SimCardListAdpater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "statusRes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-ne v2, v6, :cond_3

    .line 96
    iget-object v3, p1, Lcom/mediatek/gemini/SimCardListAdpater$ViewHolder;->mImageStatus:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    :goto_2
    iget-object v3, p1, Lcom/mediatek/gemini/SimCardListAdpater$ViewHolder;->mTextNumFormat:Landroid/widget/TextView;

    iget v4, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDispalyNumberFormat:I

    iget-object v5, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/mediatek/gemini/SimCardListAdpater;->setTextNumFormat(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 103
    return-void

    .line 83
    .end local v0           #colorRes:I
    .end local v1           #simState:I
    .end local v2           #statusRes:I
    :cond_1
    iget-object v3, p1, Lcom/mediatek/gemini/SimCardListAdpater$ViewHolder;->mTextNum:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 89
    .restart local v0       #colorRes:I
    :cond_2
    iget-object v3, p1, Lcom/mediatek/gemini/SimCardListAdpater$ViewHolder;->mImageSim:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 98
    .restart local v1       #simState:I
    .restart local v2       #statusRes:I
    :cond_3
    iget-object v3, p1, Lcom/mediatek/gemini/SimCardListAdpater$ViewHolder;->mImageStatus:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v3, p1, Lcom/mediatek/gemini/SimCardListAdpater$ViewHolder;->mImageStatus:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/gemini/SimCardListAdpater;->mSimList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mediatek/gemini/SimCardListAdpater;->mSimList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 61
    if-nez p2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/mediatek/gemini/SimCardListAdpater;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400a1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 64
    new-instance v0, Lcom/mediatek/gemini/SimCardListAdpater$ViewHolder;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SimCardListAdpater$ViewHolder;-><init>(Lcom/mediatek/gemini/SimCardListAdpater;)V

    .line 65
    .local v0, holder:Lcom/mediatek/gemini/SimCardListAdpater$ViewHolder;
    invoke-direct {p0, v0, p2}, Lcom/mediatek/gemini/SimCardListAdpater;->setViewHolderId(Lcom/mediatek/gemini/SimCardListAdpater$ViewHolder;Landroid/view/View;)V

    .line 66
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    :goto_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimCardListAdpater;->mSimList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 71
    .local v1, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-direct {p0, v0, v1}, Lcom/mediatek/gemini/SimCardListAdpater;->setViewProperty(Lcom/mediatek/gemini/SimCardListAdpater$ViewHolder;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    .line 72
    return-object p2

    .line 68
    .end local v0           #holder:Lcom/mediatek/gemini/SimCardListAdpater$ViewHolder;
    .end local v1           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gemini/SimCardListAdpater$ViewHolder;

    .restart local v0       #holder:Lcom/mediatek/gemini/SimCardListAdpater$ViewHolder;
    goto :goto_0
.end method

.method public updateSimInfo()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/gemini/SimCardListAdpater;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/SimCardListAdpater;->mSimList:Ljava/util/List;

    .line 43
    iget-object v0, p0, Lcom/mediatek/gemini/SimCardListAdpater;->mSimList:Ljava/util/List;

    new-instance v1, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;

    invoke-direct {v1}, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 44
    return-void
.end method
