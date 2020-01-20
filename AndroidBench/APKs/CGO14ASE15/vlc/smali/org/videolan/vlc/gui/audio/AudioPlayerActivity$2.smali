.class Lorg/videolan/vlc/gui/audio/AudioPlayerActivity$2;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity$2;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "sb"    # Landroid/widget/SeekBar;
    .param p2, "prog"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 266
    if-eqz p3, :cond_0

    .line 267
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity$2;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->access$000(Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;)Lorg/videolan/vlc/AudioServiceController;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lorg/videolan/vlc/AudioServiceController;->setTime(J)V

    .line 268
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity$2;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->access$200(Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity$2;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->access$100(Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity$2;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->access$000(Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;)Lorg/videolan/vlc/AudioServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/AudioServiceController;->getLength()I

    move-result v0

    sub-int v0, p2, v0

    int-to-long v0, v0

    :goto_0
    invoke-static {v0, v1}, Lorg/videolan/vlc/Util;->millisToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :cond_0
    return-void

    .line 268
    :cond_1
    int-to-long v0, p2

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 262
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 256
    return-void
.end method
