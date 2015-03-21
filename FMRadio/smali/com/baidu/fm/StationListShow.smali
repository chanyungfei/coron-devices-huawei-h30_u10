.class public Lcom/baidu/fm/StationListShow;
.super Landroid/app/Activity;
.source "StationListShow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/fm/StationListShow$StationListShowAdapter;,
        Lcom/baidu/fm/StationListShow$OnSelectionListener;
    }
.end annotation


# static fields
.field private static final DIALOG_DELETE:I = 0x2

.field private static final DISABLE_ALPHA:I = 0x64

.field public static final DISABLE_BUTTON_COLOR:I = 0x66ffffff

.field private static final ENABLE_ALPHA:I = 0xff

.field public static final ENABLE_BUTTON_COLOR:I = -0x1a000001

.field public static final STATION_LIST_KILL_CMD:Ljava/lang/String; = "com.baidu.yi.fm.stationlist.kill"

.field private static final TAG:Ljava/lang/String; = "StationListShow"

.field private static final TAG_FAVO_CANCEL:Ljava/lang/String; = "CANCEL"

.field private static final TAG_FAVO_SET:Ljava/lang/String; = "SET"


# instance fields
.field private final CONTEXT_MENU_ID_DELETE:I

.field private final CONTEXT_MENU_ID_RENAME:I

.field private mActionBar:Landroid/app/ActionBar;

.field private mBackIconView:Landroid/widget/ImageButton;

.field private mCheckChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mClickToFavoriteListener:Landroid/view/View$OnClickListener;

.field private mClickToNonFavoriteListener:Landroid/view/View$OnClickListener;

.field private mCurrentStationIndex:I

.field final mFMRadioIntentHandler:Ljava/lang/Runnable;

.field private mFMRadioReceiver:Landroid/content/BroadcastReceiver;

.field final mFinishAppHandler:Ljava/lang/Runnable;

.field private mFuncBarDelete:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetPlugged:Z

.field private mHeadsetReceiver:Landroid/content/BroadcastReceiver;

.field final mHeadsetStateHandler:Ljava/lang/Runnable;

.field private mInputRenameDialogLayout:Landroid/view/View;

.field private mMultiSelectAllView:Landroid/widget/CheckBox;

.field private mMultiSelectHeaderView:Landroid/view/View;

.field private mPersistence:Lcom/baidu/fm/FMPersistence;

.field private mRenameCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mRenameDoneListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSelectAll:Z

.field private mSelectedConvCount:Landroid/widget/TextView;

.field private mSelectedItemCount:I

.field private mSelectionMode:Z

.field private mSelectionView:Lcom/baidu/fm/widget/ActionCustomView;

.field private mStationItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mStationListAdapter:Lcom/baidu/fm/StationListShow$StationListShowAdapter;

.field private mStationListEmpty:Landroid/view/View;

.field private mStationListView:Landroid/widget/ListView;

.field private mTitleBar:Landroid/view/View;

.field private mTitleView:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field renameDialogInputFilter:[Landroid/text/InputFilter;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 85
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 99
    const/16 v0, 0x65

    iput v0, p0, Lcom/baidu/fm/StationListShow;->CONTEXT_MENU_ID_RENAME:I

    .line 100
    const/16 v0, 0x66

    iput v0, p0, Lcom/baidu/fm/StationListShow;->CONTEXT_MENU_ID_DELETE:I

    .line 102
    iput-object v3, p0, Lcom/baidu/fm/StationListShow;->mStationListView:Landroid/widget/ListView;

    .line 103
    iput-object v3, p0, Lcom/baidu/fm/StationListShow;->mStationListAdapter:Lcom/baidu/fm/StationListShow$StationListShowAdapter;

    .line 105
    iput-object v3, p0, Lcom/baidu/fm/StationListShow;->mInputRenameDialogLayout:Landroid/view/View;

    .line 107
    iput-object v3, p0, Lcom/baidu/fm/StationListShow;->mActionBar:Landroid/app/ActionBar;

    .line 111
    iput-object v3, p0, Lcom/baidu/fm/StationListShow;->mTitleBar:Landroid/view/View;

    .line 112
    iput-object v3, p0, Lcom/baidu/fm/StationListShow;->mBackIconView:Landroid/widget/ImageButton;

    .line 113
    iput-object v3, p0, Lcom/baidu/fm/StationListShow;->mTitleView:Landroid/widget/TextView;

    .line 115
    iput-object v3, p0, Lcom/baidu/fm/StationListShow;->mSelectedConvCount:Landroid/widget/TextView;

    .line 117
    iput-object v3, p0, Lcom/baidu/fm/StationListShow;->mStationListEmpty:Landroid/view/View;

    .line 118
    iput-object v3, p0, Lcom/baidu/fm/StationListShow;->mFuncBarDelete:Landroid/widget/ImageView;

    .line 123
    iput-object v3, p0, Lcom/baidu/fm/StationListShow;->mMultiSelectHeaderView:Landroid/view/View;

    .line 124
    iput-object v3, p0, Lcom/baidu/fm/StationListShow;->mMultiSelectAllView:Landroid/widget/CheckBox;

    .line 125
    iput-object v3, p0, Lcom/baidu/fm/StationListShow;->mCheckChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 127
    iput-boolean v4, p0, Lcom/baidu/fm/StationListShow;->mHeadsetPlugged:Z

    .line 128
    iput-boolean v4, p0, Lcom/baidu/fm/StationListShow;->mSelectAll:Z

    .line 130
    iput-object v3, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/fm/StationListShow;->mCurrentStationIndex:I

    .line 133
    iput-object v3, p0, Lcom/baidu/fm/StationListShow;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    iput-object v3, p0, Lcom/baidu/fm/StationListShow;->mFMRadioReceiver:Landroid/content/BroadcastReceiver;

    .line 136
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/fm/StationListShow;->mHandler:Landroid/os/Handler;

    .line 564
    new-instance v0, Lcom/baidu/fm/StationListShow$7;

    invoke-direct {v0, p0}, Lcom/baidu/fm/StationListShow$7;-><init>(Lcom/baidu/fm/StationListShow;)V

    iput-object v0, p0, Lcom/baidu/fm/StationListShow;->mFinishAppHandler:Ljava/lang/Runnable;

    .line 570
    new-instance v0, Lcom/baidu/fm/StationListShow$8;

    invoke-direct {v0, p0}, Lcom/baidu/fm/StationListShow$8;-><init>(Lcom/baidu/fm/StationListShow;)V

    iput-object v0, p0, Lcom/baidu/fm/StationListShow;->mHeadsetStateHandler:Ljava/lang/Runnable;

    .line 594
    new-instance v0, Lcom/baidu/fm/StationListShow$9;

    invoke-direct {v0, p0}, Lcom/baidu/fm/StationListShow$9;-><init>(Lcom/baidu/fm/StationListShow;)V

    iput-object v0, p0, Lcom/baidu/fm/StationListShow;->mFMRadioIntentHandler:Ljava/lang/Runnable;

    .line 645
    new-instance v0, Lcom/baidu/fm/StationListShow$10;

    invoke-direct {v0, p0}, Lcom/baidu/fm/StationListShow$10;-><init>(Lcom/baidu/fm/StationListShow;)V

    iput-object v0, p0, Lcom/baidu/fm/StationListShow;->mStationItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 715
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/baidu/fm/StationListShow;->renameDialogInputFilter:[Landroid/text/InputFilter;

    .line 749
    new-instance v0, Lcom/baidu/fm/StationListShow$11;

    invoke-direct {v0, p0}, Lcom/baidu/fm/StationListShow$11;-><init>(Lcom/baidu/fm/StationListShow;)V

    iput-object v0, p0, Lcom/baidu/fm/StationListShow;->mRenameDoneListener:Landroid/content/DialogInterface$OnClickListener;

    .line 763
    new-instance v0, Lcom/baidu/fm/StationListShow$12;

    invoke-direct {v0, p0}, Lcom/baidu/fm/StationListShow$12;-><init>(Lcom/baidu/fm/StationListShow;)V

    iput-object v0, p0, Lcom/baidu/fm/StationListShow;->mRenameCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 890
    iput-object v3, p0, Lcom/baidu/fm/StationListShow;->mToast:Landroid/widget/Toast;

    .line 892
    new-instance v0, Lcom/baidu/fm/StationListShow$13;

    invoke-direct {v0, p0}, Lcom/baidu/fm/StationListShow$13;-><init>(Lcom/baidu/fm/StationListShow;)V

    iput-object v0, p0, Lcom/baidu/fm/StationListShow;->mClickToNonFavoriteListener:Landroid/view/View$OnClickListener;

    .line 919
    new-instance v0, Lcom/baidu/fm/StationListShow$14;

    invoke-direct {v0, p0}, Lcom/baidu/fm/StationListShow$14;-><init>(Lcom/baidu/fm/StationListShow;)V

    iput-object v0, p0, Lcom/baidu/fm/StationListShow;->mClickToFavoriteListener:Landroid/view/View$OnClickListener;

    .line 950
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/fm/StationListShow;)Lcom/baidu/fm/FMPersistence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/baidu/fm/StationListShow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/baidu/fm/StationListShow;->doLeaveStationListEdit()V

    return-void
.end method

.method static synthetic access$1100(Lcom/baidu/fm/StationListShow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/baidu/fm/StationListShow;->mHeadsetPlugged:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/baidu/fm/StationListShow;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/baidu/fm/StationListShow;->mHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/baidu/fm/StationListShow;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/baidu/fm/StationListShow;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/baidu/fm/StationListShow;->tuneAndExit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/baidu/fm/StationListShow;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mInputRenameDialogLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/baidu/fm/StationListShow;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/baidu/fm/StationListShow;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/baidu/fm/StationListShow;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/baidu/fm/StationListShow;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mClickToNonFavoriteListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/baidu/fm/StationListShow;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mClickToFavoriteListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/fm/StationListShow;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mStationListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/fm/StationListShow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/baidu/fm/StationListShow;->mCurrentStationIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/baidu/fm/StationListShow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/baidu/fm/StationListShow;->mCurrentStationIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/baidu/fm/StationListShow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/baidu/fm/StationListShow;->mSelectionMode:Z

    return v0
.end method

.method static synthetic access$600(Lcom/baidu/fm/StationListShow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/baidu/fm/StationListShow;->mSelectAll:Z

    return v0
.end method

.method static synthetic access$602(Lcom/baidu/fm/StationListShow;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/baidu/fm/StationListShow;->mSelectAll:Z

    return p1
.end method

.method static synthetic access$700(Lcom/baidu/fm/StationListShow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/baidu/fm/StationListShow;->handleSelectItemChanged()V

    return-void
.end method

.method static synthetic access$800(Lcom/baidu/fm/StationListShow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/baidu/fm/StationListShow;->doDeleteStationItem()V

    return-void
.end method

.method static synthetic access$900(Lcom/baidu/fm/StationListShow;)Lcom/baidu/fm/StationListShow$StationListShowAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mStationListAdapter:Lcom/baidu/fm/StationListShow$StationListShowAdapter;

    return-object v0
.end method

.method private configureMenu()V
    .locals 1

    .prologue
    .line 285
    invoke-static {p0}, Lyi/support/v1/YiLaf;->enable(Landroid/app/Activity;)V

    .line 286
    invoke-static {}, Lyi/support/v1/YiLaf;->current()Lyi/support/v1/YiLaf$Interface;

    move-result-object v0

    invoke-interface {v0}, Lyi/support/v1/YiLaf$Interface;->invalidateOptionsMenu()V

    .line 287
    return-void
.end method

.method private createDeleteDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 500
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x5030031

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 501
    .local v0, dlgBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 503
    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 505
    const v1, 0x7f070021

    new-instance v2, Lcom/baidu/fm/StationListShow$3;

    invoke-direct {v2, p0}, Lcom/baidu/fm/StationListShow$3;-><init>(Lcom/baidu/fm/StationListShow;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 514
    const v1, 0x7f070022

    new-instance v2, Lcom/baidu/fm/StationListShow$4;

    invoke-direct {v2, p0}, Lcom/baidu/fm/StationListShow$4;-><init>(Lcom/baidu/fm/StationListShow;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 521
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private disableMultiSelectMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 413
    iput v1, p0, Lcom/baidu/fm/StationListShow;->mSelectedItemCount:I

    .line 414
    invoke-virtual {p0, v1}, Lcom/baidu/fm/StationListShow;->setSelectionMode(Z)V

    .line 415
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mStationListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 416
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mStationListAdapter:Lcom/baidu/fm/StationListShow$StationListShowAdapter;

    invoke-virtual {v0}, Lcom/baidu/fm/StationListShow$StationListShowAdapter;->notifyDataSetChanged()V

    .line 417
    return-void
.end method

.method private doDeleteStationItem()V
    .locals 2

    .prologue
    .line 688
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-direct {p0}, Lcom/baidu/fm/StationListShow;->getSelectedItemIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/fm/FMPersistence;->removeByIds(Ljava/util/ArrayList;)V

    .line 689
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v0}, Lcom/baidu/fm/FMPersistence;->saveIfDirty()V

    .line 691
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mStationListEmpty:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v0}, Lcom/baidu/fm/FMPersistence;->getStationInfoCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 693
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mStationListEmpty:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mStationListEmpty:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private doEnterStationListEdit()V
    .locals 1

    .prologue
    .line 877
    invoke-direct {p0}, Lcom/baidu/fm/StationListShow;->enableMultiSelectMode()V

    .line 878
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/fm/StationListShow;->mSelectionMode:Z

    .line 880
    invoke-direct {p0}, Lcom/baidu/fm/StationListShow;->invalidateMenu()V

    .line 881
    return-void
.end method

.method private doFavoriteOps(Z)V
    .locals 3
    .parameter "cancel"

    .prologue
    .line 701
    invoke-direct {p0}, Lcom/baidu/fm/StationListShow;->getSelectedItemIds()Ljava/util/ArrayList;

    move-result-object v0

    .line 702
    .local v0, checkedIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 703
    const-string v1, "StationListShow"

    const-string v2, "Error! checkedItemIds == 0 when do favorite setting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :goto_0
    return-void

    .line 707
    :cond_0
    if-eqz p1, :cond_1

    .line 708
    iget-object v1, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v1, v0}, Lcom/baidu/fm/FMPersistence;->cancelFavoriteByIds(Ljava/util/ArrayList;)V

    .line 712
    :goto_1
    iget-object v1, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v1}, Lcom/baidu/fm/FMPersistence;->saveIfDirty()V

    goto :goto_0

    .line 710
    :cond_1
    iget-object v1, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v1, v0}, Lcom/baidu/fm/FMPersistence;->setFavoriteByIds(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method private doLeaveStationListEdit()V
    .locals 1

    .prologue
    .line 884
    invoke-direct {p0}, Lcom/baidu/fm/StationListShow;->disableMultiSelectMode()V

    .line 885
    invoke-direct {p0}, Lcom/baidu/fm/StationListShow;->initFunctionButtonsState()V

    .line 886
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/fm/StationListShow;->mSelectionMode:Z

    .line 887
    invoke-direct {p0}, Lcom/baidu/fm/StationListShow;->invalidateMenu()V

    .line 888
    return-void
.end method

.method private doRenameStation()V
    .locals 7

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/baidu/fm/StationListShow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 719
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 720
    .local v2, info:Lcom/baidu/fm/FMStationInfo;
    const-string v3, ""

    .line 722
    .local v3, title:Ljava/lang/String;
    const v5, 0x7f030009

    const v4, 0x7f090048

    invoke-virtual {p0, v4}, Lcom/baidu/fm/StationListShow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v1, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/fm/StationListShow;->mInputRenameDialogLayout:Landroid/view/View;

    .line 725
    iget-object v4, p0, Lcom/baidu/fm/StationListShow;->mInputRenameDialogLayout:Landroid/view/View;

    const v5, 0x7f09004b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 729
    .local v0, freqEdit:Landroid/widget/EditText;
    iget-object v4, p0, Lcom/baidu/fm/StationListShow;->renameDialogInputFilter:[Landroid/text/InputFilter;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 733
    iget-object v4, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    iget v5, p0, Lcom/baidu/fm/StationListShow;->mCurrentStationIndex:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/baidu/fm/FMPersistence;->getStationInfoByIndex(J)Lcom/baidu/fm/FMStationInfo;

    move-result-object v2

    .line 735
    if-eqz v2, :cond_0

    .line 736
    invoke-virtual {v2}, Lcom/baidu/fm/FMStationInfo;->getStationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 737
    invoke-virtual {v2}, Lcom/baidu/fm/FMStationInfo;->getStationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 738
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f07000f

    invoke-virtual {p0, v5}, Lcom/baidu/fm/StationListShow;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/baidu/fm/FMStationInfo;->getStationFreqString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MHz)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 742
    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    new-instance v5, Landroid/view/ContextThemeWrapper;

    const v6, 0x5030031

    invoke-direct {v5, p0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/fm/StationListShow;->mInputRenameDialogLayout:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070011

    iget-object v6, p0, Lcom/baidu/fm/StationListShow;->mRenameDoneListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070012

    iget-object v6, p0, Lcom/baidu/fm/StationListShow;->mRenameCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 746
    return-void
.end method

.method private enableMultiSelectMode()V
    .locals 2

    .prologue
    .line 402
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/fm/StationListShow;->mSelectedItemCount:I

    .line 403
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/fm/StationListShow;->setSelectionMode(Z)V

    .line 404
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mStationListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 405
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mStationListAdapter:Lcom/baidu/fm/StationListShow$StationListShowAdapter;

    invoke-virtual {v0}, Lcom/baidu/fm/StationListShow$StationListShowAdapter;->notifyDataSetChanged()V

    .line 406
    return-void
.end method

.method private getSelectedItemIds()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 670
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 672
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/baidu/fm/StationListShow;->mStationListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 674
    .local v1, checkedIds:Landroid/util/SparseBooleanArray;
    iget-object v4, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v4}, Lcom/baidu/fm/FMPersistence;->getStationList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    array-length v3, v4

    .line 675
    .local v3, oriListLength:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 676
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 677
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 681
    :cond_1
    return-object v0
.end method

.method private handleSelectItemChanged()V
    .locals 6

    .prologue
    .line 605
    iget-object v5, p0, Lcom/baidu/fm/StationListShow;->mStationListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 606
    .local v0, checkedIds:Landroid/util/SparseBooleanArray;
    const/4 v3, 0x1

    .line 609
    .local v3, isAllChecked:Z
    iget-object v5, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v5}, Lcom/baidu/fm/FMPersistence;->getStationList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    array-length v4, v5

    .line 610
    .local v4, oriListLength:I
    const/4 v1, 0x0

    .line 611
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 612
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 613
    add-int/lit8 v1, v1, 0x1

    .line 611
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 615
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 620
    :cond_1
    if-eqz v3, :cond_2

    .line 621
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/baidu/fm/StationListShow;->mSelectAll:Z

    .line 625
    :goto_2
    iget-object v5, p0, Lcom/baidu/fm/StationListShow;->mStationListAdapter:Lcom/baidu/fm/StationListShow$StationListShowAdapter;

    invoke-virtual {v5}, Lcom/baidu/fm/StationListShow$StationListShowAdapter;->notifyDataSetChanged()V

    .line 632
    invoke-virtual {p0, v1, v3}, Lcom/baidu/fm/StationListShow;->updateSelectionView(IZ)V

    .line 634
    iput v1, p0, Lcom/baidu/fm/StationListShow;->mSelectedItemCount:I

    .line 635
    invoke-direct {p0}, Lcom/baidu/fm/StationListShow;->invalidateMenu()V

    .line 637
    return-void

    .line 623
    :cond_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/baidu/fm/StationListShow;->mSelectAll:Z

    goto :goto_2
.end method

.method private initActionBar()V
    .locals 4

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/baidu/fm/StationListShow;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/fm/StationListShow;->mActionBar:Landroid/app/ActionBar;

    .line 296
    iget-object v2, p0, Lcom/baidu/fm/StationListShow;->mActionBar:Landroid/app/ActionBar;

    const v3, 0x7f020029

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setIcon(I)V

    .line 297
    iget-object v2, p0, Lcom/baidu/fm/StationListShow;->mActionBar:Landroid/app/ActionBar;

    const v3, 0x7f070003

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 299
    const/4 v1, 0x2

    .line 300
    .local v1, flags:I
    iget-object v2, p0, Lcom/baidu/fm/StationListShow;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v2

    and-int/lit8 v0, v2, -0x3

    .line 302
    .local v0, change:I
    or-int/lit8 v1, v1, 0x8

    .line 303
    or-int/lit8 v0, v0, 0x8

    .line 305
    or-int/lit8 v1, v1, 0x4

    .line 306
    or-int/lit8 v0, v0, 0x4

    .line 308
    or-int/lit8 v1, v1, 0x10

    .line 309
    and-int/lit8 v0, v0, -0x11

    .line 311
    iget-object v2, p0, Lcom/baidu/fm/StationListShow;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 312
    return-void
.end method

.method private initFunctionButtonsState()V
    .locals 2

    .prologue
    .line 660
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mStationListEmpty:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v0}, Lcom/baidu/fm/FMPersistence;->getStationInfoCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mStationListEmpty:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mStationListEmpty:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initMultiSelectMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 392
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030001

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/fm/widget/ActionCustomView;

    iput-object v0, p0, Lcom/baidu/fm/StationListShow;->mSelectionView:Lcom/baidu/fm/widget/ActionCustomView;

    .line 394
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mSelectionView:Lcom/baidu/fm/widget/ActionCustomView;

    new-instance v1, Lcom/baidu/fm/StationListShow$OnSelectionListener;

    invoke-direct {v1, p0, v2}, Lcom/baidu/fm/StationListShow$OnSelectionListener;-><init>(Lcom/baidu/fm/StationListShow;Lcom/baidu/fm/StationListShow$1;)V

    invoke-virtual {v0, v1}, Lcom/baidu/fm/widget/ActionCustomView;->setListener(Lcom/baidu/fm/widget/ActionCustomView$Listener;)V

    .line 395
    return-void
.end method

.method private initTitlebar()V
    .locals 2

    .prologue
    .line 315
    const v0, 0x7f090067

    invoke-virtual {p0, v0}, Lcom/baidu/fm/StationListShow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/fm/StationListShow;->mTitleBar:Landroid/view/View;

    .line 316
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mBackIconView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mTitleBar:Landroid/view/View;

    const v1, 0x7f090068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/baidu/fm/StationListShow;->mBackIconView:Landroid/widget/ImageButton;

    .line 318
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mBackIconView:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mBackIconView:Landroid/widget/ImageButton;

    new-instance v1, Lcom/baidu/fm/StationListShow$2;

    invoke-direct {v1, p0}, Lcom/baidu/fm/StationListShow$2;-><init>(Lcom/baidu/fm/StationListShow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mTitleBar:Landroid/view/View;

    const v1, 0x7f090058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/fm/StationListShow;->mTitleView:Landroid/widget/TextView;

    .line 329
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 331
    :cond_1
    return-void
.end method

.method private invalidateMenu()V
    .locals 1

    .prologue
    .line 290
    invoke-static {}, Lyi/support/v1/YiLaf;->current()Lyi/support/v1/YiLaf$Interface;

    move-result-object v0

    invoke-interface {v0}, Lyi/support/v1/YiLaf$Interface;->invalidateOptionsMenu()V

    .line 291
    return-void
.end method

.method private makeMenuItemEnabled(Landroid/view/Menu;IZ)V
    .locals 1
    .parameter "menu"
    .parameter "itemId"
    .parameter "enabled"

    .prologue
    .line 857
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 858
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 859
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 861
    :cond_0
    return-void
.end method

.method private makeMenuItemVisible(Landroid/view/Menu;IZ)V
    .locals 1
    .parameter "menu"
    .parameter "itemId"
    .parameter "visible"

    .prologue
    .line 850
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 851
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 852
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 854
    :cond_0
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 873
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 874
    return-void
.end method

.method private tuneAndExit(Ljava/lang/String;)V
    .locals 4
    .parameter "freq"

    .prologue
    .line 770
    invoke-static {p1}, Lcom/baidu/fm/FMStationInfo;->verifyStringFreq(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 771
    const-string v1, "StationListShow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tuneAndExit, wrong freq: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :goto_0
    return-void

    .line 774
    :cond_0
    const-string v1, "StationListShow"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 775
    const-string v1, "StationListShow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tuneAndExit, freq: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 778
    .local v0, freqIntent:Landroid/content/Intent;
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/baidu/fm/StationListShow;->setResult(ILandroid/content/Intent;)V

    .line 779
    invoke-virtual {p0}, Lcom/baidu/fm/StationListShow;->finish()V

    goto :goto_0
.end method

.method private updateDisplayOptions()V
    .locals 5

    .prologue
    .line 454
    const/16 v0, 0x1e

    .line 457
    .local v0, MASK:I
    iget-object v3, p0, Lcom/baidu/fm/StationListShow;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v3

    and-int/lit8 v1, v3, 0x1e

    .line 459
    .local v1, current:I
    const/4 v2, 0x0

    .line 460
    .local v2, newFlags:I
    or-int/lit8 v2, v2, 0x8

    .line 462
    iget-boolean v3, p0, Lcom/baidu/fm/StationListShow;->mSelectionMode:Z

    if-eqz v3, :cond_1

    .line 463
    and-int/lit8 v2, v2, -0x3

    .line 464
    and-int/lit8 v2, v2, -0x5

    .line 465
    or-int/lit8 v2, v2, 0x10

    .line 471
    :goto_0
    if-eq v1, v2, :cond_0

    .line 472
    iget-object v3, p0, Lcom/baidu/fm/StationListShow;->mActionBar:Landroid/app/ActionBar;

    const/16 v4, 0x1e

    invoke-virtual {v3, v2, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 474
    :cond_0
    return-void

    .line 467
    :cond_1
    and-int/lit8 v2, v2, -0x3

    .line 468
    or-int/lit8 v2, v2, 0x4

    .line 469
    and-int/lit8 v2, v2, -0x11

    goto :goto_0
.end method

.method private updateMultiSelectionCount(I)V
    .locals 4
    .parameter "count"

    .prologue
    .line 640
    const v1, 0x7f070009

    invoke-virtual {p0, v1}, Lcom/baidu/fm/StationListShow;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, selected_num:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 642
    iget-object v1, p0, Lcom/baidu/fm/StationListShow;->mSelectedConvCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    return-void
.end method

.method private updateSelectionUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 435
    iget-boolean v0, p0, Lcom/baidu/fm/StationListShow;->mSelectionMode:Z

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 440
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 441
    invoke-virtual {p0, v2, v2}, Lcom/baidu/fm/StationListShow;->updateSelectionView(IZ)V

    .line 445
    :goto_0
    return-void

    .line 443
    :cond_1
    invoke-direct {p0}, Lcom/baidu/fm/StationListShow;->updateDisplayOptions()V

    goto :goto_0
.end method

.method private updateTitlebar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 334
    iget-boolean v0, p0, Lcom/baidu/fm/StationListShow;->mSelectionMode:Z

    if-eqz v0, :cond_3

    .line 335
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mBackIconView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mBackIconView:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mSelectedConvCount:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mSelectedConvCount:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    :cond_2
    :goto_0
    return-void

    .line 345
    :cond_3
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mBackIconView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    .line 346
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mBackIconView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 348
    :cond_4
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 349
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 351
    :cond_5
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mSelectedConvCount:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mSelectedConvCount:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public isSelectionMode()Z
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/baidu/fm/StationListShow;->mSelectionMode:Z

    return v0
.end method

.method public loadTest()V
    .locals 0

    .prologue
    .line 1052
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 865
    iget-boolean v0, p0, Lcom/baidu/fm/StationListShow;->mSelectionMode:Z

    if-eqz v0, :cond_0

    .line 866
    invoke-direct {p0}, Lcom/baidu/fm/StationListShow;->doLeaveStationListEdit()V

    .line 870
    :goto_0
    return-void

    .line 869
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/fm/StationListShow;->finish()V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "aItem"

    .prologue
    const/4 v1, 0x1

    .line 263
    const-string v2, "StationListShow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onContextItemSelected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/baidu/fm/StationListShow;->mCurrentStationIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 280
    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    .line 266
    :pswitch_0
    iget v2, p0, Lcom/baidu/fm/StationListShow;->mCurrentStationIndex:I

    if-ltz v2, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/baidu/fm/StationListShow;->doRenameStation()V

    goto :goto_0

    .line 271
    :pswitch_1
    iget v2, p0, Lcom/baidu/fm/StationListShow;->mCurrentStationIndex:I

    if-ltz v2, :cond_0

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, info:Lcom/baidu/fm/FMStationInfo;
    iget-object v2, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    iget v3, p0, Lcom/baidu/fm/StationListShow;->mCurrentStationIndex:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/baidu/fm/FMPersistence;->getStationInfoByIndex(J)Lcom/baidu/fm/FMStationInfo;

    move-result-object v0

    .line 274
    iget-object v2, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v2, v0}, Lcom/baidu/fm/FMPersistence;->removeStationInfo(Lcom/baidu/fm/FMStationInfo;)V

    .line 275
    iget-object v2, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v2}, Lcom/baidu/fm/FMPersistence;->saveIfDirty()V

    .line 276
    iget-object v2, p0, Lcom/baidu/fm/StationListShow;->mStationListAdapter:Lcom/baidu/fm/StationListShow$StationListShowAdapter;

    invoke-virtual {v2}, Lcom/baidu/fm/StationListShow$StationListShowAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 141
    const-string v0, "StationListShow"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "StationListShow"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/baidu/fm/StationListShow;->setContentView(I)V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/fm/StationListShow;->mSelectionMode:Z

    .line 150
    new-instance v0, Lcom/baidu/fm/FMPersistence;

    invoke-direct {v0, p0}, Lcom/baidu/fm/FMPersistence;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    .line 152
    const v0, 0x7f090053

    invoke-virtual {p0, v0}, Lcom/baidu/fm/StationListShow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/baidu/fm/StationListShow;->mStationListView:Landroid/widget/ListView;

    .line 153
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mStationListView:Landroid/widget/ListView;

    if-nez v0, :cond_1

    .line 154
    const-string v0, "StationListShow"

    const-string v1, "mStationListView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_0
    return-void

    .line 157
    :cond_1
    new-instance v0, Lcom/baidu/fm/StationListShow$StationListShowAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/fm/StationListShow$StationListShowAdapter;-><init>(Lcom/baidu/fm/StationListShow;Lcom/baidu/fm/StationListShow$1;)V

    iput-object v0, p0, Lcom/baidu/fm/StationListShow;->mStationListAdapter:Lcom/baidu/fm/StationListShow$StationListShowAdapter;

    .line 158
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mStationListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/baidu/fm/StationListShow;->mStationListAdapter:Lcom/baidu/fm/StationListShow$StationListShowAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mStationListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/baidu/fm/StationListShow;->mStationItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mStationListView:Landroid/widget/ListView;

    new-instance v1, Lcom/baidu/fm/StationListShow$1;

    invoke-direct {v1, p0}, Lcom/baidu/fm/StationListShow$1;-><init>(Lcom/baidu/fm/StationListShow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 184
    const v0, 0x7f090054

    invoke-virtual {p0, v0}, Lcom/baidu/fm/StationListShow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/fm/StationListShow;->mStationListEmpty:Landroid/view/View;

    .line 186
    invoke-direct {p0}, Lcom/baidu/fm/StationListShow;->initFunctionButtonsState()V

    .line 187
    invoke-direct {p0}, Lcom/baidu/fm/StationListShow;->initActionBar()V

    .line 189
    invoke-direct {p0}, Lcom/baidu/fm/StationListShow;->initMultiSelectMode()V

    .line 190
    invoke-direct {p0}, Lcom/baidu/fm/StationListShow;->configureMenu()V

    .line 192
    invoke-virtual {p0}, Lcom/baidu/fm/StationListShow;->registerFMRadioListener()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 250
    packed-switch p1, :pswitch_data_0

    .line 257
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 252
    :pswitch_0
    invoke-direct {p0}, Lcom/baidu/fm/StationListShow;->createDeleteDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 784
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 785
    invoke-virtual {p0}, Lcom/baidu/fm/StationListShow;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 786
    .local v0, inflater:Landroid/view/MenuInflater;
    if-eqz v0, :cond_0

    .line 787
    const v1, 0x7f080001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 789
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    const-string v0, "StationListShow"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const-string v0, "StationListShow"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    iput-object v2, p0, Lcom/baidu/fm/StationListShow;->mStationListView:Landroid/widget/ListView;

    .line 203
    iput-object v2, p0, Lcom/baidu/fm/StationListShow;->mStationListAdapter:Lcom/baidu/fm/StationListShow$StationListShowAdapter;

    .line 204
    iput-object v2, p0, Lcom/baidu/fm/StationListShow;->mInputRenameDialogLayout:Landroid/view/View;

    .line 205
    iput-object v2, p0, Lcom/baidu/fm/StationListShow;->mFuncBarDelete:Landroid/widget/ImageView;

    .line 206
    iput-object v2, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    .line 208
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mFMRadioReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mFMRadioReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/baidu/fm/StationListShow;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 210
    iput-object v2, p0, Lcom/baidu/fm/StationListShow;->mFMRadioReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 213
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 823
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 845
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 825
    :sswitch_0
    iget-boolean v1, p0, Lcom/baidu/fm/StationListShow;->mSelectionMode:Z

    if-eqz v1, :cond_1

    .line 826
    invoke-direct {p0}, Lcom/baidu/fm/StationListShow;->doLeaveStationListEdit()V

    goto :goto_0

    .line 828
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/fm/StationListShow;->finish()V

    goto :goto_0

    .line 832
    :sswitch_1
    invoke-direct {p0}, Lcom/baidu/fm/StationListShow;->doEnterStationListEdit()V

    goto :goto_0

    .line 835
    :sswitch_2
    iget-boolean v1, p0, Lcom/baidu/fm/StationListShow;->mSelectionMode:Z

    if-eqz v1, :cond_0

    .line 836
    invoke-direct {p0}, Lcom/baidu/fm/StationListShow;->doLeaveStationListEdit()V

    goto :goto_0

    .line 840
    :sswitch_3
    iget-boolean v1, p0, Lcom/baidu/fm/StationListShow;->mSelectionMode:Z

    if-eqz v1, :cond_0

    .line 841
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/baidu/fm/StationListShow;->showDialog(I)V

    goto :goto_0

    .line 823
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f09006f -> :sswitch_2
        0x7f090070 -> :sswitch_1
        0x7f090071 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 217
    const-string v0, "StationListShow"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const-string v0, "StationListShow"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 221
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const v5, 0x7f090070

    const v4, 0x7f09006f

    const/4 v3, 0x1

    const v2, 0x7f090071

    const/4 v1, 0x0

    .line 795
    iget-boolean v0, p0, Lcom/baidu/fm/StationListShow;->mSelectionMode:Z

    if-eqz v0, :cond_2

    .line 796
    invoke-direct {p0, p1, v5, v1}, Lcom/baidu/fm/StationListShow;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 797
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v0}, Lcom/baidu/fm/FMPersistence;->getStationInfoCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 798
    invoke-direct {p0, p1, v4, v3}, Lcom/baidu/fm/StationListShow;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 799
    invoke-direct {p0, p1, v2, v3}, Lcom/baidu/fm/StationListShow;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 800
    iget v0, p0, Lcom/baidu/fm/StationListShow;->mSelectedItemCount:I

    if-lez v0, :cond_0

    .line 801
    invoke-direct {p0, p1, v2, v3}, Lcom/baidu/fm/StationListShow;->makeMenuItemEnabled(Landroid/view/Menu;IZ)V

    .line 818
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 803
    :cond_0
    invoke-direct {p0, p1, v2, v1}, Lcom/baidu/fm/StationListShow;->makeMenuItemEnabled(Landroid/view/Menu;IZ)V

    goto :goto_0

    .line 806
    :cond_1
    invoke-direct {p0, p1, v4, v1}, Lcom/baidu/fm/StationListShow;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 807
    invoke-direct {p0, p1, v2, v1}, Lcom/baidu/fm/StationListShow;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    goto :goto_0

    .line 810
    :cond_2
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v0}, Lcom/baidu/fm/FMPersistence;->getStationInfoCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 811
    invoke-direct {p0, p1, v5, v3}, Lcom/baidu/fm/StationListShow;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 815
    :goto_1
    invoke-direct {p0, p1, v4, v1}, Lcom/baidu/fm/StationListShow;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 816
    invoke-direct {p0, p1, v2, v1}, Lcom/baidu/fm/StationListShow;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    goto :goto_0

    .line 813
    :cond_3
    invoke-direct {p0, p1, v5, v1}, Lcom/baidu/fm/StationListShow;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 225
    const-string v0, "StationListShow"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const-string v0, "StationListShow"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 229
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v0}, Lcom/baidu/fm/FMPersistence;->update()V

    .line 230
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 234
    const-string v0, "StationListShow"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const-string v0, "StationListShow"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 238
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 242
    const-string v0, "StationListShow"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const-string v0, "StationListShow"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 246
    return-void
.end method

.method public registerFMRadioListener()V
    .locals 2

    .prologue
    .line 548
    iget-object v1, p0, Lcom/baidu/fm/StationListShow;->mFMRadioReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 549
    new-instance v1, Lcom/baidu/fm/StationListShow$6;

    invoke-direct {v1, p0}, Lcom/baidu/fm/StationListShow$6;-><init>(Lcom/baidu/fm/StationListShow;)V

    iput-object v1, p0, Lcom/baidu/fm/StationListShow;->mFMRadioReceiver:Landroid/content/BroadcastReceiver;

    .line 558
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 559
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "com.baidu.yi.fm.stationlist.kill"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 560
    iget-object v1, p0, Lcom/baidu/fm/StationListShow;->mFMRadioReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/baidu/fm/StationListShow;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 562
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public registerHeadsetListener()V
    .locals 2

    .prologue
    .line 525
    iget-object v1, p0, Lcom/baidu/fm/StationListShow;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 526
    new-instance v1, Lcom/baidu/fm/StationListShow$5;

    invoke-direct {v1, p0}, Lcom/baidu/fm/StationListShow$5;-><init>(Lcom/baidu/fm/StationListShow;)V

    iput-object v1, p0, Lcom/baidu/fm/StationListShow;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 541
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 542
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 543
    iget-object v1, p0, Lcom/baidu/fm/StationListShow;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/baidu/fm/StationListShow;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 545
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public saveTest()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1055
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v0}, Lcom/baidu/fm/FMPersistence;->removeAllStationInfo()V

    .line 1056
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    const-string v1, "87.8"

    const-string v2, "freq 000"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/baidu/fm/FMPersistence;->addStationInfo(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 1057
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    const-string v1, "88.2"

    const-string v2, "freq 11111"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/baidu/fm/FMPersistence;->addStationInfo(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 1058
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    const-string v1, "89.3"

    const-string v2, "freq 2"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/baidu/fm/FMPersistence;->addStationInfo(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 1059
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    const-string v1, "90.4"

    const-string v2, "freq 3"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/baidu/fm/FMPersistence;->addStationInfo(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 1060
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    const-string v1, "92.6"

    const-string v2, "freq 5"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/baidu/fm/FMPersistence;->addStationInfo(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 1061
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    const-string v1, "93.7"

    const-string v2, "freq 6"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/baidu/fm/FMPersistence;->addStationInfo(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 1062
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    const-string v1, "103.3"

    const-string v2, "freq 7"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/baidu/fm/FMPersistence;->addStationInfo(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 1063
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mPersistence:Lcom/baidu/fm/FMPersistence;

    invoke-virtual {v0}, Lcom/baidu/fm/FMPersistence;->saveIfDirty()V

    .line 1064
    return-void
.end method

.method public setSelectionMode(Z)V
    .locals 4
    .parameter "flag"

    .prologue
    const/4 v3, -0x1

    .line 420
    iget-boolean v0, p0, Lcom/baidu/fm/StationListShow;->mSelectionMode:Z

    if-eq v0, p1, :cond_1

    .line 421
    iput-boolean p1, p0, Lcom/baidu/fm/StationListShow;->mSelectionMode:Z

    .line 422
    iget-boolean v0, p0, Lcom/baidu/fm/StationListShow;->mSelectionMode:Z

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/baidu/fm/StationListShow;->mSelectionView:Lcom/baidu/fm/widget/ActionCustomView;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 426
    :cond_0
    invoke-direct {p0}, Lcom/baidu/fm/StationListShow;->updateSelectionUI()V

    .line 428
    :cond_1
    return-void
.end method

.method public updateSelectionView(IZ)V
    .locals 1
    .parameter "count"
    .parameter "isAllSelected"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mSelectionView:Lcom/baidu/fm/widget/ActionCustomView;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/baidu/fm/StationListShow;->mSelectionView:Lcom/baidu/fm/widget/ActionCustomView;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/fm/widget/ActionCustomView;->updateView(IZ)V

    .line 451
    :cond_0
    return-void
.end method
