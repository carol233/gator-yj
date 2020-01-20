.class Lorg/videolan/vlc/gui/video/VideoGridFragment$VideoListHandler;
.super Lorg/videolan/vlc/WeakHandler;
.source "VideoGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/video/VideoGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoListHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/vlc/WeakHandler",
        "<",
        "Lorg/videolan/vlc/gui/video/VideoGridFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/videolan/vlc/gui/video/VideoGridFragment;)V
    .locals 0
    .param p1, "owner"    # Lorg/videolan/vlc/gui/video/VideoGridFragment;

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lorg/videolan/vlc/WeakHandler;-><init>(Ljava/lang/Object;)V

    .line 345
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 349
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment$VideoListHandler;->getOwner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/video/VideoGridFragment;

    .line 350
    .local v0, "fragment":Lorg/videolan/vlc/gui/video/VideoGridFragment;
    if-nez v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 352
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 354
    :sswitch_0
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->access$200(Lorg/videolan/vlc/gui/video/VideoGridFragment;)V

    goto :goto_0

    .line 358
    :sswitch_1
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->access$300(Lorg/videolan/vlc/gui/video/VideoGridFragment;)Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->isAnimationDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->access$400(Lorg/videolan/vlc/gui/video/VideoGridFragment;)V

    goto :goto_0

    .line 361
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lorg/videolan/vlc/gui/video/VideoGridFragment$VideoListHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 352
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method
