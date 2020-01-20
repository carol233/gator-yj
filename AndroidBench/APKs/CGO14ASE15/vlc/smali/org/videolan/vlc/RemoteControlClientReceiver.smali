.class public Lorg/videolan/vlc/RemoteControlClientReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RemoteControlClientReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VLC/RemoteControlClientReceiver"

.field private static mHeadsetDownTime:J

.field private static mHeadsetUpTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 36
    sput-wide v0, Lorg/videolan/vlc/RemoteControlClientReceiver;->mHeadsetDownTime:J

    .line 37
    sput-wide v0, Lorg/videolan/vlc/RemoteControlClientReceiver;->mHeadsetUpTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "action":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/LibVLC;->getInstance()Lorg/videolan/vlc/LibVLC;
    :try_end_0
    .catch Lorg/videolan/vlc/LibVlcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 48
    .local v4, "mLibVLC":Lorg/videolan/vlc/LibVLC;
    if-nez v4, :cond_1

    .line 122
    .end local v4    # "mLibVLC":Lorg/videolan/vlc/LibVLC;
    :cond_0
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Lorg/videolan/vlc/LibVlcException;
    goto :goto_0

    .line 51
    .end local v1    # "e":Lorg/videolan/vlc/LibVlcException;
    .restart local v4    # "mLibVLC":Lorg/videolan/vlc/LibVLC;
    :cond_1
    const-string v7, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 53
    const-string v7, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 54
    .local v2, "event":Landroid/view/KeyEvent;
    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/16 v8, 0x4f

    if-eq v7, v8, :cond_2

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/16 v8, 0x55

    if-eq v7, v8, :cond_2

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_0

    .line 62
    :cond_2
    const/4 v3, 0x0

    .line 63
    .local v3, "i":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 117
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/videolan/vlc/RemoteControlClientReceiver;->isOrderedBroadcast()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 118
    invoke-virtual {p0}, Lorg/videolan/vlc/RemoteControlClientReceiver;->abortBroadcast()V

    .line 119
    :cond_4
    if-eqz v3, :cond_0

    .line 120
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 72
    :sswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 73
    .local v5, "time":J
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 76
    :pswitch_0
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-gtz v7, :cond_3

    .line 78
    sput-wide v5, Lorg/videolan/vlc/RemoteControlClientReceiver;->mHeadsetDownTime:J

    goto :goto_1

    .line 82
    :pswitch_1
    sget-wide v7, Lorg/videolan/vlc/RemoteControlClientReceiver;->mHeadsetDownTime:J

    sub-long v7, v5, v7

    const-wide/16 v9, 0x3e8

    cmp-long v7, v7, v9

    if-ltz v7, :cond_5

    .line 83
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "i":Landroid/content/Intent;
    const-string v7, "org.videolan.vlc.remote.Backward"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .restart local v3    # "i":Landroid/content/Intent;
    const-wide/16 v5, 0x0

    .line 96
    :goto_2
    sput-wide v5, Lorg/videolan/vlc/RemoteControlClientReceiver;->mHeadsetUpTime:J

    goto :goto_1

    .line 86
    :cond_5
    sget-wide v7, Lorg/videolan/vlc/RemoteControlClientReceiver;->mHeadsetUpTime:J

    sub-long v7, v5, v7

    const-wide/16 v9, 0x1f4

    cmp-long v7, v7, v9

    if-gtz v7, :cond_6

    .line 87
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "i":Landroid/content/Intent;
    const-string v7, "org.videolan.vlc.remote.Forward"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3    # "i":Landroid/content/Intent;
    goto :goto_2

    .line 91
    :cond_6
    invoke-virtual {v4}, Lorg/videolan/vlc/LibVLC;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 92
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "i":Landroid/content/Intent;
    const-string v7, "org.videolan.vlc.remote.Pause"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3    # "i":Landroid/content/Intent;
    goto :goto_2

    .line 94
    :cond_7
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "i":Landroid/content/Intent;
    const-string v7, "org.videolan.vlc.remote.Play"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3    # "i":Landroid/content/Intent;
    goto :goto_2

    .line 101
    .end local v5    # "time":J
    :sswitch_1
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "i":Landroid/content/Intent;
    const-string v7, "org.videolan.vlc.remote.Play"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .restart local v3    # "i":Landroid/content/Intent;
    goto :goto_1

    .line 104
    :sswitch_2
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "i":Landroid/content/Intent;
    const-string v7, "org.videolan.vlc.remote.Pause"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .restart local v3    # "i":Landroid/content/Intent;
    goto :goto_1

    .line 107
    :sswitch_3
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "i":Landroid/content/Intent;
    const-string v7, "org.videolan.vlc.remote.Stop"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .restart local v3    # "i":Landroid/content/Intent;
    goto :goto_1

    .line 110
    :sswitch_4
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "i":Landroid/content/Intent;
    const-string v7, "org.videolan.vlc.remote.Forward"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .restart local v3    # "i":Landroid/content/Intent;
    goto/16 :goto_1

    .line 113
    :sswitch_5
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "i":Landroid/content/Intent;
    const-string v7, "org.videolan.vlc.remote.Backward"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3    # "i":Landroid/content/Intent;
    goto/16 :goto_1

    .line 63
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_3
        0x57 -> :sswitch_4
        0x58 -> :sswitch_5
        0x7e -> :sswitch_1
        0x7f -> :sswitch_2
    .end sparse-switch

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
