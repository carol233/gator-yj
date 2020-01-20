.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$1;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 190
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$1;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 5
    .param p1, "visibility"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$1;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$000(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$1;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$1;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$100(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$1;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$200(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I

    move-result v2

    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$1;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v3}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$300(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I

    move-result v3

    iget-object v4, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$1;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v4}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$400(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setSurfaceSize(IIII)V

    .line 196
    if-nez p1, :cond_1

    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$1;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$500(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$1;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$600(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    .line 199
    :cond_1
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$1;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0, p1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$002(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;I)I

    goto :goto_0
.end method
