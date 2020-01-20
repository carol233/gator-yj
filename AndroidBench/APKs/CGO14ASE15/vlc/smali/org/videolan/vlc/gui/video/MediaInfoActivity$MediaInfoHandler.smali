.class Lorg/videolan/vlc/gui/video/MediaInfoActivity$MediaInfoHandler;
.super Lorg/videolan/vlc/WeakHandler;
.source "MediaInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/video/MediaInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaInfoHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/vlc/WeakHandler",
        "<",
        "Lorg/videolan/vlc/gui/video/MediaInfoActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/videolan/vlc/gui/video/MediaInfoActivity;)V
    .locals 0
    .param p1, "owner"    # Lorg/videolan/vlc/gui/video/MediaInfoActivity;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lorg/videolan/vlc/WeakHandler;-><init>(Ljava/lang/Object;)V

    .line 153
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/MediaInfoActivity$MediaInfoHandler;->getOwner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/video/MediaInfoActivity;

    .line 158
    .local v0, "activity":Lorg/videolan/vlc/gui/video/MediaInfoActivity;
    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 160
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 162
    :pswitch_0
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->access$400(Lorg/videolan/vlc/gui/video/MediaInfoActivity;)V

    goto :goto_0

    .line 165
    :pswitch_1
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->access$500(Lorg/videolan/vlc/gui/video/MediaInfoActivity;)V

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
