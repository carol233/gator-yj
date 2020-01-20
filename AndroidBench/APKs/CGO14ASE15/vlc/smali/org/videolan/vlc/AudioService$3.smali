.class Lorg/videolan/vlc/AudioService$3;
.super Lorg/videolan/vlc/interfaces/IAudioService$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/AudioService;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/AudioService;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-direct {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized addAudioCallback(Lorg/videolan/vlc/interfaces/IAudioServiceCallback;)V
    .locals 3
    .param p1, "cb"    # Lorg/videolan/vlc/interfaces/IAudioServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 722
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v1}, Lorg/videolan/vlc/AudioService;->access$1600(Lorg/videolan/vlc/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 723
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 724
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 725
    :cond_0
    iget-object v1, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v1}, Lorg/videolan/vlc/AudioService;->access$1600(Lorg/videolan/vlc/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    iget-object v1, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v1}, Lorg/videolan/vlc/AudioService;->access$2200(Lorg/videolan/vlc/AudioService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 727
    monitor-exit p0

    return-void

    .line 722
    .end local v0    # "count":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public append(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p1, "mediaPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 834
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$2000(Lorg/videolan/vlc/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 835
    invoke-virtual {p0, p1, v7, v7, v7}, Lorg/videolan/vlc/AudioService$3;->load(Ljava/util/List;IZZ)V

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$2300(Lorg/videolan/vlc/AudioService;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 842
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/DatabaseManager;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/DatabaseManager;

    move-result-object v0

    .line 843
    .local v0, "db":Lorg/videolan/vlc/DatabaseManager;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 844
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 845
    .local v3, "path":Ljava/lang/String;
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-virtual {v0, v4, v3}, Lorg/videolan/vlc/DatabaseManager;->getMedia(Landroid/content/Context;Ljava/lang/String;)Lorg/videolan/vlc/Media;

    move-result-object v2

    .line 846
    .local v2, "media":Lorg/videolan/vlc/Media;
    if-nez v2, :cond_2

    .line 847
    const-string v4, "VLC/AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating on-the-fly Media object for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    new-instance v2, Lorg/videolan/vlc/Media;

    .end local v2    # "media":Lorg/videolan/vlc/Media;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/videolan/vlc/Media;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 850
    .restart local v2    # "media":Lorg/videolan/vlc/Media;
    :cond_2
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$2000(Lorg/videolan/vlc/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 852
    .end local v2    # "media":Lorg/videolan/vlc/Media;
    .end local v3    # "path":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$3000(Lorg/videolan/vlc/AudioService;)V

    goto :goto_0
.end method

.method public detectHeadset(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 922
    iget-object v0, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v0, p1}, Lorg/videolan/vlc/AudioService;->access$802(Lorg/videolan/vlc/AudioService;Z)Z

    .line 923
    return-void
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 689
    iget-object v0, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v0}, Lorg/videolan/vlc/AudioService;->access$100(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/Media;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v0}, Lorg/videolan/vlc/AudioService;->access$100(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/Media;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/Media;->getAlbum()Ljava/lang/String;

    move-result-object v0

    .line 692
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 697
    iget-object v0, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v0}, Lorg/videolan/vlc/AudioService;->access$100(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/Media;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v0}, Lorg/videolan/vlc/AudioService;->access$100(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/Media;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/Media;->getArtist()Ljava/lang/String;

    move-result-object v0

    .line 700
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCover()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v0}, Lorg/videolan/vlc/AudioService;->access$100(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/Media;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v0}, Lorg/videolan/vlc/AudioService;->access$2100(Lorg/videolan/vlc/AudioService;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 716
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentMediaLocation()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 649
    iget-object v0, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v0}, Lorg/videolan/vlc/AudioService;->access$100(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/Media;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v0}, Lorg/videolan/vlc/AudioService;->access$100(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/Media;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v0}, Lorg/videolan/vlc/AudioService;->access$100(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/Media;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 857
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 858
    .local v2, "medias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v3}, Lorg/videolan/vlc/AudioService;->access$2000(Lorg/videolan/vlc/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 859
    iget-object v3, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v3}, Lorg/videolan/vlc/AudioService;->access$2000(Lorg/videolan/vlc/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/Media;

    .line 860
    .local v1, "item":Lorg/videolan/vlc/Media;
    invoke-virtual {v1}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 862
    .end local v1    # "item":Lorg/videolan/vlc/Media;
    :cond_0
    return-object v2
.end method

.method public getLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 748
    iget-object v0, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v0}, Lorg/videolan/vlc/AudioService;->access$000(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/LibVLC;->getLength()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getRate()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 927
    iget-object v0, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v0}, Lorg/videolan/vlc/AudioService;->access$000(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/LibVLC;->getRate()F

    move-result v0

    return v0
.end method

.method public getRepeatType()I
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v0}, Lorg/videolan/vlc/AudioService;->access$1900(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/RepeatType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/RepeatType;->ordinal()I

    move-result v0

    return v0
.end method

.method public getTime()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 743
    iget-object v0, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v0}, Lorg/videolan/vlc/AudioService;->access$000(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/LibVLC;->getTime()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 705
    iget-object v0, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v0}, Lorg/videolan/vlc/AudioService;->access$100(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/Media;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v0}, Lorg/videolan/vlc/AudioService;->access$100(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/Media;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 708
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMedia()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 684
    iget-object v0, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v0}, Lorg/videolan/vlc/AudioService;->access$2000(Lorg/videolan/vlc/AudioService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 899
    iget-object v2, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v2}, Lorg/videolan/vlc/AudioService;->access$1900(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/RepeatType;

    move-result-object v2

    sget-object v3, Lorg/videolan/vlc/RepeatType;->Once:Lorg/videolan/vlc/RepeatType;

    if-ne v2, v3, :cond_1

    .line 906
    :cond_0
    :goto_0
    return v1

    .line 901
    :cond_1
    iget-object v2, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v2}, Lorg/videolan/vlc/AudioService;->access$2000(Lorg/videolan/vlc/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v3}, Lorg/videolan/vlc/AudioService;->access$100(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/Media;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 902
    .local v0, "index":I
    iget-object v2, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v2}, Lorg/videolan/vlc/AudioService;->access$1800(Lorg/videolan/vlc/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v2}, Lorg/videolan/vlc/AudioService;->access$2600(Lorg/videolan/vlc/AudioService;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    iget-object v3, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v3}, Lorg/videolan/vlc/AudioService;->access$2000(Lorg/videolan/vlc/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_3

    :cond_2
    iget-object v2, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v2}, Lorg/videolan/vlc/AudioService;->access$1800(Lorg/videolan/vlc/AudioService;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v2}, Lorg/videolan/vlc/AudioService;->access$2000(Lorg/videolan/vlc/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 904
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 911
    iget-object v2, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v2}, Lorg/videolan/vlc/AudioService;->access$1900(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/RepeatType;

    move-result-object v2

    sget-object v3, Lorg/videolan/vlc/RepeatType;->Once:Lorg/videolan/vlc/RepeatType;

    if-ne v2, v3, :cond_1

    .line 917
    :cond_0
    :goto_0
    return v1

    .line 913
    :cond_1
    iget-object v2, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v2}, Lorg/videolan/vlc/AudioService;->access$2000(Lorg/videolan/vlc/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v3}, Lorg/videolan/vlc/AudioService;->access$100(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/Media;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 914
    .local v0, "index":I
    iget-object v2, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v2}, Lorg/videolan/vlc/AudioService;->access$2600(Lorg/videolan/vlc/AudioService;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-gtz v2, :cond_2

    if-lez v0, :cond_0

    .line 915
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 669
    iget-object v0, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v0}, Lorg/videolan/vlc/AudioService;->access$000(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/LibVLC;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isShuffling()Z
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v0}, Lorg/videolan/vlc/AudioService;->access$1800(Lorg/videolan/vlc/AudioService;)Z

    move-result v0

    return v0
.end method

.method public load(Ljava/util/List;IZZ)V
    .locals 7
    .param p2, "position"    # I
    .param p3, "libvlcBacked"    # Z
    .param p4, "noVideo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 754
    .local p1, "mediaPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4, p3}, Lorg/videolan/vlc/AudioService;->access$2302(Lorg/videolan/vlc/AudioService;Z)Z

    .line 756
    const-string v4, "VLC/AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$2500(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/EventManager;

    move-result-object v4

    iget-object v5, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v5}, Lorg/videolan/vlc/AudioService;->access$2400(Lorg/videolan/vlc/AudioService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/videolan/vlc/EventManager;->addHandler(Landroid/os/Handler;)V

    .line 759
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$2000(Lorg/videolan/vlc/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 760
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$2600(Lorg/videolan/vlc/AudioService;)Ljava/util/Stack;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Stack;->clear()V

    .line 762
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$2300(Lorg/videolan/vlc/AudioService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 763
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 764
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$2000(Lorg/videolan/vlc/AudioService;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Lorg/videolan/vlc/Media;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v6, v4, v1}, Lorg/videolan/vlc/Media;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 766
    .end local v1    # "i":I
    :cond_0
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/DatabaseManager;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/DatabaseManager;

    move-result-object v0

    .line 767
    .local v0, "db":Lorg/videolan/vlc/DatabaseManager;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 768
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 769
    .local v3, "path":Ljava/lang/String;
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-virtual {v0, v4, v3}, Lorg/videolan/vlc/DatabaseManager;->getMedia(Landroid/content/Context;Ljava/lang/String;)Lorg/videolan/vlc/Media;

    move-result-object v2

    .line 770
    .local v2, "media":Lorg/videolan/vlc/Media;
    if-nez v2, :cond_1

    .line 771
    const-string v4, "VLC/AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating on-the-fly Media object for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    new-instance v2, Lorg/videolan/vlc/Media;

    .end local v2    # "media":Lorg/videolan/vlc/Media;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/videolan/vlc/Media;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 774
    .restart local v2    # "media":Lorg/videolan/vlc/Media;
    :cond_1
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$2000(Lorg/videolan/vlc/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 778
    .end local v0    # "db":Lorg/videolan/vlc/DatabaseManager;
    .end local v2    # "media":Lorg/videolan/vlc/Media;
    .end local v3    # "path":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$2000(Lorg/videolan/vlc/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, p2, :cond_3

    .line 779
    iget-object v5, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    iget-object v4, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$2000(Lorg/videolan/vlc/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/videolan/vlc/Media;

    invoke-static {v5, v4}, Lorg/videolan/vlc/AudioService;->access$102(Lorg/videolan/vlc/AudioService;Lorg/videolan/vlc/Media;)Lorg/videolan/vlc/Media;

    .line 782
    :cond_3
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$100(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/Media;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 783
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$2300(Lorg/videolan/vlc/AudioService;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 784
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$000(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/LibVLC;

    move-result-object v4

    invoke-virtual {v4, p2}, Lorg/videolan/vlc/LibVLC;->playIndex(I)V

    .line 788
    :goto_2
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-virtual {v4}, Lorg/videolan/vlc/AudioService;->setUpRemoteControlClient()V

    .line 789
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$2700(Lorg/videolan/vlc/AudioService;)V

    .line 790
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    iget-object v5, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4, v5}, Lorg/videolan/vlc/AudioService;->access$2800(Lorg/videolan/vlc/AudioService;Landroid/content/Context;)V

    .line 791
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$2900(Lorg/videolan/vlc/AudioService;)V

    .line 793
    :cond_4
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$3000(Lorg/videolan/vlc/AudioService;)V

    .line 794
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$3100(Lorg/videolan/vlc/AudioService;)V

    .line 795
    return-void

    .line 786
    :cond_5
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$000(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/LibVLC;

    move-result-object v4

    iget-object v5, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v5}, Lorg/videolan/vlc/AudioService;->access$100(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/Media;

    move-result-object v5

    invoke-virtual {v5}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p4}, Lorg/videolan/vlc/LibVLC;->readMedia(Ljava/lang/String;Z)I

    goto :goto_2
.end method

.method public next()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 874
    iget-object v0, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v0}, Lorg/videolan/vlc/AudioService;->access$600(Lorg/videolan/vlc/AudioService;)V

    .line 875
    return-void
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 654
    iget-object v0, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v0}, Lorg/videolan/vlc/AudioService;->access$200(Lorg/videolan/vlc/AudioService;)V

    .line 655
    return-void
.end method

.method public play()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 659
    iget-object v0, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v0}, Lorg/videolan/vlc/AudioService;->access$300(Lorg/videolan/vlc/AudioService;)V

    .line 660
    return-void
.end method

.method public previous()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 879
    iget-object v0, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v0}, Lorg/videolan/vlc/AudioService;->access$400(Lorg/videolan/vlc/AudioService;)V

    .line 880
    return-void
.end method

.method public declared-synchronized removeAudioCallback(Lorg/videolan/vlc/interfaces/IAudioServiceCallback;)V
    .locals 3
    .param p1, "cb"    # Lorg/videolan/vlc/interfaces/IAudioServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 732
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v1}, Lorg/videolan/vlc/AudioService;->access$1600(Lorg/videolan/vlc/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 733
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 734
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 735
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 736
    iget-object v1, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v1}, Lorg/videolan/vlc/AudioService;->access$1600(Lorg/videolan/vlc/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    :goto_0
    monitor-exit p0

    return-void

    .line 738
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v1}, Lorg/videolan/vlc/AudioService;->access$1600(Lorg/videolan/vlc/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 732
    .end local v0    # "count":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setRepeatType(I)V
    .locals 1
    .param p1, "t"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 889
    iget-object v0, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v0, p1}, Lorg/videolan/vlc/AudioService;->access$3300(Lorg/videolan/vlc/AudioService;I)V

    .line 890
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 894
    iget-object v0, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v0}, Lorg/videolan/vlc/AudioService;->access$000(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/videolan/vlc/LibVLC;->setTime(J)J

    .line 895
    return-void
.end method

.method public showWithoutParse(Ljava/lang/String;)V
    .locals 20
    .param p1, "URI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 799
    const-string v1, "VLC/AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Showing playing URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v1}, Lorg/videolan/vlc/AudioService;->access$000(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/LibVLC;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/vlc/LibVLC;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 830
    :goto_0
    return-void

    .line 804
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v1}, Lorg/videolan/vlc/AudioService;->access$2500(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/EventManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v2}, Lorg/videolan/vlc/AudioService;->access$2400(Lorg/videolan/vlc/AudioService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/videolan/vlc/EventManager;->addHandler(Landroid/os/Handler;)V

    .line 805
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v1}, Lorg/videolan/vlc/AudioService;->access$2000(Lorg/videolan/vlc/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 806
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v1}, Lorg/videolan/vlc/AudioService;->access$2600(Lorg/videolan/vlc/AudioService;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    move-object/from16 v19, v0

    new-instance v1, Lorg/videolan/vlc/Media;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-virtual {v2}, Lorg/videolan/vlc/AudioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const v10, 0x7f0b002b

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const v10, 0x7f0b002d

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const v10, 0x7f0b002c

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, ""

    const/16 v17, -0x1

    const/16 v18, -0x1

    move-object/from16 v3, p1

    move-object/from16 v10, p1

    invoke-direct/range {v1 .. v18}, Lorg/videolan/vlc/Media;-><init>(Landroid/content/Context;Ljava/lang/String;JJILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;II)V

    move-object/from16 v0, v19

    invoke-static {v0, v1}, Lorg/videolan/vlc/AudioService;->access$102(Lorg/videolan/vlc/AudioService;Lorg/videolan/vlc/Media;)Lorg/videolan/vlc/Media;

    .line 824
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v1}, Lorg/videolan/vlc/AudioService;->access$2000(Lorg/videolan/vlc/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v2}, Lorg/videolan/vlc/AudioService;->access$100(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/Media;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v1}, Lorg/videolan/vlc/AudioService;->access$2200(Lorg/videolan/vlc/AudioService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 828
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v1}, Lorg/videolan/vlc/AudioService;->access$2700(Lorg/videolan/vlc/AudioService;)V

    .line 829
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v1}, Lorg/videolan/vlc/AudioService;->access$1200(Lorg/videolan/vlc/AudioService;)V

    goto/16 :goto_0
.end method

.method public shuffle()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 884
    iget-object v0, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v0}, Lorg/videolan/vlc/AudioService;->access$3200(Lorg/videolan/vlc/AudioService;)V

    .line 885
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 664
    iget-object v0, p0, Lorg/videolan/vlc/AudioService$3;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v0}, Lorg/videolan/vlc/AudioService;->access$500(Lorg/videolan/vlc/AudioService;)V

    .line 665
    return-void
.end method
