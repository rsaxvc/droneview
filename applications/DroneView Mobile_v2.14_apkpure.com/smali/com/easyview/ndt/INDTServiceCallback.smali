.class public interface abstract Lcom/easyview/ndt/INDTServiceCallback;
.super Ljava/lang/Object;
.source "INDTServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easyview/ndt/INDTServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract handlerCommEvent(Ljava/lang/String;IIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
