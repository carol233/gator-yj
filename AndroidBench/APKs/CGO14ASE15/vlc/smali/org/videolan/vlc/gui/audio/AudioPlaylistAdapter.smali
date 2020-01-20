.class public Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "AudioPlaylistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ChildViewHolder;,
        Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$GroupViewHolder;
    }
.end annotation


# instance fields
.field private final mChildTextId:I

.field private mContext:Landroid/content/Context;

.field private final mGroupTextId:I

.field private mGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/vlc/Media;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSubTitles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groupTextId"    # I
    .param p3, "childTextId"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 56
    iput p2, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mGroupTextId:I

    .line 57
    iput p3, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mChildTextId:I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mTitles:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mSubTitles:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mGroups:Ljava/util/HashMap;

    .line 61
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/vlc/Media;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subtitle"    # Ljava/lang/String;
    .param p3, "media"    # Lorg/videolan/vlc/Media;

    .prologue
    .line 68
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mSubTitles:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v2, "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v0, "group":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/videolan/vlc/Media;>;>;"
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mSubTitles:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mGroups:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :goto_0
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/videolan/vlc/Media;>;"
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :goto_1
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    return-void

    .line 76
    .end local v0    # "group":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/videolan/vlc/Media;>;>;"
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/videolan/vlc/Media;>;"
    .end local v2    # "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mSubTitles:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 77
    .restart local v2    # "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mGroups:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .restart local v0    # "group":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/videolan/vlc/Media;>;>;"
    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/videolan/vlc/Media;>;"
    goto :goto_1
.end method

.method public clear()V
    .locals 7

    .prologue
    .line 93
    iget-object v6, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 94
    .local v2, "item":Ljava/lang/String;
    iget-object v6, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mSubTitles:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 95
    .local v5, "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mGroups:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 96
    .local v3, "subgroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/videolan/vlc/Media;>;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 97
    .local v4, "subitem":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 98
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 100
    .end local v4    # "subitem":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 101
    iget-object v6, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mSubTitles:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v6, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mGroups:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 104
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Ljava/lang/String;
    .end local v3    # "subgroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/videolan/vlc/Media;>;>;"
    .end local v5    # "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iget-object v6, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 105
    return-void
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->getChild(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChild(II)Ljava/lang/String;
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 136
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mSubTitles:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 131
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 205
    move-object/from16 v9, p4

    .line 206
    .local v9, "v":Landroid/view/View;
    if-nez v9, :cond_1

    .line 207
    iget-object v10, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f03001e

    const/4 v12, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 208
    new-instance v4, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ChildViewHolder;

    invoke-direct {v4}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ChildViewHolder;-><init>()V

    .line 209
    .local v4, "holder":Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ChildViewHolder;
    const v10, 0x7f060053

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v4, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ChildViewHolder;->layout:Landroid/view/View;

    .line 210
    const v10, 0x7f060054

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v4, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ChildViewHolder;->cover:Landroid/widget/ImageView;

    .line 211
    const v10, 0x7f060055

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v4, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ChildViewHolder;->title:Landroid/widget/TextView;

    .line 212
    const v10, 0x7f060057

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v4, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ChildViewHolder;->text:Landroid/widget/TextView;

    .line 213
    invoke-virtual {v9, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 217
    :goto_0
    iget-object v10, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mTitles:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 218
    .local v5, "key":Ljava/lang/String;
    iget-object v10, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mSubTitles:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 219
    .local v7, "name":Ljava/lang/String;
    iget-object v10, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mGroups:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 220
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/videolan/vlc/Media;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 221
    .local v2, "count":I
    iget-object v10, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 223
    .local v8, "res":Landroid/content/res/Resources;
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/videolan/vlc/Media;

    const/16 v12, 0x40

    invoke-static {v11, v10, v12}, Lorg/videolan/vlc/gui/audio/AudioUtil;->getCover(Landroid/content/Context;Lorg/videolan/vlc/Media;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 225
    .local v3, "cover":Landroid/graphics/Bitmap;
    if-nez v3, :cond_0

    .line 226
    invoke-static {}, Lorg/videolan/vlc/BitmapCache;->getInstance()Lorg/videolan/vlc/BitmapCache;

    move-result-object v1

    .line 227
    .local v1, "cache":Lorg/videolan/vlc/BitmapCache;
    const v10, 0x7f0200ae

    invoke-virtual {v1, v10}, Lorg/videolan/vlc/BitmapCache;->getBitmapFromMemCache(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 228
    if-nez v3, :cond_0

    .line 229
    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200ae

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 230
    const v10, 0x7f0200ae

    invoke-virtual {v1, v10, v3}, Lorg/videolan/vlc/BitmapCache;->addBitmapToMemCache(ILandroid/graphics/Bitmap;)V

    .line 234
    .end local v1    # "cache":Lorg/videolan/vlc/BitmapCache;
    :cond_0
    iget-object v10, v4, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ChildViewHolder;->cover:Landroid/widget/ImageView;

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 236
    iget-object v10, v4, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ChildViewHolder;->layout:Landroid/view/View;

    move/from16 v0, p2

    invoke-static {v10, v0}, Lorg/videolan/vlc/Util;->setItemBackground(Landroid/view/View;I)V

    .line 237
    if-eqz v7, :cond_2

    .line 238
    iget-object v10, v4, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ChildViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :goto_1
    iget-object v10, v4, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ChildViewHolder;->text:Landroid/widget/TextView;

    iget v11, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mChildTextId:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v8, v11, v2, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    return-object v9

    .line 215
    .end local v2    # "count":I
    .end local v3    # "cover":Landroid/graphics/Bitmap;
    .end local v4    # "holder":Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ChildViewHolder;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/videolan/vlc/Media;>;"
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "res":Landroid/content/res/Resources;
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ChildViewHolder;

    .restart local v4    # "holder":Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ChildViewHolder;
    goto/16 :goto_0

    .line 240
    .restart local v2    # "count":I
    .restart local v3    # "cover":Landroid/graphics/Bitmap;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/videolan/vlc/Media;>;"
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "res":Landroid/content/res/Resources;
    :cond_2
    iget-object v10, v4, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$ChildViewHolder;->title:Landroid/widget/TextView;

    const v11, 0x7f0b0036

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public getChildrenCount(I)I
    .locals 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 124
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 125
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mSubTitles:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 126
    .local v0, "count":I
    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .end local v0    # "count":I
    :goto_0
    return v0

    .restart local v0    # "count":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->getGroup(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroup(I)Ljava/lang/String;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 114
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 153
    move-object/from16 v9, p3

    .line 154
    .local v9, "v":Landroid/view/View;
    if-nez v9, :cond_1

    .line 155
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f03001d

    const/4 v12, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 156
    new-instance v5, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$GroupViewHolder;

    invoke-direct {v5}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$GroupViewHolder;-><init>()V

    .line 157
    .local v5, "holder":Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$GroupViewHolder;
    const v10, 0x7f060053

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v5, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$GroupViewHolder;->layout:Landroid/view/View;

    .line 158
    const v10, 0x7f060054

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v5, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$GroupViewHolder;->cover:Landroid/widget/ImageView;

    .line 159
    const v10, 0x7f060055

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$GroupViewHolder;->title:Landroid/widget/TextView;

    .line 160
    const v10, 0x7f060057

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$GroupViewHolder;->text:Landroid/widget/TextView;

    .line 161
    const v10, 0x7f060058

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v5, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$GroupViewHolder;->more:Landroid/widget/ImageView;

    .line 162
    invoke-virtual {v9, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 166
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mTitles:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 167
    .local v7, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mSubTitles:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 168
    .local v2, "count":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mGroups:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 169
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/videolan/vlc/Media;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 170
    .local v3, "countMedia":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 172
    .local v8, "res":Landroid/content/res/Resources;
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/videolan/vlc/Media;

    const/16 v12, 0x40

    invoke-static {v11, v10, v12}, Lorg/videolan/vlc/gui/audio/AudioUtil;->getCover(Landroid/content/Context;Lorg/videolan/vlc/Media;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 174
    .local v4, "cover":Landroid/graphics/Bitmap;
    if-nez v4, :cond_0

    .line 175
    invoke-static {}, Lorg/videolan/vlc/BitmapCache;->getInstance()Lorg/videolan/vlc/BitmapCache;

    move-result-object v1

    .line 176
    .local v1, "cache":Lorg/videolan/vlc/BitmapCache;
    const v10, 0x7f0200ae

    invoke-virtual {v1, v10}, Lorg/videolan/vlc/BitmapCache;->getBitmapFromMemCache(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 177
    if-nez v4, :cond_0

    .line 178
    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200ae

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 179
    const v10, 0x7f0200ae

    invoke-virtual {v1, v10, v4}, Lorg/videolan/vlc/BitmapCache;->addBitmapToMemCache(ILandroid/graphics/Bitmap;)V

    .line 183
    .end local v1    # "cache":Lorg/videolan/vlc/BitmapCache;
    :cond_0
    iget-object v10, v5, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$GroupViewHolder;->cover:Landroid/widget/ImageView;

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 185
    iget-object v10, v5, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$GroupViewHolder;->layout:Landroid/view/View;

    move/from16 v0, p1

    invoke-static {v10, v0}, Lorg/videolan/vlc/Util;->setItemBackground(Landroid/view/View;I)V

    .line 186
    iget-object v10, v5, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$GroupViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    const/4 v10, 0x2

    if-le v2, v10, :cond_2

    .line 188
    iget-object v10, v5, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$GroupViewHolder;->text:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v11, v0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mGroupTextId:I

    add-int/lit8 v12, v2, -0x1

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    add-int/lit8 v15, v2, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v8, v11, v12, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :goto_1
    iget-object v11, v5, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$GroupViewHolder;->more:Landroid/widget/ImageView;

    const/4 v10, 0x2

    if-le v2, v10, :cond_4

    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iget-object v11, v5, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$GroupViewHolder;->more:Landroid/widget/ImageView;

    if-eqz p2, :cond_5

    const v10, 0x7f0200ad

    :goto_3
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 199
    return-object v9

    .line 164
    .end local v2    # "count":I
    .end local v3    # "countMedia":I
    .end local v4    # "cover":Landroid/graphics/Bitmap;
    .end local v5    # "holder":Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$GroupViewHolder;
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/videolan/vlc/Media;>;"
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "res":Landroid/content/res/Resources;
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$GroupViewHolder;

    .restart local v5    # "holder":Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$GroupViewHolder;
    goto/16 :goto_0

    .line 189
    .restart local v2    # "count":I
    .restart local v3    # "countMedia":I
    .restart local v4    # "cover":Landroid/graphics/Bitmap;
    .restart local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/videolan/vlc/Media;>;"
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "res":Landroid/content/res/Resources;
    :cond_2
    const/4 v10, 0x2

    if-ne v2, v10, :cond_3

    .line 190
    iget-object v11, v5, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$GroupViewHolder;->text:Landroid/widget/TextView;

    const-string v12, "%s - %s"

    const/4 v10, 0x2

    new-array v13, v10, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mSubTitles:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    const/4 v15, 0x1

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v13, v14

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mChildTextId:I

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v8, v14, v3, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v10

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 194
    :cond_3
    iget-object v10, v5, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$GroupViewHolder;->text:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v11, v0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mChildTextId:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v8, v11, v3, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 196
    :cond_4
    const/16 v10, 0x8

    goto :goto_2

    .line 197
    :cond_5
    const v10, 0x7f02008e

    goto :goto_3
.end method

.method public getPlaylist(II)Ljava/util/List;
    .locals 6
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v3, "playlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-ltz p1, :cond_0

    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p1, v5, :cond_0

    .line 264
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 265
    .local v1, "key":Ljava/lang/String;
    if-ltz p2, :cond_0

    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mSubTitles:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p2, v5, :cond_0

    .line 266
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mSubTitles:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 267
    .local v4, "subkey":Ljava/lang/String;
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->mGroups:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 268
    .local v2, "mediaList":Ljava/util/List;, "Ljava/util/List<Lorg/videolan/vlc/Media;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 269
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/videolan/vlc/Media;

    invoke-virtual {v5}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "mediaList":Ljava/util/List;, "Ljava/util/List<Lorg/videolan/vlc/Media;>;"
    .end local v4    # "subkey":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method
