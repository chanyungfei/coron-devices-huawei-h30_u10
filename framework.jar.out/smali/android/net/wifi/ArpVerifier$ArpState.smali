.class final enum Landroid/net/wifi/ArpVerifier$ArpState;
.super Ljava/lang/Enum;
.source "ArpVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ArpVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ArpState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wifi/ArpVerifier$ArpState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/ArpVerifier$ArpState;

.field public static final enum CONFIRM_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

.field public static final enum DEAD_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

.field public static final enum DONT_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

.field public static final enum HEART_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

.field public static final enum NORMAL_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 340
    new-instance v0, Landroid/net/wifi/ArpVerifier$ArpState;

    const-string v1, "DONT_CHECK"

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/ArpVerifier$ArpState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/ArpVerifier$ArpState;->DONT_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    .line 341
    new-instance v0, Landroid/net/wifi/ArpVerifier$ArpState;

    const-string v1, "HEART_CHECK"

    invoke-direct {v0, v1, v3}, Landroid/net/wifi/ArpVerifier$ArpState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/ArpVerifier$ArpState;->HEART_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    .line 342
    new-instance v0, Landroid/net/wifi/ArpVerifier$ArpState;

    const-string v1, "NORMAL_CHECK"

    invoke-direct {v0, v1, v4}, Landroid/net/wifi/ArpVerifier$ArpState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/ArpVerifier$ArpState;->NORMAL_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    .line 343
    new-instance v0, Landroid/net/wifi/ArpVerifier$ArpState;

    const-string v1, "CONFIRM_CHECK"

    invoke-direct {v0, v1, v5}, Landroid/net/wifi/ArpVerifier$ArpState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/ArpVerifier$ArpState;->CONFIRM_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    .line 344
    new-instance v0, Landroid/net/wifi/ArpVerifier$ArpState;

    const-string v1, "DEAD_CHECK"

    invoke-direct {v0, v1, v6}, Landroid/net/wifi/ArpVerifier$ArpState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/ArpVerifier$ArpState;->DEAD_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    .line 339
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/net/wifi/ArpVerifier$ArpState;

    sget-object v1, Landroid/net/wifi/ArpVerifier$ArpState;->DONT_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/wifi/ArpVerifier$ArpState;->HEART_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/wifi/ArpVerifier$ArpState;->NORMAL_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/wifi/ArpVerifier$ArpState;->CONFIRM_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    aput-object v1, v0, v5

    sget-object v1, Landroid/net/wifi/ArpVerifier$ArpState;->DEAD_CHECK:Landroid/net/wifi/ArpVerifier$ArpState;

    aput-object v1, v0, v6

    sput-object v0, Landroid/net/wifi/ArpVerifier$ArpState;->$VALUES:[Landroid/net/wifi/ArpVerifier$ArpState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 339
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/ArpVerifier$ArpState;
    .locals 1
    .parameter "name"

    .prologue
    .line 339
    const-class v0, Landroid/net/wifi/ArpVerifier$ArpState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ArpVerifier$ArpState;

    return-object v0
.end method

.method public static values()[Landroid/net/wifi/ArpVerifier$ArpState;
    .locals 1

    .prologue
    .line 339
    sget-object v0, Landroid/net/wifi/ArpVerifier$ArpState;->$VALUES:[Landroid/net/wifi/ArpVerifier$ArpState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/wifi/ArpVerifier$ArpState;

    return-object v0
.end method
