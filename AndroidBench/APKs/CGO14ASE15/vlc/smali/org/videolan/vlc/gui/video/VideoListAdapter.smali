.class public Lorg/videolan/vlc/gui/video/VideoListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "VideoListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lorg/videolan/vlc/Media;",
        ">;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/videolan/vlc/Media;",
        ">;"
    }
.end annotation


# static fields
.field public static final SORT_BY_LENGTH:I = 0x1

.field public static final SORT_BY_TITLE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "VLC/MediaLibraryAdapter"


# instance fields
.field private mFragment:Lorg/videolan/vlc/gui/video/VideoGridFragment;

.field private mListMode:Z

.field private mSortBy:I

.field private mSortDirection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/videolan/vlc/gui/video/VideoGridFragment;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lorg/videolan/vlc/gui/video/VideoGridFragment;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortDirection:I

    .line 51
    iput v1, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortBy:I

    .line 52
    iput-boolean v1, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mListMode:Z

    .line 57
    iput-object p2, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mFragment:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lorg/videolan/vlc/gui/video/VideoListAdapter;)Lorg/videolan/vlc/gui/video/VideoGridFragment;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoListAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mFragment:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, Lorg/videolan/vlc/Media;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/videolan/vlc/Media;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->compare(Lorg/videolan/vlc/Media;Lorg/videolan/vlc/Media;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/videolan/vlc/Media;Lorg/videolan/vlc/Media;)I
    .locals 4
    .param p1, "item1"    # Lorg/videolan/vlc/Media;
    .param p2, "item2"    # Lorg/videolan/vlc/Media;

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "compare":I
    iget v1, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortBy:I

    packed-switch v1, :pswitch_data_0

    .line 122
    :goto_0
    iget v1, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortDirection:I

    mul-int/2addr v1, v0

    return v1

    .line 115
    :pswitch_0
    invoke-virtual {p1}, Lorg/videolan/vlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/videolan/vlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 117
    goto :goto_0

    .line 119
    :pswitch_1
    invoke-virtual {p1}, Lorg/videolan/vlc/Media;->getLength()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2}, Lorg/videolan/vlc/Media;->getLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 131
    move-object/from16 v13, p2

    .line 133
    .local v13, "v":Landroid/view/View;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;

    iget-boolean v14, v14, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->listmode:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mListMode:Z

    if-eq v14, v15, :cond_4

    .line 134
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 136
    .local v5, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mListMode:Z

    if-nez v14, :cond_3

    .line 137
    const v14, 0x7f03003c

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v5, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 141
    :goto_0
    new-instance v4, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;

    invoke-direct {v4}, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;-><init>()V

    .line 142
    .local v4, "holder":Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;
    const v14, 0x7f060053

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    iput-object v14, v4, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->layout:Landroid/view/View;

    .line 143
    const v14, 0x7f0600a5

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v4, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 144
    const v14, 0x7f0600a7

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v4, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 145
    const v14, 0x7f0600a8

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v4, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 146
    const v14, 0x7f0600a6

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ProgressBar;

    iput-object v14, v4, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 147
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mListMode:Z

    iput-boolean v14, v4, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->listmode:Z

    .line 148
    invoke-virtual {v13, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 151
    new-instance v14, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    iget v15, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/videolan/vlc/Media;

    .line 159
    .local v8, "media":Lorg/videolan/vlc/Media;
    invoke-virtual {v8}, Lorg/videolan/vlc/Media;->getPicture()Landroid/graphics/Bitmap;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 161
    invoke-virtual {v8}, Lorg/videolan/vlc/Media;->getPicture()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 162
    .local v11, "thumbnail":Landroid/graphics/Bitmap;
    iget-object v14, v4, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v14, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 175
    .end local v11    # "thumbnail":Landroid/graphics/Bitmap;
    :goto_2
    invoke-virtual {v13}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f080014

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 176
    .local v12, "titleColor":Landroid/content/res/ColorStateList;
    iget-object v14, v4, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 179
    invoke-virtual {v8}, Lorg/videolan/vlc/Media;->getTime()J

    move-result-wide v6

    .line 181
    .local v6, "lastTime":J
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-lez v14, :cond_7

    .line 182
    const-string v14, "%s / %s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v6, v7}, Lorg/videolan/vlc/Util;->millisToString(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v8}, Lorg/videolan/vlc/Media;->getLength()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lorg/videolan/vlc/Util;->millisToString(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 185
    .local v10, "text":Ljava/lang/String;
    iget-object v14, v4, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 186
    iget-object v14, v4, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v8}, Lorg/videolan/vlc/Media;->getLength()J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    div-long v15, v15, v17

    long-to-int v15, v15

    invoke-virtual {v14, v15}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 187
    iget-object v14, v4, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    const-wide/16 v15, 0x3e8

    div-long v15, v6, v15

    long-to-int v15, v15

    invoke-virtual {v14, v15}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 194
    :goto_3
    invoke-virtual {v8}, Lorg/videolan/vlc/Media;->getWidth()I

    move-result v14

    if-lez v14, :cond_1

    invoke-virtual {v8}, Lorg/videolan/vlc/Media;->getHeight()I

    move-result v14

    if-lez v14, :cond_1

    .line 195
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " - %dx%d"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v8}, Lorg/videolan/vlc/Media;->getWidth()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v8}, Lorg/videolan/vlc/Media;->getHeight()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 199
    :cond_1
    iget-object v14, v4, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v14, v4, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v8}, Lorg/videolan/vlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    const v14, 0x7f0600a9

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 204
    .local v9, "more":Landroid/widget/ImageView;
    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mFragment:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    if-eqz v14, :cond_2

    .line 205
    new-instance v14, Lorg/videolan/vlc/gui/video/VideoListAdapter$1;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v14, v0, v9, v1}, Lorg/videolan/vlc/gui/video/VideoListAdapter$1;-><init>(Lorg/videolan/vlc/gui/video/VideoListAdapter;Landroid/widget/ImageView;I)V

    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    :cond_2
    return-object v13

    .line 139
    .end local v4    # "holder":Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;
    .end local v6    # "lastTime":J
    .end local v8    # "media":Lorg/videolan/vlc/Media;
    .end local v9    # "more":Landroid/widget/ImageView;
    .end local v10    # "text":Ljava/lang/String;
    .end local v12    # "titleColor":Landroid/content/res/ColorStateList;
    .restart local v5    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    const v14, 0x7f03003e

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v5, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    goto/16 :goto_0

    .line 153
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;

    .restart local v4    # "holder":Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;
    goto/16 :goto_1

    .line 165
    .restart local v8    # "media":Lorg/videolan/vlc/Media;
    :cond_5
    invoke-static {}, Lorg/videolan/vlc/BitmapCache;->getInstance()Lorg/videolan/vlc/BitmapCache;

    move-result-object v3

    .line 166
    .local v3, "cache":Lorg/videolan/vlc/BitmapCache;
    const v14, 0x7f0200b5

    invoke-virtual {v3, v14}, Lorg/videolan/vlc/BitmapCache;->getBitmapFromMemCache(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 167
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_6

    .line 168
    invoke-virtual {v13}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200b5

    invoke-static {v14, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 169
    const v14, 0x7f0200b5

    invoke-virtual {v3, v14, v2}, Lorg/videolan/vlc/BitmapCache;->addBitmapToMemCache(ILandroid/graphics/Bitmap;)V

    .line 171
    :cond_6
    iget-object v14, v4, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 189
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "cache":Lorg/videolan/vlc/BitmapCache;
    .restart local v6    # "lastTime":J
    .restart local v12    # "titleColor":Landroid/content/res/ColorStateList;
    :cond_7
    const-string v14, "%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v8}, Lorg/videolan/vlc/Media;->getLength()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lorg/videolan/vlc/Util;->millisToString(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 191
    .restart local v10    # "text":Ljava/lang/String;
    iget-object v14, v4, Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public isListMode()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mListMode:Z

    return v0
.end method

.method public setLastMedia(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 5
    .param p1, "lastMRL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "times":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 73
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/Media;

    .line 74
    .local v1, "media":Lorg/videolan/vlc/Media;
    invoke-virtual {v1}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 75
    .local v2, "time":Ljava/lang/Long;
    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/videolan/vlc/Media;->setTime(J)V

    .line 72
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v1    # "media":Lorg/videolan/vlc/Media;
    .end local v2    # "time":Ljava/lang/Long;
    :cond_1
    return-void
.end method

.method public setListMode(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 227
    iput-boolean p1, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mListMode:Z

    .line 228
    return-void
.end method

.method public sort()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0, p0}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 108
    return-void
.end method

.method public sortBy(I)V
    .locals 3
    .param p1, "sortby"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 81
    packed-switch p1, :pswitch_data_0

    .line 99
    iput v2, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortBy:I

    .line 100
    iput v1, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortDirection:I

    .line 103
    :goto_0
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->sort()V

    .line 104
    return-void

    .line 83
    :pswitch_0
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortBy:I

    if-nez v0, :cond_0

    .line 84
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortDirection:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortDirection:I

    goto :goto_0

    .line 86
    :cond_0
    iput v2, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortBy:I

    .line 87
    iput v1, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortDirection:I

    goto :goto_0

    .line 91
    :pswitch_1
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortBy:I

    if-ne v0, v1, :cond_1

    .line 92
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortDirection:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortDirection:I

    goto :goto_0

    .line 94
    :cond_1
    iput v1, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortBy:I

    .line 95
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortDirection:I

    mul-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter;->mSortDirection:I

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized update(Lorg/videolan/vlc/Media;)V
    .locals 2
    .param p1, "item"    # Lorg/videolan/vlc/Media;

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    .line 64
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->remove(Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p0, p1, v0}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->insert(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_0
    monitor-exit p0

    return-void

    .line 63
    .end local v0    # "position":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
