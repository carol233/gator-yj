.class Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$AudioBrowserHandler;
.super Lorg/videolan/vlc/WeakHandler;
.source "AudioBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioBrowserHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/vlc/WeakHandler",
        "<",
        "Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V
    .locals 0
    .param p1, "owner"    # Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lorg/videolan/vlc/WeakHandler;-><init>(Ljava/lang/Object;)V

    .line 410
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 414
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$AudioBrowserHandler;->getOwner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    .line 415
    .local v0, "fragment":Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;
    if-nez v0, :cond_0

    .line 422
    :goto_0
    return-void

    .line 417
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 419
    :pswitch_0
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$400(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V

    goto :goto_0

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
