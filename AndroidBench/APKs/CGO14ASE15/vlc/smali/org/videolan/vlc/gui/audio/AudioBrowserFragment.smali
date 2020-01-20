.class public Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "AudioBrowserFragment.java"

# interfaces
.implements Lorg/videolan/vlc/interfaces/ISortable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$AudioBrowserHandler;
    }
.end annotation


# static fields
.field public static final MODE_ALBUM:I = 0x1

.field public static final MODE_ARTIST:I = 0x0

.field public static final MODE_GENRE:I = 0x3

.field public static final MODE_SONG:I = 0x2

.field public static final MODE_TOTAL:I = 0x4

.field public static final SORT_BY_LENGTH:I = 0x1

.field public static final SORT_BY_TITLE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "VLC/AudioBrowserFragment"


# instance fields
.field private final byAlbum:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/videolan/vlc/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final byArtist:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/videolan/vlc/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final byGenre:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/videolan/vlc/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final byLength:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/videolan/vlc/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final byMRL:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/videolan/vlc/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final byName:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/videolan/vlc/Media;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

.field private mArtistsAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

.field private mAudioController:Lorg/videolan/vlc/AudioServiceController;

.field private mFlingViewGroup:Lorg/videolan/vlc/widget/FlingViewGroup;

.field private mFlingViewPosition:I

.field private mGenresAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mHeader:Landroid/widget/HorizontalScrollView;

.field private mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

.field private mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioListAdapter;

.field private mSortBy:I

.field private mSortReverse:Z

.field private final mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

.field playlistChildListener:Landroid/widget/ExpandableListView$OnChildClickListener;

.field playlistListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

.field songListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 73
    iput v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mFlingViewPosition:I

    .line 86
    iput-boolean v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSortReverse:Z

    .line 87
    iput v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSortBy:I

    .line 178
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$2;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$2;-><init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->songListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 186
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$3;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$3;-><init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->playlistListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 215
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$4;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$4;-><init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->playlistChildListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 350
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$6;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$6;-><init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

    .line 405
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$AudioBrowserHandler;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$AudioBrowserHandler;-><init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mHandler:Landroid/os/Handler;

    .line 425
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$7;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$7;-><init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->byName:Ljava/util/Comparator;

    .line 432
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$8;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$8;-><init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->byMRL:Ljava/util/Comparator;

    .line 439
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$9;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$9;-><init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->byLength:Ljava/util/Comparator;

    .line 448
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$10;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$10;-><init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->byAlbum:Ljava/util/Comparator;

    .line 458
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$11;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$11;-><init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->byArtist:Ljava/util/Comparator;

    .line 468
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$12;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$12;-><init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->byGenre:Ljava/util/Comparator;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/gui/audio/AudioListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/AudioServiceController;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    return-object v0
.end method

.method static synthetic access$200(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/widget/FlingViewGroup;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mFlingViewGroup:Lorg/videolan/vlc/widget/FlingViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/MediaLibrary;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

    return-object v0
.end method

.method static synthetic access$400(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->updateLists()V

    return-void
.end method

.method static synthetic access$500(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;F)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;
    .param p1, "x1"    # F

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->headerScroll(F)V

    return-void
.end method

.method static synthetic access$600(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;II)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->headerHighlightTab(II)V

    return-void
.end method

.method static synthetic access$700(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Ljava/util/Comparator;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->byMRL:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$800(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Ljava/util/Comparator;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->byAlbum:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$900(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Ljava/util/Comparator;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->byArtist:Ljava/util/Comparator;

    return-object v0
.end method

.method private headerHighlightTab(II)V
    .locals 5
    .param p1, "existingPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 368
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f060049

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 369
    .local v0, "hl":Landroid/widget/LinearLayout;
    if-nez v0, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 372
    .local v2, "oldView":Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 373
    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 374
    :cond_2
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 375
    .local v1, "newView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 376
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private headerScroll(F)V
    .locals 6
    .param p1, "progress"    # F

    .prologue
    const/4 v5, 0x0

    .line 390
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f060049

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 391
    .local v0, "hl":Landroid/widget/LinearLayout;
    if-nez v0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 393
    :cond_0
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 394
    .local v1, "width":I
    int-to-float v3, v1

    mul-float/2addr v3, p1

    float-to-int v2, v3

    .line 395
    .local v2, "x":I
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mHeader:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3, v2, v5}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0
.end method

.method private headerScrollTab(I)V
    .locals 2
    .param p1, "tab"    # I

    .prologue
    .line 399
    int-to-float v0, p1

    const/4 v1, 0x0

    mul-float/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->headerScroll(F)V

    .line 400
    return-void
.end method

.method private updateLists()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 479
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lorg/videolan/vlc/MediaLibrary;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/MediaLibrary;

    move-result-object v3

    invoke-virtual {v3}, Lorg/videolan/vlc/MediaLibrary;->getAudioItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 480
    .local v0, "audioList":Ljava/util/List;, "Ljava/util/List<Lorg/videolan/vlc/Media;>;"
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioListAdapter;

    invoke-virtual {v3}, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->clear()V

    .line 481
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mArtistsAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {v3}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->clear()V

    .line 482
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {v3}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->clear()V

    .line 483
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mGenresAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {v3}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->clear()V

    .line 485
    iget v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSortBy:I

    packed-switch v3, :pswitch_data_0

    .line 491
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->byName:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 494
    :goto_0
    iget-boolean v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSortReverse:Z

    if-eqz v3, :cond_0

    .line 495
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 497
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 498
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioListAdapter;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/videolan/vlc/Media;

    invoke-virtual {v4, v3}, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->add(Lorg/videolan/vlc/Media;)V

    .line 497
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 487
    .end local v1    # "i":I
    :pswitch_0
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->byLength:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 500
    .restart local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->byArtist:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 501
    const/4 v1, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 502
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/videolan/vlc/Media;

    .line 503
    .local v2, "media":Lorg/videolan/vlc/Media;
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mArtistsAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {v2}, Lorg/videolan/vlc/Media;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v2}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->add(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/vlc/Media;)V

    .line 504
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mArtistsAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {v2}, Lorg/videolan/vlc/Media;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/videolan/vlc/Media;->getAlbum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->add(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/vlc/Media;)V

    .line 501
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 507
    .end local v2    # "media":Lorg/videolan/vlc/Media;
    :cond_2
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->byAlbum:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 508
    const/4 v1, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 509
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/videolan/vlc/Media;

    .line 510
    .restart local v2    # "media":Lorg/videolan/vlc/Media;
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {v2}, Lorg/videolan/vlc/Media;->getAlbum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v2}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->add(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/vlc/Media;)V

    .line 508
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 513
    .end local v2    # "media":Lorg/videolan/vlc/Media;
    :cond_3
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->byGenre:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 514
    const/4 v1, 0x0

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 515
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/videolan/vlc/Media;

    .line 516
    .restart local v2    # "media":Lorg/videolan/vlc/Media;
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mGenresAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {v2}, Lorg/videolan/vlc/Media;->getGenre()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v2}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->add(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/vlc/Media;)V

    .line 517
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mGenresAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {v2}, Lorg/videolan/vlc/Media;->getGenre()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/videolan/vlc/Media;->getAlbum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->add(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/vlc/Media;)V

    .line 514
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 520
    .end local v2    # "media":Lorg/videolan/vlc/Media;
    :cond_4
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioListAdapter;

    invoke-virtual {v3}, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->notifyDataSetChanged()V

    .line 521
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mArtistsAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {v3}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->notifyDataSetChanged()V

    .line 522
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {v3}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->notifyDataSetChanged()V

    .line 523
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mGenresAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {v3}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->notifyDataSetChanged()V

    .line 524
    return-void

    .line 485
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 159
    invoke-direct {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->updateLists()V

    .line 160
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 257
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getUserVisibleHint()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v10

    .line 338
    :goto_0
    return v10

    .line 259
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v7

    .line 260
    .local v7, "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    if-nez v7, :cond_1

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v10

    goto :goto_0

    .line 266
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 268
    .local v4, "id":I
    const v10, 0x7f0600b0

    if-eq v4, v10, :cond_2

    const v10, 0x7f0600b1

    if-ne v4, v10, :cond_5

    :cond_2
    const/4 v9, 0x1

    .line 270
    .local v9, "useAllItems":Z
    :goto_1
    const v10, 0x7f0600ae

    if-eq v4, v10, :cond_3

    const v10, 0x7f0600b1

    if-ne v4, v10, :cond_6

    :cond_3
    const/4 v1, 0x1

    .line 273
    .local v1, "append":Z
    :goto_2
    const-class v10, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    invoke-virtual {v10, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    move-object v5, v7

    .line 274
    check-cast v5, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 275
    .local v5, "info":Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-wide v10, v5, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v10, v11}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v3

    .line 276
    .local v3, "groupPosition":I
    iget-wide v10, v5, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v10, v11}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    .line 277
    .local v2, "childPosition":I
    if-gez v2, :cond_4

    .line 278
    const/4 v2, 0x0

    .line 286
    .end local v5    # "info":Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    :cond_4
    :goto_3
    const v10, 0x7f0600b2

    if-ne v4, v10, :cond_8

    .line 287
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    iget-object v10, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioListAdapter;

    invoke-virtual {v10, v3}, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->getLocation(I)Ljava/util/List;

    move-result-object v10

    const/4 v12, 0x0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    new-instance v12, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$5;

    iget-object v13, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioListAdapter;

    invoke-virtual {v13, v3}, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v13

    invoke-direct {v12, p0, v13}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$5;-><init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;Ljava/lang/Object;)V

    invoke-static {v11, v10, v12}, Lorg/videolan/vlc/gui/CommonDialogs;->deleteMedia(Landroid/content/Context;Ljava/lang/String;Lorg/videolan/vlc/VlcRunnable;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 298
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 299
    const/4 v10, 0x1

    goto :goto_0

    .line 268
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v1    # "append":Z
    .end local v2    # "childPosition":I
    .end local v3    # "groupPosition":I
    .end local v9    # "useAllItems":Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 270
    .restart local v9    # "useAllItems":Z
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .restart local v1    # "append":Z
    :cond_7
    move-object v5, v7

    .line 281
    check-cast v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 282
    .local v5, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v3, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 283
    .restart local v3    # "groupPosition":I
    const/4 v2, 0x0

    .restart local v2    # "childPosition":I
    goto :goto_3

    .line 302
    .end local v5    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_8
    const v10, 0x7f0600b4

    if-ne v4, v10, :cond_9

    .line 303
    iget-object v10, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioListAdapter;

    invoke-virtual {v10, v3}, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/videolan/vlc/Media;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/videolan/vlc/gui/audio/AudioUtil;->setRingtone(Lorg/videolan/vlc/Media;Landroid/app/Activity;)V

    .line 304
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 307
    :cond_9
    if-eqz v9, :cond_a

    .line 308
    move v8, v3

    .line 309
    .local v8, "startPosition":I
    iget-object v10, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioListAdapter;

    invoke-virtual {v10}, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->getLocations()Ljava/util/List;

    move-result-object v6

    .line 332
    .local v6, "medias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_4
    if-eqz v1, :cond_b

    .line 333
    iget-object v10, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    invoke-virtual {v10, v6}, Lorg/videolan/vlc/AudioServiceController;->append(Ljava/util/List;)V

    .line 337
    :goto_5
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->start(Landroid/content/Context;)V

    .line 338
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v10

    goto/16 :goto_0

    .line 312
    .end local v6    # "medias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "startPosition":I
    :cond_a
    const/4 v8, 0x0

    .line 313
    .restart local v8    # "startPosition":I
    iget-object v10, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mFlingViewGroup:Lorg/videolan/vlc/widget/FlingViewGroup;

    invoke-virtual {v10}, Lorg/videolan/vlc/widget/FlingViewGroup;->getPosition()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 328
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 316
    :pswitch_0
    iget-object v10, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioListAdapter;

    invoke-virtual {v10, v3}, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->getLocation(I)Ljava/util/List;

    move-result-object v6

    .line 317
    .restart local v6    # "medias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4

    .line 319
    .end local v6    # "medias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    iget-object v10, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mArtistsAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {v10, v3, v2}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->getPlaylist(II)Ljava/util/List;

    move-result-object v6

    .line 320
    .restart local v6    # "medias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4

    .line 322
    .end local v6    # "medias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2
    iget-object v10, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {v10, v3, v2}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->getPlaylist(II)Ljava/util/List;

    move-result-object v6

    .line 323
    .restart local v6    # "medias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4

    .line 325
    .end local v6    # "medias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3
    iget-object v10, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mGenresAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {v10, v3, v2}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->getPlaylist(II)Ljava/util/List;

    move-result-object v6

    .line 326
    .restart local v6    # "medias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4

    .line 335
    :cond_b
    iget-object v10, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    invoke-virtual {v10, v6, v8}, Lorg/videolan/vlc/AudioServiceController;->load(Ljava/util/List;I)V

    goto :goto_5

    .line 313
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f0d0002

    const v2, 0x7f0d0001

    .line 100
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    .line 104
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/videolan/vlc/MediaLibrary;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/MediaLibrary;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

    .line 106
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioListAdapter;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/videolan/vlc/gui/audio/AudioListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioListAdapter;

    .line 107
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v3, v2}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mArtistsAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    .line 108
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    .line 109
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v3, v2}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mGenresAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    .line 110
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const v4, 0x7f0600b3

    const/4 v3, 0x0

    .line 244
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 245
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 247
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f060051

    if-eq v1, v2, :cond_0

    .line 248
    const v1, 0x7f0600af

    invoke-interface {p1, v1, v3}, Landroid/view/ContextMenu;->setGroupEnabled(IZ)V

    .line 249
    invoke-interface {p1, v4, v3}, Landroid/view/ContextMenu;->setGroupEnabled(IZ)V

    .line 251
    :cond_0
    invoke-static {}, Lorg/videolan/vlc/Util;->isPhone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 252
    invoke-interface {p1, v4, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 253
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    const v5, 0x7f03001b

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 117
    .local v4, "v":Landroid/view/View;
    const v5, 0x7f06004e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lorg/videolan/vlc/widget/FlingViewGroup;

    iput-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mFlingViewGroup:Lorg/videolan/vlc/widget/FlingViewGroup;

    .line 118
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mFlingViewGroup:Lorg/videolan/vlc/widget/FlingViewGroup;

    iget-object v6, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

    invoke-virtual {v5, v6}, Lorg/videolan/vlc/widget/FlingViewGroup;->setOnViewSwitchedListener(Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;)V

    .line 120
    const v5, 0x7f060048

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/HorizontalScrollView;

    iput-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mHeader:Landroid/widget/HorizontalScrollView;

    .line 121
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mHeader:Landroid/widget/HorizontalScrollView;

    new-instance v6, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$1;

    invoke-direct {v6, p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$1;-><init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 129
    const v5, 0x7f060051

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 130
    .local v3, "songsList":Landroid/widget/ListView;
    const v5, 0x7f06004f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    .line 131
    .local v1, "artistList":Landroid/widget/ExpandableListView;
    const v5, 0x7f060050

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    .line 132
    .local v0, "albumList":Landroid/widget/ExpandableListView;
    const v5, 0x7f060052

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListView;

    .line 134
    .local v2, "genreList":Landroid/widget/ExpandableListView;
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioListAdapter;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mArtistsAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {v1, v5}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 136
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {v0, v5}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 137
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mGenresAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {v2, v5}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 139
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->songListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 140
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->playlistListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 141
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->playlistListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 142
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->playlistListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 144
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->playlistChildListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 145
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->playlistChildListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 146
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->playlistChildListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 148
    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 149
    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 150
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 151
    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 153
    return-object v4
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 343
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    .line 344
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioListAdapter;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->clear()V

    .line 345
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mArtistsAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->clear()V

    .line 346
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->clear()V

    .line 347
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mGenresAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->clear()V

    .line 348
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 165
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mFlingViewGroup:Lorg/videolan/vlc/widget/FlingViewGroup;

    invoke-virtual {v0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getPosition()I

    move-result v0

    iput v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mFlingViewPosition:I

    .line 166
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/MediaLibrary;->removeUpdateHandler(Landroid/os/Handler;)V

    .line 167
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 172
    iget v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mFlingViewPosition:I

    invoke-direct {p0, v0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->headerScrollTab(I)V

    .line 173
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mFlingViewGroup:Lorg/videolan/vlc/widget/FlingViewGroup;

    invoke-virtual {v0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getPosition()I

    move-result v0

    iget v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mFlingViewPosition:I

    invoke-direct {p0, v0, v1}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->headerHighlightTab(II)V

    .line 174
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mFlingViewGroup:Lorg/videolan/vlc/widget/FlingViewGroup;

    iget v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mFlingViewPosition:I

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/widget/FlingViewGroup;->setPosition(I)V

    .line 175
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/MediaLibrary;->addUpdateHandler(Landroid/os/Handler;)V

    .line 176
    return-void
.end method

.method public sortBy(I)V
    .locals 2
    .param p1, "sortby"    # I

    .prologue
    const/4 v0, 0x0

    .line 528
    iget v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSortBy:I

    if-ne v1, p1, :cond_1

    .line 529
    iget-boolean v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSortReverse:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSortReverse:Z

    .line 534
    :goto_0
    invoke-direct {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->updateLists()V

    .line 535
    return-void

    .line 531
    :cond_1
    iput p1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSortBy:I

    .line 532
    iput-boolean v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSortReverse:Z

    goto :goto_0
.end method
