.class public abstract Lcom/baidu/fm/freqwheel/adapters/AbstractWheelAdapter;
.super Ljava/lang/Object;
.source "AbstractWheelAdapter.java"

# interfaces
.implements Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;


# instance fields
.field private datasetObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method protected notifyDataChangedEvent()V
    .locals 3

    .prologue
    .line 57
    iget-object v2, p0, Lcom/baidu/fm/freqwheel/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/baidu/fm/freqwheel/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/DataSetObserver;

    .line 59
    .local v1, observer:Landroid/database/DataSetObserver;
    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_0

    .line 62
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Landroid/database/DataSetObserver;
    :cond_0
    return-void
.end method

.method protected notifyDataInvalidatedEvent()V
    .locals 3

    .prologue
    .line 68
    iget-object v2, p0, Lcom/baidu/fm/freqwheel/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/baidu/fm/freqwheel/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/DataSetObserver;

    .line 70
    .local v1, observer:Landroid/database/DataSetObserver;
    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onInvalidated()V

    goto :goto_0

    .line 73
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Landroid/database/DataSetObserver;
    :cond_0
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/fm/freqwheel/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    return-void
.end method
