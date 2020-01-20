.class public interface abstract Lorg/videolan/vlc/interfaces/IAudioServiceCallback;
.super Ljava/lang/Object;
.source "IAudioServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/interfaces/IAudioServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract update()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
