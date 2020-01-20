.class Lorg/videolan/vlc/gui/video/VideoGridAnimator$1;
.super Ljava/lang/Object;
.source "VideoGridAnimator.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/video/VideoGridAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/video/VideoGridAnimator;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/video/VideoGridAnimator;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator$1;->this$0:Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator$1;->this$0:Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->access$000(Lorg/videolan/vlc/gui/video/VideoGridAnimator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator$1;->this$0:Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->access$100(Lorg/videolan/vlc/gui/video/VideoGridAnimator;)Landroid/widget/GridView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator$1;->this$0:Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->setAlpha(FLandroid/view/View;)V

    .line 72
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 66
    return-void
.end method
