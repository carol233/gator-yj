.class Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$6;
.super Ljava/lang/Object;
.source "AudioBrowserFragment.java"

# interfaces
.implements Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCurrentPosition:I

.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V
    .locals 1

    .prologue
    .line 350
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$6;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    const/4 v0, 0x0

    iput v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$6;->mCurrentPosition:I

    return-void
.end method


# virtual methods
.method public onSwitched(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 361
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$6;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    iget v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$6;->mCurrentPosition:I

    invoke-static {v0, v1, p1}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$600(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;II)V

    .line 362
    iput p1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$6;->mCurrentPosition:I

    .line 363
    return-void
.end method

.method public onSwitching(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 356
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$6;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    invoke-static {v0, p1}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$500(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;F)V

    .line 357
    return-void
.end method
