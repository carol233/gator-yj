.class public Lorg/sipdroid/sipua/ui/VideoCameraNew;
.super Ljava/lang/Object;
.source "VideoCameraNew.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static unlock(Landroid/hardware/Camera;)V
    .locals 0
    .param p0, "c"    # Landroid/hardware/Camera;

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/hardware/Camera;->unlock()V

    .line 29
    return-void
.end method
