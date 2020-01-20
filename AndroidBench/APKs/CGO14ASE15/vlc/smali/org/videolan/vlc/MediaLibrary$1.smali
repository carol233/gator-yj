.class Lorg/videolan/vlc/MediaLibrary$1;
.super Landroid/os/Handler;
.source "MediaLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/MediaLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/MediaLibrary;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/MediaLibrary;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lorg/videolan/vlc/MediaLibrary$1;->this$0:Lorg/videolan/vlc/MediaLibrary;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msgs"    # Landroid/os/Message;

    .prologue
    .line 341
    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary$1;->this$0:Lorg/videolan/vlc/MediaLibrary;

    invoke-static {v0}, Lorg/videolan/vlc/MediaLibrary;->access$500(Lorg/videolan/vlc/MediaLibrary;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/videolan/vlc/MediaLibrary$1$1;

    invoke-direct {v1, p0}, Lorg/videolan/vlc/MediaLibrary$1$1;-><init>(Lorg/videolan/vlc/MediaLibrary$1;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 350
    return-void
.end method
