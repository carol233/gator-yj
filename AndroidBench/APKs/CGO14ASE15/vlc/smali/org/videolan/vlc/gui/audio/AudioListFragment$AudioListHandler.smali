.class Lorg/videolan/vlc/gui/audio/AudioListFragment$AudioListHandler;
.super Lorg/videolan/vlc/WeakHandler;
.source "AudioListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/audio/AudioListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioListHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/vlc/WeakHandler",
        "<",
        "Lorg/videolan/vlc/gui/audio/AudioListFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/videolan/vlc/gui/audio/AudioListFragment;)V
    .locals 0
    .param p1, "owner"    # Lorg/videolan/vlc/gui/audio/AudioListFragment;

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lorg/videolan/vlc/WeakHandler;-><init>(Ljava/lang/Object;)V

    .line 202
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 206
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioListFragment$AudioListHandler;->getOwner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/audio/AudioListFragment;

    .line 207
    .local v0, "fragment":Lorg/videolan/vlc/gui/audio/AudioListFragment;
    if-nez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 209
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 211
    :pswitch_0
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioListFragment;->access$100(Lorg/videolan/vlc/gui/audio/AudioListFragment;)V

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
