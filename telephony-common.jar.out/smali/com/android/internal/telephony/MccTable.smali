.class public final Lcom/android/internal/telephony/MccTable;
.super Ljava/lang/Object;
.source "MccTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MccTable$MccEntry;
    }
.end annotation


# static fields
.field private static final ICCID_IUCACELL_MEXICO_PREFIX:Ljava/lang/String; = "8952050"

.field private static final LENGTH_MIN:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "MccTable"

.field private static final MCC_MNC_NOWAY_EX1:Ljava/lang/String; = "24007683"

.field private static final MCC_MNC_NOWAY_EX2:Ljava/lang/String; = "24007685"

.field private static final MCC_MNC_SWEDISH_EX:Ljava/lang/String; = "24007"

.field private static final MCC_TABLE_V2_PROP_COUNTRY:Ljava/lang/String; = "country"

.field private static final MCC_TABLE_V2_PROP_LANGUAGE:Ljava/lang/String; = "language"

.field private static final MCC_TABLE_V2_PROP_MCC:Ljava/lang/String; = "mcc"

.field private static final MCC_TABLE_V2_PROP_NODE_ENTRY:Ljava/lang/String; = "mcc-entry"

.field private static final MCC_TABLE_V2_PROP_NODE_ROOT:Ljava/lang/String; = "mcc-table"

.field private static final MCC_TABLE_V2_PROP_TIME_ZONE:Ljava/lang/String; = "time-zone"

.field private static final MCC_TABLE_V2_SMALLEST_DIGIT:Ljava/lang/String; = "smallest-digit"

.field private static final NAME_COUNTRY:Ljava/lang/String; = "COUNTRY_CODES"

.field private static final NAME_IND:Ljava/lang/String; = "IND_CODES"

.field private static final NAME_LANG:Ljava/lang/String; = "LANG_STRINGS"

.field private static final NAME_MCC:Ljava/lang/String; = "MCC_CODES"

.field private static final NAME_TZ:Ljava/lang/String; = "TZ_STRINGS"

.field private static final PLMN_IUCACELL_MEXICO:Ljava/lang/String; = "22201"

.field private static SIM_LANGUAGE:Ljava/lang/String; = null

.field private static mCustMccTableInitial:Z = false

.field private static mCustMccTableUsed:Z = false

.field private static mEnableSimLang:Z = false

#the value of this static final field might be set in the static constructor
.field private static final mHB_defaultlanguage:Z = false

.field private static final mHB_mcc:I = 0xda

.field private static final mHB_mncEronet:I = 0x3

.field private static final mHB_mncMobile:I = 0x5a

.field private static final mHB_mncTel:I = 0x5

.field private static mIccId:Ljava/lang/String;

.field static mImsi:Ljava/lang/String;

.field private static mMnc:I

.field static table:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MccTable$MccEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/16 v7, 0xf0

    const/4 v1, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 109
    sput-boolean v1, Lcom/android/internal/telephony/MccTable;->mCustMccTableInitial:Z

    .line 111
    sput-boolean v1, Lcom/android/internal/telephony/MccTable;->mCustMccTableUsed:Z

    .line 115
    const-string v0, "ro.config.simlang"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/MccTable;->mEnableSimLang:Z

    .line 116
    const-string v0, "sim_language"

    sput-object v0, Lcom/android/internal/telephony/MccTable;->SIM_LANGUAGE:Ljava/lang/String;

    .line 126
    sput-object v2, Lcom/android/internal/telephony/MccTable;->mImsi:Ljava/lang/String;

    .line 138
    const-string v0, "ro.config.hw.BH_defaultlanguage"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/MccTable;->mHB_defaultlanguage:Z

    .line 143
    sput-object v2, Lcom/android/internal/telephony/MccTable;->mIccId:Ljava/lang/String;

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    .line 586
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xca

    const-string v3, "gr"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xcc

    const-string v3, "nl"

    const-string v4, "nl"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xce

    const-string v3, "be"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xd0

    const-string v3, "fr"

    const-string v4, "fr"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xd4

    const-string v3, "mc"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xd5

    const-string v3, "ad"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xd6

    const-string v3, "es"

    const-string v4, "es"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xd8

    const-string v3, "hu"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xda

    const-string v3, "ba"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xdb

    const-string v3, "hr"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xdc

    const-string v3, "rs"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xde

    const-string v3, "it"

    const-string v4, "it"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xe1

    const-string v3, "va"

    const-string v4, "it"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xe2

    const-string v3, "ro"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xe4

    const-string v3, "ch"

    const-string v4, "de"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xe6

    const-string v3, "cz"

    const-string v4, "cs"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xe7

    const-string v3, "sk"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xe8

    const-string v3, "at"

    const-string v4, "de"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xea

    const-string v3, "gb"

    const-string v4, "en"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xeb

    const-string v3, "gb"

    const-string v4, "en"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xee

    const-string v3, "dk"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "se"

    invoke-direct {v1, v7, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xf2

    const-string v3, "no"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xf4

    const-string v3, "fi"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xf6

    const-string v3, "lt"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xf7

    const-string v3, "lv"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xf8

    const-string v3, "ee"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xfa

    const-string v3, "ru"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xff

    const-string v3, "ua"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x101

    const-string v3, "by"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x103

    const-string v3, "md"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x104

    const-string v3, "pl"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x106

    const-string v3, "de"

    const-string v4, "de"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x10a

    const-string v3, "gi"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x10c

    const-string v3, "pt"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x10e

    const-string v3, "lu"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x110

    const-string v3, "ie"

    const-string v4, "en"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x112

    const-string v3, "is"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x114

    const-string v3, "al"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x116

    const-string v3, "mt"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x118

    const-string v3, "cy"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x11a

    const-string v3, "ge"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x11b

    const-string v3, "am"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x11c

    const-string v3, "bg"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x11e

    const-string v3, "tr"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x120

    const-string v3, "fo"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x121

    const-string v3, "ge"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x122

    const-string v3, "gl"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x124

    const-string v3, "sm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x125

    const-string v3, "si"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x126

    const-string v3, "mk"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x127

    const-string v3, "li"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x129

    const-string v3, "me"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x12e

    const-string v3, "ca"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x134

    const-string v3, "pm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x136

    const-string v3, "us"

    const-string v4, "en"

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x137

    const-string v3, "us"

    const-string v4, "en"

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x138

    const-string v3, "us"

    const-string v4, "en"

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x139

    const-string v3, "us"

    const-string v4, "en"

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x13a

    const-string v3, "us"

    const-string v4, "en"

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x13b

    const-string v3, "us"

    const-string v4, "en"

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x13c

    const-string v3, "us"

    const-string v4, "en"

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x14a

    const-string v3, "pr"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x14c

    const-string v3, "vi"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x14e

    const-string v3, "mx"

    invoke-direct {v1, v2, v3, v6}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x152

    const-string v3, "jm"

    invoke-direct {v1, v2, v3, v6}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x154

    const-string v3, "gp"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x156

    const-string v3, "bb"

    invoke-direct {v1, v2, v3, v6}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x158

    const-string v3, "ag"

    invoke-direct {v1, v2, v3, v6}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x15a

    const-string v3, "ky"

    invoke-direct {v1, v2, v3, v6}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x15c

    const-string v3, "vg"

    invoke-direct {v1, v2, v3, v6}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x15e

    const-string v3, "bm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x160

    const-string v3, "gd"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x162

    const-string v3, "ms"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x164

    const-string v3, "kn"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x166

    const-string v3, "lc"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x168

    const-string v3, "vc"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x16a

    const-string v3, "ai"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x16b

    const-string v3, "aw"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x16c

    const-string v3, "bs"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x16d

    const-string v3, "ai"

    invoke-direct {v1, v2, v3, v6}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x16e

    const-string v3, "dm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x170

    const-string v3, "cu"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x172

    const-string v3, "do"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x174

    const-string v3, "ht"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x176

    const-string v3, "tt"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x178

    const-string v3, "tc"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x190

    const-string v3, "az"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x191

    const-string v3, "kz"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x192

    const-string v3, "bt"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x194

    const-string v3, "in"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x195

    const-string v3, "in"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x19a

    const-string v3, "pk"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x19c

    const-string v3, "af"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x19d

    const-string v3, "lk"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x19e

    const-string v3, "mm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x19f

    const-string v3, "lb"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a0

    const-string v3, "jo"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a1

    const-string v3, "sy"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a2

    const-string v3, "iq"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a3

    const-string v3, "kw"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a4

    const-string v3, "sa"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a5

    const-string v3, "ye"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a6

    const-string v3, "om"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a7

    const-string v3, "ps"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a8

    const-string v3, "ae"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a9

    const-string v3, "il"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1aa

    const-string v3, "bh"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1ab

    const-string v3, "qa"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1ac

    const-string v3, "mn"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1ad

    const-string v3, "np"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1ae

    const-string v3, "ae"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1af

    const-string v3, "ae"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1b0

    const-string v3, "ir"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1b2

    const-string v3, "uz"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1b4

    const-string v3, "tj"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1b5

    const-string v3, "kg"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1b6

    const-string v3, "tm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1b8

    const-string v3, "jp"

    const-string v4, "ja"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1b9

    const-string v3, "jp"

    const-string v4, "ja"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1c2

    const-string v3, "kr"

    const-string v4, "ko"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1c4

    const-string v3, "vn"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1c6

    const-string v3, "hk"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1c7

    const-string v3, "mo"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1c8

    const-string v3, "kh"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1c9

    const-string v3, "la"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1cc

    const-string v3, "cn"

    const-string v4, "zh"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1cd

    const-string v3, "cn"

    const-string v4, "zh"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1d2

    const-string v3, "tw"

    const-string v4, "zh"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1d3

    const-string v3, "kp"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1d6

    const-string v3, "bd"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1d8

    const-string v3, "mv"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1f6

    const-string v3, "my"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1f9

    const-string v3, "au"

    const-string v4, "en"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1fe

    const-string v3, "id"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x202

    const-string v3, "tl"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x203

    const-string v3, "ph"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x208

    const-string v3, "th"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x20d

    const-string v3, "sg"

    const-string v4, "en"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x210

    const-string v3, "bn"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x212

    const-string v3, "nz"

    const-string v4, "en"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x216

    const-string v3, "mp"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x217

    const-string v3, "gu"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x218

    const-string v3, "nr"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x219

    const-string v3, "pg"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x21b

    const-string v3, "to"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x21c

    const-string v3, "sb"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x21d

    const-string v3, "vu"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x21e

    const-string v3, "fj"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x21f

    const-string v3, "wf"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x220

    const-string v3, "as"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x221

    const-string v3, "ki"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x222

    const-string v3, "nc"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x223

    const-string v3, "pf"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x224

    const-string v3, "ck"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x225

    const-string v3, "ws"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x226

    const-string v3, "fm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x227

    const-string v3, "mh"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x228

    const-string v3, "pw"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x25a

    const-string v3, "eg"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x25b

    const-string v3, "dz"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x25c

    const-string v3, "ma"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x25d

    const-string v3, "tn"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x25e

    const-string v3, "ly"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x25f

    const-string v3, "gm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x260

    const-string v3, "sn"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x261

    const-string v3, "mr"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x262

    const-string v3, "ml"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x263

    const-string v3, "gn"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x264

    const-string v3, "ci"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x265

    const-string v3, "bf"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x266

    const-string v3, "ne"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x267

    const-string v3, "tg"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x268

    const-string v3, "bj"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x269

    const-string v3, "mu"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x26a

    const-string v3, "lr"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x26b

    const-string v3, "sl"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x26c

    const-string v3, "gh"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x26d

    const-string v3, "ng"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x26e

    const-string v3, "td"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x26f

    const-string v3, "cf"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x270

    const-string v3, "cm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x271

    const-string v3, "cv"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x272

    const-string v3, "st"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x273

    const-string v3, "gq"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x274

    const-string v3, "ga"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x275

    const-string v3, "cg"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x276

    const-string v3, "cg"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x277

    const-string v3, "ao"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x278

    const-string v3, "gw"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x279

    const-string v3, "sc"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x27a

    const-string v3, "sd"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x27b

    const-string v3, "rw"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x27c

    const-string v3, "et"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x27d

    const-string v3, "so"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x27e

    const-string v3, "dj"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x27f

    const-string v3, "ke"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x280

    const-string v3, "tz"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x281

    const-string v3, "ug"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x282

    const-string v3, "bi"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x283

    const-string v3, "mz"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x285

    const-string v3, "zm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x286

    const-string v3, "mg"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x287

    const-string v3, "re"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x288

    const-string v3, "zw"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x289

    const-string v3, "na"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x28a

    const-string v3, "mw"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x28b

    const-string v3, "ls"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x28c

    const-string v3, "bw"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x28d

    const-string v3, "sz"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x28e

    const-string v3, "km"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x28f

    const-string v3, "za"

    const-string v4, "en"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x291

    const-string v3, "er"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2be

    const-string v3, "bz"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2c0

    const-string v3, "gt"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2c2

    const-string v3, "sv"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2c4

    const-string v3, "hn"

    invoke-direct {v1, v2, v3, v6}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2c6

    const-string v3, "ni"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2c8

    const-string v3, "cr"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2ca

    const-string v3, "pa"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2cc

    const-string v3, "pe"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2d2

    const-string v3, "ar"

    invoke-direct {v1, v2, v3, v6}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2d4

    const-string v3, "br"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2da

    const-string v3, "cl"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2dc

    const-string v3, "co"

    invoke-direct {v1, v2, v3, v6}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2de

    const-string v3, "ve"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2e0

    const-string v3, "bo"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2e2

    const-string v3, "gy"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2e4

    const-string v3, "ec"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2e6

    const-string v3, "gf"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2e8

    const-string v3, "py"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2ea

    const-string v3, "sr"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2ec

    const-string v3, "uy"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2ee

    const-string v3, "fk"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 823
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    return-void
.end method

.method public static countryCodeForMcc(I)Ljava/lang/String;
    .locals 2
    .parameter "mcc"

    .prologue
    .line 251
    sget-boolean v1, Lcom/android/internal/telephony/MccTable;->mCustMccTableInitial:Z

    if-nez v1, :cond_0

    .line 252
    invoke-static {}, Lcom/android/internal/telephony/MccTable;->loadCustMccTable()Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/telephony/MccTable;->mCustMccTableUsed:Z

    .line 256
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;

    move-result-object v0

    .line 258
    .local v0, entry:Lcom/android/internal/telephony/MccTable$MccEntry;
    if-nez v0, :cond_1

    .line 259
    const-string v1, ""

    .line 261
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->iso:Ljava/lang/String;

    goto :goto_0
.end method

.method public static defaultLanguageForMcc(I)Ljava/lang/String;
    .locals 2
    .parameter "mcc"

    .prologue
    .line 274
    sget-boolean v1, Lcom/android/internal/telephony/MccTable;->mCustMccTableInitial:Z

    if-nez v1, :cond_0

    .line 275
    invoke-static {}, Lcom/android/internal/telephony/MccTable;->loadCustMccTable()Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/telephony/MccTable;->mCustMccTableUsed:Z

    .line 279
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;

    move-result-object v0

    .line 281
    .local v0, entry:Lcom/android/internal/telephony/MccTable$MccEntry;
    if-nez v0, :cond_1

    .line 282
    const/4 v1, 0x0

    .line 284
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->language:Ljava/lang/String;

    goto :goto_0
.end method

.method public static defaultTimeZoneForMcc(I)Ljava/lang/String;
    .locals 7
    .parameter "mcc"

    .prologue
    const/4 v4, 0x0

    .line 213
    sget-boolean v5, Lcom/android/internal/telephony/MccTable;->mCustMccTableInitial:Z

    if-nez v5, :cond_0

    .line 214
    invoke-static {}, Lcom/android/internal/telephony/MccTable;->loadCustMccTable()Z

    move-result v5

    sput-boolean v5, Lcom/android/internal/telephony/MccTable;->mCustMccTableUsed:Z

    .line 217
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;

    move-result-object v0

    .line 218
    .local v0, entry:Lcom/android/internal/telephony/MccTable$MccEntry;
    if-eqz v0, :cond_1

    iget-object v5, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->iso:Ljava/lang/String;

    if-nez v5, :cond_3

    :cond_1
    move-object v2, v4

    .line 236
    :cond_2
    :goto_0
    return-object v2

    .line 222
    :cond_3
    iget-object v2, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->timeZone:Ljava/lang/String;

    .line 223
    .local v2, timeZone:Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    if-nez v2, :cond_2

    .line 229
    :cond_4
    iget-object v5, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->language:Ljava/lang/String;

    if-nez v5, :cond_5

    .line 230
    new-instance v1, Ljava/util/Locale;

    iget-object v5, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->iso:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 234
    .local v1, locale:Ljava/util/Locale;
    :goto_1
    invoke-static {v1}, Llibcore/icu/TimeZones;->forLocale(Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, tz:[Ljava/lang/String;
    array-length v5, v3

    if-nez v5, :cond_6

    move-object v2, v4

    goto :goto_0

    .line 232
    .end local v1           #locale:Ljava/util/Locale;
    .end local v3           #tz:[Ljava/lang/String;
    :cond_5
    new-instance v1, Ljava/util/Locale;

    iget-object v5, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->language:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->iso:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1       #locale:Ljava/util/Locale;
    goto :goto_1

    .line 236
    .restart local v3       #tz:[Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    aget-object v2, v3, v4

    goto :goto_0
.end method

.method private static entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;
    .locals 4
    .parameter "mcc"

    .prologue
    const/4 v2, 0x0

    .line 193
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    .line 195
    .local v1, m:Lcom/android/internal/telephony/MccTable$MccEntry;
    sget-object v3, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    invoke-static {v3, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 197
    .local v0, index:I
    if-gez v0, :cond_0

    .line 200
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    goto :goto_0
.end method

.method private static loadCustMccTable()Z
    .locals 33

    .prologue
    .line 831
    const/16 v30, 0x0

    .line 832
    .local v30, tzLength:I
    const/16 v21, 0x0

    .line 833
    .local v21, langLength:I
    const/4 v11, 0x0

    .line 834
    .local v11, countryLength:I
    const/16 v23, 0x0

    .line 835
    .local v23, mccLength:I
    const/16 v17, 0x0

    .line 836
    .local v17, indLength:I
    const/16 v28, 0x0

    .line 837
    .local v28, tz:[Ljava/lang/String;
    const/16 v19, 0x0

    .line 838
    .local v19, lang:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 839
    .local v9, country:[Ljava/lang/String;
    const/16 v22, 0x0

    .line 840
    .local v22, mcc:[Ljava/lang/String;
    const/4 v15, 0x0

    .line 843
    .local v15, ind:[Ljava/lang/String;
    const/16 v26, 0x0

    .line 844
    .local v26, mcc_codes:[S
    const/16 v18, 0x0

    .line 846
    .local v18, ind_codes:[I
    invoke-static {}, Lcom/android/internal/telephony/MccTable;->loadCustMccTableV2()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 847
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/telephony/MccTable;->mCustMccTableInitial:Z

    .line 848
    const/4 v2, 0x1

    .line 1026
    :goto_0
    return v2

    .line 855
    :cond_0
    new-instance v24, Ljava/io/File;

    const-string v2, "/data/cust/"

    const-string v31, "xml/mccTableParse.xml"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    .local v24, mccTableFileCust:Ljava/io/File;
    const/16 v25, 0x0

    .line 858
    .local v25, mccTableReader:Ljava/io/InputStreamReader;
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/telephony/MccTable;->mCustMccTableInitial:Z

    .line 861
    :try_start_0
    new-instance v25, Ljava/io/InputStreamReader;

    .end local v25           #mccTableReader:Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v31

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-direct {v0, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 868
    .restart local v25       #mccTableReader:Ljava/io/InputStreamReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v27

    .line 869
    .local v27, parser:Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 871
    const-string v2, "mccTableParse"

    move-object/from16 v0, v27

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 873
    :cond_1
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 874
    const/4 v8, 0x0

    .line 876
    .local v8, StrValue:Ljava/lang/String;
    const-string v2, "string"

    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 878
    const-string v2, "TZ_STRINGS"

    const/16 v31, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 880
    const/4 v2, 0x0

    const-string v31, "TZ_STRINGS"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 881
    if-nez v8, :cond_2

    .line 882
    const-string v2, "MccTable"

    const-string v31, "TimeZone get from cust file is null"

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d

    .line 883
    const/4 v2, 0x0

    .line 986
    :try_start_2
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 987
    :catch_0
    move-exception v13

    .line 988
    .local v13, e2:Ljava/io/IOException;
    const-string v2, "MccTable"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Exception in mcctable parser "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    .end local v8           #StrValue:Ljava/lang/String;
    .end local v27           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 862
    .end local v13           #e2:Ljava/io/IOException;
    .end local v25           #mccTableReader:Ljava/io/InputStreamReader;
    :catch_1
    move-exception v12

    .line 863
    .local v12, e:Ljava/io/FileNotFoundException;
    const-string v2, "MccTable"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "can not open"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 886
    .end local v12           #e:Ljava/io/FileNotFoundException;
    .restart local v8       #StrValue:Ljava/lang/String;
    .restart local v25       #mccTableReader:Ljava/io/InputStreamReader;
    .restart local v27       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    :try_start_3
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 891
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v30, v0

    .line 892
    if-gtz v30, :cond_1

    .line 893
    const-string v2, "MccTable"

    const-string v31, "number of TimeZone get from cust file is less than zero"

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d

    .line 894
    const/4 v2, 0x0

    .line 986
    :try_start_4
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 987
    :catch_2
    move-exception v13

    .line 988
    .restart local v13       #e2:Ljava/io/IOException;
    const-string v2, "MccTable"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Exception in mcctable parser "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 896
    .end local v13           #e2:Ljava/io/IOException;
    :cond_3
    :try_start_5
    const-string v2, "LANG_STRINGS"

    const/16 v31, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 898
    const/4 v2, 0x0

    const-string v31, "LANG_STRINGS"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 899
    if-nez v8, :cond_4

    .line 900
    const-string v2, "MccTable"

    const-string v31, "LanguageCode get from cust file is null"

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d

    .line 901
    const/4 v2, 0x0

    .line 986
    :try_start_6
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 987
    :catch_3
    move-exception v13

    .line 988
    .restart local v13       #e2:Ljava/io/IOException;
    const-string v2, "MccTable"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Exception in mcctable parser "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 904
    .end local v13           #e2:Ljava/io/IOException;
    :cond_4
    :try_start_7
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 909
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    .line 911
    if-gtz v21, :cond_1

    .line 912
    const-string v2, "MccTable"

    const-string v31, "number of LanguageCode get from cust file is less than zero"

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d

    .line 913
    const/4 v2, 0x0

    .line 986
    :try_start_8
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 987
    :catch_4
    move-exception v13

    .line 988
    .restart local v13       #e2:Ljava/io/IOException;
    const-string v2, "MccTable"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Exception in mcctable parser "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 915
    .end local v13           #e2:Ljava/io/IOException;
    :cond_5
    :try_start_9
    const-string v2, "COUNTRY_CODES"

    const/16 v31, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 917
    const/4 v2, 0x0

    const-string v31, "COUNTRY_CODES"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 918
    if-nez v8, :cond_6

    .line 919
    const-string v2, "MccTable"

    const-string v31, "CountryCode get from cust file is null"

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d

    .line 920
    const/4 v2, 0x0

    .line 986
    :try_start_a
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_0

    .line 987
    :catch_5
    move-exception v13

    .line 988
    .restart local v13       #e2:Ljava/io/IOException;
    const-string v2, "MccTable"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Exception in mcctable parser "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 923
    .end local v13           #e2:Ljava/io/IOException;
    :cond_6
    :try_start_b
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 928
    array-length v11, v9

    .line 929
    if-gtz v11, :cond_1

    .line 930
    const-string v2, "MccTable"

    const-string v31, "number of CountryCode get from cust file is less than zero"

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d

    .line 931
    const/4 v2, 0x0

    .line 986
    :try_start_c
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_0

    .line 987
    :catch_6
    move-exception v13

    .line 988
    .restart local v13       #e2:Ljava/io/IOException;
    const-string v2, "MccTable"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Exception in mcctable parser "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 934
    .end local v13           #e2:Ljava/io/IOException;
    :cond_7
    :try_start_d
    const-string v2, "short"

    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 936
    const-string v2, "MCC_CODES"

    const/16 v31, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 937
    const/4 v2, 0x0

    const-string v31, "MCC_CODES"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 938
    if-nez v8, :cond_8

    .line 939
    const-string v2, "MccTable"

    const-string v31, "MCCCode get from cust file is null"

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d

    .line 940
    const/4 v2, 0x0

    .line 986
    :try_start_e
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStreamReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_0

    .line 987
    :catch_7
    move-exception v13

    .line 988
    .restart local v13       #e2:Ljava/io/IOException;
    const-string v2, "MccTable"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Exception in mcctable parser "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 943
    .end local v13           #e2:Ljava/io/IOException;
    :cond_8
    :try_start_f
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 948
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    .line 949
    if-gtz v23, :cond_1

    .line 950
    const-string v2, "MccTable"

    const-string v31, "number of MCCCode get from cust file is less than zero"

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    .line 951
    const/4 v2, 0x0

    .line 986
    :try_start_10
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStreamReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    goto/16 :goto_0

    .line 987
    :catch_8
    move-exception v13

    .line 988
    .restart local v13       #e2:Ljava/io/IOException;
    const-string v2, "MccTable"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Exception in mcctable parser "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 954
    .end local v13           #e2:Ljava/io/IOException;
    :cond_9
    :try_start_11
    const-string v2, "integer"

    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 956
    const-string v2, "IND_CODES"

    const/16 v31, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 957
    const/4 v2, 0x0

    const-string v31, "IND_CODES"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 958
    if-nez v8, :cond_a

    .line 959
    const-string v2, "MccTable"

    const-string v31, "IndCode get from cust file is null"

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    .line 960
    const/4 v2, 0x0

    .line 986
    :try_start_12
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStreamReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    goto/16 :goto_0

    .line 987
    :catch_9
    move-exception v13

    .line 988
    .restart local v13       #e2:Ljava/io/IOException;
    const-string v2, "MccTable"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Exception in mcctable parser "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 963
    .end local v13           #e2:Ljava/io/IOException;
    :cond_a
    :try_start_13
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 968
    array-length v0, v15

    move/from16 v17, v0

    .line 969
    if-gtz v17, :cond_1

    .line 970
    const-string v2, "MccTable"

    const-string v31, "number of IndCode get from cust file is less than zero"

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_d

    .line 971
    const/4 v2, 0x0

    .line 986
    :try_start_14
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStreamReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a

    goto/16 :goto_0

    .line 987
    :catch_a
    move-exception v13

    .line 988
    .restart local v13       #e2:Ljava/io/IOException;
    const-string v2, "MccTable"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Exception in mcctable parser "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 978
    .end local v8           #StrValue:Ljava/lang/String;
    .end local v13           #e2:Ljava/io/IOException;
    .end local v27           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_b
    move-exception v12

    .line 979
    .local v12, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_15
    const-string v2, "MccTable"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Exception in mcctable parser "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 980
    const/4 v2, 0x0

    .line 986
    :try_start_16
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStreamReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c

    goto/16 :goto_0

    .line 987
    :catch_c
    move-exception v13

    .line 988
    .restart local v13       #e2:Ljava/io/IOException;
    const-string v2, "MccTable"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Exception in mcctable parser "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 981
    .end local v12           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v13           #e2:Ljava/io/IOException;
    :catch_d
    move-exception v12

    .line 982
    .local v12, e:Ljava/io/IOException;
    :try_start_17
    const-string v2, "MccTable"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Exception in mcctable parser "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 983
    const/4 v2, 0x0

    .line 986
    :try_start_18
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStreamReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_e

    goto/16 :goto_0

    .line 987
    :catch_e
    move-exception v13

    .line 988
    .restart local v13       #e2:Ljava/io/IOException;
    const-string v2, "MccTable"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Exception in mcctable parser "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 985
    .end local v12           #e:Ljava/io/IOException;
    .end local v13           #e2:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 986
    :try_start_19
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStreamReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_f

    .line 985
    throw v2

    .line 986
    .restart local v8       #StrValue:Ljava/lang/String;
    .restart local v27       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_b
    :try_start_1a
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStreamReader;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_10

    .line 992
    if-eqz v30, :cond_c

    if-eqz v21, :cond_c

    if-eqz v11, :cond_c

    if-eqz v23, :cond_c

    if-eqz v17, :cond_c

    if-eqz v28, :cond_c

    if-eqz v19, :cond_c

    if-eqz v9, :cond_c

    if-eqz v22, :cond_c

    if-eqz v15, :cond_c

    move/from16 v0, v23

    move/from16 v1, v17

    if-eq v0, v1, :cond_d

    .line 995
    :cond_c
    const-string v2, "MccTable"

    const-string v31, "some other exception occured"

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1000
    :cond_d
    move/from16 v0, v23

    new-array v0, v0, [S

    move-object/from16 v26, v0

    .line 1001
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    move/from16 v0, v23

    if-ge v14, v0, :cond_e

    .line 1002
    aget-object v2, v22, v14

    invoke-static {v2}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    aput-short v2, v26, v14

    .line 1001
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1004
    :cond_e
    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 1005
    const/4 v14, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v14, v0, :cond_f

    .line 1006
    aget-object v2, v15, v14

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v18, v14

    .line 1005
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 1010
    :cond_f
    new-instance v2, Ljava/util/ArrayList;

    const/16 v31, 0x12c

    move/from16 v0, v31

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v2, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    .line 1011
    const/4 v14, 0x0

    :goto_4
    move/from16 v0, v23

    if-ge v14, v0, :cond_10

    .line 1012
    aget-short v3, v26, v14

    .line 1013
    .local v3, mccTemp:I
    aget v16, v18, v14

    .line 1014
    .local v16, indCode:I
    ushr-int/lit8 v2, v16, 0x4

    and-int/lit8 v29, v2, 0x1f

    .line 1015
    .local v29, tzInd:I
    aget-object v7, v28, v29

    .line 1016
    .local v7, tzTemp:Ljava/lang/String;
    ushr-int/lit8 v2, v16, 0x10

    and-int/lit16 v10, v2, 0xff

    .line 1017
    .local v10, countryInd:I
    aget-object v4, v9, v10

    .line 1018
    .local v4, countryCodeTemp:Ljava/lang/String;
    ushr-int/lit8 v2, v16, 0x18

    and-int/lit16 v0, v2, 0xff

    move/from16 v20, v0

    .line 1019
    .local v20, langInd:I
    aget-object v6, v19, v20

    .line 1020
    .local v6, langTemp:Ljava/lang/String;
    ushr-int/lit8 v2, v16, 0x9

    and-int/lit8 v5, v2, 0x3

    .line 1021
    .local v5, smDigTemp:I
    sget-object v31, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 1023
    .end local v3           #mccTemp:I
    .end local v4           #countryCodeTemp:Ljava/lang/String;
    .end local v5           #smDigTemp:I
    .end local v6           #langTemp:Ljava/lang/String;
    .end local v7           #tzTemp:Ljava/lang/String;
    .end local v10           #countryInd:I
    .end local v16           #indCode:I
    .end local v20           #langInd:I
    .end local v29           #tzInd:I
    :cond_10
    sget-object v2, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1025
    const-string v2, "MccTable"

    const-string v31, "cust file is successfully load into the table"

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 987
    .end local v8           #StrValue:Ljava/lang/String;
    .end local v14           #i:I
    .end local v27           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_f
    move-exception v13

    .line 988
    .restart local v13       #e2:Ljava/io/IOException;
    const-string v2, "MccTable"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Exception in mcctable parser "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 987
    .end local v13           #e2:Ljava/io/IOException;
    .restart local v8       #StrValue:Ljava/lang/String;
    .restart local v27       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_10
    move-exception v13

    .line 988
    .restart local v13       #e2:Ljava/io/IOException;
    const-string v2, "MccTable"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Exception in mcctable parser "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private static loadCustMccTableV2()Z
    .locals 17

    .prologue
    .line 1054
    new-instance v11, Ljava/io/File;

    const-string v0, "/data/cust/"

    const-string v15, "xml/mccTable_V2.xml"

    invoke-direct {v11, v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    .local v11, mccTableFileCustV2:Ljava/io/File;
    const/4 v8, 0x0

    .line 1056
    .local v8, fin:Ljava/io/FileInputStream;
    new-instance v14, Ljava/util/ArrayList;

    const/16 v0, 0x12c

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1058
    .local v14, tmpTable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/MccTable$MccEntry;>;"
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    .line 1059
    .end local v8           #fin:Ljava/io/FileInputStream;
    .local v9, fin:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 1061
    .local v12, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v0, "UTF-8"

    invoke-interface {v12, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1064
    const-string v0, "mcc-table"

    invoke-static {v12, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1066
    :goto_0
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1067
    const-string v0, "mcc-entry"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1068
    const/4 v0, 0x0

    const-string v15, "mcc"

    invoke-interface {v12, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v10

    .line 1071
    .local v10, mccString:Ljava/lang/String;
    :try_start_2
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    .line 1077
    .local v1, mcc:I
    const/4 v0, 0x0

    :try_start_3
    const-string v15, "smallest-digit"

    invoke-interface {v12, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v13

    .line 1079
    .local v13, smallestDigitString:Ljava/lang/String;
    const/4 v3, 0x2

    .line 1081
    .local v3, smallestDigit:I
    :try_start_4
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v3

    .line 1085
    :goto_1
    const/4 v0, 0x0

    :try_start_5
    const-string v15, "language"

    invoke-interface {v12, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1086
    .local v4, language:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1088
    :cond_0
    const-string v4, "en"

    .line 1090
    :cond_1
    const/4 v0, 0x0

    const-string v15, "country"

    invoke-interface {v12, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1091
    .local v2, country:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 1093
    :cond_2
    const-string v2, "us"

    .line 1095
    :cond_3
    const/4 v0, 0x0

    const-string v15, "time-zone"

    invoke-interface {v12, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1096
    .local v5, timeZone:Ljava/lang/String;
    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_0

    .line 1102
    .end local v1           #mcc:I
    .end local v2           #country:Ljava/lang/String;
    .end local v3           #smallestDigit:I
    .end local v4           #language:Ljava/lang/String;
    .end local v5           #timeZone:Ljava/lang/String;
    .end local v10           #mccString:Ljava/lang/String;
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v13           #smallestDigitString:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v8, v9

    .line 1103
    .end local v9           #fin:Ljava/io/FileInputStream;
    .local v6, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v8       #fin:Ljava/io/FileInputStream;
    :goto_2
    :try_start_6
    const-string v0, "MccTable"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception in mcctable parser "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v0, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1104
    const/4 v0, 0x0

    .line 1112
    if-eqz v8, :cond_4

    .line 1113
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 1124
    .end local v6           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_4
    :goto_3
    return v0

    .line 1072
    .end local v8           #fin:Ljava/io/FileInputStream;
    .restart local v9       #fin:Ljava/io/FileInputStream;
    .restart local v10       #mccString:Ljava/lang/String;
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v6

    .line 1074
    .local v6, e:Ljava/lang/Exception;
    :try_start_8
    const-string v0, "MccTable"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception in mcctable parser "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v0, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    .line 1105
    .end local v6           #e:Ljava/lang/Exception;
    .end local v10           #mccString:Ljava/lang/String;
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v6

    move-object v8, v9

    .line 1106
    .end local v9           #fin:Ljava/io/FileInputStream;
    .local v6, e:Ljava/io/IOException;
    .restart local v8       #fin:Ljava/io/FileInputStream;
    :goto_4
    :try_start_9
    const-string v0, "MccTable"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception in mcctable parser "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v0, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1107
    const/4 v0, 0x0

    .line 1112
    if-eqz v8, :cond_4

    .line 1113
    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_3

    .line 1115
    :catch_3
    move-exception v7

    .line 1116
    .local v7, e2:Ljava/io/IOException;
    const-string v0, "MccTable"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception in mcctable parser "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v0, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    .end local v6           #e:Ljava/io/IOException;
    :goto_5
    const/4 v0, 0x0

    goto :goto_3

    .line 1082
    .end local v7           #e2:Ljava/io/IOException;
    .end local v8           #fin:Ljava/io/FileInputStream;
    .restart local v1       #mcc:I
    .restart local v3       #smallestDigit:I
    .restart local v9       #fin:Ljava/io/FileInputStream;
    .restart local v10       #mccString:Ljava/lang/String;
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13       #smallestDigitString:Ljava/lang/String;
    :catch_4
    move-exception v6

    .line 1083
    .local v6, e:Ljava/lang/Exception;
    :try_start_b
    const-string v0, "MccTable"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception in mcctable parser "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v0, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_1

    .line 1108
    .end local v1           #mcc:I
    .end local v3           #smallestDigit:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v10           #mccString:Ljava/lang/String;
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v13           #smallestDigitString:Ljava/lang/String;
    :catch_5
    move-exception v6

    move-object v8, v9

    .line 1109
    .end local v9           #fin:Ljava/io/FileInputStream;
    .restart local v6       #e:Ljava/lang/Exception;
    .restart local v8       #fin:Ljava/io/FileInputStream;
    :goto_6
    const/4 v0, 0x0

    .line 1112
    if-eqz v8, :cond_4

    .line 1113
    :try_start_c
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_3

    .line 1115
    :catch_6
    move-exception v7

    .line 1116
    .restart local v7       #e2:Ljava/io/IOException;
    const-string v0, "MccTable"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception in mcctable parser "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v0, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1111
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #e2:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 1112
    :goto_7
    if-eqz v8, :cond_5

    .line 1113
    :try_start_d
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 1111
    :cond_5
    throw v0

    .line 1112
    .end local v8           #fin:Ljava/io/FileInputStream;
    .restart local v9       #fin:Ljava/io/FileInputStream;
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_6
    if-eqz v9, :cond_7

    .line 1113
    :try_start_e
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 1121
    :cond_7
    invoke-static {v14}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1122
    sput-object v14, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    .line 1123
    const-string v0, "MccTable"

    const-string v15, "cust file is successfully load into the table v2"

    invoke-static {v0, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    const/4 v0, 0x1

    move-object v8, v9

    .end local v9           #fin:Ljava/io/FileInputStream;
    .restart local v8       #fin:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 1115
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_7
    move-exception v7

    .line 1116
    .restart local v7       #e2:Ljava/io/IOException;
    const-string v0, "MccTable"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception in mcctable parser "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v0, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1115
    .end local v7           #e2:Ljava/io/IOException;
    .local v6, e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_8
    move-exception v7

    .line 1116
    .restart local v7       #e2:Ljava/io/IOException;
    const-string v0, "MccTable"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception in mcctable parser "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v0, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1115
    .end local v6           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v7           #e2:Ljava/io/IOException;
    .end local v8           #fin:Ljava/io/FileInputStream;
    .restart local v9       #fin:Ljava/io/FileInputStream;
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_9
    move-exception v7

    .line 1116
    .restart local v7       #e2:Ljava/io/IOException;
    const-string v0, "MccTable"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception in mcctable parser "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v0, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    const/4 v0, 0x0

    move-object v8, v9

    .end local v9           #fin:Ljava/io/FileInputStream;
    .restart local v8       #fin:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 1111
    .end local v7           #e2:Ljava/io/IOException;
    .end local v8           #fin:Ljava/io/FileInputStream;
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9       #fin:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v0

    move-object v8, v9

    .end local v9           #fin:Ljava/io/FileInputStream;
    .restart local v8       #fin:Ljava/io/FileInputStream;
    goto :goto_7

    .line 1108
    :catch_a
    move-exception v6

    goto/16 :goto_6

    .line 1105
    :catch_b
    move-exception v6

    goto/16 :goto_4

    .line 1102
    :catch_c
    move-exception v6

    goto/16 :goto_2
.end method

.method public static setIccId(Ljava/lang/String;)V
    .locals 0
    .parameter "iccid"

    .prologue
    .line 1041
    sput-object p0, Lcom/android/internal/telephony/MccTable;->mIccId:Ljava/lang/String;

    .line 1042
    return-void
.end method

.method public static setImsi(Ljava/lang/String;)V
    .locals 0
    .parameter "imsi"

    .prologue
    .line 1035
    sput-object p0, Lcom/android/internal/telephony/MccTable;->mImsi:Ljava/lang/String;

    .line 1036
    return-void
.end method

.method private static setLocaleFromMccIfNeeded(Landroid/content/Context;I)V
    .locals 12
    .parameter "context"
    .parameter "mcc"

    .prologue
    const/4 v11, 0x1

    .line 481
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v9

    if-ne v9, v11, :cond_0

    .line 549
    :goto_0
    return-void

    .line 486
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultLanguageForMcc(I)Ljava/lang/String;

    move-result-object v5

    .line 487
    .local v5, language:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, country:Ljava/lang/String;
    sget-object v9, Lcom/android/internal/telephony/MccTable;->mImsi:Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 494
    sget-object v9, Lcom/android/internal/telephony/MccTable;->mImsi:Ljava/lang/String;

    const-string v10, "24007"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 495
    sget-object v9, Lcom/android/internal/telephony/MccTable;->mImsi:Ljava/lang/String;

    const-string v10, "24007683"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    sget-object v9, Lcom/android/internal/telephony/MccTable;->mImsi:Ljava/lang/String;

    const-string v10, "24007685"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 496
    :cond_1
    const-string v9, "MccTable"

    const-string v10, "locale set to nb_no"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const-string v9, "nb"

    const-string v10, "no"

    invoke-static {p0, v9, v10}, Lcom/android/internal/telephony/MccTable;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 499
    :cond_2
    const-string v9, "MccTable"

    const-string v10, "locale set to sv_se"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-string v9, "sv"

    const-string v10, "se"

    invoke-static {p0, v9, v10}, Lcom/android/internal/telephony/MccTable;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 509
    :cond_3
    sget-object v9, Lcom/android/internal/telephony/MccTable;->mIccId:Ljava/lang/String;

    if-eqz v9, :cond_4

    sget-object v9, Lcom/android/internal/telephony/MccTable;->mImsi:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 510
    sget-object v9, Lcom/android/internal/telephony/MccTable;->mImsi:Ljava/lang/String;

    const-string v10, "22201"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v9, Lcom/android/internal/telephony/MccTable;->mIccId:Ljava/lang/String;

    const-string v10, "8952050"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 511
    const-string v9, "MccTable"

    const-string v10, "locale set to es_us ,IUCACELL_MEXICO"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const-string v9, "es"

    const-string v10, "us"

    invoke-static {p0, v9, v10}, Lcom/android/internal/telephony/MccTable;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "es_us_mcc"

    invoke-static {v9, v10}, Landroid/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 518
    .local v2, esUsMcc:Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 519
    const-string v9, ";"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 520
    .local v3, esUsMccArray:[Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 521
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_5

    aget-object v8, v0, v4

    .line 522
    .local v8, mccItemString:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 523
    .local v7, mccItem:I
    if-ne v7, p1, :cond_6

    .line 524
    const-string v5, "es"

    .line 525
    const-string v1, "us"

    .line 533
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #esUsMccArray:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v7           #mccItem:I
    .end local v8           #mccItemString:Ljava/lang/String;
    :cond_5
    const/16 v9, 0xda

    if-ne v9, p1, :cond_a

    sget-boolean v9, Lcom/android/internal/telephony/MccTable;->mHB_defaultlanguage:Z

    if-ne v11, v9, :cond_a

    .line 534
    const/4 v9, 0x5

    sget v10, Lcom/android/internal/telephony/MccTable;->mMnc:I

    if-ne v9, v10, :cond_7

    .line 535
    const-string v9, "MccTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "current mcc 218 mnc is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/internal/telephony/MccTable;->mMnc:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", set language to sr and set country to rs"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-string v9, "sr"

    const-string v10, "rs"

    invoke-static {p0, v9, v10}, Lcom/android/internal/telephony/MccTable;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 521
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v3       #esUsMccArray:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    .restart local v7       #mccItem:I
    .restart local v8       #mccItemString:Ljava/lang/String;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 538
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #esUsMccArray:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v7           #mccItem:I
    .end local v8           #mccItemString:Ljava/lang/String;
    :cond_7
    const/4 v9, 0x3

    sget v10, Lcom/android/internal/telephony/MccTable;->mMnc:I

    if-eq v9, v10, :cond_8

    const/16 v9, 0x5a

    sget v10, Lcom/android/internal/telephony/MccTable;->mMnc:I

    if-ne v9, v10, :cond_9

    .line 539
    :cond_8
    const-string v9, "MccTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "current mnc is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/internal/telephony/MccTable;->mMnc:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", set language to hr and set country to hr"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string v9, "hr"

    const-string v10, "hr"

    invoke-static {p0, v9, v10}, Lcom/android/internal/telephony/MccTable;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 543
    :cond_9
    const-string v9, "MccTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "current mcc 218 mnc is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/internal/telephony/MccTable;->mMnc:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", set language and country to cust config"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_a
    const-string v9, "MccTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "locale set to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-static {p0, v5, v1}, Lcom/android/internal/telephony/MccTable;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .parameter "context"
    .parameter "language"
    .parameter "country"

    .prologue
    .line 373
    const-string v17, "persist.sys.language"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 374
    .local v11, l:Ljava/lang/String;
    const-string v17, "persist.sys.country"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 377
    .local v5, c:Ljava/lang/String;
    const-string v17, "persist.sys.simlanguage"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 380
    .local v14, oldSimLang:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 384
    if-nez p2, :cond_2

    .line 385
    const-string p2, ""

    .line 387
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 389
    const/4 v10, 0x0

    .line 390
    .local v10, isEnableSimLang:Z
    sget-boolean v17, Lcom/android/internal/telephony/MccTable;->mEnableSimLang:Z

    if-eqz v17, :cond_7

    .line 391
    const/4 v9, 0x0

    .line 392
    .local v9, isAuto:Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/MccTable;->SIM_LANGUAGE:Ljava/lang/String;

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 393
    .local v15, simLang:I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v0, v15, :cond_3

    .line 395
    const/4 v10, 0x1

    .line 401
    .end local v9           #isAuto:Z
    .end local v15           #simLang:I
    :cond_3
    :goto_1
    if-eqz v10, :cond_0

    .line 405
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v12

    .line 406
    .local v12, locales:[Ljava/lang/String;
    array-length v2, v12

    .line 407
    .local v2, N:I
    const/4 v4, 0x0

    .line 408
    .local v4, bestMatch:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v2, :cond_4

    .line 410
    aget-object v17, v12, v8

    if-eqz v17, :cond_d

    aget-object v17, v12, v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_d

    aget-object v17, v12, v8

    const/16 v18, 0x0

    const/16 v19, 0x2

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 412
    aget-object v17, v12, v8

    const/16 v18, 0x3

    const/16 v19, 0x5

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 413
    aget-object v4, v12, v8

    .line 420
    :cond_4
    if-eqz v4, :cond_0

    .line 421
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 422
    .local v3, am:Landroid/app/IActivityManager;
    invoke-interface {v3}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 424
    .local v6, config:Landroid/content/res/Configuration;
    new-instance v16, Ljava/util/Locale;

    const/16 v17, 0x0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x3

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v16 .. v18}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    .local v16, simLocale:Ljava/util/Locale;
    const-string v17, "MccTable"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "config.simSetLocale is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-boolean v0, v6, Landroid/content/res/Configuration;->simSetLocale:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " simLocale is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " config.locale is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 429
    move-object/from16 v0, v16

    iput-object v0, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 431
    :cond_5
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v6, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 432
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v6, Landroid/content/res/Configuration;->simSetLocale:Z

    .line 433
    const-string v17, "MccTable"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "config.simSetLocale is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-boolean v0, v6, Landroid/content/res/Configuration;->simSetLocale:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " config.locale is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-string v17, "gsm.sim.locale.waiting"

    const-string v18, "true"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :try_start_1
    const-class v17, Lcom/mediatek/common/telephony/ITelephonyExt;

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/common/telephony/ITelephonyExt;

    .line 440
    .local v13, mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    invoke-interface {v13}, Lcom/mediatek/common/telephony/ITelephonyExt;->isSetLanguageBySIM()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 441
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v6, Landroid/content/res/Configuration;->simSetLocale:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 448
    .end local v13           #mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    :cond_6
    :goto_3
    :try_start_2
    invoke-interface {v3, v6}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 450
    .end local v2           #N:I
    .end local v3           #am:Landroid/app/IActivityManager;
    .end local v4           #bestMatch:Ljava/lang/String;
    .end local v6           #config:Landroid/content/res/Configuration;
    .end local v8           #i:I
    .end local v12           #locales:[Ljava/lang/String;
    .end local v16           #simLocale:Ljava/util/Locale;
    :catch_0
    move-exception v17

    goto/16 :goto_0

    .line 398
    :cond_7
    if-eqz v11, :cond_8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_b

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_b

    :cond_9
    if-eqz v14, :cond_a

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_b

    :cond_a
    const/4 v10, 0x1

    :goto_4
    goto/16 :goto_1

    :cond_b
    const/4 v10, 0x0

    goto :goto_4

    .line 415
    .restart local v2       #N:I
    .restart local v4       #bestMatch:Ljava/lang/String;
    .restart local v8       #i:I
    .restart local v12       #locales:[Ljava/lang/String;
    :cond_c
    if-nez v4, :cond_d

    .line 416
    :try_start_3
    aget-object v4, v12, v8

    .line 408
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 443
    .restart local v3       #am:Landroid/app/IActivityManager;
    .restart local v6       #config:Landroid/content/res/Configuration;
    .restart local v16       #simLocale:Ljava/util/Locale;
    :catch_1
    move-exception v7

    .line 444
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3
.end method

.method private static setTimezoneFromMccIfNeeded(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "mcc"

    .prologue
    .line 462
    const-string v3, "persist.sys.timezone"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, timezone:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 464
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMcc(I)Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, zoneId:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 467
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 469
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 470
    const-string v3, "MccTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timezone set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    .end local v0           #alarm:Landroid/app/AlarmManager;
    .end local v2           #zoneId:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static setWifiCountryCodeFromMcc(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "mcc"

    .prologue
    .line 558
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, country:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 560
    const-string v2, "MccTable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIFI_COUNTRY_CODE set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 563
    .local v1, wM:Landroid/net/wifi/WifiManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;Z)V

    .line 565
    .end local v1           #wM:Landroid/net/wifi/WifiManager;
    :cond_0
    return-void
.end method

.method public static smallestDigitsMccForMnc(I)I
    .locals 2
    .parameter "mcc"

    .prologue
    .line 299
    sget-boolean v1, Lcom/android/internal/telephony/MccTable;->mCustMccTableInitial:Z

    if-nez v1, :cond_0

    .line 300
    invoke-static {}, Lcom/android/internal/telephony/MccTable;->loadCustMccTable()Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/telephony/MccTable;->mCustMccTableUsed:Z

    .line 304
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;

    move-result-object v0

    .line 306
    .local v0, entry:Lcom/android/internal/telephony/MccTable$MccEntry;
    if-nez v0, :cond_1

    .line 307
    const/4 v1, 0x2

    .line 309
    :goto_0
    return v1

    :cond_1
    iget v1, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->smallestDigitsMnc:I

    goto :goto_0
.end method

.method public static updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "mccmnc"

    .prologue
    .line 322
    sget-boolean v4, Lcom/android/internal/telephony/MccTable;->mCustMccTableInitial:Z

    if-nez v4, :cond_0

    .line 323
    invoke-static {}, Lcom/android/internal/telephony/MccTable;->loadCustMccTable()Z

    move-result v4

    sput-boolean v4, Lcom/android/internal/telephony/MccTable;->mCustMccTableUsed:Z

    .line 327
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 331
    const/4 v4, 0x0

    const/4 v5, 0x3

    :try_start_0
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 332
    .local v2, mcc:I
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 339
    .local v3, mnc:I
    sput v3, Lcom/android/internal/telephony/MccTable;->mMnc:I

    .line 342
    const-string v4, "MccTable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMccMncConfiguration: mcc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mnc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    if-eqz v2, :cond_1

    .line 345
    invoke-static {p0, v2}, Lcom/android/internal/telephony/MccTable;->setTimezoneFromMccIfNeeded(Landroid/content/Context;I)V

    .line 346
    invoke-static {p0, v2}, Lcom/android/internal/telephony/MccTable;->setLocaleFromMccIfNeeded(Landroid/content/Context;I)V

    .line 347
    invoke-static {p0, v2}, Lcom/android/internal/telephony/MccTable;->setWifiCountryCodeFromMcc(Landroid/content/Context;I)V

    .line 350
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 351
    .local v0, config:Landroid/content/res/Configuration;
    if-eqz v2, :cond_2

    .line 352
    iput v2, v0, Landroid/content/res/Configuration;->mcc:I

    .line 354
    :cond_2
    if-eqz v3, :cond_3

    .line 355
    iput v3, v0, Landroid/content/res/Configuration;->mnc:I

    .line 357
    :cond_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 362
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v2           #mcc:I
    .end local v3           #mnc:I
    :cond_4
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v1

    .line 334
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v4, "MccTable"

    const-string v5, "Error parsing IMSI"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 358
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #mcc:I
    .restart local v3       #mnc:I
    :catch_1
    move-exception v1

    .line 359
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "MccTable"

    const-string v5, "Can\'t update configuration"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
