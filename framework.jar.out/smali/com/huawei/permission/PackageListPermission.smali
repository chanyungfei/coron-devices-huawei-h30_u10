.class public Lcom/huawei/permission/PackageListPermission;
.super Ljava/lang/Object;
.source "PackageListPermission.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageListPermission"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/huawei/permission/PackageListPermission;->mContext:Landroid/content/Context;

    .line 14
    const-string v0, "PackageListPermission"

    const-string v1, "PackageListPermission"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void
.end method


# virtual methods
.method public isGetPackageListBlocked(I)Z
    .locals 5
    .parameter "uid"

    .prologue
    const/4 v1, 0x0

    .line 19
    iget-object v2, p0, Lcom/huawei/permission/PackageListPermission;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/huawei/permission/StubController;->checkPrecondition(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 20
    const-string v2, "PackageListPermission"

    const-string v3, "PackageListPermission checkPrecondition false!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    :goto_0
    return v1

    .line 24
    :cond_1
    const/high16 v2, 0x10

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/huawei/permission/StubController;->holdForGetPermissionSelection(IILjava/lang/String;)I

    move-result v0

    .line 25
    .local v0, selectionResult:I
    if-nez v0, :cond_2

    .line 26
    const-string v2, "PackageListPermission"

    const-string v3, "PackageListPermission holdForGetPermissionSelection error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 30
    :cond_2
    const-string v2, "PackageListPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackageListPermission selectionResult is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
