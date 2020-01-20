.class Lorg/videolan/vlc/AudioServiceController$2;
.super Ljava/lang/Object;
.source "AudioServiceController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/AudioServiceController;->bindAudioService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/AudioServiceController;

.field final synthetic val$enableHS:Z


# direct methods
.method constructor <init>(Lorg/videolan/vlc/AudioServiceController;Z)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lorg/videolan/vlc/AudioServiceController$2;->this$0:Lorg/videolan/vlc/AudioServiceController;

    iput-boolean p2, p0, Lorg/videolan/vlc/AudioServiceController$2;->val$enableHS:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 98
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->access$200()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 100
    :cond_0
    const-string v1, "VLC/AudioServiceContoller"

    const-string v2, "Service Connected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController$2;->this$0:Lorg/videolan/vlc/AudioServiceController;

    invoke-static {p2}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/videolan/vlc/interfaces/IAudioService;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/videolan/vlc/AudioServiceController;->access$102(Lorg/videolan/vlc/AudioServiceController;Lorg/videolan/vlc/interfaces/IAudioService;)Lorg/videolan/vlc/interfaces/IAudioService;

    .line 105
    :try_start_0
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController$2;->this$0:Lorg/videolan/vlc/AudioServiceController;

    invoke-static {v1}, Lorg/videolan/vlc/AudioServiceController;->access$100(Lorg/videolan/vlc/AudioServiceController;)Lorg/videolan/vlc/interfaces/IAudioService;

    move-result-object v1

    iget-object v2, p0, Lorg/videolan/vlc/AudioServiceController$2;->this$0:Lorg/videolan/vlc/AudioServiceController;

    invoke-static {v2}, Lorg/videolan/vlc/AudioServiceController;->access$300(Lorg/videolan/vlc/AudioServiceController;)Lorg/videolan/vlc/interfaces/IAudioServiceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/videolan/vlc/interfaces/IAudioService;->addAudioCallback(Lorg/videolan/vlc/interfaces/IAudioServiceCallback;)V

    .line 106
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController$2;->this$0:Lorg/videolan/vlc/AudioServiceController;

    invoke-static {v1}, Lorg/videolan/vlc/AudioServiceController;->access$100(Lorg/videolan/vlc/AudioServiceController;)Lorg/videolan/vlc/interfaces/IAudioService;

    move-result-object v1

    iget-boolean v2, p0, Lorg/videolan/vlc/AudioServiceController$2;->val$enableHS:Z

    invoke-interface {v1, v2}, Lorg/videolan/vlc/interfaces/IAudioService;->detectHeadset(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_1
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController$2;->this$0:Lorg/videolan/vlc/AudioServiceController;

    invoke-static {v1}, Lorg/videolan/vlc/AudioServiceController;->access$000(Lorg/videolan/vlc/AudioServiceController;)V

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VLC/AudioServiceContoller"

    const-string v2, "remote procedure call failed: addAudioCallback()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 91
    const-string v0, "VLC/AudioServiceContoller"

    const-string v1, "Service Disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lorg/videolan/vlc/AudioServiceController$2;->this$0:Lorg/videolan/vlc/AudioServiceController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/videolan/vlc/AudioServiceController;->access$102(Lorg/videolan/vlc/AudioServiceController;Lorg/videolan/vlc/interfaces/IAudioService;)Lorg/videolan/vlc/interfaces/IAudioService;

    .line 93
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/videolan/vlc/AudioServiceController;->access$202(Z)Z

    .line 94
    return-void
.end method
