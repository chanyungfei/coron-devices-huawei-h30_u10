.class Lcom/baidu/fm/widget/ActionCustomView$1;
.super Ljava/lang/Object;
.source "ActionCustomView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/fm/widget/ActionCustomView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/widget/ActionCustomView;


# direct methods
.method constructor <init>(Lcom/baidu/fm/widget/ActionCustomView;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/baidu/fm/widget/ActionCustomView$1;->this$0:Lcom/baidu/fm/widget/ActionCustomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/baidu/fm/widget/ActionCustomView$1;->this$0:Lcom/baidu/fm/widget/ActionCustomView;

    #getter for: Lcom/baidu/fm/widget/ActionCustomView;->mListener:Lcom/baidu/fm/widget/ActionCustomView$Listener;
    invoke-static {v0}, Lcom/baidu/fm/widget/ActionCustomView;->access$000(Lcom/baidu/fm/widget/ActionCustomView;)Lcom/baidu/fm/widget/ActionCustomView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/baidu/fm/widget/ActionCustomView$1;->this$0:Lcom/baidu/fm/widget/ActionCustomView;

    #getter for: Lcom/baidu/fm/widget/ActionCustomView;->mListener:Lcom/baidu/fm/widget/ActionCustomView$Listener;
    invoke-static {v0}, Lcom/baidu/fm/widget/ActionCustomView;->access$000(Lcom/baidu/fm/widget/ActionCustomView;)Lcom/baidu/fm/widget/ActionCustomView$Listener;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/fm/widget/ActionCustomView$1;->this$0:Lcom/baidu/fm/widget/ActionCustomView;

    #getter for: Lcom/baidu/fm/widget/ActionCustomView;->mIsAllSelected:Z
    invoke-static {v0}, Lcom/baidu/fm/widget/ActionCustomView;->access$100(Lcom/baidu/fm/widget/ActionCustomView;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/baidu/fm/widget/ActionCustomView$Listener;->onSelectRequest(Z)V

    .line 65
    :cond_0
    return-void

    .line 63
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
