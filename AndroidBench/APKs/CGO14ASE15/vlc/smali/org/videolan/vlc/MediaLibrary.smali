.class public Lorg/videolan/vlc/MediaLibrary;
.super Ljava/lang/Object;
.source "MediaLibrary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/MediaLibrary$MediaItemFilter;,
        Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;
    }
.end annotation


# static fields
.field public static final MEDIA_ITEMS_UPDATED:I = 0x64

.field public static final TAG:Ljava/lang/String; = "VLC/MediaLibrary"

.field private static mInstance:Lorg/videolan/vlc/MediaLibrary;


# instance fields
.field private isStopping:Z

.field private final mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/vlc/Media;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoadingThread:Ljava/lang/Thread;

.field private mRestart:Z

.field private mRestartContext:Landroid/content/Context;

.field private final mUpdateHandler:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private restartHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v0, p0, Lorg/videolan/vlc/MediaLibrary;->isStopping:Z

    .line 52
    iput-boolean v0, p0, Lorg/videolan/vlc/MediaLibrary;->mRestart:Z

    .line 338
    new-instance v0, Lorg/videolan/vlc/MediaLibrary$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/MediaLibrary$1;-><init>(Lorg/videolan/vlc/MediaLibrary;)V

    iput-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->restartHandler:Landroid/os/Handler;

    .line 57
    sput-object p0, Lorg/videolan/vlc/MediaLibrary;->mInstance:Lorg/videolan/vlc/MediaLibrary;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mItemList:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mUpdateHandler:Ljava/util/ArrayList;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/MediaLibrary;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lorg/videolan/vlc/MediaLibrary;)Z
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/MediaLibrary;

    .prologue
    .line 43
    iget-boolean v0, p0, Lorg/videolan/vlc/MediaLibrary;->isStopping:Z

    return v0
.end method

.method static synthetic access$300(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/MediaLibrary;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mUpdateHandler:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lorg/videolan/vlc/MediaLibrary;)Z
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/MediaLibrary;

    .prologue
    .line 43
    iget-boolean v0, p0, Lorg/videolan/vlc/MediaLibrary;->mRestart:Z

    return v0
.end method

.method static synthetic access$402(Lorg/videolan/vlc/MediaLibrary;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/MediaLibrary;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lorg/videolan/vlc/MediaLibrary;->mRestart:Z

    return p1
.end method

.method static synthetic access$500(Lorg/videolan/vlc/MediaLibrary;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/MediaLibrary;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->restartHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lorg/videolan/vlc/MediaLibrary;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/MediaLibrary;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mRestartContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lorg/videolan/vlc/MediaLibrary;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/MediaLibrary;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 43
    iput-object p1, p0, Lorg/videolan/vlc/MediaLibrary;->mRestartContext:Landroid/content/Context;

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/videolan/vlc/MediaLibrary;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    sget-object v0, Lorg/videolan/vlc/MediaLibrary;->mInstance:Lorg/videolan/vlc/MediaLibrary;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lorg/videolan/vlc/MediaLibrary;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/MediaLibrary;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/videolan/vlc/MediaLibrary;->mInstance:Lorg/videolan/vlc/MediaLibrary;

    .line 98
    :cond_0
    sget-object v0, Lorg/videolan/vlc/MediaLibrary;->mInstance:Lorg/videolan/vlc/MediaLibrary;

    return-object v0
.end method


# virtual methods
.method public addUpdateHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mUpdateHandler:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public getAudioItems()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/vlc/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v0, "audioItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/videolan/vlc/Media;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/videolan/vlc/MediaLibrary;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 123
    iget-object v3, p0, Lorg/videolan/vlc/MediaLibrary;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/videolan/vlc/Media;

    .line 124
    .local v2, "item":Lorg/videolan/vlc/Media;
    invoke-virtual {v2}, Lorg/videolan/vlc/Media;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 125
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v2    # "item":Lorg/videolan/vlc/Media;
    :cond_1
    return-object v0
.end method

.method public getAudioItems(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "name2"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/vlc/Media;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v0, "audioItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/videolan/vlc/Media;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lorg/videolan/vlc/MediaLibrary;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 134
    iget-object v6, p0, Lorg/videolan/vlc/MediaLibrary;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/videolan/vlc/Media;

    .line 135
    .local v2, "item":Lorg/videolan/vlc/Media;
    invoke-virtual {v2}, Lorg/videolan/vlc/Media;->getType()I

    move-result v6

    if-ne v6, v4, :cond_0

    .line 137
    const/4 v3, 0x0

    .line 138
    .local v3, "valid":Z
    packed-switch p3, :pswitch_data_0

    .line 151
    :goto_1
    :pswitch_0
    if-eqz v3, :cond_0

    .line 152
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v3    # "valid":Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .restart local v3    # "valid":Z
    :pswitch_1
    invoke-virtual {v2}, Lorg/videolan/vlc/Media;->getArtist()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {v2}, Lorg/videolan/vlc/Media;->getAlbum()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move v3, v4

    .line 141
    :goto_2
    goto :goto_1

    :cond_2
    move v3, v5

    .line 140
    goto :goto_2

    .line 143
    :pswitch_2
    invoke-virtual {v2}, Lorg/videolan/vlc/Media;->getAlbum()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 144
    goto :goto_1

    .line 146
    :pswitch_3
    invoke-virtual {v2}, Lorg/videolan/vlc/Media;->getGenre()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual {v2}, Lorg/videolan/vlc/Media;->getAlbum()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    move v3, v4

    .line 147
    :goto_3
    goto :goto_1

    :cond_4
    move v3, v5

    .line 146
    goto :goto_3

    .line 156
    .end local v2    # "item":Lorg/videolan/vlc/Media;
    .end local v3    # "valid":Z
    :cond_5
    return-object v0

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getMediaItem(Ljava/lang/String;)Lorg/videolan/vlc/Media;
    .locals 3
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/videolan/vlc/MediaLibrary;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 165
    iget-object v2, p0, Lorg/videolan/vlc/MediaLibrary;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/Media;

    .line 166
    .local v1, "item":Lorg/videolan/vlc/Media;
    invoke-virtual {v1}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    .end local v1    # "item":Lorg/videolan/vlc/Media;
    :goto_1
    return-object v1

    .line 164
    .restart local v1    # "item":Lorg/videolan/vlc/Media;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    .end local v1    # "item":Lorg/videolan/vlc/Media;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getMediaItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/vlc/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMediaItems(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/vlc/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/videolan/vlc/Media;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 176
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/videolan/vlc/MediaLibrary;->getMediaItem(Ljava/lang/String;)Lorg/videolan/vlc/Media;

    move-result-object v1

    .line 177
    .local v1, "item":Lorg/videolan/vlc/Media;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "item":Lorg/videolan/vlc/Media;
    :cond_0
    return-object v2
.end method

.method public getVideoItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/vlc/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v2, "videoItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/videolan/vlc/Media;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/videolan/vlc/MediaLibrary;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 112
    iget-object v3, p0, Lorg/videolan/vlc/MediaLibrary;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/Media;

    .line 113
    .local v1, "item":Lorg/videolan/vlc/Media;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/videolan/vlc/Media;->getType()I

    move-result v3

    if-nez v3, :cond_0

    .line 114
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "item":Lorg/videolan/vlc/Media;
    :cond_1
    return-object v2
.end method

.method public isWorking()Z
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mLoadingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadMediaItems(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mLoadingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    .line 75
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/vlc/MediaLibrary;->isStopping:Z

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->actionScanStart(Landroid/content/Context;)V

    .line 77
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;-><init>(Lorg/videolan/vlc/MediaLibrary;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mLoadingThread:Ljava/lang/Thread;

    .line 78
    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 80
    :cond_1
    return-void
.end method

.method public loadMediaItems(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "restart"    # Z

    .prologue
    const/4 v1, 0x1

    .line 63
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/videolan/vlc/MediaLibrary;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iput-boolean v1, p0, Lorg/videolan/vlc/MediaLibrary;->mRestart:Z

    .line 66
    iput-boolean v1, p0, Lorg/videolan/vlc/MediaLibrary;->isStopping:Z

    .line 67
    iput-object p1, p0, Lorg/videolan/vlc/MediaLibrary;->mRestartContext:Landroid/content/Context;

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/MediaLibrary;->loadMediaItems(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public removeUpdateHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mUpdateHandler:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/vlc/MediaLibrary;->isStopping:Z

    .line 84
    return-void
.end method
