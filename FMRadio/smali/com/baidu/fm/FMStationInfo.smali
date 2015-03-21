.class public Lcom/baidu/fm/FMStationInfo;
.super Ljava/lang/Object;
.source "FMStationInfo.java"


# static fields
.field public static final CHANNEL_WIDTH:I = 0x1

.field public static final FREQ_BAND_MAX:I = 0x438

.field public static final FREQ_BAND_MIN:I = 0x36b

.field private static final TAG:Ljava/lang/String; = "FMStationInfo"


# instance fields
.field private mFavorite:Z

.field private mMetadata:Ljava/lang/String;

.field private mStationFreqInt:I

.field private mStationFreqString:Ljava/lang/String;

.field private mStationName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method constructor <init>(ILjava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .parameter "channelFreq"
    .parameter "channelName"
    .parameter "favorite"
    .parameter "metadata"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lcom/baidu/fm/FMStationInfo;->mStationName:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Lcom/baidu/fm/FMStationInfo;->mMetadata:Ljava/lang/String;

    .line 102
    iput-boolean p3, p0, Lcom/baidu/fm/FMStationInfo;->mFavorite:Z

    .line 103
    iput p1, p0, Lcom/baidu/fm/FMStationInfo;->mStationFreqInt:I

    .line 105
    invoke-static {p1}, Lcom/baidu/fm/FMStationInfo;->verifyIntFreq(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-static {p1}, Lcom/baidu/fm/FMStationInfo;->intFreqToStringFreq(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/fm/FMStationInfo;->mStationFreqString:Ljava/lang/String;

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/baidu/fm/FMStationInfo;->mStationName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/fm/FMStationInfo;->mStationName:Ljava/lang/String;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/baidu/fm/FMStationInfo;->mMetadata:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/fm/FMStationInfo;->mMetadata:Ljava/lang/String;

    .line 116
    :cond_1
    return-void

    .line 109
    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/fm/FMStationInfo;->mStationFreqString:Ljava/lang/String;

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .parameter "channelFreq"
    .parameter "channelName"
    .parameter "favorite"
    .parameter "metadata"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/baidu/fm/FMStationInfo;->mStationFreqString:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/baidu/fm/FMStationInfo;->mStationName:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lcom/baidu/fm/FMStationInfo;->mMetadata:Ljava/lang/String;

    .line 83
    iput-boolean p3, p0, Lcom/baidu/fm/FMStationInfo;->mFavorite:Z

    .line 85
    iget-object v0, p0, Lcom/baidu/fm/FMStationInfo;->mStationFreqString:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/fm/FMStationInfo;->mStationFreqString:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/fm/FMStationInfo;->mStationFreqInt:I

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/baidu/fm/FMStationInfo;->mStationName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/fm/FMStationInfo;->mStationName:Ljava/lang/String;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/baidu/fm/FMStationInfo;->mMetadata:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/fm/FMStationInfo;->mMetadata:Ljava/lang/String;

    .line 96
    :cond_1
    return-void

    .line 89
    :cond_2
    invoke-static {p1}, Lcom/baidu/fm/FMStationInfo;->stringFreqToIntFreq(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/fm/FMStationInfo;->mStationFreqInt:I

    goto :goto_0
.end method

.method public static intFreqToStringFreq(I)Ljava/lang/String;
    .locals 3
    .parameter "freqInt"

    .prologue
    .line 165
    invoke-static {p0}, Lcom/baidu/fm/FMStationInfo;->verifyIntFreq(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    const-string v0, "FMStationInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verify failed in intFreqToStringFreq ---- freqInt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v1, p0, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 v1, p0, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static stringFreqToIntFreq(Ljava/lang/String;)I
    .locals 6
    .parameter "freqString"

    .prologue
    const/4 v2, 0x0

    .line 145
    const/4 v1, 0x0

    .line 147
    .local v1, freqFloat:F
    invoke-static {p0}, Lcom/baidu/fm/FMStationInfo;->verifyStringFreq(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
    const-string v3, "FMStationInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "verify failed in stringFreqToIntFreq ---- freqString = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    return v2

    .line 155
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 161
    const/high16 v2, 0x4120

    mul-float/2addr v2, v1

    float-to-int v2, v2

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static verifyIntFreq(I)Z
    .locals 1
    .parameter "freqInt"

    .prologue
    .line 119
    const/16 v0, 0x36b

    if-lt p0, v0, :cond_0

    const/16 v0, 0x438

    if-gt p0, v0, :cond_0

    .line 120
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static verifyStringFreq(Ljava/lang/String;)Z
    .locals 6
    .parameter "freqString"

    .prologue
    const/4 v2, 0x0

    .line 127
    const/4 v1, 0x0

    .line 129
    .local v1, freqFloat:F
    if-eqz p0, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v2

    .line 134
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 141
    const/high16 v2, 0x4120

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-static {v2}, Lcom/baidu/fm/FMStationInfo;->verifyIntFreq(I)Z

    move-result v2

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "FMStationInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrong float number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dumpString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMStationInfo dump: mFavorite = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/fm/FMStationInfo;->mFavorite:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mStationFreqString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/fm/FMStationInfo;->mStationFreqString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mStationFreqInt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/fm/FMStationInfo;->mStationFreqInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mStationName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/fm/FMStationInfo;->mStationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, dump:Ljava/lang/String;
    const-string v1, "FMStationInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-object v0
.end method

.method public equals(Lcom/baidu/fm/FMStationInfo;)Z
    .locals 2
    .parameter "ch"

    .prologue
    .line 184
    iget-boolean v0, p1, Lcom/baidu/fm/FMStationInfo;->mFavorite:Z

    iget-boolean v1, p0, Lcom/baidu/fm/FMStationInfo;->mFavorite:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/baidu/fm/FMStationInfo;->mStationFreqString:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/fm/FMStationInfo;->mStationFreqString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/baidu/fm/FMStationInfo;->mStationFreqInt:I

    iget v1, p0, Lcom/baidu/fm/FMStationInfo;->mStationFreqInt:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/baidu/fm/FMStationInfo;->mStationName:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/fm/FMStationInfo;->mStationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/baidu/fm/FMStationInfo;->mMetadata:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/fm/FMStationInfo;->mMetadata:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    :cond_0
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMetadata()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/baidu/fm/FMStationInfo;->mMetadata:Ljava/lang/String;

    return-object v0
.end method

.method public getStationFreqInt()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/baidu/fm/FMStationInfo;->mStationFreqInt:I

    return v0
.end method

.method public getStationFreqString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/baidu/fm/FMStationInfo;->mStationFreqString:Ljava/lang/String;

    return-object v0
.end method

.method public getStationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/fm/FMStationInfo;->mStationName:Ljava/lang/String;

    return-object v0
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/baidu/fm/FMStationInfo;->mFavorite:Z

    return v0
.end method

.method public setFavorite(Z)V
    .locals 0
    .parameter "favorite"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/baidu/fm/FMStationInfo;->mFavorite:Z

    .line 41
    return-void
.end method

.method public setStationFreqInt(I)V
    .locals 0
    .parameter "channelFreq"

    .prologue
    .line 56
    iput p1, p0, Lcom/baidu/fm/FMStationInfo;->mStationFreqInt:I

    .line 57
    return-void
.end method

.method public setStationFreqString(Ljava/lang/String;)V
    .locals 0
    .parameter "channelFreq"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/baidu/fm/FMStationInfo;->mStationFreqString:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setStationName(Ljava/lang/String;)V
    .locals 0
    .parameter "channelName"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/baidu/fm/FMStationInfo;->mStationName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setmMetadata(Ljava/lang/String;)V
    .locals 0
    .parameter "metadata"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/baidu/fm/FMStationInfo;->mMetadata:Ljava/lang/String;

    .line 73
    return-void
.end method
