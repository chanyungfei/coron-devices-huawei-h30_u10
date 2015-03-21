.class Lcom/baidu/fm/FmMidTest$4;
.super Ljava/lang/Object;
.source "FmMidTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/FmMidTest;
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
    .line 202
    iput-object p1, p0, Lcom/baidu/fm/FmMidTest$4;->this$0:Lcom/baidu/fm/FmMidTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/baidu/fm/FmMidTest$4;->this$0:Lcom/baidu/fm/FmMidTest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/fm/FmMidTest;->destroy(I)V

    .line 205
    return-void
.end method
