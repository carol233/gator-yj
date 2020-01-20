.class public Lorg/videolan/vlc/widget/AudioMiniPlayer;
.super Landroid/support/v4/app/Fragment;
.source "AudioMiniPlayer.java"

# interfaces
.implements Lorg/videolan/vlc/interfaces/IAudioPlayer;


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/AudioMiniPlayer"


# instance fields
.field private lastTitle:Ljava/lang/String;

.field private mArtist:Landroid/widget/TextView;

.field private mAudioPlayerControl:Lorg/videolan/vlc/interfaces/IAudioPlayerControl;

.field private mBackward:Landroid/widget/ImageButton;

.field private mCover:Landroid/widget/ImageView;

.field private mForward:Landroid/widget/ImageButton;

.field private mPlayPause:Landroid/widget/ImageButton;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTitle:Landroid/widget/TextView;

.field private final onMediaControlClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 61
    new-instance v0, Lorg/videolan/vlc/widget/AudioMiniPlayer$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/widget/AudioMiniPlayer$1;-><init>(Lorg/videolan/vlc/widget/AudioMiniPlayer;)V

    iput-object v0, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->onMediaControlClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lorg/videolan/vlc/widget/AudioMiniPlayer;)Lorg/videolan/vlc/interfaces/IAudioPlayerControl;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/widget/AudioMiniPlayer;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mAudioPlayerControl:Lorg/videolan/vlc/interfaces/IAudioPlayerControl;

    return-object v0
.end method

.method static synthetic access$100(Lorg/videolan/vlc/widget/AudioMiniPlayer;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/widget/AudioMiniPlayer;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mPlayPause:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lorg/videolan/vlc/widget/AudioMiniPlayer;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/widget/AudioMiniPlayer;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mForward:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$300(Lorg/videolan/vlc/widget/AudioMiniPlayer;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/widget/AudioMiniPlayer;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mBackward:Landroid/widget/ImageButton;

    return-object v0
.end method


# virtual methods
.method public hide()V
    .locals 3

    .prologue
    .line 207
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/AudioMiniPlayer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 209
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const/4 v1, 0x0

    const v2, 0x7f040003

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    .line 210
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 211
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 212
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 143
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 137
    :pswitch_0
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mAudioPlayerControl:Lorg/videolan/vlc/interfaces/IAudioPlayerControl;

    invoke-interface {v0}, Lorg/videolan/vlc/interfaces/IAudioPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mAudioPlayerControl:Lorg/videolan/vlc/interfaces/IAudioPlayerControl;

    invoke-interface {v0}, Lorg/videolan/vlc/interfaces/IAudioPlayerControl;->pause()V

    .line 141
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mAudioPlayerControl:Lorg/videolan/vlc/interfaces/IAudioPlayerControl;

    invoke-interface {v0}, Lorg/videolan/vlc/interfaces/IAudioPlayerControl;->play()V

    goto :goto_1

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x7f060061
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->lastTitle:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 120
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 122
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/AudioMiniPlayer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 123
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f0f0001

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 125
    const v2, 0x7f060061

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 126
    .local v1, "pp":Landroid/view/MenuItem;
    iget-object v2, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mAudioPlayerControl:Lorg/videolan/vlc/interfaces/IAudioPlayerControl;

    invoke-interface {v2}, Lorg/videolan/vlc/interfaces/IAudioPlayerControl;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    const v2, 0x7f0b0027

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    const v2, 0x7f0b0019

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    const v2, 0x7f030021

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 93
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f060054

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mCover:Landroid/widget/ImageView;

    .line 94
    const v2, 0x7f060055

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mTitle:Landroid/widget/TextView;

    .line 95
    const v2, 0x7f060056

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mArtist:Landroid/widget/TextView;

    .line 96
    const v2, 0x7f060061

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mPlayPause:Landroid/widget/ImageButton;

    .line 97
    const v2, 0x7f060067

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mForward:Landroid/widget/ImageButton;

    .line 98
    const v2, 0x7f060066

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mBackward:Landroid/widget/ImageButton;

    .line 99
    iget-object v2, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mPlayPause:Landroid/widget/ImageButton;

    iget-object v3, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->onMediaControlClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v2, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mForward:Landroid/widget/ImageButton;

    iget-object v3, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->onMediaControlClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v2, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mBackward:Landroid/widget/ImageButton;

    iget-object v3, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->onMediaControlClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v2, 0x7f06005e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mProgressBar:Landroid/widget/ProgressBar;

    .line 104
    const v2, 0x7f060064

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 106
    .local v0, "root":Landroid/widget/LinearLayout;
    new-instance v2, Lorg/videolan/vlc/widget/AudioMiniPlayer$2;

    invoke-direct {v2, p0}, Lorg/videolan/vlc/widget/AudioMiniPlayer$2;-><init>(Lorg/videolan/vlc/widget/AudioMiniPlayer;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {p0, v1}, Lorg/videolan/vlc/widget/AudioMiniPlayer;->registerForContextMenu(Landroid/view/View;)V

    .line 114
    return-object v1
.end method

.method public setAudioPlayerControl(Lorg/videolan/vlc/interfaces/IAudioPlayerControl;)V
    .locals 0
    .param p1, "control"    # Lorg/videolan/vlc/interfaces/IAudioPlayerControl;

    .prologue
    .line 147
    iput-object p1, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mAudioPlayerControl:Lorg/videolan/vlc/interfaces/IAudioPlayerControl;

    .line 148
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/AudioMiniPlayer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 201
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const/high16 v1, 0x7f040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    .line 202
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 203
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 204
    return-void
.end method

.method public update()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 152
    iget-object v4, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mAudioPlayerControl:Lorg/videolan/vlc/interfaces/IAudioPlayerControl;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lorg/videolan/vlc/widget/AudioMiniPlayer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 154
    iget-object v4, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mAudioPlayerControl:Lorg/videolan/vlc/interfaces/IAudioPlayerControl;

    invoke-interface {v4}, Lorg/videolan/vlc/interfaces/IAudioPlayerControl;->hasMedia()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 155
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/AudioMiniPlayer;->show()V

    .line 161
    iget-object v4, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mAudioPlayerControl:Lorg/videolan/vlc/interfaces/IAudioPlayerControl;

    invoke-interface {v4}, Lorg/videolan/vlc/interfaces/IAudioPlayerControl;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "title":Ljava/lang/String;
    if-eqz v3, :cond_0

    iget-object v4, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->lastTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 163
    iget-object v4, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mAudioPlayerControl:Lorg/videolan/vlc/interfaces/IAudioPlayerControl;

    invoke-interface {v4}, Lorg/videolan/vlc/interfaces/IAudioPlayerControl;->getCover()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    .local v0, "cover":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 165
    iget-object v4, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object v4, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 172
    .end local v0    # "cover":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    iput-object v3, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->lastTitle:Ljava/lang/String;

    .line 173
    iget-object v4, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->lastTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v4, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mArtist:Landroid/widget/TextView;

    iget-object v5, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mAudioPlayerControl:Lorg/videolan/vlc/interfaces/IAudioPlayerControl;

    invoke-interface {v5}, Lorg/videolan/vlc/interfaces/IAudioPlayerControl;->getArtist()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v4, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mAudioPlayerControl:Lorg/videolan/vlc/interfaces/IAudioPlayerControl;

    invoke-interface {v4}, Lorg/videolan/vlc/interfaces/IAudioPlayerControl;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 176
    iget-object v4, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mPlayPause:Landroid/widget/ImageButton;

    const v5, 0x7f02009b

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 180
    :goto_1
    iget-object v4, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mAudioPlayerControl:Lorg/videolan/vlc/interfaces/IAudioPlayerControl;

    invoke-interface {v4}, Lorg/videolan/vlc/interfaces/IAudioPlayerControl;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 181
    iget-object v4, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mForward:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 184
    :goto_2
    iget-object v4, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mAudioPlayerControl:Lorg/videolan/vlc/interfaces/IAudioPlayerControl;

    invoke-interface {v4}, Lorg/videolan/vlc/interfaces/IAudioPlayerControl;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 185
    iget-object v4, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mBackward:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 188
    :goto_3
    iget-object v4, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mAudioPlayerControl:Lorg/videolan/vlc/interfaces/IAudioPlayerControl;

    invoke-interface {v4}, Lorg/videolan/vlc/interfaces/IAudioPlayerControl;->getTime()I

    move-result v2

    .line 189
    .local v2, "time":I
    iget-object v4, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mAudioPlayerControl:Lorg/videolan/vlc/interfaces/IAudioPlayerControl;

    invoke-interface {v4}, Lorg/videolan/vlc/interfaces/IAudioPlayerControl;->getLength()I

    move-result v1

    .line 192
    .local v1, "length":I
    iget-object v4, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 193
    iget-object v4, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 196
    .end local v1    # "length":I
    .end local v2    # "time":I
    .end local v3    # "title":Ljava/lang/String;
    :cond_1
    :goto_4
    return-void

    .line 157
    :cond_2
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/AudioMiniPlayer;->hide()V

    goto :goto_4

    .line 168
    .restart local v0    # "cover":Landroid/graphics/Bitmap;
    .restart local v3    # "title":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mCover:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 178
    .end local v0    # "cover":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v4, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mPlayPause:Landroid/widget/ImageButton;

    const v5, 0x7f02009e

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 183
    :cond_5
    iget-object v4, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mForward:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    .line 187
    :cond_6
    iget-object v4, p0, Lorg/videolan/vlc/widget/AudioMiniPlayer;->mBackward:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_3
.end method
