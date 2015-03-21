.class public Lcom/baidu/fm/widget/ActionCustomView;
.super Landroid/widget/RelativeLayout;
.source "ActionCustomView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/fm/widget/ActionCustomView$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionCustomView"


# instance fields
.field private mAction:Landroid/widget/Button;

.field private mIsAllSelected:Z

.field private mListener:Lcom/baidu/fm/widget/ActionCustomView$Listener;

.field private mSubTextView:Landroid/widget/TextView;

.field private mSubTitle:Ljava/lang/String;

.field private mSubTitleIfDismiss:Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/String;

.field private mTitleIfDismiss:Ljava/lang/String;

.field private mViewContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/fm/widget/ActionCustomView;->mIsAllSelected:Z

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/fm/widget/ActionCustomView;->mTitleIfDismiss:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/fm/widget/ActionCustomView;->mSubTitleIfDismiss:Ljava/lang/String;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/fm/widget/ActionCustomView;)Lcom/baidu/fm/widget/ActionCustomView$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/fm/widget/ActionCustomView;->mListener:Lcom/baidu/fm/widget/ActionCustomView$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/fm/widget/ActionCustomView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/baidu/fm/widget/ActionCustomView;->mIsAllSelected:Z

    return v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 55
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Lcom/baidu/fm/widget/ActionCustomView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/fm/widget/ActionCustomView;->mViewContainer:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/baidu/fm/widget/ActionCustomView;->mViewContainer:Landroid/view/View;

    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/fm/widget/ActionCustomView;->mTextView:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/baidu/fm/widget/ActionCustomView;->mViewContainer:Landroid/view/View;

    const v1, 0x1020015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/fm/widget/ActionCustomView;->mSubTextView:Landroid/widget/TextView;

    .line 58
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Lcom/baidu/fm/widget/ActionCustomView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/fm/widget/ActionCustomView;->mAction:Landroid/widget/Button;

    .line 59
    iget-object v0, p0, Lcom/baidu/fm/widget/ActionCustomView;->mAction:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/fm/widget/ActionCustomView$1;

    invoke-direct {v1, p0}, Lcom/baidu/fm/widget/ActionCustomView$1;-><init>(Lcom/baidu/fm/widget/ActionCustomView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method public setListener(Lcom/baidu/fm/widget/ActionCustomView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/baidu/fm/widget/ActionCustomView;->mListener:Lcom/baidu/fm/widget/ActionCustomView$Listener;

    .line 79
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/baidu/fm/widget/ActionCustomView;->mSubTitle:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/baidu/fm/widget/ActionCustomView;->mTitle:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public updateView(IZ)V
    .locals 5
    .parameter "count"
    .parameter "isAllSelected"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 82
    iget-object v1, p0, Lcom/baidu/fm/widget/ActionCustomView;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/fm/widget/ActionCustomView;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/fm/widget/ActionCustomView;->mTitleIfDismiss:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    if-nez p1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/baidu/fm/widget/ActionCustomView;->mSubTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    :goto_1
    iput-boolean p2, p0, Lcom/baidu/fm/widget/ActionCustomView;->mIsAllSelected:Z

    .line 92
    iget-object v1, p0, Lcom/baidu/fm/widget/ActionCustomView;->mAction:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/baidu/fm/widget/ActionCustomView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p2, :cond_3

    const v0, 0x7f070067

    :goto_2
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/baidu/fm/widget/ActionCustomView;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/baidu/fm/widget/ActionCustomView;->mSubTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/fm/widget/ActionCustomView;->mSubTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/fm/widget/ActionCustomView;->mSubTitleIfDismiss:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/baidu/fm/widget/ActionCustomView;->mSubTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/baidu/fm/widget/ActionCustomView;->mSubTitle:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 92
    :cond_3
    const v0, 0x7f070066

    goto :goto_2
.end method
