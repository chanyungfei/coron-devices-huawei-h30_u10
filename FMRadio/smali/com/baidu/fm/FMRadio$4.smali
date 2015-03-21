.class Lcom/baidu/fm/FMRadio$4;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/FMRadio;
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
    .line 730
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$4;->this$0:Lcom/baidu/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 733
    if-eqz p1, :cond_0

    .line 734
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 736
    :cond_0
    return-void
.end method
