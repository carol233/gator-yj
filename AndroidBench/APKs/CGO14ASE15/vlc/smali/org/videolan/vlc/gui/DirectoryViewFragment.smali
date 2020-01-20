.class public Lorg/videolan/vlc/gui/DirectoryViewFragment;
.super Lcom/actionbarsherlock/app/SherlockListFragment;
.source "DirectoryViewFragment.java"

# interfaces
.implements Lorg/videolan/vlc/interfaces/ISortable;


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/DirectoryViewFragment"


# instance fields
.field private mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;

.field private final messageReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;-><init>()V

    .line 196
    new-instance v0, Lorg/videolan/vlc/gui/DirectoryViewFragment$3;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/DirectoryViewFragment$3;-><init>(Lorg/videolan/vlc/gui/DirectoryViewFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->messageReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lorg/videolan/vlc/gui/DirectoryViewFragment;)Lorg/videolan/vlc/gui/DirectoryAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/DirectoryViewFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;

    return-object v0
.end method

.method private openMediaFile(I)V
    .locals 4
    .param p1, "p"    # I

    .prologue
    .line 169
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v0

    .line 170
    .local v0, "audioController":Lorg/videolan/vlc/AudioServiceController;
    iget-object v2, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;

    invoke-virtual {v2, p1}, Lorg/videolan/vlc/gui/DirectoryAdapter;->getMediaLocation(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "mediaFile":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/LibVLC;->getExistingInstance()Lorg/videolan/vlc/LibVLC;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/videolan/vlc/LibVLC;->getExistingInstance()Lorg/videolan/vlc/LibVLC;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/videolan/vlc/LibVLC;->hasVideoTrack(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 175
    :cond_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;

    invoke-virtual {v2}, Lorg/videolan/vlc/gui/DirectoryAdapter;->getAllMediaLocations()Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/videolan/vlc/AudioServiceController;->load(Ljava/util/List;I)V

    .line 176
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->start(Landroid/content/Context;)V

    .line 183
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->start(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public isRootDirectory()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/DirectoryAdapter;->isRoot()Z

    move-result v0

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 117
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->getUserVisibleHint()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    .line 149
    :goto_0
    return v4

    .line 119
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 120
    .local v2, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-nez v2, :cond_1

    .line 121
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    goto :goto_0

    .line 123
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 124
    .local v1, "id":I
    iget-object v5, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;

    iget v6, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v5, v6}, Lorg/videolan/vlc/gui/DirectoryAdapter;->getMediaLocation(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "mediaLocation":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 126
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    goto :goto_0

    .line 128
    :cond_2
    const v5, 0x7f0600b5

    if-ne v1, v5, :cond_3

    .line 129
    iget v5, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v5}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->openMediaFile(I)V

    goto :goto_0

    .line 131
    :cond_3
    const v5, 0x7f0600b6

    if-ne v1, v5, :cond_4

    .line 132
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/videolan/vlc/AudioServiceController;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_4
    const v5, 0x7f0600b7

    if-ne v1, v5, :cond_6

    .line 135
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    new-instance v5, Lorg/videolan/vlc/gui/DirectoryViewFragment$2;

    invoke-direct {v5, p0}, Lorg/videolan/vlc/gui/DirectoryViewFragment$2;-><init>(Lorg/videolan/vlc/gui/DirectoryViewFragment;)V

    invoke-static {v4, v3, v5}, Lorg/videolan/vlc/gui/CommonDialogs;->deleteMedia(Landroid/content/Context;Ljava/lang/String;Lorg/videolan/vlc/VlcRunnable;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 142
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 149
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    goto :goto_0

    .line 143
    :cond_6
    const v5, 0x7f0600b8

    if-ne v1, v5, :cond_7

    .line 144
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v5

    invoke-virtual {v5, v3, v7, v7, v4}, Lorg/videolan/vlc/AudioServiceController;->load(Ljava/lang/String;IZZ)V

    .line 145
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->start(Landroid/content/Context;)V

    goto :goto_1

    .line 146
    :cond_7
    const v4, 0x7f0600b9

    if-ne v1, v4, :cond_5

    .line 147
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    new-instance v1, Lorg/videolan/vlc/gui/DirectoryAdapter;

    invoke-direct {v1}, Lorg/videolan/vlc/gui/DirectoryAdapter;-><init>()V

    iput-object v1, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->messageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 107
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 109
    .local v1, "position":I
    iget-object v2, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;

    invoke-virtual {v2, v1}, Lorg/videolan/vlc/gui/DirectoryAdapter;->isChildFile(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 111
    .local v0, "menuInflater":Landroid/view/MenuInflater;
    const v2, 0x7f0f0002

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 113
    .end local v0    # "menuInflater":Landroid/view/MenuInflater;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    const v2, 0x7f030026

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 81
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 83
    .local v0, "listView":Landroid/widget/ListView;
    new-instance v2, Lorg/videolan/vlc/gui/DirectoryViewFragment$1;

    invoke-direct {v2, p0}, Lorg/videolan/vlc/gui/DirectoryViewFragment$1;-><init>(Lorg/videolan/vlc/gui/DirectoryViewFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 95
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 96
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onDestroy()V

    .line 102
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->messageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 103
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "p"    # I
    .param p4, "id"    # J

    .prologue
    .line 154
    iget-object v1, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;

    invoke-virtual {v1, p3}, Lorg/videolan/vlc/gui/DirectoryAdapter;->browse(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 155
    .local v0, "success":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    invoke-direct {p0, p3}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->openMediaFile(I)V

    .line 158
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/DirectoryAdapter;->refresh()V

    .line 194
    :cond_0
    return-void
.end method

.method public showParentDirectory()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/DirectoryAdapter;->browse(Ljava/lang/String;)Z

    .line 166
    return-void
.end method

.method public sortBy(I)V
    .locals 2
    .param p1, "sortby"    # I

    .prologue
    .line 188
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0042

    invoke-static {v0, v1}, Lorg/videolan/vlc/Util;->toaster(Landroid/content/Context;I)V

    .line 189
    return-void
.end method
