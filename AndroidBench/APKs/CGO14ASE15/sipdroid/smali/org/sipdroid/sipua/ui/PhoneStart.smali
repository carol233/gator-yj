.class public Lorg/sipdroid/sipua/ui/PhoneStart;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.sipdroid.START_SIPDROID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-static {p1}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sipdroid/sipua/SipdroidEngine;->registerMore()V

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.sipdroid.STOP_SIPDROID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p1, v2}, Lorg/sipdroid/sipua/ui/Sipdroid;->on(Landroid/content/Context;Z)V

    .line 42
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/sipdroid/sipua/ui/Receiver;->pos(Z)V

    .line 43
    invoke-static {p1}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sipdroid/sipua/SipdroidEngine;->halt()V

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mSipdroidEngine:Lorg/sipdroid/sipua/SipdroidEngine;

    .line 45
    invoke-static {v2}, Lorg/sipdroid/sipua/ui/Receiver;->reRegister(I)V

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/sipdroid/sipua/ui/RegisterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method
