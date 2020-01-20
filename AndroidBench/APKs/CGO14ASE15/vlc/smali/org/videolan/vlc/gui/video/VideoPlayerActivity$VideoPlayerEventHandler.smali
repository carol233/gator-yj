.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$VideoPlayerEventHandler;
.super Lorg/videolan/vlc/WeakHandler;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoPlayerEventHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/vlc/WeakHandler",
        "<",
        "Lorg/videolan/vlc/gui/video/VideoPlayerActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0
    .param p1, "owner"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 596
    invoke-direct {p0, p1}, Lorg/videolan/vlc/WeakHandler;-><init>(Ljava/lang/Object;)V

    .line 597
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 601
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$VideoPlayerEventHandler;->getOwner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .line 602
    .local v0, "activity":Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
    if-nez v0, :cond_0

    .line 630
    :goto_0
    return-void

    .line 604
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "event"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 626
    const-string v1, "VLC/VideoPlayerActivity"

    const-string v2, "Event not handled (0x%x)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "event"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :goto_1
    :sswitch_0
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$1300(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    goto :goto_0

    .line 606
    :sswitch_1
    const-string v1, "VLC/VideoPlayerActivity"

    const-string v2, "MediaPlayerPlaying"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$1000(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    goto :goto_1

    .line 610
    :sswitch_2
    const-string v1, "VLC/VideoPlayerActivity"

    const-string v2, "MediaPlayerPaused"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 613
    :sswitch_3
    const-string v1, "VLC/VideoPlayerActivity"

    const-string v2, "MediaPlayerStopped"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 616
    :sswitch_4
    const-string v1, "VLC/VideoPlayerActivity"

    const-string v2, "MediaPlayerEndReached"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$1100(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    goto :goto_1

    .line 620
    :sswitch_5
    invoke-static {v0, p1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$1200(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Landroid/os/Message;)V

    goto :goto_1

    .line 604
    nop

    :sswitch_data_0
    .sparse-switch
        0x104 -> :sswitch_1
        0x105 -> :sswitch_2
        0x106 -> :sswitch_3
        0x109 -> :sswitch_4
        0x10c -> :sswitch_0
        0x112 -> :sswitch_5
    .end sparse-switch
.end method
