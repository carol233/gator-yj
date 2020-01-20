.class public Lorg/videolan/vlc/widget/PlayerControlClassic;
.super Landroid/widget/LinearLayout;
.source "PlayerControlClassic.java"

# interfaces
.implements Lorg/videolan/vlc/interfaces/IPlayerControl;


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/PlayerControlClassic"


# instance fields
.field private listener:Lorg/videolan/vlc/interfaces/OnPlayerControlListener;

.field private mBackward:Landroid/widget/ImageButton;

.field private mBackwardListener:Landroid/view/View$OnClickListener;

.field private mForward:Landroid/widget/ImageButton;

.field private mForwardListener:Landroid/view/View$OnClickListener;

.field private mPlayPause:Landroid/widget/ImageButton;

.field private mPlayPauseListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlClassic;->listener:Lorg/videolan/vlc/interfaces/OnPlayerControlListener;

    .line 54
    new-instance v0, Lorg/videolan/vlc/widget/PlayerControlClassic$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/widget/PlayerControlClassic$1;-><init>(Lorg/videolan/vlc/widget/PlayerControlClassic;)V

    iput-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlClassic;->mBackwardListener:Landroid/view/View$OnClickListener;

    .line 61
    new-instance v0, Lorg/videolan/vlc/widget/PlayerControlClassic$2;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/widget/PlayerControlClassic$2;-><init>(Lorg/videolan/vlc/widget/PlayerControlClassic;)V

    iput-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlClassic;->mPlayPauseListener:Landroid/view/View$OnClickListener;

    .line 68
    new-instance v0, Lorg/videolan/vlc/widget/PlayerControlClassic$3;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/widget/PlayerControlClassic$3;-><init>(Lorg/videolan/vlc/widget/PlayerControlClassic;)V

    iput-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlClassic;->mForwardListener:Landroid/view/View$OnClickListener;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030030

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 46
    const v0, 0x7f060098

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/widget/PlayerControlClassic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlClassic;->mBackward:Landroid/widget/ImageButton;

    .line 47
    iget-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlClassic;->mBackward:Landroid/widget/ImageButton;

    iget-object v1, p0, Lorg/videolan/vlc/widget/PlayerControlClassic;->mBackwardListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v0, 0x7f060099

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/widget/PlayerControlClassic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlClassic;->mPlayPause:Landroid/widget/ImageButton;

    .line 49
    iget-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlClassic;->mPlayPause:Landroid/widget/ImageButton;

    iget-object v1, p0, Lorg/videolan/vlc/widget/PlayerControlClassic;->mPlayPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v0, 0x7f06009a

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/widget/PlayerControlClassic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlClassic;->mForward:Landroid/widget/ImageButton;

    .line 51
    iget-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlClassic;->mForward:Landroid/widget/ImageButton;

    iget-object v1, p0, Lorg/videolan/vlc/widget/PlayerControlClassic;->mForwardListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lorg/videolan/vlc/widget/PlayerControlClassic;)Lorg/videolan/vlc/interfaces/OnPlayerControlListener;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/widget/PlayerControlClassic;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlClassic;->listener:Lorg/videolan/vlc/interfaces/OnPlayerControlListener;

    return-object v0
.end method


# virtual methods
.method public setOnPlayerControlListener(Lorg/videolan/vlc/interfaces/OnPlayerControlListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/videolan/vlc/interfaces/OnPlayerControlListener;

    .prologue
    .line 87
    iput-object p1, p0, Lorg/videolan/vlc/widget/PlayerControlClassic;->listener:Lorg/videolan/vlc/interfaces/OnPlayerControlListener;

    .line 88
    return-void
.end method

.method public setSeekable(Z)V
    .locals 4
    .param p1, "isSeekable"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 92
    iget-object v3, p0, Lorg/videolan/vlc/widget/PlayerControlClassic;->mBackward:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlClassic;->mForward:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 94
    return-void

    :cond_0
    move v0, v2

    .line 92
    goto :goto_0

    :cond_1
    move v1, v2

    .line 93
    goto :goto_1
.end method

.method public setState(Z)V
    .locals 2
    .param p1, "isPlaying"    # Z

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlClassic;->mPlayPause:Landroid/widget/ImageButton;

    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlClassic;->mPlayPause:Landroid/widget/ImageButton;

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method
