.class Lorg/videolan/vlc/AudioService$AudioServiceHandler;
.super Lorg/videolan/vlc/WeakHandler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioServiceHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/vlc/WeakHandler",
        "<",
        "Lorg/videolan/vlc/AudioService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/videolan/vlc/AudioService;)V
    .locals 0
    .param p1, "fragment"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lorg/videolan/vlc/WeakHandler;-><init>(Ljava/lang/Object;)V

    .line 468
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 472
    invoke-virtual {p0}, Lorg/videolan/vlc/AudioService$AudioServiceHandler;->getOwner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/AudioService;

    .line 473
    .local v0, "service":Lorg/videolan/vlc/AudioService;
    if-nez v0, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 477
    :pswitch_0
    invoke-static {v0}, Lorg/videolan/vlc/AudioService;->access$1600(Lorg/videolan/vlc/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 478
    invoke-virtual {p0, v3}, Lorg/videolan/vlc/AudioService$AudioServiceHandler;->removeMessages(I)V

    .line 479
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/videolan/vlc/AudioService;->access$1700(Lorg/videolan/vlc/AudioService;Ljava/lang/Boolean;)V

    .line 480
    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v3, v1, v2}, Lorg/videolan/vlc/AudioService$AudioServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 475
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
