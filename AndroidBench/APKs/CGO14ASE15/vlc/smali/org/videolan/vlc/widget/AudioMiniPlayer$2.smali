.class Lorg/videolan/vlc/widget/AudioMiniPlayer$2;
.super Ljava/lang/Object;
.source "AudioMiniPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/widget/AudioMiniPlayer;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/widget/AudioMiniPlayer;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/widget/AudioMiniPlayer;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer$2;->this$0:Lorg/videolan/vlc/widget/AudioMiniPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer$2;->this$0:Lorg/videolan/vlc/widget/AudioMiniPlayer;

    invoke-virtual {v0}, Lorg/videolan/vlc/widget/AudioMiniPlayer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->start(Landroid/content/Context;)V

    .line 110
    return-void
.end method
