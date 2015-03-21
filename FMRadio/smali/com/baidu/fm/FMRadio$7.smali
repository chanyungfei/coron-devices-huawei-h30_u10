.class Lcom/baidu/fm/FMRadio$7;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/fm/FMRadio;->createCmdFailedDlg(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/FMRadio;


# direct methods
.method constructor <init>(Lcom/baidu/fm/FMRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 1150
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$7;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$7;->this$0:Lcom/baidu/fm/FMRadio;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/baidu/fm/FMRadio;->removeDialog(I)V

    .line 1153
    return-void
.end method
