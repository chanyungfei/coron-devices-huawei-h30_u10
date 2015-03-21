.class Lcom/baidu/fm/FmMidTest$7;
.super Ljava/lang/Object;
.source "FmMidTest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/fm/FmMidTest;->show_dialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/FmMidTest;


# direct methods
.method constructor <init>(Lcom/baidu/fm/FmMidTest;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/baidu/fm/FmMidTest$7;->this$0:Lcom/baidu/fm/FmMidTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "d"
    .parameter "w"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/baidu/fm/FmMidTest$7;->this$0:Lcom/baidu/fm/FmMidTest;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/fm/FmMidTest;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/baidu/fm/FmMidTest;->access$802(Lcom/baidu/fm/FmMidTest;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 299
    return-void
.end method
