.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$5;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 930
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$5;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 947
    if-eqz p3, :cond_0

    .line 948
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$5;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$800(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/vlc/LibVLC;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lorg/videolan/vlc/LibVLC;->setTime(J)J

    .line 949
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$5;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$1500(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I

    .line 950
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$5;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$2200(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Landroid/widget/TextView;

    move-result-object v0

    int-to-long v1, p2

    invoke-static {v1, v2}, Lorg/videolan/vlc/Util;->millisToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$5;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    int-to-long v1, p2

    invoke-static {v1, v2}, Lorg/videolan/vlc/Util;->millisToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$2300(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Ljava/lang/String;)V

    .line 954
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 934
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$5;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$1902(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)Z

    .line 935
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$5;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    const v1, 0x36ee80

    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$2000(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;I)V

    .line 936
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 940
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$5;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$1902(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)Z

    .line 941
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$5;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$600(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    .line 942
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$5;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$2100(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    .line 943
    return-void
.end method
