.class Lcom/baidu/fm/StationListShow$12;
.super Ljava/lang/Object;
.source "StationListShow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/StationListShow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/StationListShow;


# direct methods
.method constructor <init>(Lcom/baidu/fm/StationListShow;)V
    .locals 0
    .parameter

    .prologue
    .line 763
    iput-object p1, p0, Lcom/baidu/fm/StationListShow$12;->this$0:Lcom/baidu/fm/StationListShow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 765
    iget-object v0, p0, Lcom/baidu/fm/StationListShow$12;->this$0:Lcom/baidu/fm/StationListShow;

    const/4 v1, -0x1

    #setter for: Lcom/baidu/fm/StationListShow;->mCurrentStationIndex:I
    invoke-static {v0, v1}, Lcom/baidu/fm/StationListShow;->access$302(Lcom/baidu/fm/StationListShow;I)I

    .line 766
    return-void
.end method
