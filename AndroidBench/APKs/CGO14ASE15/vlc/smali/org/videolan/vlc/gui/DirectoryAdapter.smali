.class public Lorg/videolan/vlc/gui/DirectoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "DirectoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;,
        Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/DirectoryAdapter"


# instance fields
.field private mCurrentDir:Ljava/lang/String;

.field private mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

.field private mCurrentRoot:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRootNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 237
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/videolan/vlc/gui/DirectoryAdapter;->DirectoryAdapter_Core(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method private DirectoryAdapter_Core(Ljava/lang/String;)V
    .locals 3
    .param p1, "rootDir"    # Ljava/lang/String;

    .prologue
    .line 242
    if-eqz p1, :cond_0

    .line 243
    invoke-static {p1}, Lorg/videolan/vlc/Util;->stripTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 244
    :cond_0
    const-string v0, "VLC/DirectoryAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rootMRL is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 246
    new-instance v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    invoke-direct {v0, p0, p1}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;-><init>(Lorg/videolan/vlc/gui/DirectoryAdapter;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mRootNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 247
    iput-object p1, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mRootNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    invoke-direct {p0, v0, p1}, Lorg/videolan/vlc/gui/DirectoryAdapter;->populateNode(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mRootNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iput-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 250
    return-void
.end method

.method public static acceptedPath(Ljava/lang/String;)Z
    .locals 2
    .param p0, "f"    # Ljava/lang/String;

    .prologue
    .line 50
    sget-object v0, Lorg/videolan/vlc/Media;->EXTENSIONS_REGEX:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private getParentDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 432
    :try_start_0
    new-instance v1, Ljava/net/URI;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/videolan/vlc/Util;->PathToURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 437
    :goto_0
    invoke-static {p1}, Lorg/videolan/vlc/Util;->stripTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method private getVisibleName(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 441
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 443
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 447
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private populateNode(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;Ljava/lang/String;)V
    .locals 1
    .param p1, "n"    # Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/videolan/vlc/gui/DirectoryAdapter;->populateNode(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;Ljava/lang/String;I)V

    .line 157
    return-void
.end method

.method private populateNode(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;Ljava/lang/String;I)V
    .locals 22
    .param p1, "n"    # Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "depth"    # I

    .prologue
    .line 165
    if-nez p2, :cond_0

    .line 167
    invoke-static {}, Lorg/videolan/vlc/Util;->getMediaDirectories()[Ljava/lang/String;

    move-result-object v18

    .line 168
    .local v18, "storages":[Ljava/lang/String;
    move-object/from16 v3, v18

    .local v3, "arr$":[Ljava/lang/String;
    array-length v12, v3

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_1

    aget-object v17, v3, v11

    .line 169
    .local v17, "storage":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v5, "f":Ljava/io/File;
    new-instance v4, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/videolan/vlc/gui/DirectoryAdapter;->getVisibleName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v4, v0, v1, v2}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;-><init>(Lorg/videolan/vlc/gui/DirectoryAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .local v4, "child":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v4, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile:Ljava/lang/Boolean;

    .line 172
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-direct {v0, v4, v1, v2}, Lorg/videolan/vlc/gui/DirectoryAdapter;->populateNode(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;Ljava/lang/String;I)V

    .line 173
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->addChildNode(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;)V

    .line 168
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 179
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "child":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    .end local v5    # "f":Ljava/io/File;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v17    # "storage":Ljava/lang/String;
    .end local v18    # "storages":[Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v20

    if-nez v20, :cond_2

    .line 229
    .end local v6    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    return-void

    .line 183
    .restart local v6    # "file":Ljava/io/File;
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v8, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lorg/videolan/vlc/LibVLC;->nativeReadDirectory(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 185
    new-instance v16, Ljava/lang/StringBuilder;

    const/16 v20, 0x64

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 187
    .local v16, "sb":Ljava/lang/StringBuilder;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 227
    :cond_3
    :goto_2
    new-instance v19, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    const-string v20, ".."

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;-><init>(Lorg/videolan/vlc/gui/DirectoryAdapter;Ljava/lang/String;)V

    .line 228
    .local v19, "up":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 190
    .end local v19    # "up":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    :cond_4
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_9

    .line 191
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 193
    .local v7, "filename":Ljava/lang/String;
    const-string v20, "."

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_5

    const-string v20, ".."

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_5

    const-string v20, "."

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 190
    :cond_5
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 195
    :cond_6
    new-instance v15, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v7}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;-><init>(Lorg/videolan/vlc/gui/DirectoryAdapter;Ljava/lang/String;)V

    .line 196
    .local v15, "nss":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v15, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile:Ljava/lang/Boolean;

    .line 197
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v20, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 201
    .local v14, "newPath":Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 204
    invoke-static {v14}, Lorg/videolan/vlc/LibVLC;->nativeIsPathDirectory(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    const/16 v20, 0xa

    move/from16 v0, p3

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    .line 205
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v9, "files_int":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v14, v9}, Lorg/videolan/vlc/LibVLC;->nativeReadDirectory(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 207
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 210
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    .line 211
    .local v13, "mCurrentDir_old":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    .line 212
    add-int/lit8 v20, p3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v15, v14, v1}, Lorg/videolan/vlc/gui/DirectoryAdapter;->populateNode(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;Ljava/lang/String;I)V

    .line 213
    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    .line 222
    .end local v9    # "files_int":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "mCurrentDir_old":Ljava/lang/String;
    :cond_7
    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->addChildNode(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;)V

    goto :goto_4

    .line 216
    :cond_8
    invoke-static {v14}, Lorg/videolan/vlc/gui/DirectoryAdapter;->acceptedPath(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 217
    invoke-virtual {v15}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->setIsFile()V

    goto :goto_5

    .line 224
    .end local v7    # "filename":Ljava/lang/String;
    .end local v14    # "newPath":Ljava/lang/String;
    .end local v15    # "nss":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public browse(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 334
    iget-object v1, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v1, v1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 335
    .local v0, "selectedNode":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    invoke-virtual {v0}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 336
    :goto_0
    return v1

    :cond_0
    iget-object v1, v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/DirectoryAdapter;->browse(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public browse(Ljava/lang/String;)Z
    .locals 11
    .param p1, "directoryName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 340
    iget-object v8, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    if-nez v8, :cond_3

    .line 342
    invoke-static {}, Lorg/videolan/vlc/Util;->getMediaDirectories()[Ljava/lang/String;

    move-result-object v5

    .line 343
    .local v5, "storages":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 344
    .local v4, "storage":Ljava/lang/String;
    invoke-static {v4}, Lorg/videolan/vlc/Util;->stripTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 345
    invoke-virtual {v4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 346
    iput-object v4, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentRoot:Ljava/lang/String;

    .line 347
    iput-object v4, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    .line 348
    iget-object v6, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    invoke-static {v6}, Lorg/videolan/vlc/Util;->stripTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    .line 373
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "storage":Ljava/lang/String;
    .end local v5    # "storages":[Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v6, "VLC/DirectoryAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Browsing to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string v6, ".."

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 376
    iget-object v6, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v6, v6, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->parent:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iput-object v6, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 386
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/DirectoryAdapter;->notifyDataSetChanged()V

    move v6, v7

    .line 387
    :goto_3
    return v6

    .line 343
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "storage":Ljava/lang/String;
    .restart local v5    # "storages":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 354
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "storage":Ljava/lang/String;
    .end local v5    # "storages":[Ljava/lang/String;
    :cond_3
    :try_start_0
    new-instance v8, Ljava/net/URI;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/videolan/vlc/Util;->PathToURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    .line 357
    iget-object v8, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    invoke-static {v8}, Lorg/videolan/vlc/Util;->stripTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    .line 359
    iget-object v8, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    iget-object v9, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentRoot:Ljava/lang/String;

    invoke-direct {p0, v9}, Lorg/videolan/vlc/gui/DirectoryAdapter;->getParentDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 361
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    .line 362
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentRoot:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 364
    :catch_0
    move-exception v1

    .line 365
    .local v1, "e":Ljava/net/URISyntaxException;
    const-string v7, "VLC/DirectoryAdapter"

    const-string v8, "URISyntaxException in browse()"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 367
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :catch_1
    move-exception v1

    .line 368
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v7, "VLC/DirectoryAdapter"

    const-string v8, "NullPointerException in browse()"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 378
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_4
    iget-object v6, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    invoke-virtual {v6, p1}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->getChildNode(Ljava/lang/String;)Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    move-result-object v6

    iput-object v6, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 379
    iget-object v6, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    invoke-virtual {v6}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->subfolderCount()I

    move-result v6

    if-ge v6, v7, :cond_1

    .line 381
    iget-object v6, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v6, v6, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 382
    iget-object v6, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v8, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    invoke-direct {p0, v6, v8}, Lorg/videolan/vlc/gui/DirectoryAdapter;->populateNode(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public getAllMediaLocations()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v0, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v2, v2, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 415
    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/DirectoryAdapter;->getMediaLocation(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    :cond_0
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v0, v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 266
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 272
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMediaLocation(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 396
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v0, v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 397
    const/4 v0, 0x0

    .line 398
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v0, v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v0, v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/videolan/vlc/Util;->PathToURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 277
    iget-object v9, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v9, v9, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 279
    .local v7, "selectedNode":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    move-object/from16 v8, p2

    .line 281
    .local v8, "v":Landroid/view/View;
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 284
    .local v1, "context":Landroid/content/Context;
    if-nez v8, :cond_1

    .line 285
    iget-object v9, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f030027

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v9, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 286
    new-instance v3, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;

    invoke-direct {v3}, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;-><init>()V

    .line 287
    .local v3, "holder":Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;
    const v9, 0x7f060053

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v3, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->layout:Landroid/view/View;

    .line 288
    const v9, 0x7f060055

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v3, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->title:Landroid/widget/TextView;

    .line 289
    const v9, 0x7f060057

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v3, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->text:Landroid/widget/TextView;

    .line 290
    const v9, 0x7f06006f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v3, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->icon:Landroid/widget/ImageView;

    .line 291
    invoke-virtual {v8, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 295
    :goto_0
    iget-object v9, v3, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->layout:Landroid/view/View;

    move/from16 v0, p1

    invoke-static {v9, v0}, Lorg/videolan/vlc/Util;->setItemBackground(Landroid/view/View;I)V

    .line 297
    const-string v4, ""

    .line 298
    .local v4, "holderText":Ljava/lang/String;
    invoke-virtual {v7}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 299
    const-string v9, "VLC/DirectoryAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Loading media "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v5, Lorg/videolan/vlc/Media;

    invoke-virtual/range {p0 .. p1}, Lorg/videolan/vlc/gui/DirectoryAdapter;->getMediaLocation(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Lorg/videolan/vlc/Media;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 301
    .local v5, "m":Lorg/videolan/vlc/Media;
    iget-object v9, v3, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v5}, Lorg/videolan/vlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    invoke-virtual {v5}, Lorg/videolan/vlc/Media;->getSubtitle()Ljava/lang/String;

    move-result-object v4

    .line 306
    .end local v5    # "m":Lorg/videolan/vlc/Media;
    :goto_1
    iget-object v9, v7, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->name:Ljava/lang/String;

    const-string v10, ".."

    if-ne v9, v10, :cond_3

    .line 307
    const v9, 0x7f0b0032

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 324
    :cond_0
    :goto_2
    iget-object v9, v3, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    invoke-virtual {v7}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 326
    iget-object v9, v3, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->icon:Landroid/widget/ImageView;

    const v10, 0x7f0200ae

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 330
    :goto_3
    return-object v8

    .line 293
    .end local v3    # "holder":Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;
    .end local v4    # "holderText":Ljava/lang/String;
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;

    .restart local v3    # "holder":Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;
    goto :goto_0

    .line 304
    .restart local v4    # "holderText":Ljava/lang/String;
    :cond_2
    iget-object v9, v3, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v7}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->getVisibleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 308
    :cond_3
    invoke-virtual {v7}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_0

    .line 309
    invoke-virtual {v7}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->subfolderCount()I

    move-result v2

    .line 310
    .local v2, "folderCount":I
    invoke-virtual {v7}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->subfilesCount()I

    move-result v6

    .line 311
    .local v6, "mediaFileCount":I
    const-string v4, ""

    .line 313
    if-lez v2, :cond_4

    .line 314
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0003

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v2, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 317
    :cond_4
    if-lez v2, :cond_5

    if-lez v6, :cond_5

    .line 318
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 319
    :cond_5
    if-lez v6, :cond_0

    .line 320
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0004

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v6, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 328
    .end local v2    # "folderCount":I
    .end local v6    # "mediaFileCount":I
    :cond_6
    iget-object v9, v3, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->icon:Landroid/widget/ImageView;

    const v10, 0x7f02008f

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3
.end method

.method public getmCurrentDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public isChildFile(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 391
    iget-object v1, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v1, v1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 392
    .local v0, "selectedNode":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    invoke-virtual {v0}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public isRoot()Z
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refresh()V
    .locals 4

    .prologue
    .line 420
    iget-object v2, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v2, v2, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 421
    .local v1, "n":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    iget-object v2, v1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 422
    .end local v1    # "n":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    :cond_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v2, v2, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 424
    new-instance v2, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v3, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;-><init>(Lorg/videolan/vlc/gui/DirectoryAdapter;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 425
    iget-object v2, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v3, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/videolan/vlc/gui/DirectoryAdapter;->populateNode(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/DirectoryAdapter;->notifyDataSetChanged()V

    .line 428
    return-void
.end method
