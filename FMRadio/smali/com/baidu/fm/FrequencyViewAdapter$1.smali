.class Lcom/baidu/fm/FrequencyViewAdapter$1;
.super Ljava/lang/Object;
.source "FrequencyViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/FrequencyViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/FrequencyViewAdapter;


# direct methods
.method constructor <init>(Lcom/baidu/fm/FrequencyViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/baidu/fm/FrequencyViewAdapter$1;->this$0:Lcom/baidu/fm/FrequencyViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method
