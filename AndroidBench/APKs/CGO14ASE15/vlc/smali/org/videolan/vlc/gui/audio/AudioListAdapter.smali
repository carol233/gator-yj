.class public Lorg/videolan/vlc/gui/audio/AudioListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AudioListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/audio/AudioListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lorg/videolan/vlc/Media;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mMediaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/vlc/Media;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->mMediaList:Ljava/util/ArrayList;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->mCurrentIndex:I

    .line 51
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, Lorg/videolan/vlc/Media;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->add(Lorg/videolan/vlc/Media;)V

    return-void
.end method

.method public add(Lorg/videolan/vlc/Media;)V
    .locals 1
    .param p1, "m"    # Lorg/videolan/vlc/Media;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 68
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 69
    return-void
.end method

.method public getLocation(I)Ljava/util/List;
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, "locations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-ltz p1, :cond_0

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 119
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/Media;

    invoke-virtual {v1}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    return-object v0
.end method

.method public getLocations()Ljava/util/List;
    .locals 3
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
    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v1, "locations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 126
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/videolan/vlc/Media;

    invoke-virtual {v2}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v9, 0x7f0200ae

    .line 78
    move-object v6, p2

    .line 79
    .local v6, "v":Landroid/view/View;
    if-nez v6, :cond_1

    .line 80
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 81
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f03001c

    const/4 v8, 0x0

    invoke-virtual {v3, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 82
    new-instance v2, Lorg/videolan/vlc/gui/audio/AudioListAdapter$ViewHolder;

    invoke-direct {v2}, Lorg/videolan/vlc/gui/audio/AudioListAdapter$ViewHolder;-><init>()V

    .line 83
    .local v2, "holder":Lorg/videolan/vlc/gui/audio/AudioListAdapter$ViewHolder;
    const v7, 0x7f060053

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v2, Lorg/videolan/vlc/gui/audio/AudioListAdapter$ViewHolder;->layout:Landroid/view/View;

    .line 84
    const v7, 0x7f060054

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v2, Lorg/videolan/vlc/gui/audio/AudioListAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    .line 85
    const v7, 0x7f060055

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lorg/videolan/vlc/gui/audio/AudioListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 86
    const v7, 0x7f060056

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lorg/videolan/vlc/gui/audio/AudioListAdapter$ViewHolder;->artist:Landroid/widget/TextView;

    .line 87
    invoke-virtual {v6, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 91
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/videolan/vlc/Media;

    .line 93
    .local v4, "media":Lorg/videolan/vlc/Media;
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x40

    invoke-static {v7, v4, v8}, Lorg/videolan/vlc/gui/audio/AudioUtil;->getCover(Landroid/content/Context;Lorg/videolan/vlc/Media;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 95
    .local v1, "cover":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 96
    invoke-static {}, Lorg/videolan/vlc/BitmapCache;->getInstance()Lorg/videolan/vlc/BitmapCache;

    move-result-object v0

    .line 97
    .local v0, "cache":Lorg/videolan/vlc/BitmapCache;
    invoke-virtual {v0, v9}, Lorg/videolan/vlc/BitmapCache;->getBitmapFromMemCache(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 98
    if-nez v1, :cond_0

    .line 99
    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v9, v1}, Lorg/videolan/vlc/BitmapCache;->addBitmapToMemCache(ILandroid/graphics/Bitmap;)V

    .line 104
    .end local v0    # "cache":Lorg/videolan/vlc/BitmapCache;
    :cond_0
    iget-object v7, v2, Lorg/videolan/vlc/gui/audio/AudioListAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 106
    iget-object v7, v2, Lorg/videolan/vlc/gui/audio/AudioListAdapter$ViewHolder;->layout:Landroid/view/View;

    invoke-static {v7, p1}, Lorg/videolan/vlc/Util;->setItemBackground(Landroid/view/View;I)V

    .line 107
    iget-object v7, v2, Lorg/videolan/vlc/gui/audio/AudioListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v4}, Lorg/videolan/vlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v7, p0, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->mCurrentIndex:I

    if-ne v7, p1, :cond_2

    const v7, 0x7f080015

    :goto_1
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 111
    .local v5, "titleColor":Landroid/content/res/ColorStateList;
    iget-object v7, v2, Lorg/videolan/vlc/gui/audio/AudioListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 112
    iget-object v7, v2, Lorg/videolan/vlc/gui/audio/AudioListAdapter$ViewHolder;->artist:Landroid/widget/TextView;

    invoke-virtual {v4}, Lorg/videolan/vlc/Media;->getSubtitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    return-object v6

    .line 89
    .end local v1    # "cover":Landroid/graphics/Bitmap;
    .end local v2    # "holder":Lorg/videolan/vlc/gui/audio/AudioListAdapter$ViewHolder;
    .end local v4    # "media":Lorg/videolan/vlc/Media;
    .end local v5    # "titleColor":Landroid/content/res/ColorStateList;
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/videolan/vlc/gui/audio/AudioListAdapter$ViewHolder;

    .restart local v2    # "holder":Lorg/videolan/vlc/gui/audio/AudioListAdapter$ViewHolder;
    goto :goto_0

    .line 108
    .restart local v1    # "cover":Landroid/graphics/Bitmap;
    .restart local v4    # "media":Lorg/videolan/vlc/Media;
    :cond_2
    const v7, 0x7f080014

    goto :goto_1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, Lorg/videolan/vlc/Media;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->remove(Lorg/videolan/vlc/Media;)V

    return-void
.end method

.method public remove(Lorg/videolan/vlc/Media;)V
    .locals 1
    .param p1, "m"    # Lorg/videolan/vlc/Media;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 62
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 0
    .param p1, "currentIndex"    # I

    .prologue
    .line 72
    iput p1, p0, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->mCurrentIndex:I

    .line 73
    return-void
.end method
