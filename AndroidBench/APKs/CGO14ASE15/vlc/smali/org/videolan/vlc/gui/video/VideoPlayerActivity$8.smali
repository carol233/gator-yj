.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$8;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Lorg/videolan/vlc/interfaces/OnPlayerControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
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
    .line 1053
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$8;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayPause()V
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$8;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$800(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/vlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/LibVLC;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$8;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$2700(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    .line 1060
    :goto_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$8;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$600(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    .line 1061
    return-void

    .line 1059
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$8;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$2800(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    goto :goto_0
.end method

.method public onSeek(I)V
    .locals 8
    .param p1, "delta"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 1066
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$8;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$800(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/vlc/LibVLC;

    move-result-object v2

    invoke-virtual {v2}, Lorg/videolan/vlc/LibVLC;->getLength()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-gtz v2, :cond_0

    .line 1072
    :goto_0
    return-void

    .line 1068
    :cond_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$8;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$800(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/vlc/LibVLC;

    move-result-object v2

    invoke-virtual {v2}, Lorg/videolan/vlc/LibVLC;->getTime()J

    move-result-wide v2

    int-to-long v4, p1

    add-long v0, v2, v4

    .line 1069
    .local v0, "position":J
    cmp-long v2, v0, v6

    if-gez v2, :cond_1

    const-wide/16 v0, 0x0

    .line 1070
    :cond_1
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$8;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$800(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/vlc/LibVLC;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/videolan/vlc/LibVLC;->setTime(J)J

    .line 1071
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$8;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$600(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    goto :goto_0
.end method

.method public onSeekTo(J)V
    .locals 4
    .param p1, "position"    # J

    .prologue
    .line 1077
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$8;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$800(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/vlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/LibVLC;->getLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1080
    :goto_0
    return-void

    .line 1078
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$8;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$800(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/vlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/videolan/vlc/LibVLC;->setTime(J)J

    .line 1079
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$8;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$2200(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1, p2}, Lorg/videolan/vlc/Util;->millisToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onShowInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 1090
    if-eqz p1, :cond_0

    .line 1091
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$8;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0, p1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$2300(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Ljava/lang/String;)V

    .line 1096
    :goto_0
    return-void

    .line 1093
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$8;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$2100(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    .line 1094
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$8;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$600(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    goto :goto_0
.end method

.method public onWheelStart()J
    .locals 2

    .prologue
    .line 1084
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$8;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    const v1, 0x36ee80

    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$2000(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;I)V

    .line 1085
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$8;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$800(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/vlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/LibVLC;->getTime()J

    move-result-wide v0

    return-wide v0
.end method
