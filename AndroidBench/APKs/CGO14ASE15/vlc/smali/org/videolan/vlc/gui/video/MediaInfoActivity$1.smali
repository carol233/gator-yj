.class Lorg/videolan/vlc/gui/video/MediaInfoActivity$1;
.super Ljava/lang/Object;
.source "MediaInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/video/MediaInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/video/MediaInfoActivity;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/video/MediaInfoActivity;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity$1;->this$0:Lorg/videolan/vlc/gui/video/MediaInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 103
    const/4 v3, 0x0

    .line 105
    .local v3, "mLibVlc":Lorg/videolan/vlc/LibVLC;
    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/LibVLC;->getInstance()Lorg/videolan/vlc/LibVLC;
    :try_end_0
    .catch Lorg/videolan/vlc/LibVlcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 110
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity$1;->this$0:Lorg/videolan/vlc/gui/video/MediaInfoActivity;

    iget-object v7, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity$1;->this$0:Lorg/videolan/vlc/gui/video/MediaInfoActivity;

    invoke-static {v7}, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->access$100(Lorg/videolan/vlc/gui/video/MediaInfoActivity;)Lorg/videolan/vlc/Media;

    move-result-object v7

    invoke-virtual {v7}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/videolan/vlc/LibVLC;->readTracksInfo(Ljava/lang/String;)[Lorg/videolan/vlc/TrackInfo;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->access$002(Lorg/videolan/vlc/gui/video/MediaInfoActivity;[Lorg/videolan/vlc/TrackInfo;)[Lorg/videolan/vlc/TrackInfo;

    .line 111
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity$1;->this$0:Lorg/videolan/vlc/gui/video/MediaInfoActivity;

    invoke-static {v6}, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->access$200(Lorg/videolan/vlc/gui/video/MediaInfoActivity;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 113
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity$1;->this$0:Lorg/videolan/vlc/gui/video/MediaInfoActivity;

    invoke-static {v6}, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->access$300(Lorg/videolan/vlc/gui/video/MediaInfoActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_1

    .line 114
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 115
    .local v4, "screen":Landroid/util/DisplayMetrics;
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity$1;->this$0:Lorg/videolan/vlc/gui/video/MediaInfoActivity;

    invoke-virtual {v6}, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 116
    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 117
    .local v5, "width":I
    mul-int/lit8 v6, v5, 0x9

    div-int/lit8 v2, v6, 0x10

    .line 120
    .local v2, "height":I
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity$1;->this$0:Lorg/videolan/vlc/gui/video/MediaInfoActivity;

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->access$302(Lorg/videolan/vlc/gui/video/MediaInfoActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 122
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity$1;->this$0:Lorg/videolan/vlc/gui/video/MediaInfoActivity;

    invoke-static {v6}, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->access$100(Lorg/videolan/vlc/gui/video/MediaInfoActivity;)Lorg/videolan/vlc/Media;

    move-result-object v6

    invoke-virtual {v6}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5, v2}, Lorg/videolan/vlc/LibVLC;->getThumbnail(Ljava/lang/String;II)[B

    move-result-object v0

    .line 124
    .local v0, "b":[B
    if-nez v0, :cond_0

    .line 132
    .end local v0    # "b":[B
    .end local v2    # "height":I
    .end local v4    # "screen":Landroid/util/DisplayMetrics;
    .end local v5    # "width":I
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Lorg/videolan/vlc/LibVlcException;
    goto :goto_0

    .line 127
    .end local v1    # "e":Lorg/videolan/vlc/LibVlcException;
    .restart local v0    # "b":[B
    .restart local v2    # "height":I
    .restart local v4    # "screen":Landroid/util/DisplayMetrics;
    .restart local v5    # "width":I
    :cond_0
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity$1;->this$0:Lorg/videolan/vlc/gui/video/MediaInfoActivity;

    invoke-static {v6}, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->access$300(Lorg/videolan/vlc/gui/video/MediaInfoActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 128
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity$1;->this$0:Lorg/videolan/vlc/gui/video/MediaInfoActivity;

    iget-object v7, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity$1;->this$0:Lorg/videolan/vlc/gui/video/MediaInfoActivity;

    invoke-static {v7}, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->access$300(Lorg/videolan/vlc/gui/video/MediaInfoActivity;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7, v5, v2}, Lorg/videolan/vlc/Util;->cropBorders(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->access$302(Lorg/videolan/vlc/gui/video/MediaInfoActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 131
    .end local v0    # "b":[B
    .end local v2    # "height":I
    .end local v4    # "screen":Landroid/util/DisplayMetrics;
    .end local v5    # "width":I
    :cond_1
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity$1;->this$0:Lorg/videolan/vlc/gui/video/MediaInfoActivity;

    invoke-static {v6}, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->access$200(Lorg/videolan/vlc/gui/video/MediaInfoActivity;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
