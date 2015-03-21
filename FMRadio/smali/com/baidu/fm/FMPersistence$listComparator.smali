.class Lcom/baidu/fm/FMPersistence$listComparator;
.super Ljava/lang/Object;
.source "FMPersistence.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/FMPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "listComparator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/FMPersistence;


# direct methods
.method private constructor <init>(Lcom/baidu/fm/FMPersistence;)V
    .locals 0
    .parameter

    .prologue
    .line 646
    iput-object p1, p0, Lcom/baidu/fm/FMPersistence$listComparator;->this$0:Lcom/baidu/fm/FMPersistence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/fm/FMPersistence;Lcom/baidu/fm/FMPersistence$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 646
    invoke-direct {p0, p1}, Lcom/baidu/fm/FMPersistence$listComparator;-><init>(Lcom/baidu/fm/FMPersistence;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 649
    move-object v0, p1

    check-cast v0, Lcom/baidu/fm/FMStationInfo;

    .local v0, s1:Lcom/baidu/fm/FMStationInfo;
    move-object v1, p2

    .line 650
    check-cast v1, Lcom/baidu/fm/FMStationInfo;

    .line 654
    .local v1, s2:Lcom/baidu/fm/FMStationInfo;
    invoke-virtual {v0}, Lcom/baidu/fm/FMStationInfo;->getStationFreqInt()I

    move-result v2

    invoke-virtual {v1}, Lcom/baidu/fm/FMStationInfo;->getStationFreqInt()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 656
    const/4 v2, 0x1

    .line 664
    :goto_0
    return v2

    .line 658
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/fm/FMStationInfo;->getStationFreqInt()I

    move-result v2

    invoke-virtual {v1}, Lcom/baidu/fm/FMStationInfo;->getStationFreqInt()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 660
    const/4 v2, -0x1

    goto :goto_0

    .line 664
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
