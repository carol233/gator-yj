.class public Lorg/videolan/vlc/gui/HistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "HistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/HistoryAdapter$HistoryEventHandler;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/HistoryAdapter"


# instance fields
.field private mHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 51
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lorg/videolan/vlc/gui/HistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/videolan/vlc/gui/HistoryAdapter;->mHistory:Ljava/util/List;

    .line 54
    invoke-static {}, Lorg/videolan/vlc/LibVLC;->getExistingInstance()Lorg/videolan/vlc/LibVLC;

    move-result-object v1

    .line 55
    .local v1, "libVLC":Lorg/videolan/vlc/LibVLC;
    if-eqz v1, :cond_0

    .line 56
    iget-object v2, p0, Lorg/videolan/vlc/gui/HistoryAdapter;->mHistory:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lorg/videolan/vlc/LibVLC;->getMediaListItems(Ljava/util/ArrayList;)V

    .line 58
    :cond_0
    invoke-static {}, Lorg/videolan/vlc/EventManager;->getInstance()Lorg/videolan/vlc/EventManager;

    move-result-object v0

    .line 59
    .local v0, "em":Lorg/videolan/vlc/EventManager;
    new-instance v2, Lorg/videolan/vlc/gui/HistoryAdapter$HistoryEventHandler;

    invoke-direct {v2, p0}, Lorg/videolan/vlc/gui/HistoryAdapter$HistoryEventHandler;-><init>(Lorg/videolan/vlc/gui/HistoryAdapter;)V

    invoke-virtual {v0, v2}, Lorg/videolan/vlc/EventManager;->addHandler(Landroid/os/Handler;)V

    .line 60
    return-void
.end method


# virtual methods
.method public getAllURIs()Ljava/util/List;
    .locals 1
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
    .line 129
    iget-object v0, p0, Lorg/videolan/vlc/gui/HistoryAdapter;->mHistory:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/videolan/vlc/gui/HistoryAdapter;->mHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lorg/videolan/vlc/gui/HistoryAdapter;->mHistory:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 75
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 80
    iget-object v5, p0, Lorg/videolan/vlc/gui/HistoryAdapter;->mHistory:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 82
    .local v3, "selected":Ljava/lang/String;
    move-object v4, p2

    .line 85
    .local v4, "v":Landroid/view/View;
    if-nez v4, :cond_0

    .line 86
    iget-object v5, p0, Lorg/videolan/vlc/gui/HistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030027

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 87
    new-instance v0, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;

    invoke-direct {v0}, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;-><init>()V

    .line 88
    .local v0, "holder":Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;
    const v5, 0x7f060053

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->layout:Landroid/view/View;

    .line 89
    const v5, 0x7f060055

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->title:Landroid/widget/TextView;

    .line 90
    const v5, 0x7f060057

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->text:Landroid/widget/TextView;

    .line 91
    const v5, 0x7f06006f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v0, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->icon:Landroid/widget/ImageView;

    .line 92
    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    :goto_0
    iget-object v5, v0, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->layout:Landroid/view/View;

    invoke-static {v5, p1}, Lorg/videolan/vlc/Util;->setItemBackground(Landroid/view/View;I)V

    .line 98
    const-string v1, ""

    .line 99
    .local v1, "holderText":Ljava/lang/String;
    const-string v5, "VLC/HistoryAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loading media position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v2, Lorg/videolan/vlc/Media;

    invoke-direct {v2, v3, p1}, Lorg/videolan/vlc/Media;-><init>(Ljava/lang/String;I)V

    .line 101
    .local v2, "m":Lorg/videolan/vlc/Media;
    iget-object v5, v0, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Lorg/videolan/vlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v2}, Lorg/videolan/vlc/Media;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    .line 104
    iget-object v5, v0, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v5, v0, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->icon:Landroid/widget/ImageView;

    const v6, 0x7f0200ae

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    return-object v4

    .line 94
    .end local v0    # "holder":Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;
    .end local v1    # "holderText":Ljava/lang/String;
    .end local v2    # "m":Lorg/videolan/vlc/Media;
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;

    .restart local v0    # "holder":Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;
    goto :goto_0
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v1, "s":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lorg/videolan/vlc/LibVLC;->getExistingInstance()Lorg/videolan/vlc/LibVLC;

    move-result-object v0

    .line 135
    .local v0, "libVLC":Lorg/videolan/vlc/LibVLC;
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0, v1}, Lorg/videolan/vlc/LibVLC;->getMediaListItems(Ljava/util/ArrayList;)V

    .line 137
    iget-object v2, p0, Lorg/videolan/vlc/gui/HistoryAdapter;->mHistory:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 138
    iput-object v1, p0, Lorg/videolan/vlc/gui/HistoryAdapter;->mHistory:Ljava/util/List;

    .line 139
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/HistoryAdapter;->notifyDataSetChanged()V

    .line 141
    :cond_0
    return-void
.end method

.method public updateEvent(Ljava/lang/Boolean;Ljava/lang/String;I)V
    .locals 3
    .param p1, "added"    # Ljava/lang/Boolean;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 118
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "VLC/HistoryAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lorg/videolan/vlc/gui/HistoryAdapter;->mHistory:Ljava/util/List;

    invoke-interface {v0, p3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 125
    :goto_0
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/HistoryAdapter;->notifyDataSetChanged()V

    .line 126
    return-void

    .line 122
    :cond_0
    const-string v0, "VLC/HistoryAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lorg/videolan/vlc/gui/HistoryAdapter;->mHistory:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method
