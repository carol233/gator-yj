.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$3;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$3;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 422
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$3;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$800(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/vlc/LibVLC;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$3;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$800(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/vlc/LibVLC;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/vlc/LibVLC;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$3;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 424
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$3;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$800(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/vlc/LibVLC;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/vlc/LibVLC;->pause()V

    .line 427
    .end local v0    # "km":Landroid/app/KeyguardManager;
    :cond_0
    return-void
.end method
