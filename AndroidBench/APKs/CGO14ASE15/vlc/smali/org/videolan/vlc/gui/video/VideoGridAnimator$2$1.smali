.class Lorg/videolan/vlc/gui/video/VideoGridAnimator$2$1;
.super Ljava/lang/Object;
.source "VideoGridAnimator.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator$2$1;->this$1:Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 118
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator$2$1;->this$1:Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;

    iget-object v0, v0, Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;->this$0:Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->access$320(Lorg/videolan/vlc/gui/video/VideoGridAnimator;I)I

    .line 119
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 114
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 108
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator$2$1;->this$1:Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;

    iget-object v0, v0, Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;->this$0:Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->access$312(Lorg/videolan/vlc/gui/video/VideoGridAnimator;I)I

    .line 109
    return-void
.end method
