.class Lorg/videolan/vlc/MediaLibrary$1$1;
.super Ljava/lang/Object;
.source "MediaLibrary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/MediaLibrary$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/videolan/vlc/MediaLibrary$1;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/MediaLibrary$1;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lorg/videolan/vlc/MediaLibrary$1$1;->this$1:Lorg/videolan/vlc/MediaLibrary$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary$1$1;->this$1:Lorg/videolan/vlc/MediaLibrary$1;

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$1;->this$0:Lorg/videolan/vlc/MediaLibrary;

    invoke-static {v0}, Lorg/videolan/vlc/MediaLibrary;->access$600(Lorg/videolan/vlc/MediaLibrary;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary$1$1;->this$1:Lorg/videolan/vlc/MediaLibrary$1;

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$1;->this$0:Lorg/videolan/vlc/MediaLibrary;

    iget-object v1, p0, Lorg/videolan/vlc/MediaLibrary$1$1;->this$1:Lorg/videolan/vlc/MediaLibrary$1;

    iget-object v1, v1, Lorg/videolan/vlc/MediaLibrary$1;->this$0:Lorg/videolan/vlc/MediaLibrary;

    invoke-static {v1}, Lorg/videolan/vlc/MediaLibrary;->access$600(Lorg/videolan/vlc/MediaLibrary;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/MediaLibrary;->loadMediaItems(Landroid/content/Context;)V

    .line 348
    :goto_0
    return-void

    .line 347
    :cond_0
    const-string v0, "VLC/MediaLibrary"

    const-string v1, "Context lost in a black hole"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
