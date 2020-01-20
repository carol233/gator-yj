.class public Lorg/videolan/vlc/gui/video/MediaInfoActivity;
.super Landroid/app/ListActivity;
.source "MediaInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/video/MediaInfoActivity$MediaInfoHandler;
    }
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "MediaInfoActivity.image"

.field private static final NEW_IMAGE:I = 0x0

.field private static final NEW_TEXT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "VLC/MediaInfoActivity"


# instance fields
.field private mAdapter:Lorg/videolan/vlc/gui/video/MediaInfoAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mImage:Landroid/graphics/Bitmap;

.field private mItem:Lorg/videolan/vlc/Media;

.field mLoadImage:Ljava/lang/Runnable;

.field private mPlayButton:Landroid/widget/ImageButton;

.field private mTracks:[Lorg/videolan/vlc/TrackInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 100
    new-instance v0, Lorg/videolan/vlc/gui/video/MediaInfoActivity$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/MediaInfoActivity$1;-><init>(Lorg/videolan/vlc/gui/video/MediaInfoActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->mLoadImage:Ljava/lang/Runnable;

    .line 148
    new-instance v0, Lorg/videolan/vlc/gui/video/MediaInfoActivity$MediaInfoHandler;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/MediaInfoActivity$MediaInfoHandler;-><init>(Lorg/videolan/vlc/gui/video/MediaInfoActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->mHandler:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method static synthetic access$002(Lorg/videolan/vlc/gui/video/MediaInfoActivity;[Lorg/videolan/vlc/TrackInfo;)[Lorg/videolan/vlc/TrackInfo;
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/MediaInfoActivity;
    .param p1, "x1"    # [Lorg/videolan/vlc/TrackInfo;

    .prologue
    .line 46
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->mTracks:[Lorg/videolan/vlc/TrackInfo;

    return-object p1
.end method

.method static synthetic access$100(Lorg/videolan/vlc/gui/video/MediaInfoActivity;)Lorg/videolan/vlc/Media;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/MediaInfoActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->mItem:Lorg/videolan/vlc/Media;

    return-object v0
.end method

.method static synthetic access$200(Lorg/videolan/vlc/gui/video/MediaInfoActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/MediaInfoActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lorg/videolan/vlc/gui/video/MediaInfoActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/MediaInfoActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->mImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lorg/videolan/vlc/gui/video/MediaInfoActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/MediaInfoActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 46
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->mImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lorg/videolan/vlc/gui/video/MediaInfoActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/MediaInfoActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->updateImage()V

    return-void
.end method

.method static synthetic access$500(Lorg/videolan/vlc/gui/video/MediaInfoActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/MediaInfoActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->updateText()V

    return-void
.end method

.method private updateImage()V
    .locals 3

    .prologue
    .line 136
    const v1, 0x7f060080

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 137
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 138
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->mPlayButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 139
    return-void
.end method

.method private updateText()V
    .locals 6

    .prologue
    .line 142
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->mTracks:[Lorg/videolan/vlc/TrackInfo;

    .local v0, "arr$":[Lorg/videolan/vlc/TrackInfo;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 143
    .local v3, "track":Lorg/videolan/vlc/TrackInfo;
    iget v4, v3, Lorg/videolan/vlc/TrackInfo;->Type:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 144
    iget-object v4, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->mAdapter:Lorg/videolan/vlc/gui/video/MediaInfoAdapter;

    invoke-virtual {v4, v3}, Lorg/videolan/vlc/gui/video/MediaInfoAdapter;->add(Ljava/lang/Object;)V

    .line 142
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v3    # "track":Lorg/videolan/vlc/TrackInfo;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v3, 0x7f03002d

    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->setContentView(I)V

    .line 62
    if-eqz p1, :cond_0

    .line 63
    const-string v3, "MediaInfoActivity.image"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iput-object v3, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->mImage:Landroid/graphics/Bitmap;

    .line 65
    :cond_0
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "itemLocation"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "MRL":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 88
    :cond_1
    :goto_0
    return-void

    .line 68
    :cond_2
    invoke-static {p0}, Lorg/videolan/vlc/MediaLibrary;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/MediaLibrary;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/videolan/vlc/MediaLibrary;->getMediaItem(Ljava/lang/String;)Lorg/videolan/vlc/Media;

    move-result-object v3

    iput-object v3, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->mItem:Lorg/videolan/vlc/Media;

    .line 69
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->mItem:Lorg/videolan/vlc/Media;

    if-eqz v3, :cond_1

    .line 75
    const v3, 0x7f060055

    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 76
    .local v2, "titleView":Landroid/widget/TextView;
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->mItem:Lorg/videolan/vlc/Media;

    invoke-virtual {v3}, Lorg/videolan/vlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const v3, 0x7f06005d

    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 80
    .local v1, "lengthView":Landroid/widget/TextView;
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->mItem:Lorg/videolan/vlc/Media;

    invoke-virtual {v3}, Lorg/videolan/vlc/Media;->getLength()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/videolan/vlc/Util;->millisToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v3, 0x7f060081

    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->mPlayButton:Landroid/widget/ImageButton;

    .line 84
    new-instance v3, Lorg/videolan/vlc/gui/video/MediaInfoAdapter;

    invoke-direct {v3, p0}, Lorg/videolan/vlc/gui/video/MediaInfoAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->mAdapter:Lorg/videolan/vlc/gui/video/MediaInfoAdapter;

    .line 85
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->mAdapter:Lorg/videolan/vlc/gui/video/MediaInfoAdapter;

    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->mLoadImage:Ljava/lang/Runnable;

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onPlayClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->mItem:Lorg/videolan/vlc/Media;

    invoke-virtual {v0}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 93
    const-string v0, "MediaInfoActivity.image"

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/MediaInfoActivity;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 94
    return-void
.end method
