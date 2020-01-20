.class Lorg/videolan/vlc/gui/audio/AudioListFragment$1;
.super Lorg/videolan/vlc/VlcRunnable;
.source "AudioListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/audio/AudioListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/AudioListFragment;

.field final synthetic val$media:Lorg/videolan/vlc/Media;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/AudioListFragment;Ljava/lang/Object;Lorg/videolan/vlc/Media;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/Object;

    .prologue
    .line 161
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment$1;->this$0:Lorg/videolan/vlc/gui/audio/AudioListFragment;

    iput-object p3, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment$1;->val$media:Lorg/videolan/vlc/Media;

    invoke-direct {p0, p2}, Lorg/videolan/vlc/VlcRunnable;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 164
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment$1;->this$0:Lorg/videolan/vlc/gui/audio/AudioListFragment;

    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioListFragment;->access$000(Lorg/videolan/vlc/gui/audio/AudioListFragment;)Lorg/videolan/vlc/MediaLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/MediaLibrary;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment$1;->val$media:Lorg/videolan/vlc/Media;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment$1;->this$0:Lorg/videolan/vlc/gui/audio/AudioListFragment;

    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioListFragment;->access$100(Lorg/videolan/vlc/gui/audio/AudioListFragment;)V

    .line 166
    return-void
.end method
