.class Lcom/baidu/fm/FMRadio$TuneRadioTask$1;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/fm/FMRadio$TuneRadioTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/fm/FMRadio$TuneRadioTask;


# direct methods
.method constructor <init>(Lcom/baidu/fm/FMRadio$TuneRadioTask;)V
    .locals 0
    .parameter

    .prologue
    .line 3023
    iput-object p1, p0, Lcom/baidu/fm/FMRadio$TuneRadioTask$1;->this$1:Lcom/baidu/fm/FMRadio$TuneRadioTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3025
    iget-object v0, p0, Lcom/baidu/fm/FMRadio$TuneRadioTask$1;->this$1:Lcom/baidu/fm/FMRadio$TuneRadioTask;

    iget-object v0, v0, Lcom/baidu/fm/FMRadio$TuneRadioTask;->this$0:Lcom/baidu/fm/FMRadio;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/baidu/fm/FMRadio;->showDialog(I)V

    .line 3026
    return-void
.end method
