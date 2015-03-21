.class Lcom/baidu/fm/FmMidTest$1;
.super Ljava/lang/Object;
.source "FmMidTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/FmMidTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/FmMidTest;


# direct methods
.method constructor <init>(Lcom/baidu/fm/FmMidTest;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/baidu/fm/FmMidTest$1;->this$0:Lcom/baidu/fm/FmMidTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 175
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/baidu/fm/FmMidTest;->access$012(I)I

    .line 176
    invoke-static {}, Lcom/baidu/fm/FmMidTest;->access$000()I

    move-result v0

    invoke-static {}, Lcom/baidu/fm/FmMidTest;->access$100()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0xcd

    invoke-static {}, Lcom/baidu/fm/FmMidTest;->access$200()I

    move-result v1

    invoke-static {}, Lcom/baidu/fm/FmMidTest;->access$100()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/2addr v0, v1

    sput v0, Lcom/baidu/fm/FmMidTest;->mVal:I

    .line 177
    iget-object v0, p0, Lcom/baidu/fm/FmMidTest$1;->this$0:Lcom/baidu/fm/FmMidTest;

    #getter for: Lcom/baidu/fm/FmMidTest;->mFreqInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/fm/FmMidTest;->access$300(Lcom/baidu/fm/FmMidTest;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/fm/FmMidTest;->access$000()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    int-to-double v2, v2

    const-wide/high16 v4, 0x4024

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/baidu/fm/FmMidTest$1;->this$0:Lcom/baidu/fm/FmMidTest;

    #getter for: Lcom/baidu/fm/FmMidTest;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/baidu/fm/FmMidTest;->access$400(Lcom/baidu/fm/FmMidTest;)Landroid/widget/SeekBar;

    move-result-object v0

    sget v1, Lcom/baidu/fm/FmMidTest;->mVal:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 179
    iget-object v0, p0, Lcom/baidu/fm/FmMidTest$1;->this$0:Lcom/baidu/fm/FmMidTest;

    invoke-static {}, Lcom/baidu/fm/FmMidTest;->access$000()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/fm/FmMidTest;->tune(I)Z

    .line 180
    return-void
.end method
