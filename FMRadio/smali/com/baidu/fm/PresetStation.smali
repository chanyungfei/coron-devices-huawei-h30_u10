.class public Lcom/baidu/fm/PresetStation;
.super Ljava/lang/Object;
.source "PresetStation.java"


# instance fields
.field private mFrequency:I

.field private mName:Ljava/lang/String;

.field private mRDSSupported:Z


# direct methods
.method public constructor <init>(Lcom/baidu/fm/PresetStation;)V
    .locals 1
    .parameter "station"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/fm/PresetStation;->mName:Ljava/lang/String;

    .line 38
    const v0, 0x18ed4

    iput v0, p0, Lcom/baidu/fm/PresetStation;->mFrequency:I

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/fm/PresetStation;->mRDSSupported:Z

    .line 51
    invoke-virtual {p0, p1}, Lcom/baidu/fm/PresetStation;->Copy(Lcom/baidu/fm/PresetStation;)V

    .line 56
    invoke-virtual {p1}, Lcom/baidu/fm/PresetStation;->getFrequency()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/fm/PresetStation;->setFrequency(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "frequency"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/fm/PresetStation;->mName:Ljava/lang/String;

    .line 38
    const v0, 0x18ed4

    iput v0, p0, Lcom/baidu/fm/PresetStation;->mFrequency:I

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/fm/PresetStation;->mRDSSupported:Z

    .line 42
    iput-object p1, p0, Lcom/baidu/fm/PresetStation;->mName:Ljava/lang/String;

    .line 47
    invoke-virtual {p0, p2}, Lcom/baidu/fm/PresetStation;->setFrequency(I)V

    .line 48
    return-void
.end method

.method public static getFrequencyString(I)Ljava/lang/String;
    .locals 7
    .parameter "frequency"

    .prologue
    .line 128
    int-to-double v3, p0

    const-wide/high16 v5, 0x4024

    div-double v0, v3, v5

    .line 129
    .local v0, frequencyDbl:D
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, frequencyString:Ljava/lang/String;
    return-object v2
.end method


# virtual methods
.method public Copy(Lcom/baidu/fm/PresetStation;)V
    .locals 1
    .parameter "station"

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/baidu/fm/PresetStation;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/fm/PresetStation;->mName:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcom/baidu/fm/PresetStation;->getFrequency()I

    move-result v0

    iput v0, p0, Lcom/baidu/fm/PresetStation;->mFrequency:I

    .line 66
    invoke-virtual {p1}, Lcom/baidu/fm/PresetStation;->getRDSSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/fm/PresetStation;->mRDSSupported:Z

    .line 68
    return-void
.end method

.method public equals(Lcom/baidu/fm/PresetStation;)Z
    .locals 3
    .parameter "station"

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, equal:Z
    iget v1, p0, Lcom/baidu/fm/PresetStation;->mFrequency:I

    invoke-virtual {p1}, Lcom/baidu/fm/PresetStation;->getFrequency()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 75
    iget-boolean v1, p0, Lcom/baidu/fm/PresetStation;->mRDSSupported:Z

    invoke-virtual {p1}, Lcom/baidu/fm/PresetStation;->getRDSSupported()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 77
    const/4 v0, 0x1

    .line 81
    :cond_0
    return v0
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/baidu/fm/PresetStation;->mFrequency:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/baidu/fm/PresetStation;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRDSSupported()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/baidu/fm/PresetStation;->mRDSSupported:Z

    return v0
.end method

.method public setFrequency(I)V
    .locals 1
    .parameter "freq"

    .prologue
    .line 98
    iput p1, p0, Lcom/baidu/fm/PresetStation;->mFrequency:I

    .line 100
    iget-object v0, p0, Lcom/baidu/fm/PresetStation;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/baidu/fm/PresetStation;->mName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setRDSSupported(Z)V
    .locals 0
    .parameter "rds"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/baidu/fm/PresetStation;->mRDSSupported:Z

    .line 110
    return-void
.end method
