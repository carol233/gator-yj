.class public Lorg/videolan/vlc/PhoneStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStateReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    const-string v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "state":Ljava/lang/String;
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    :cond_0
    invoke-static {}, Lorg/videolan/vlc/LibVLC;->getExistingInstance()Lorg/videolan/vlc/LibVLC;

    move-result-object v0

    .line 38
    .local v0, "libVLC":Lorg/videolan/vlc/LibVLC;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/videolan/vlc/LibVLC;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    invoke-virtual {v0}, Lorg/videolan/vlc/LibVLC;->pause()V

    .line 41
    .end local v0    # "libVLC":Lorg/videolan/vlc/LibVLC;
    :cond_1
    return-void
.end method
