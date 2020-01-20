.class Lorg/videolan/vlc/gui/audio/AudioPlayerActivity$3;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->showAdvanceFunction(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity$3;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 357
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity$3;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;

    invoke-static {v0, p1}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->access$300(Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
