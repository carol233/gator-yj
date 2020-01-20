.class public Lorg/videolan/vlc/gui/audio/AudioListFragment;
.super Lcom/actionbarsherlock/app/SherlockListFragment;
.source "AudioListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/audio/AudioListFragment$AudioListHandler;
    }
.end annotation


# static fields
.field public static final EXTRA_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_NAME:Ljava/lang/String; = "name"

.field public static final EXTRA_NAME2:Ljava/lang/String; = "name2"

.field public static final SORT_BY_LENGTH:I = 0x1

.field public static final SORT_BY_TITLE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "VLC/AudioListFragment"


# instance fields
.field private byLength:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/videolan/vlc/Media;",
            ">;"
        }
    .end annotation
.end field

.field private byMRL:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/videolan/vlc/Media;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioController:Lorg/videolan/vlc/AudioServiceController;

.field private mHandler:Landroid/os/Handler;

.field private mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

.field private mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioListAdapter;

.field private mSortBy:I

.field private mSortReverse:Z

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;-><init>()V

    .line 66
    iput-boolean v0, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mSortReverse:Z

    .line 67
    iput v0, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mSortBy:I

    .line 197
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioListFragment$AudioListHandler;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioListFragment$AudioListHandler;-><init>(Lorg/videolan/vlc/gui/audio/AudioListFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mHandler:Landroid/os/Handler;

    .line 217
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioListFragment$2;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioListFragment$2;-><init>(Lorg/videolan/vlc/gui/audio/AudioListFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->byMRL:Ljava/util/Comparator;

    .line 227
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioListFragment$3;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioListFragment$3;-><init>(Lorg/videolan/vlc/gui/audio/AudioListFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->byLength:Ljava/util/Comparator;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lorg/videolan/vlc/gui/audio/AudioListFragment;)Lorg/videolan/vlc/MediaLibrary;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/audio/AudioListFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

    return-object v0
.end method

.method static synthetic access$100(Lorg/videolan/vlc/gui/audio/AudioListFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/audio/AudioListFragment;

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/videolan/vlc/gui/audio/AudioListFragment;->updateList()V

    return-void
.end method

.method public static set(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "name2"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .prologue
    .line 119
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v0, "name2"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v0, "mode"

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    return-void
.end method

.method private updateList()V
    .locals 12

    .prologue
    .line 239
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 240
    .local v1, "b":Landroid/os/Bundle;
    const-string v10, "name"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 241
    .local v8, "name":Ljava/lang/String;
    const-string v10, "name2"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 242
    .local v9, "name2":Ljava/lang/String;
    const-string v10, "mode"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 246
    .local v7, "mode":I
    const/4 v3, 0x0

    .line 247
    .local v3, "currentItem":Ljava/lang/String;
    const/4 v2, -0x1

    .line 249
    .local v2, "currentIndex":I
    if-eqz v8, :cond_0

    const/4 v10, 0x2

    if-ne v7, v10, :cond_3

    .line 250
    :cond_0
    iget-object v10, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mTitle:Landroid/widget/TextView;

    const v11, 0x7f0b002e

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 251
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v10

    invoke-virtual {v10}, Lorg/videolan/vlc/AudioServiceController;->getItems()Ljava/util/List;

    move-result-object v5

    .line 252
    .local v5, "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v10

    invoke-virtual {v10}, Lorg/videolan/vlc/AudioServiceController;->getItem()Ljava/lang/String;

    move-result-object v3

    .line 253
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lorg/videolan/vlc/MediaLibrary;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/MediaLibrary;

    move-result-object v10

    invoke-virtual {v10, v5}, Lorg/videolan/vlc/MediaLibrary;->getMediaItems(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 260
    .end local v5    # "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "audioList":Ljava/util/List;, "Ljava/util/List<Lorg/videolan/vlc/Media;>;"
    :goto_0
    iget-object v10, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioListAdapter;

    invoke-virtual {v10}, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->clear()V

    .line 261
    iget v10, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mSortBy:I

    packed-switch v10, :pswitch_data_0

    .line 267
    iget-object v10, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->byMRL:Ljava/util/Comparator;

    invoke-static {v0, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 270
    :goto_1
    iget-boolean v10, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mSortReverse:Z

    if-eqz v10, :cond_1

    .line 271
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 274
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_5

    .line 275
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/videolan/vlc/Media;

    .line 276
    .local v6, "media":Lorg/videolan/vlc/Media;
    if-eqz v3, :cond_2

    invoke-virtual {v6}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 277
    move v2, v4

    .line 278
    :cond_2
    iget-object v10, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioListAdapter;

    invoke-virtual {v10, v6}, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->add(Lorg/videolan/vlc/Media;)V

    .line 274
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 256
    .end local v0    # "audioList":Ljava/util/List;, "Ljava/util/List<Lorg/videolan/vlc/Media;>;"
    .end local v4    # "i":I
    .end local v6    # "media":Lorg/videolan/vlc/Media;
    :cond_3
    iget-object v11, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mTitle:Landroid/widget/TextView;

    if-eqz v9, :cond_4

    move-object v10, v9

    :goto_3
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lorg/videolan/vlc/MediaLibrary;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/MediaLibrary;

    move-result-object v10

    invoke-virtual {v10, v8, v9, v7}, Lorg/videolan/vlc/MediaLibrary;->getAudioItems(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0    # "audioList":Ljava/util/List;, "Ljava/util/List<Lorg/videolan/vlc/Media;>;"
    goto :goto_0

    .end local v0    # "audioList":Ljava/util/List;, "Ljava/util/List<Lorg/videolan/vlc/Media;>;"
    :cond_4
    move-object v10, v8

    .line 256
    goto :goto_3

    .line 263
    .restart local v0    # "audioList":Ljava/util/List;, "Ljava/util/List<Lorg/videolan/vlc/Media;>;"
    :pswitch_0
    iget-object v10, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->byLength:Ljava/util/Comparator;

    invoke-static {v0, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 280
    .restart local v4    # "i":I
    :cond_5
    iget-object v10, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioListAdapter;

    invoke-virtual {v10, v2}, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->setCurrentIndex(I)V

    .line 281
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 283
    iget-object v10, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioListAdapter;

    invoke-virtual {v10}, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->notifyDataSetChanged()V

    .line 284
    return-void

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v10, 0x7f0600b1

    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 141
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioListFragment;->getUserVisibleHint()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v8

    .line 191
    :goto_0
    return v8

    .line 143
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 144
    .local v5, "menuInfo":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-nez v5, :cond_1

    .line 145
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v8

    goto :goto_0

    .line 149
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 151
    .local v2, "id":I
    const v8, 0x7f0600b0

    if-eq v2, v8, :cond_2

    if-ne v2, v10, :cond_5

    :cond_2
    move v7, v9

    .line 153
    .local v7, "useAllItems":Z
    :goto_1
    const v8, 0x7f0600ae

    if-eq v2, v8, :cond_3

    if-ne v2, v10, :cond_4

    :cond_3
    move v0, v9

    .line 156
    .local v0, "append":Z
    :cond_4
    const v8, 0x7f0600b2

    if-ne v2, v8, :cond_6

    .line 157
    iget-object v8, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioListAdapter;

    iget v10, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v8, v10}, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/videolan/vlc/Media;

    .line 158
    .local v3, "media":Lorg/videolan/vlc/Media;
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v3}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lorg/videolan/vlc/gui/audio/AudioListFragment$1;

    invoke-direct {v11, p0, v3, v3}, Lorg/videolan/vlc/gui/audio/AudioListFragment$1;-><init>(Lorg/videolan/vlc/gui/audio/AudioListFragment;Ljava/lang/Object;Lorg/videolan/vlc/Media;)V

    invoke-static {v8, v10, v11}, Lorg/videolan/vlc/gui/CommonDialogs;->deleteMedia(Landroid/content/Context;Ljava/lang/String;Lorg/videolan/vlc/VlcRunnable;)Landroid/app/AlertDialog;

    move-result-object v1

    .line 168
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    move v8, v9

    .line 169
    goto :goto_0

    .end local v0    # "append":Z
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v3    # "media":Lorg/videolan/vlc/Media;
    .end local v7    # "useAllItems":Z
    :cond_5
    move v7, v0

    .line 151
    goto :goto_1

    .line 172
    .restart local v0    # "append":Z
    .restart local v7    # "useAllItems":Z
    :cond_6
    const v8, 0x7f0600b4

    if-ne v2, v8, :cond_7

    .line 173
    iget-object v8, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioListAdapter;

    iget v10, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v8, v10}, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/videolan/vlc/Media;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v8, v10}, Lorg/videolan/vlc/gui/audio/AudioUtil;->setRingtone(Lorg/videolan/vlc/Media;Landroid/app/Activity;)V

    move v8, v9

    .line 174
    goto :goto_0

    .line 177
    :cond_7
    if-eqz v7, :cond_8

    .line 178
    iget v6, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 179
    .local v6, "startPosition":I
    iget-object v8, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioListAdapter;

    invoke-virtual {v8}, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->getLocations()Ljava/util/List;

    move-result-object v4

    .line 185
    .local v4, "medias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    if-eqz v0, :cond_9

    .line 186
    iget-object v8, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    invoke-virtual {v8, v4}, Lorg/videolan/vlc/AudioServiceController;->append(Ljava/util/List;)V

    .line 190
    :goto_3
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->start(Landroid/content/Context;)V

    .line 191
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v8

    goto :goto_0

    .line 182
    .end local v4    # "medias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "startPosition":I
    :cond_8
    const/4 v6, 0x0

    .line 183
    .restart local v6    # "startPosition":I
    iget-object v8, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioListAdapter;

    iget v9, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v8, v9}, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->getLocation(I)Ljava/util/List;

    move-result-object v4

    .restart local v4    # "medias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    .line 188
    :cond_9
    iget-object v8, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    invoke-virtual {v8, v4, v6}, Lorg/videolan/vlc/AudioServiceController;->load(Ljava/util/List;I)V

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    .line 81
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/videolan/vlc/MediaLibrary;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/MediaLibrary;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

    .line 83
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioListAdapter;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/videolan/vlc/gui/audio/AudioListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioListAdapter;

    .line 84
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioListAdapter;

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/audio/AudioListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 133
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 134
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 135
    invoke-static {}, Lorg/videolan/vlc/Util;->isPhone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    const v1, 0x7f0600b3

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 137
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    const v1, 0x7f03001f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f060055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mTitle:Landroid/widget/TextView;

    .line 97
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onDestroy()V

    .line 115
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioListAdapter;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->clear()V

    .line 116
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 126
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioListAdapter;

    invoke-virtual {v1}, Lorg/videolan/vlc/gui/audio/AudioListAdapter;->getLocations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lorg/videolan/vlc/AudioServiceController;->load(Ljava/util/List;I)V

    .line 127
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->start(Landroid/content/Context;)V

    .line 128
    invoke-super/range {p0 .. p5}, Lcom/actionbarsherlock/app/SherlockListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 129
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onPause()V

    .line 103
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/MediaLibrary;->removeUpdateHandler(Landroid/os/Handler;)V

    .line 104
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onResume()V

    .line 109
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/MediaLibrary;->addUpdateHandler(Landroid/os/Handler;)V

    .line 110
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/audio/AudioListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 90
    invoke-direct {p0}, Lorg/videolan/vlc/gui/audio/AudioListFragment;->updateList()V

    .line 91
    return-void
.end method
