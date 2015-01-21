.class Lcom/mediatek/gemini/SimCardListAdpater$ViewHolder;
.super Ljava/lang/Object;
.source "SimCardListAdpater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/SimCardListAdpater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mImageSim:Landroid/widget/RelativeLayout;

.field mImageStatus:Landroid/widget/ImageView;

.field mTextName:Landroid/widget/TextView;

.field mTextNum:Landroid/widget/TextView;

.field mTextNumFormat:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mediatek/gemini/SimCardListAdpater;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/SimCardListAdpater;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/mediatek/gemini/SimCardListAdpater$ViewHolder;->this$0:Lcom/mediatek/gemini/SimCardListAdpater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
