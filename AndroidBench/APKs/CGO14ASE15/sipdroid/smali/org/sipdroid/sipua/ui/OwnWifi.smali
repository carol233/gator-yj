.class public Lorg/sipdroid/sipua/ui/OwnWifi;
.super Landroid/content/BroadcastReceiver;
.source "OwnWifi.java"


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
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    sput-object p1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    .line 36
    :cond_0
    sget v0, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    if-nez v0, :cond_1

    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/sipdroid/sipua/ui/Receiver;->enable_wifi(Z)V

    .line 38
    :cond_1
    return-void
.end method
