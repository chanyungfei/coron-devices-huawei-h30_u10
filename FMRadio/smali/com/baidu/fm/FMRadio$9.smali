.class Lcom/baidu/fm/FMRadio$9;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/fm/FMRadio;->createNoAntennaDlg(I)Landroid/app/Dialog;
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
    .line 1188
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$9;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$9;->this$0:Lcom/baidu/fm/FMRadio;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/fm/FMRadio;->mIsShowNoAntenna:Z
    invoke-static {v0, v1}, Lcom/baidu/fm/FMRadio;->access$902(Lcom/baidu/fm/FMRadio;Z)Z

    .line 1191
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$9;->this$0:Lcom/baidu/fm/FMRadio;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/baidu/fm/FMRadio;->removeDialog(I)V

    .line 1192
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$9;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->isAntennaAvailable()Z
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$1000(Lcom/baidu/fm/FMRadio;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$9;->this$0:Lcom/baidu/fm/FMRadio;

    #calls: Lcom/baidu/fm/FMRadio;->enableRadio()V
    invoke-static {v0}, Lcom/baidu/fm/FMRadio;->access$1100(Lcom/baidu/fm/FMRadio;)V

    .line 1198
    :goto_0
    return-void

    .line 1196
    :cond_0
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$9;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-virtual {v0}, Lcom/baidu/fm/FMRadio;->finish()V

    goto :goto_0
.end method
