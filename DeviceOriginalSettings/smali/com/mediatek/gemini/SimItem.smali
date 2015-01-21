.class Lcom/mediatek/gemini/SimItem;
.super Ljava/lang/Object;
.source "SimManagement.java"


# instance fields
.field public mColor:I

.field public mDispalyNumberFormat:I

.field public mIsSim:Z

.field public mName:Ljava/lang/String;

.field public mNumber:Ljava/lang/String;

.field public mSimID:J

.field public mSlot:I

.field public mState:I


# direct methods
.method public constructor <init>(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V
    .locals 3
    .parameter "siminfo"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v2, p0, Lcom/mediatek/gemini/SimItem;->mIsSim:Z

    .line 61
    iput-object v0, p0, Lcom/mediatek/gemini/SimItem;->mName:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/gemini/SimItem;->mDispalyNumberFormat:I

    .line 64
    iput v1, p0, Lcom/mediatek/gemini/SimItem;->mColor:I

    .line 65
    iput v1, p0, Lcom/mediatek/gemini/SimItem;->mSlot:I

    .line 66
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/gemini/SimItem;->mSimID:J

    .line 67
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/gemini/SimItem;->mState:I

    .line 92
    iput-boolean v2, p0, Lcom/mediatek/gemini/SimItem;->mIsSim:Z

    .line 93
    iget-object v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/gemini/SimItem;->mName:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    .line 95
    iget v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDispalyNumberFormat:I

    iput v0, p0, Lcom/mediatek/gemini/SimItem;->mDispalyNumberFormat:I

    .line 96
    iget v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    iput v0, p0, Lcom/mediatek/gemini/SimItem;->mColor:I

    .line 97
    iget v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    iput v0, p0, Lcom/mediatek/gemini/SimItem;->mSlot:I

    .line 98
    iget-wide v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    iput-wide v0, p0, Lcom/mediatek/gemini/SimItem;->mSimID:J

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 4
    .parameter "name"
    .parameter "color"
    .parameter "simID"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimItem;->mIsSim:Z

    .line 61
    iput-object v3, p0, Lcom/mediatek/gemini/SimItem;->mName:Ljava/lang/String;

    .line 62
    iput-object v3, p0, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    .line 63
    iput v2, p0, Lcom/mediatek/gemini/SimItem;->mDispalyNumberFormat:I

    .line 64
    iput v1, p0, Lcom/mediatek/gemini/SimItem;->mColor:I

    .line 65
    iput v1, p0, Lcom/mediatek/gemini/SimItem;->mSlot:I

    .line 66
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/gemini/SimItem;->mSimID:J

    .line 67
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/gemini/SimItem;->mState:I

    .line 80
    iput-object p1, p0, Lcom/mediatek/gemini/SimItem;->mName:Ljava/lang/String;

    .line 81
    iput p2, p0, Lcom/mediatek/gemini/SimItem;->mColor:I

    .line 82
    iput-boolean v2, p0, Lcom/mediatek/gemini/SimItem;->mIsSim:Z

    .line 83
    iput-wide p3, p0, Lcom/mediatek/gemini/SimItem;->mSimID:J

    .line 84
    return-void
.end method
