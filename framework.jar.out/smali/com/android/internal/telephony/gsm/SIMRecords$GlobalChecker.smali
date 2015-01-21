.class Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;
.super Ljava/lang/Object;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlobalChecker"
.end annotation


# instance fields
.field private mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SIMRecords;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/SIMRecords;Lcom/android/internal/telephony/gsm/SIMRecords;)V
    .locals 0
    .parameter
    .parameter "simRecords"

    .prologue
    .line 3653
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3654
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 3655
    return-void
.end method

.method private sendSimRecordsReadyBroadcast()V
    .locals 4

    .prologue
    .line 3673
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 3675
    .local v1, operatorNumeric:Ljava/lang/String;
    const-string v2, "GSM"

    const-string v3, "broadcast TelephonyIntents.ACTION_SIM_RECORDS_READY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3676
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SIM_RECORDS_READY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3677
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3678
    const-string/jumbo v2, "mccMnc"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3679
    const-string v2, "imsi"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1800(Lcom/android/internal/telephony/gsm/SIMRecords;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3681
    const-string v2, "ecclistCategory"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1000(Lcom/android/internal/telephony/gsm/SIMRecords;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3683
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 3684
    return-void
.end method


# virtual methods
.method public loadGID1()V
    .locals 4

    .prologue
    .line 3687
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$2000(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f3e

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->handlerEx:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1900(Lcom/android/internal/telephony/gsm/SIMRecords;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3688
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$2108(Lcom/android/internal/telephony/gsm/SIMRecords;)I

    .line 3689
    return-void
.end method

.method public onAllRecordsLoaded()V
    .locals 2

    .prologue
    .line 3666
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/VirtualNet;->loadVirtualNet(Ljava/lang/String;Lcom/android/internal/telephony/gsm/SIMRecords;)V

    .line 3667
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->sendSimRecordsReadyBroadcast()V

    .line 3668
    return-void
.end method

.method public onOperatorNumericLoaded()V
    .locals 2

    .prologue
    .line 3659
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/VirtualNet;->loadSpecialFiles(Ljava/lang/String;Lcom/android/internal/telephony/gsm/SIMRecords;)V

    .line 3663
    return-void
.end method
