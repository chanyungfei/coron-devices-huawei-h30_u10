.class public Lcom/mediatek/gemini/DefaultSimPreference;
.super Landroid/preference/DialogPreference;
.source "DefaultSimPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;
    }
.end annotation


# static fields
.field private static final COLOR_INTERNET_CALL:I = 0x8

.field private static final DISPLAY_FIRST_FOUR:I = 0x1

.field private static final DISPLAY_LAST_FOUR:I = 0x2

.field private static final DISPLAY_NONE:I = 0x0

.field private static final NUM_WIDTH:I = 0x4

.field private static final PIN1_REQUEST_CODE:I = 0x12e

.field private static final TAG:Ljava/lang/String; = "DefaultSimPreference"


# instance fields
.field private mAdapter:Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;

.field private mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mContext:Landroid/content/Context;

.field private mFlater:Landroid/view/LayoutInflater;

.field private mInitValue:I

.field private mListView:Landroid/widget/ListView;

.field private mSelected:I

.field private mSimItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/gemini/SimItem;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/gemini/DefaultSimPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, -0x1

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSimItemList:Ljava/util/List;

    .line 42
    iput v1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSelected:I

    .line 43
    iput v1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mInitValue:I

    .line 48
    iput v1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mType:I

    .line 83
    iput-object p1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mContext:Landroid/content/Context;

    .line 84
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mFlater:Landroid/view/LayoutInflater;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/DefaultSimPreference;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mFlater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/gemini/DefaultSimPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSelected:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/gemini/DefaultSimPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mType:I

    return v0
.end method

.method private updateData()V
    .locals 8

    .prologue
    .line 417
    const/4 v1, 0x0

    .line 418
    .local v1, location:I
    iget-object v5, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSimItemList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/gemini/SimItem;

    .line 420
    .local v3, simitem:Lcom/mediatek/gemini/SimItem;
    iget-boolean v5, v3, Lcom/mediatek/gemini/SimItem;->mIsSim:Z

    if-eqz v5, :cond_0

    .line 421
    iget-object v5, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mContext:Landroid/content/Context;

    iget-wide v6, v3, Lcom/mediatek/gemini/SimItem;->mSimID:J

    invoke-static {v5, v6, v7}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v2

    .line 424
    .local v2, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v2, :cond_0

    .line 425
    new-instance v4, Lcom/mediatek/gemini/SimItem;

    invoke-direct {v4, v2}, Lcom/mediatek/gemini/SimItem;-><init>(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    .line 426
    .local v4, simitemCopy:Lcom/mediatek/gemini/SimItem;
    iget-object v5, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSimItemList:Ljava/util/List;

    invoke-interface {v5, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 431
    .end local v2           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v4           #simitemCopy:Lcom/mediatek/gemini/SimItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    .end local v3           #simitem:Lcom/mediatek/gemini/SimItem;
    :cond_1
    return-void
.end method


# virtual methods
.method public getPreparedListView(Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;
    .locals 2
    .parameter "listener"

    .prologue
    .line 117
    new-instance v0, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;

    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSimItemList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;-><init>(Lcom/mediatek/gemini/DefaultSimPreference;Ljava/util/List;)V

    iput-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mAdapter:Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;

    .line 118
    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mListView:Landroid/widget/ListView;

    .line 119
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mAdapter:Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 122
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method getValue()J
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSimItemList:Ljava/util/List;

    iget v1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSelected:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gemini/SimItem;

    iget-wide v0, v0, Lcom/mediatek/gemini/SimItem;->mSimID:J

    return-wide v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 141
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 144
    .local v0, textSummary:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 146
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 149
    :cond_0
    const-string v1, "DefaultSimPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "summary is +"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 170
    const-string v2, "DefaultSimPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSelected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSelected:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v2, "DefaultSimPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mInitValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mInitValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    if-eqz p1, :cond_0

    iget v2, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSelected:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSelected:I

    iget v3, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mInitValue:I

    if-eq v2, v3, :cond_0

    .line 174
    const-string v2, "DefaultSimPreference"

    const-string v3, "callChangeListener"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v2, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSimItemList:Ljava/util/List;

    iget v3, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSelected:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gemini/SimItem;

    iget-wide v0, v2, Lcom/mediatek/gemini/SimItem;->mSimID:J

    .line 176
    .local v0, value:J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/DefaultSimPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 177
    iget v2, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSelected:I

    iput v2, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mInitValue:I

    .line 179
    .end local v0           #value:J
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v1, "DefaultSimPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "positon is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    if-eqz p2, :cond_0

    .line 197
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSimItemList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gemini/SimItem;

    .line 201
    .local v0, simItem:Lcom/mediatek/gemini/SimItem;
    iget v1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-boolean v1, v0, Lcom/mediatek/gemini/SimItem;->mIsSim:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/mediatek/gemini/SimItem;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 204
    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    iget v2, v0, Lcom/mediatek/gemini/SimItem;->mSlot:I

    const/16 v3, 0x12e

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    goto :goto_0

    .line 207
    :cond_2
    iput p3, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSelected:I

    .line 208
    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/gemini/DefaultSimPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 209
    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 6
    .parameter "builder"

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 157
    new-instance v0, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;

    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSimItemList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;-><init>(Lcom/mediatek/gemini/DefaultSimPreference;Ljava/util/List;)V

    iput-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mAdapter:Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;

    .line 158
    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mListView:Landroid/widget/ListView;

    .line 159
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mAdapter:Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 162
    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mListView:Landroid/widget/ListView;

    move-object v0, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 163
    const/high16 v0, 0x104

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 164
    return-void
.end method

.method setCellConnMgr(Lcom/mediatek/CellConnService/CellConnMgr;)V
    .locals 0
    .parameter "cellConnmgr"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 96
    return-void
.end method

.method setData(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/gemini/SimItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, simItemList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/gemini/SimItem;>;"
    iput-object p1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSimItemList:Ljava/util/List;

    .line 106
    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;

    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSimItemList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;-><init>(Lcom/mediatek/gemini/DefaultSimPreference;Ljava/util/List;)V

    iput-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mAdapter:Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;

    .line 109
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mAdapter:Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mAdapter:Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;->notifyDataSetChanged()V

    .line 113
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 184
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 185
    if-eqz p1, :cond_0

    const/16 v1, 0xff

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 190
    :goto_1
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->setEnabled(Z)V

    .line 191
    return-void

    .line 185
    :cond_0
    const/16 v1, 0x4b

    goto :goto_0

    .line 188
    :cond_1
    const-string v1, "DefaultSimPreference"

    const-string v2, "fail to set icon alpha due to icon is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method setInitData(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/gemini/SimItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, simItemList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/gemini/SimItem;>;"
    iput-object p1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSimItemList:Ljava/util/List;

    .line 408
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mAdapter:Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;

    if-eqz v0, :cond_0

    .line 409
    const-string v0, "DefaultSimPreference"

    const-string v1, "mAdapter is not null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mAdapter:Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;

    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSimItemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;->updateListData(Ljava/util/List;)V

    .line 411
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mAdapter:Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;->notifyDataSetChanged()V

    .line 413
    :cond_0
    return-void
.end method

.method setInitValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 394
    iput p1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mInitValue:I

    .line 395
    iput p1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSelected:I

    .line 397
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mAdapter:Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mAdapter:Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;->notifyDataSetChanged()V

    .line 400
    :cond_0
    return-void
.end method

.method setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 133
    iput p1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mType:I

    .line 134
    return-void
.end method
