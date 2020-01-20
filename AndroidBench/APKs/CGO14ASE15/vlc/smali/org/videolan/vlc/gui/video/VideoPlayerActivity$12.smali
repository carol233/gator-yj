.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$12;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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
    .line 1167
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$12;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1170
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1171
    const-string v0, "VLC/VideoPlayerActivity"

    const-string v1, "Pixel format is RGBX_8888"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    :goto_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$12;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$800(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/vlc/LibVLC;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$12;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-virtual {v0, v1, v2, p3, p4}, Lorg/videolan/vlc/LibVLC;->attachSurface(Landroid/view/Surface;Lorg/videolan/vlc/gui/video/VideoPlayerActivity;II)V

    .line 1179
    return-void

    .line 1172
    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 1173
    const-string v0, "VLC/VideoPlayerActivity"

    const-string v1, "Pixel format is RGB_565"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1174
    :cond_1
    const v0, 0x32315659

    if-ne p2, v0, :cond_2

    .line 1175
    const-string v0, "VLC/VideoPlayerActivity"

    const-string v1, "Pixel format is YV12"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1177
    :cond_2
    const-string v0, "VLC/VideoPlayerActivity"

    const-string v1, "Pixel format is other/unknown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1183
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1187
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$12;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$800(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/vlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/LibVLC;->detachSurface()V

    .line 1188
    return-void
.end method
