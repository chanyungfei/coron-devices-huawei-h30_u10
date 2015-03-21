.class Lcom/baidu/fm/FMRadio$8;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/fm/FMRadio;->createPowerOnFailedDlg(I)Landroid/app/Dialog;
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
    .line 1168
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$8;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$8;->this$0:Lcom/baidu/fm/FMRadio;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/baidu/fm/FMRadio;->removeDialog(I)V

    .line 1171
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$8;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-virtual {v0}, Lcom/baidu/fm/FMRadio;->finish()V

    .line 1172
    return-void
.end method
