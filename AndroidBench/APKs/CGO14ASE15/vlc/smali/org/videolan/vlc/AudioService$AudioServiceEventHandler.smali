.class Lorg/videolan/vlc/AudioService$AudioServiceEventHandler;
.super Lorg/videolan/vlc/WeakHandler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioServiceEventHandler"
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
    .line 358
    invoke-direct {p0, p1}, Lorg/videolan/vlc/WeakHandler;-><init>(Ljava/lang/Object;)V

    .line 359
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    .line 363
    invoke-virtual {p0}, Lorg/videolan/vlc/AudioService$AudioServiceEventHandler;->getOwner()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/videolan/vlc/AudioService;

    .line 364
    .local v6, "service":Lorg/videolan/vlc/AudioService;
    if-nez v6, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "event"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 429
    const-string v7, "VLC/AudioService"

    const-string v8, "Event not handled"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 368
    :sswitch_0
    const-string v7, "VLC/AudioService"

    const-string v8, "MediaPlayerPlaying"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {v6}, Lorg/videolan/vlc/AudioService;->access$100(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/Media;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 372
    invoke-static {v6}, Lorg/videolan/vlc/AudioService;->access$100(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/Media;

    move-result-object v7

    invoke-virtual {v7}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v3

    .line 373
    .local v3, "location":Ljava/lang/String;
    invoke-static {v6}, Lorg/videolan/vlc/AudioService;->access$000(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/LibVLC;

    move-result-object v7

    invoke-virtual {v7}, Lorg/videolan/vlc/LibVLC;->getLength()J

    move-result-wide v1

    .line 374
    .local v1, "length":J
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lorg/videolan/vlc/DatabaseManager;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/DatabaseManager;

    move-result-object v0

    .line 376
    .local v0, "dbManager":Lorg/videolan/vlc/DatabaseManager;
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0, v7, v3}, Lorg/videolan/vlc/DatabaseManager;->getMedia(Landroid/content/Context;Ljava/lang/String;)Lorg/videolan/vlc/Media;

    move-result-object v4

    .line 385
    .local v4, "m":Lorg/videolan/vlc/Media;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/videolan/vlc/Media;->getLength()J

    move-result-wide v7

    cmp-long v7, v7, v10

    if-nez v7, :cond_2

    cmp-long v7, v1, v10

    if-lez v7, :cond_2

    .line 386
    const-string v7, "VLC/AudioService"

    const-string v8, "Updating audio file length"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    sget-object v7, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_LENGTH:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v3, v7, v8}, Lorg/videolan/vlc/DatabaseManager;->updateMedia(Ljava/lang/String;Lorg/videolan/vlc/DatabaseManager$mediaColumn;Ljava/lang/Object;)V

    .line 391
    :cond_2
    invoke-static {v6, v9}, Lorg/videolan/vlc/AudioService;->access$900(Lorg/videolan/vlc/AudioService;Z)V

    .line 392
    const/4 v7, 0x3

    invoke-static {v6, v7}, Lorg/videolan/vlc/AudioService;->access$1000(Lorg/videolan/vlc/AudioService;I)V

    .line 393
    invoke-static {v6}, Lorg/videolan/vlc/AudioService;->access$1100(Lorg/videolan/vlc/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-nez v7, :cond_0

    .line 394
    invoke-static {v6}, Lorg/videolan/vlc/AudioService;->access$1100(Lorg/videolan/vlc/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 397
    .end local v0    # "dbManager":Lorg/videolan/vlc/DatabaseManager;
    .end local v1    # "length":J
    .end local v3    # "location":Ljava/lang/String;
    .end local v4    # "m":Lorg/videolan/vlc/Media;
    :sswitch_1
    const-string v7, "VLC/AudioService"

    const-string v8, "MediaPlayerPaused"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-static {v6}, Lorg/videolan/vlc/AudioService;->access$1200(Lorg/videolan/vlc/AudioService;)V

    .line 400
    invoke-static {v6}, Lorg/videolan/vlc/AudioService;->access$1300(Lorg/videolan/vlc/AudioService;)V

    .line 401
    const/4 v7, 0x2

    invoke-static {v6, v7}, Lorg/videolan/vlc/AudioService;->access$1000(Lorg/videolan/vlc/AudioService;I)V

    .line 402
    invoke-static {v6}, Lorg/videolan/vlc/AudioService;->access$1100(Lorg/videolan/vlc/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 403
    invoke-static {v6}, Lorg/videolan/vlc/AudioService;->access$1100(Lorg/videolan/vlc/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 406
    :sswitch_2
    const-string v7, "VLC/AudioService"

    const-string v8, "MediaPlayerStopped"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-static {v6}, Lorg/videolan/vlc/AudioService;->access$1200(Lorg/videolan/vlc/AudioService;)V

    .line 408
    invoke-static {v6, v9}, Lorg/videolan/vlc/AudioService;->access$1000(Lorg/videolan/vlc/AudioService;I)V

    .line 409
    invoke-static {v6}, Lorg/videolan/vlc/AudioService;->access$1100(Lorg/videolan/vlc/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 410
    invoke-static {v6}, Lorg/videolan/vlc/AudioService;->access$1100(Lorg/videolan/vlc/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 413
    :sswitch_3
    const-string v7, "VLC/AudioService"

    const-string v8, "MediaPlayerEndReached"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-static {v6}, Lorg/videolan/vlc/AudioService;->access$1200(Lorg/videolan/vlc/AudioService;)V

    .line 415
    invoke-static {v6}, Lorg/videolan/vlc/AudioService;->access$600(Lorg/videolan/vlc/AudioService;)V

    .line 416
    invoke-static {v6}, Lorg/videolan/vlc/AudioService;->access$1100(Lorg/videolan/vlc/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 417
    invoke-static {v6}, Lorg/videolan/vlc/AudioService;->access$1100(Lorg/videolan/vlc/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 420
    :sswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "data"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_0

    .line 421
    invoke-static {v6}, Lorg/videolan/vlc/AudioService;->access$1400(Lorg/videolan/vlc/AudioService;)V

    goto/16 :goto_0

    .line 425
    :sswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "data"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    .line 426
    .local v5, "pos":F
    invoke-static {v6, v6, v5}, Lorg/videolan/vlc/AudioService;->access$1500(Lorg/videolan/vlc/AudioService;Landroid/content/Context;F)V

    goto/16 :goto_0

    .line 366
    nop

    :sswitch_data_0
    .sparse-switch
        0x104 -> :sswitch_0
        0x105 -> :sswitch_1
        0x106 -> :sswitch_2
        0x109 -> :sswitch_3
        0x10c -> :sswitch_5
        0x112 -> :sswitch_4
    .end sparse-switch
.end method
