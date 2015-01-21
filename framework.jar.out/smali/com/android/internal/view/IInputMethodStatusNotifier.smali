.class public interface abstract Lcom/android/internal/view/IInputMethodStatusNotifier;
.super Ljava/lang/Object;
.source "IInputMethodStatusNotifier.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethodStatusNotifier$Stub;
    }
.end annotation


# virtual methods
.method public abstract onWindowHidden()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onWindowShown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
