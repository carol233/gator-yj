.class Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$2;
.super Ljava/lang/Object;
.source "AudioBrowserFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$2;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;
    .param p3, "p"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "av":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$2;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$100(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/AudioServiceController;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$2;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    invoke-static {v1}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$000(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/gui/audio/AudioListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->getLocations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lorg/videolan/vlc/AudioServiceController;->load(Ljava/util/List;I)V

    .line 182
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$2;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->start(Landroid/content/Context;)V

    .line 183
    return-void
.end method
