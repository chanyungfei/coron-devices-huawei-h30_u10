.class Lcom/android/internal/telephony/cat/SendDataParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field channelData:[B

.field mSendDataCid:I

.field mSendMode:I

.field textMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;[BILcom/android/internal/telephony/cat/TextMessage;I)V
    .locals 2
    .parameter "cmdDet"
    .parameter "data"
    .parameter "cid"
    .parameter "textMsg"
    .parameter "sendMode"

    .prologue
    const/4 v1, 0x0

    .line 294
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/SendDataParams;->channelData:[B

    .line 289
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/SendDataParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 290
    iput v1, p0, Lcom/android/internal/telephony/cat/SendDataParams;->mSendDataCid:I

    .line 291
    iput v1, p0, Lcom/android/internal/telephony/cat/SendDataParams;->mSendMode:I

    .line 295
    iput-object p2, p0, Lcom/android/internal/telephony/cat/SendDataParams;->channelData:[B

    .line 296
    iput-object p4, p0, Lcom/android/internal/telephony/cat/SendDataParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 297
    iput p3, p0, Lcom/android/internal/telephony/cat/SendDataParams;->mSendDataCid:I

    .line 298
    iput p5, p0, Lcom/android/internal/telephony/cat/SendDataParams;->mSendMode:I

    .line 299
    return-void
.end method
