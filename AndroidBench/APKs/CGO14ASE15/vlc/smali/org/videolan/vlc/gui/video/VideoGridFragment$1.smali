.class Lorg/videolan/vlc/gui/video/VideoGridFragment$1;
.super Lorg/videolan/vlc/VlcRunnable;
.source "VideoGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/video/VideoGridFragment;->handleContextItemSelected(Landroid/view/MenuItem;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/video/VideoGridFragment;

.field final synthetic val$positionDelete:I


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/video/VideoGridFragment;I)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment$1;->this$0:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    iput p2, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment$1;->val$positionDelete:I

    invoke-direct {p0}, Lorg/videolan/vlc/VlcRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 295
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment$1;->this$0:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->access$000(Lorg/videolan/vlc/gui/video/VideoGridFragment;)Lorg/videolan/vlc/gui/video/VideoListAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment$1;->this$0:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    invoke-static {v1}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->access$000(Lorg/videolan/vlc/gui/video/VideoGridFragment;)Lorg/videolan/vlc/gui/video/VideoListAdapter;

    move-result-object v1

    iget v2, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment$1;->val$positionDelete:I

    invoke-virtual {v1, v2}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->remove(Ljava/lang/Object;)V

    .line 296
    return-void
.end method
