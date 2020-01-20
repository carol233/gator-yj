.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$VideoPlayerHandler;
.super Lorg/videolan/vlc/WeakHandler;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoPlayerHandler"
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
    .line 640
    invoke-direct {p0, p1}, Lorg/videolan/vlc/WeakHandler;-><init>(Ljava/lang/Object;)V

    .line 641
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 645
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$VideoPlayerHandler;->getOwner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .line 646
    .local v0, "activity":Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
    if-nez v0, :cond_1

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 651
    :pswitch_0
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$1400(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)V

    goto :goto_0

    .line 654
    :pswitch_1
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$1500(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I

    move-result v1

    .line 655
    .local v1, "pos":I
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$1600(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 656
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$VideoPlayerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 657
    rem-int/lit16 v2, v1, 0x3e8

    rsub-int v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {p0, p1, v2, v3}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$VideoPlayerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 661
    .end local v1    # "pos":I
    :pswitch_2
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$1700(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    goto :goto_0

    .line 664
    :pswitch_3
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$1800(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    goto :goto_0

    .line 649
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
