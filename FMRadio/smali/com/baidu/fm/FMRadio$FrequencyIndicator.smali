.class public Lcom/baidu/fm/FMRadio$FrequencyIndicator;
.super Ljava/lang/Object;
.source "FMRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FrequencyIndicator"
.end annotation


# static fields
.field public static final DEFAULT_FREQ:I = 0x36b


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private mCurrentFrequencyInt:I

.field private mCurrentFrequencyString:Ljava/lang/String;

.field private mCurrentStationName:Landroid/widget/TextView;

.field private mNumImageGroup:[I

.field private mNumImageGroupReflect:[I

.field private mNumImageGroupSmall:[I

.field private mNumImageGroupSmallReflect:[I

.field final synthetic this$0:Lcom/baidu/fm/FMRadio;


# direct methods
.method public constructor <init>(Lcom/baidu/fm/FMRadio;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "freq"

    .prologue
    .line 1502
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1488
    const-string v1, "FrequencyIndicator"

    iput-object v1, p0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->LOGTAG:Ljava/lang/String;

    .line 1494
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->mCurrentFrequencyString:Ljava/lang/String;

    .line 1503
    const/4 v0, 0x0

    .line 1507
    .local v0, freqInt:I
    invoke-static {p2}, Lcom/baidu/fm/FMStationInfo;->verifyStringFreq(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1508
    const/16 v0, 0x36b

    .line 1514
    :goto_0
    invoke-direct {p0, v0}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->setCurrentFrequency(I)V

    .line 1515
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->updateUI()V

    .line 1516
    return-void

    .line 1511
    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x4120

    mul-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_0
.end method

.method static synthetic access$2800(Lcom/baidu/fm/FMRadio$FrequencyIndicator;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1485
    invoke-direct {p0, p1}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->setCurrentFrequency(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/baidu/fm/FMRadio$FrequencyIndicator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1485
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->updateUI()V

    return-void
.end method

.method static synthetic access$3500(Lcom/baidu/fm/FMRadio$FrequencyIndicator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1485
    invoke-direct {p0}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->tuneFrequency()V

    return-void
.end method

.method private setCurrentFrequency(I)V
    .locals 3
    .parameter "frequency"

    .prologue
    .line 1552
    const-string v0, "FrequencyIndicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentFrequency int = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    invoke-static {p1}, Lcom/baidu/fm/FMStationInfo;->verifyIntFreq(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1555
    const-string v0, "FrequencyIndicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frequency int error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :goto_0
    return-void

    .line 1559
    :cond_0
    iput p1, p0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->mCurrentFrequencyInt:I

    .line 1560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v1, p1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 v1, p1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->mCurrentFrequencyString:Ljava/lang/String;

    goto :goto_0
.end method

.method private setCurrentFrequency(Ljava/lang/String;)V
    .locals 3
    .parameter "frequency"

    .prologue
    .line 1539
    const-string v0, "FrequencyIndicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentFrequency str: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    invoke-static {p1}, Lcom/baidu/fm/FMStationInfo;->verifyStringFreq(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1542
    const-string v0, "FrequencyIndicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frequency string error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :goto_0
    return-void

    .line 1546
    :cond_0
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->mCurrentFrequencyString:Ljava/lang/String;

    .line 1547
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x4120

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->mCurrentFrequencyInt:I

    goto :goto_0
.end method

.method private setCurrentFrequencyNoUpdateUI(I)V
    .locals 3
    .parameter "frequency"

    .prologue
    .line 1565
    const-string v0, "FrequencyIndicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentFrequencyNoUpdateUI int = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    invoke-static {p1}, Lcom/baidu/fm/FMStationInfo;->verifyIntFreq(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1568
    const-string v0, "FrequencyIndicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentFrequencyNoUpdateUI error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    :goto_0
    return-void

    .line 1572
    :cond_0
    iput p1, p0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->mCurrentFrequencyInt:I

    .line 1573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v1, p1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 v1, p1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->mCurrentFrequencyString:Ljava/lang/String;

    goto :goto_0
.end method

.method private tuneFrequency()V
    .locals 3

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$1500(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMPersistence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mCurrentFreqIndicator:Lcom/baidu/fm/FMRadio$FrequencyIndicator;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$600(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMRadio$FrequencyIndicator;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1520
    :cond_0
    const-string v0, "FrequencyIndicator"

    const-string v1, "tuneFrequency, wrong state, just return"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    :goto_0
    return-void

    .line 1523
    :cond_1
    const-string v0, "FrequencyIndicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved current station: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v2}, Lcom/baidu/fm/FMRadio;->access$1500(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMPersistence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/fm/FMPersistence;->getCurrentStation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$1500(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMPersistence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/fm/FMPersistence;->getCurrentStation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/fm/FMStationInfo;->verifyStringFreq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1526
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$1500(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMPersistence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/fm/FMPersistence;->getCurrentStation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->tune(Ljava/lang/String;)V

    goto :goto_0

    .line 1528
    :cond_2
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$1500(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMPersistence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/fm/FMPersistence;->getStationInfoCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1529
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$1500(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMPersistence;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/fm/FMPersistence;->getStationInfoByIndex(J)Lcom/baidu/fm/FMStationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->tune(Lcom/baidu/fm/FMStationInfo;)V

    goto :goto_0

    .line 1532
    :cond_3
    const-string v0, "FrequencyIndicator"

    const-string v1, "default freq ???"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    const/16 v0, 0x36b

    invoke-virtual {p0, v0}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->tune(I)V

    goto :goto_0
.end method

.method private updateUI()V
    .locals 1

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-virtual {v0}, Lcom/baidu/fm/FMRadio;->updateScreenBoardUI()V

    .line 1579
    return-void
.end method


# virtual methods
.method public getCurrentFrequencyInt()I
    .locals 1

    .prologue
    .line 1629
    iget v0, p0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->mCurrentFrequencyInt:I

    return v0
.end method

.method public getCurrentFrequencyString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->mCurrentFrequencyString:Ljava/lang/String;

    return-object v0
.end method

.method public tune()V
    .locals 2

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mIsTuning:Z
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$2100(Lcom/baidu/fm/FMRadio;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mTuneTask:Lcom/baidu/fm/FMRadio$TuneRadioTask;
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$2200(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMRadio$TuneRadioTask;

    move-result-object v0

    iget v1, p0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->mCurrentFrequencyInt:I

    invoke-virtual {v0, v1}, Lcom/baidu/fm/FMRadio$TuneRadioTask;->notifyUpdate(I)V

    .line 1592
    :goto_0
    return-void

    .line 1590
    :cond_0
    const-string v0, "FrequencyIndicator"

    const-string v1, "tune: tune is already running"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public tune(I)V
    .locals 0
    .parameter "freqInt"

    .prologue
    .line 1595
    invoke-direct {p0, p1}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->setCurrentFrequency(I)V

    .line 1596
    invoke-virtual {p0}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->tune()V

    .line 1597
    return-void
.end method

.method public tune(Lcom/baidu/fm/FMStationInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1600
    if-eqz p1, :cond_0

    .line 1601
    invoke-virtual {p1}, Lcom/baidu/fm/FMStationInfo;->getStationFreqInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->setCurrentFrequency(I)V

    .line 1602
    invoke-virtual {p0}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->tune()V

    .line 1604
    :cond_0
    return-void
.end method

.method public tune(Ljava/lang/String;)V
    .locals 1
    .parameter "freqString"

    .prologue
    .line 1607
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/baidu/fm/FMStationInfo;->verifyStringFreq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1608
    invoke-static {p1}, Lcom/baidu/fm/FMStationInfo;->stringFreqToIntFreq(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->tune(I)V

    .line 1610
    :cond_0
    return-void
.end method

.method public updateTextName()V
    .locals 3

    .prologue
    .line 1613
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v1}, Lcom/baidu/fm/FMRadio;->access$1500(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMPersistence;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->mCurrentStationName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1614
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->this$0:Lcom/baidu/fm/FMRadio;

    #getter for: Lcom/baidu/fm/FMRadio;->mPersistence:Lcom/baidu/fm/FMPersistence;
    invoke-static {v1}, Lcom/baidu/fm/FMRadio;->access$1500(Lcom/baidu/fm/FMRadio;)Lcom/baidu/fm/FMPersistence;

    move-result-object v1

    iget v2, p0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->mCurrentFrequencyInt:I

    invoke-virtual {v1, v2}, Lcom/baidu/fm/FMPersistence;->getStationInfoByFreq(I)Lcom/baidu/fm/FMStationInfo;

    move-result-object v0

    .line 1615
    .local v0, info:Lcom/baidu/fm/FMStationInfo;
    if-eqz v0, :cond_1

    .line 1616
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->mCurrentStationName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/baidu/fm/FMStationInfo;->getStationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1622
    .end local v0           #info:Lcom/baidu/fm/FMStationInfo;
    :cond_0
    :goto_0
    return-void

    .line 1619
    .restart local v0       #info:Lcom/baidu/fm/FMStationInfo;
    :cond_1
    iget-object v1, p0, Lcom/baidu/fm/FMRadio$FrequencyIndicator;->mCurrentStationName:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
