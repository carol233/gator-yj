.class public Lorg/sipdroid/sipua/ui/VideoCameraNew2;
.super Ljava/lang/Object;
.source "VideoCameraNew2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static reconnect(Landroid/hardware/Camera;)V
    .locals 1
    .param p0, "c"    # Landroid/hardware/Camera;

    .prologue
    .line 31
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->reconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    goto :goto_0
.end method
