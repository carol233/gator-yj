.class public Lorg/sipdroid/sipua/ui/RegisterService;
.super Landroid/app/Service;
.source "RegisterService.java"


# instance fields
.field m_caller:Lorg/sipdroid/sipua/ui/Caller;

.field m_receiver:Lorg/sipdroid/sipua/ui/Receiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 48
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    sput-object p0, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    .line 49
    :cond_0
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/RegisterService;->m_receiver:Lorg/sipdroid/sipua/ui/Receiver;

    if-nez v1, :cond_1

    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v1, "vpn.connectivity"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    new-instance v1, Lorg/sipdroid/sipua/ui/Receiver;

    invoke-direct {v1}, Lorg/sipdroid/sipua/ui/Receiver;-><init>()V

    iput-object v1, p0, Lorg/sipdroid/sipua/ui/RegisterService;->m_receiver:Lorg/sipdroid/sipua/ui/Receiver;

    invoke-virtual {p0, v1, v0}, Lorg/sipdroid/sipua/ui/RegisterService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .end local v0    # "intentfilter":Landroid/content/IntentFilter;
    :cond_1
    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sipdroid/sipua/SipdroidEngine;->isRegistered()Z

    .line 67
    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->restoreSettings()V

    .line 68
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 38
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/RegisterService;->m_receiver:Lorg/sipdroid/sipua/ui/Receiver;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/RegisterService;->m_receiver:Lorg/sipdroid/sipua/ui/Receiver;

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/ui/RegisterService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/sipdroid/sipua/ui/RegisterService;->m_receiver:Lorg/sipdroid/sipua/ui/Receiver;

    .line 42
    :cond_0
    const/4 v0, 0x0

    const-class v1, Lorg/sipdroid/sipua/ui/OneShotAlarm2;

    invoke-static {v0, v1}, Lorg/sipdroid/sipua/ui/Receiver;->alarm(ILjava/lang/Class;)V

    .line 43
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "id"    # I

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 73
    const/16 v0, 0x258

    const-class v1, Lorg/sipdroid/sipua/ui/OneShotAlarm2;

    invoke-static {v0, v1}, Lorg/sipdroid/sipua/ui/Receiver;->alarm(ILjava/lang/Class;)V

    .line 74
    return-void
.end method
