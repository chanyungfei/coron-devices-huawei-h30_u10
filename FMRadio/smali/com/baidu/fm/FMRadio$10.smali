.class Lcom/baidu/fm/FMRadio$10;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/fm/FMRadio;->createCloseTimeDialog(I)Landroid/app/Dialog;
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
    .line 1211
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$10;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$10;->this$0:Lcom/baidu/fm/FMRadio;

    #setter for: Lcom/baidu/fm/FMRadio;->mAutoCloseTimeIndex:I
    invoke-static {v0, p2}, Lcom/baidu/fm/FMRadio;->access$1202(Lcom/baidu/fm/FMRadio;I)I

    .line 1214
    return-void
.end method
