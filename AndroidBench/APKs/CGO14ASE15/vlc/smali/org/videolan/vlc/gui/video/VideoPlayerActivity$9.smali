.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$9;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1102
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$9;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1106
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$9;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$2900(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$9;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$2902(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)Z

    .line 1108
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$9;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$3000(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    .line 1113
    :goto_0
    return-void

    .line 1110
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$9;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$2902(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)Z

    .line 1111
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$9;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$3100(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    goto :goto_0
.end method
