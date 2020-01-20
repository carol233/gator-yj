.class public Lorg/videolan/vlc/gui/BrowserActivity;
.super Landroid/app/ListActivity;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/BrowserActivity$DirFilter;,
        Lorg/videolan/vlc/gui/BrowserActivity$ScrollState;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/BrowserActivity"


# instance fields
.field private mAdapter:Lorg/videolan/vlc/gui/BrowserAdapter;

.field private mCurrentDir:Ljava/io/File;

.field private mRoots:[Ljava/lang/String;

.field private final mScollStates:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lorg/videolan/vlc/gui/BrowserActivity$ScrollState;",
            ">;"
        }
    .end annotation
.end field

.field private final messageReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 62
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mScollStates:Ljava/util/Stack;

    .line 254
    new-instance v0, Lorg/videolan/vlc/gui/BrowserActivity$4;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/BrowserActivity$4;-><init>(Lorg/videolan/vlc/gui/BrowserActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/BrowserActivity;->messageReceiver:Landroid/content/BroadcastReceiver;

    .line 271
    return-void
.end method

.method private openDir(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 155
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/add/a/path"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v2, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mAdapter:Lorg/videolan/vlc/gui/BrowserAdapter;

    invoke-virtual {v2}, Lorg/videolan/vlc/gui/BrowserAdapter;->clear()V

    .line 160
    iput-object p1, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mCurrentDir:Ljava/io/File;

    .line 161
    new-instance v2, Lorg/videolan/vlc/gui/BrowserActivity$DirFilter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/videolan/vlc/gui/BrowserActivity$DirFilter;-><init>(Lorg/videolan/vlc/gui/BrowserActivity;Lorg/videolan/vlc/gui/BrowserActivity$1;)V

    invoke-virtual {p1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 163
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_2

    array-length v2, v0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_3

    .line 164
    :cond_2
    const v2, 0x7f0b0043

    invoke-static {p0, v2}, Lorg/videolan/vlc/Util;->toaster(Landroid/content/Context;I)V

    .line 165
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/BrowserActivity;->finish()V

    goto :goto_0

    .line 168
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 169
    iget-object v2, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mAdapter:Lorg/videolan/vlc/gui/BrowserAdapter;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Lorg/videolan/vlc/gui/BrowserAdapter;->add(Ljava/io/File;)V

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    :cond_4
    iget-object v2, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mAdapter:Lorg/videolan/vlc/gui/BrowserAdapter;

    invoke-virtual {v2}, Lorg/videolan/vlc/gui/BrowserAdapter;->sort()V

    .line 173
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/BrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method private openStorageDevices([Ljava/lang/String;)V
    .locals 8
    .param p1, "roots"    # [Ljava/lang/String;

    .prologue
    .line 140
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mCurrentDir:Ljava/io/File;

    .line 141
    iget-object v5, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mAdapter:Lorg/videolan/vlc/gui/BrowserAdapter;

    invoke-virtual {v5}, Lorg/videolan/vlc/gui/BrowserAdapter;->clear()V

    .line 142
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 143
    .local v4, "s":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 145
    iget-object v5, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mAdapter:Lorg/videolan/vlc/gui/BrowserAdapter;

    invoke-virtual {v5, v1}, Lorg/videolan/vlc/gui/BrowserAdapter;->add(Ljava/io/File;)V

    .line 142
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "f":Ljava/io/File;
    .end local v4    # "s":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mAdapter:Lorg/videolan/vlc/gui/BrowserAdapter;

    new-instance v6, Ljava/io/File;

    const-string v7, "/add/a/path"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/videolan/vlc/gui/BrowserAdapter;->add(Ljava/io/File;)V

    .line 148
    iget-object v5, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mAdapter:Lorg/videolan/vlc/gui/BrowserAdapter;

    invoke-virtual {v5}, Lorg/videolan/vlc/gui/BrowserAdapter;->sort()V

    .line 151
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/BrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setSelection(I)V

    .line 152
    return-void
.end method

.method private refreshRoots()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lorg/videolan/vlc/Util;->getStorageDirectories()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    invoke-static {}, Lorg/videolan/vlc/Util;->getCustomDirectories()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mRoots:[Ljava/lang/String;

    .line 101
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v1, 0x7f030023

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/BrowserActivity;->setContentView(I)V

    .line 79
    new-instance v1, Lorg/videolan/vlc/gui/BrowserAdapter;

    invoke-direct {v1, p0}, Lorg/videolan/vlc/gui/BrowserAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mAdapter:Lorg/videolan/vlc/gui/BrowserAdapter;

    .line 80
    iget-object v1, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mAdapter:Lorg/videolan/vlc/gui/BrowserAdapter;

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/BrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lorg/videolan/vlc/gui/BrowserActivity;->messageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lorg/videolan/vlc/gui/BrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    invoke-direct {p0}, Lorg/videolan/vlc/gui/BrowserActivity;->refreshRoots()V

    .line 91
    iget-object v1, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mRoots:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/videolan/vlc/gui/BrowserActivity;->openStorageDevices([Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/BrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/BrowserActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 94
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 113
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 114
    .local v2, "position":I
    iget-object v3, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mAdapter:Lorg/videolan/vlc/gui/BrowserAdapter;

    invoke-virtual {v3, v2}, Lorg/videolan/vlc/gui/BrowserAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 115
    .local v1, "item":Ljava/io/File;
    iget-object v3, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mCurrentDir:Ljava/io/File;

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/add/a/path"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lorg/videolan/vlc/Util;->getStorageDirectories()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    const v3, 0x7f0b0085

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 123
    .local v0, "delete":Landroid/view/MenuItem;
    new-instance v3, Lorg/videolan/vlc/gui/BrowserActivity$1;

    invoke-direct {v3, p0, v1}, Lorg/videolan/vlc/gui/BrowserActivity$1;-><init>(Lorg/videolan/vlc/gui/BrowserActivity;Ljava/io/File;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 106
    iget-object v0, p0, Lorg/videolan/vlc/gui/BrowserActivity;->messageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/BrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 107
    iget-object v0, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mAdapter:Lorg/videolan/vlc/gui/BrowserAdapter;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/BrowserAdapter;->clear()V

    .line 108
    iget-object v0, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mScollStates:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 109
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    .line 215
    const/4 v7, 0x4

    if-ne p1, v7, :cond_4

    .line 216
    iget-object v7, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mCurrentDir:Ljava/io/File;

    if-nez v7, :cond_0

    .line 218
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    .line 241
    :goto_0
    return v6

    .line 222
    :cond_0
    const/4 v2, 0x0

    .line 223
    .local v2, "isRoot":Z
    iget-object v0, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mRoots:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 224
    .local v4, "root":Ljava/lang/String;
    iget-object v7, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mCurrentDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 225
    const/4 v2, 0x1

    .line 230
    .end local v4    # "root":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_3

    .line 231
    iget-object v7, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mRoots:[Ljava/lang/String;

    invoke-direct {p0, v7}, Lorg/videolan/vlc/gui/BrowserActivity;->openStorageDevices([Ljava/lang/String;)V

    goto :goto_0

    .line 223
    .restart local v4    # "root":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 234
    .end local v4    # "root":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mCurrentDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/videolan/vlc/gui/BrowserActivity;->openDir(Ljava/io/File;)V

    .line 236
    iget-object v7, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mScollStates:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/videolan/vlc/gui/BrowserActivity$ScrollState;

    .line 237
    .local v5, "ss":Lorg/videolan/vlc/gui/BrowserActivity$ScrollState;
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/BrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget v8, v5, Lorg/videolan/vlc/gui/BrowserActivity$ScrollState;->index:I

    iget v9, v5, Lorg/videolan/vlc/gui/BrowserActivity$ScrollState;->top:I

    invoke-virtual {v7, v8, v9}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0

    .line 241
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "isRoot":Z
    .end local v3    # "len$":I
    .end local v5    # "ss":Lorg/videolan/vlc/gui/BrowserActivity$ScrollState;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 178
    iget-object v6, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mAdapter:Lorg/videolan/vlc/gui/BrowserAdapter;

    invoke-virtual {v6, p3}, Lorg/videolan/vlc/gui/BrowserAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 179
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/add/a/path"

    if-ne v6, v7, :cond_0

    .line 180
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 181
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 182
    .local v4, "input":Landroid/widget/EditText;
    const/high16 v6, 0x80000

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 183
    const v6, 0x7f0b0083

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 184
    const v6, 0x7f0b0084

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 185
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 186
    const v6, 0x7f0b0011

    new-instance v7, Lorg/videolan/vlc/gui/BrowserActivity$2;

    invoke-direct {v7, p0}, Lorg/videolan/vlc/gui/BrowserActivity$2;-><init>(Lorg/videolan/vlc/gui/BrowserActivity;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 190
    const v6, 0x7f0b0010

    new-instance v7, Lorg/videolan/vlc/gui/BrowserActivity$3;

    invoke-direct {v7, p0, v4}, Lorg/videolan/vlc/gui/BrowserActivity$3;-><init>(Lorg/videolan/vlc/gui/BrowserActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 197
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 211
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v4    # "input":Landroid/widget/EditText;
    :goto_0
    return-void

    .line 201
    :cond_0
    new-instance v6, Lorg/videolan/vlc/gui/BrowserActivity$DirFilter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lorg/videolan/vlc/gui/BrowserActivity$DirFilter;-><init>(Lorg/videolan/vlc/gui/BrowserActivity;Lorg/videolan/vlc/gui/BrowserActivity$1;)V

    invoke-virtual {v1, v6}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 202
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_1

    array-length v6, v2

    if-lez v6, :cond_1

    .line 204
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    .line 205
    .local v3, "index":I
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 206
    .local v5, "top":I
    iget-object v6, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mScollStates:Ljava/util/Stack;

    new-instance v7, Lorg/videolan/vlc/gui/BrowserActivity$ScrollState;

    invoke-direct {v7, p0, v3, v5}, Lorg/videolan/vlc/gui/BrowserActivity$ScrollState;-><init>(Lorg/videolan/vlc/gui/BrowserActivity;II)V

    invoke-virtual {v6, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-direct {p0, v1}, Lorg/videolan/vlc/gui/BrowserActivity;->openDir(Ljava/io/File;)V

    goto :goto_0

    .line 209
    .end local v3    # "index":I
    .end local v5    # "top":I
    :cond_1
    const v6, 0x7f0b0043

    invoke-static {p0, v6}, Lorg/videolan/vlc/Util;->toaster(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mCurrentDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 246
    invoke-direct {p0}, Lorg/videolan/vlc/gui/BrowserActivity;->refreshRoots()V

    .line 247
    iget-object v0, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mRoots:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/videolan/vlc/gui/BrowserActivity;->openStorageDevices([Ljava/lang/String;)V

    .line 251
    :goto_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mAdapter:Lorg/videolan/vlc/gui/BrowserAdapter;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/BrowserAdapter;->notifyDataSetChanged()V

    .line 252
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/BrowserActivity;->mCurrentDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/videolan/vlc/gui/BrowserActivity;->openDir(Ljava/io/File;)V

    goto :goto_0
.end method
