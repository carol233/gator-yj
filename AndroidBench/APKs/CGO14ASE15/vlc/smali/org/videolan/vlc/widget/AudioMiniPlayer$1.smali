.class Lorg/videolan/vlc/widget/AudioMiniPlayer$1;
.super Ljava/lang/Object;
.source "AudioMiniPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/widget/AudioMiniPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/widget/AudioMiniPlayer;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/widget/AudioMiniPlayer;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer$1;->this$0:Lorg/videolan/vlc/widget/AudioMiniPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer$1;->this$0:Lorg/videolan/vlc/widget/AudioMiniPlayer;

    invoke-static {v0}, Lorg/videolan/vlc/widget/AudioMiniPlayer;->access$000(Lorg/videolan/vlc/widget/AudioMiniPlayer;)Lorg/videolan/vlc/interfaces/IAudioPlayerControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer$1;->this$0:Lorg/videolan/vlc/widget/AudioMiniPlayer;

    invoke-static {v0}, Lorg/videolan/vlc/widget/AudioMiniPlayer;->access$100(Lorg/videolan/vlc/widget/AudioMiniPlayer;)Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 66
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer$1;->this$0:Lorg/videolan/vlc/widget/AudioMiniPlayer;

    invoke-static {v0}, Lorg/videolan/vlc/widget/AudioMiniPlayer;->access$000(Lorg/videolan/vlc/widget/AudioMiniPlayer;)Lorg/videolan/vlc/interfaces/IAudioPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/vlc/interfaces/IAudioPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer$1;->this$0:Lorg/videolan/vlc/widget/AudioMiniPlayer;

    invoke-static {v0}, Lorg/videolan/vlc/widget/AudioMiniPlayer;->access$000(Lorg/videolan/vlc/widget/AudioMiniPlayer;)Lorg/videolan/vlc/interfaces/IAudioPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/vlc/interfaces/IAudioPlayerControl;->pause()V

    .line 77
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer$1;->this$0:Lorg/videolan/vlc/widget/AudioMiniPlayer;

    invoke-virtual {v0}, Lorg/videolan/vlc/widget/AudioMiniPlayer;->update()V

    .line 78
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer$1;->this$0:Lorg/videolan/vlc/widget/AudioMiniPlayer;

    invoke-static {v0}, Lorg/videolan/vlc/widget/AudioMiniPlayer;->access$000(Lorg/videolan/vlc/widget/AudioMiniPlayer;)Lorg/videolan/vlc/interfaces/IAudioPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/vlc/interfaces/IAudioPlayerControl;->play()V

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer$1;->this$0:Lorg/videolan/vlc/widget/AudioMiniPlayer;

    invoke-static {v0}, Lorg/videolan/vlc/widget/AudioMiniPlayer;->access$200(Lorg/videolan/vlc/widget/AudioMiniPlayer;)Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 72
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer$1;->this$0:Lorg/videolan/vlc/widget/AudioMiniPlayer;

    invoke-static {v0}, Lorg/videolan/vlc/widget/AudioMiniPlayer;->access$000(Lorg/videolan/vlc/widget/AudioMiniPlayer;)Lorg/videolan/vlc/interfaces/IAudioPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/vlc/interfaces/IAudioPlayerControl;->next()V

    goto :goto_0

    .line 73
    :cond_3
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer$1;->this$0:Lorg/videolan/vlc/widget/AudioMiniPlayer;

    invoke-static {v0}, Lorg/videolan/vlc/widget/AudioMiniPlayer;->access$300(Lorg/videolan/vlc/widget/AudioMiniPlayer;)Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 74
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer$1;->this$0:Lorg/videolan/vlc/widget/AudioMiniPlayer;

    invoke-static {v0}, Lorg/videolan/vlc/widget/AudioMiniPlayer;->access$000(Lorg/videolan/vlc/widget/AudioMiniPlayer;)Lorg/videolan/vlc/interfaces/IAudioPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/vlc/interfaces/IAudioPlayerControl;->previous()V

    goto :goto_0
.end method
