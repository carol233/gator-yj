.class Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$5;
.super Lorg/videolan/vlc/VlcRunnable;
.source "AudioBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;Ljava/lang/Object;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/Object;

    .prologue
    .line 290
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$5;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    invoke-direct {p0, p2}, Lorg/videolan/vlc/VlcRunnable;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 293
    move-object v0, p1

    check-cast v0, Lorg/videolan/vlc/Media;

    .line 294
    .local v0, "aMedia":Lorg/videolan/vlc/Media;
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$5;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    invoke-static {v1}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$300(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/MediaLibrary;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/vlc/MediaLibrary;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 295
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$5;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    invoke-static {v1}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$400(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V

    .line 296
    return-void
.end method
