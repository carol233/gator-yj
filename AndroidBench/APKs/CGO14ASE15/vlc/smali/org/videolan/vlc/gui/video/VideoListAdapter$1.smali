.class Lorg/videolan/vlc/gui/video/VideoListAdapter$1;
.super Ljava/lang/Object;
.source "VideoListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/video/VideoListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/video/VideoListAdapter;

.field final synthetic val$more:Landroid/widget/ImageView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/video/VideoListAdapter;Landroid/widget/ImageView;I)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter$1;->this$0:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    iput-object p2, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter$1;->val$more:Landroid/widget/ImageView;

    iput p3, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 208
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter$1;->this$0:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->access$000(Lorg/videolan/vlc/gui/video/VideoListAdapter;)Lorg/videolan/vlc/gui/video/VideoGridFragment;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter$1;->val$more:Landroid/widget/ImageView;

    iget v2, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter$1;->val$position:I

    invoke-virtual {v0, v1, v2}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->onContextPopupMenu(Landroid/view/View;I)V

    .line 209
    return-void
.end method
