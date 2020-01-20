.class Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;
.super Ljava/lang/Object;
.source "MediaLibrary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/MediaLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetMediaItemsRunnable"
.end annotation


# instance fields
.field private final directories:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final directoriesScanned:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/videolan/vlc/MediaLibrary;


# direct methods
.method public constructor <init>(Lorg/videolan/vlc/MediaLibrary;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    iput-object p1, p0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->directories:Ljava/util/Stack;

    .line 185
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->directoriesScanned:Ljava/util/HashSet;

    .line 189
    iput-object p2, p0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->mContext:Landroid/content/Context;

    .line 190
    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 195
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/DatabaseManager;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/DatabaseManager;

    move-result-object v3

    .line 198
    .local v3, "DBManager":Lorg/videolan/vlc/DatabaseManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/gui/MainActivity;->showProgressBar(Landroid/content/Context;)V

    .line 200
    invoke-virtual {v3}, Lorg/videolan/vlc/DatabaseManager;->getMediaDirs()Ljava/util/List;

    move-result-object v18

    .line 201
    .local v18, "mediaDirs":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v22

    if-nez v22, :cond_1

    .line 203
    invoke-static {}, Lorg/videolan/vlc/Util;->getMediaDirectories()[Ljava/lang/String;

    move-result-object v21

    .line 204
    .local v21, "storageDirs":[Ljava/lang/String;
    move-object/from16 v5, v21

    .local v5, "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v17, v0

    .local v17, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    aget-object v7, v5, v16

    .line 205
    .local v7, "dir":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    .local v11, "f":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 207
    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 210
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v7    # "dir":Ljava/lang/String;
    .end local v11    # "f":Ljava/io/File;
    .end local v16    # "i$":I
    .end local v17    # "len$":I
    .end local v21    # "storageDirs":[Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->directories:Ljava/util/Stack;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/videolan/vlc/DatabaseManager;->getMedias(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v10

    .line 216
    .local v10, "existingMedias":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/videolan/vlc/Media;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 219
    .local v4, "addedLocations":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$000(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 221
    new-instance v19, Lorg/videolan/vlc/MediaLibrary$MediaItemFilter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/videolan/vlc/MediaLibrary$MediaItemFilter;-><init>(Lorg/videolan/vlc/MediaLibrary;Lorg/videolan/vlc/MediaLibrary$1;)V

    .line 223
    .local v19, "mediaFileFilter":Lorg/videolan/vlc/MediaLibrary$MediaItemFilter;
    const/4 v6, 0x0

    .line 225
    .local v6, "count":I
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v20, "mediaToScan":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_2
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->directories:Ljava/util/Stack;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Stack;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_6

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->directories:Ljava/util/Stack;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 230
    .local v7, "dir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 231
    .local v8, "dirPath":Ljava/lang/String;
    const/4 v11, 0x0

    .line 234
    .local v11, "f":[Ljava/io/File;
    const-string v22, "/proc/"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_2

    const-string v22, "/sys/"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_2

    const-string v22, "/dev/"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v22

    if-nez v22, :cond_2

    .line 239
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 243
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->directoriesScanned:Ljava/util/HashSet;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->directoriesScanned:Ljava/util/HashSet;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v22, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/.nomedia"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v22

    if-nez v22, :cond_2

    .line 255
    :try_start_3
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 256
    move-object v5, v11

    .local v5, "arr$":[Ljava/io/File;
    array-length v0, v5

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/16 v16, 0x0

    .restart local v16    # "i$":I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    aget-object v12, v5, v16

    .line 257
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 258
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 256
    :cond_3
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 240
    .end local v5    # "arr$":[Ljava/io/File;
    .end local v12    # "file":Ljava/io/File;
    .end local v16    # "i$":I
    .end local v17    # "len$":I
    :catch_0
    move-exception v9

    .line 241
    .local v9, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 303
    .end local v7    # "dir":Ljava/io/File;
    .end local v8    # "dirPath":Ljava/lang/String;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "f":[Ljava/io/File;
    :catchall_0
    move-exception v22

    const/4 v15, 0x0

    .local v15, "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/videolan/vlc/MediaLibrary;->access$300(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v15, v0, :cond_c

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/videolan/vlc/MediaLibrary;->access$300(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Handler;

    .line 305
    .local v14, "h":Landroid/os/Handler;
    const/16 v23, 0x64

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 303
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 259
    .end local v14    # "h":Landroid/os/Handler;
    .end local v15    # "i":I
    .restart local v5    # "arr$":[Ljava/io/File;
    .restart local v7    # "dir":Ljava/io/File;
    .restart local v8    # "dirPath":Ljava/lang/String;
    .restart local v11    # "f":[Ljava/io/File;
    .restart local v12    # "file":Ljava/io/File;
    .restart local v16    # "i$":I
    .restart local v17    # "len$":I
    :cond_4
    :try_start_5
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->directories:Ljava/util/Stack;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 264
    .end local v5    # "arr$":[Ljava/io/File;
    .end local v12    # "file":Ljava/io/File;
    .end local v16    # "i$":I
    .end local v17    # "len$":I
    :catch_1
    move-exception v9

    .line 267
    .local v9, "e":Ljava/lang/Exception;
    goto/16 :goto_1

    .line 270
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$200(Lorg/videolan/vlc/MediaLibrary;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 271
    const-string v22, "VLC/MediaLibrary"

    const-string v23, "Stopping scan"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 303
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$300(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_10

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$300(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Handler;

    .line 305
    .restart local v14    # "h":Landroid/os/Handler;
    const/16 v22, 0x64

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 303
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 277
    .end local v7    # "dir":Ljava/io/File;
    .end local v8    # "dirPath":Ljava/lang/String;
    .end local v11    # "f":[Ljava/io/File;
    .end local v14    # "h":Landroid/os/Handler;
    .end local v15    # "i":I
    :cond_6
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_19

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    .line 278
    .restart local v12    # "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/Util;->PathToURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 279
    .local v13, "fileURI":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v6, v2}, Lorg/videolan/vlc/gui/MainActivity;->sendTextInfo(Landroid/content/Context;Ljava/lang/String;II)V

    .line 281
    add-int/lit8 v6, v6, 0x1

    .line 282
    invoke-virtual {v10, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 287
    invoke-virtual {v4, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$000(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual {v4, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_8
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$200(Lorg/videolan/vlc/MediaLibrary;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 297
    const-string v22, "VLC/MediaLibrary"

    const-string v23, "Stopping scan"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 303
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$300(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_14

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$300(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Handler;

    .line 305
    .restart local v14    # "h":Landroid/os/Handler;
    const/16 v22, 0x64

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 303
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 294
    .end local v14    # "h":Landroid/os/Handler;
    .end local v15    # "i":I
    :cond_9
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$000(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/ArrayList;

    move-result-object v22

    new-instance v23, Lorg/videolan/vlc/Media;

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v13, v1}, Lorg/videolan/vlc/Media;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    .line 321
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "fileURI":Ljava/lang/String;
    .end local v16    # "i$":Ljava/util/Iterator;
    .restart local v15    # "i":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/videolan/vlc/gui/MainActivity;->clearTextInfo(Landroid/content/Context;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/videolan/vlc/gui/MainActivity;->hideProgressBar(Landroid/content/Context;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->actionScanStop(Landroid/content/Context;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/videolan/vlc/MediaLibrary;->access$400(Lorg/videolan/vlc/MediaLibrary;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 327
    const-string v23, "VLC/MediaLibrary"

    const-string v24, "Restarting scan"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lorg/videolan/vlc/MediaLibrary;->access$402(Lorg/videolan/vlc/MediaLibrary;Z)Z

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/videolan/vlc/MediaLibrary;->access$500(Lorg/videolan/vlc/MediaLibrary;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 303
    :goto_9
    throw v22

    .line 321
    .restart local v7    # "dir":Ljava/io/File;
    .restart local v8    # "dirPath":Ljava/lang/String;
    .restart local v11    # "f":[Ljava/io/File;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/gui/MainActivity;->clearTextInfo(Landroid/content/Context;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/gui/MainActivity;->hideProgressBar(Landroid/content/Context;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->actionScanStop(Landroid/content/Context;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$400(Lorg/videolan/vlc/MediaLibrary;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 327
    const-string v22, "VLC/MediaLibrary"

    const-string v23, "Restarting scan"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/videolan/vlc/MediaLibrary;->access$402(Lorg/videolan/vlc/MediaLibrary;Z)Z

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$500(Lorg/videolan/vlc/MediaLibrary;)Landroid/os/Handler;

    move-result-object v22

    .end local v7    # "dir":Ljava/io/File;
    .end local v8    # "dirPath":Ljava/lang/String;
    .end local v11    # "f":[Ljava/io/File;
    :goto_a
    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 335
    :goto_b
    return-void

    .line 309
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/videolan/vlc/MediaLibrary;->access$200(Lorg/videolan/vlc/MediaLibrary;)Z

    move-result v23

    if-nez v23, :cond_a

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v23

    const-string v24, "mounted"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 310
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 311
    .restart local v13    # "fileURI":Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 313
    .end local v13    # "fileURI":Ljava/lang/String;
    :cond_d
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lorg/videolan/vlc/DatabaseManager;->removeMedias(Ljava/util/Set;)V

    .line 315
    invoke-virtual {v3}, Lorg/videolan/vlc/DatabaseManager;->getMediaDirs()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_e
    :goto_d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    .line 316
    .restart local v12    # "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v23

    if-nez v23, :cond_e

    .line 317
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lorg/videolan/vlc/DatabaseManager;->removeDir(Ljava/lang/String;)V

    goto :goto_d

    .line 331
    .end local v12    # "file":Ljava/io/File;
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lorg/videolan/vlc/MediaLibrary;->access$602(Lorg/videolan/vlc/MediaLibrary;Landroid/content/Context;)Landroid/content/Context;

    .line 332
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->mContext:Landroid/content/Context;

    goto/16 :goto_9

    .line 309
    .restart local v7    # "dir":Ljava/io/File;
    .restart local v8    # "dirPath":Ljava/lang/String;
    .restart local v11    # "f":[Ljava/io/File;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$200(Lorg/videolan/vlc/MediaLibrary;)Z

    move-result v22

    if-nez v22, :cond_b

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v22

    const-string v23, "mounted"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 310
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_11

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 311
    .restart local v13    # "fileURI":Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 313
    .end local v13    # "fileURI":Ljava/lang/String;
    :cond_11
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/videolan/vlc/DatabaseManager;->removeMedias(Ljava/util/Set;)V

    .line 315
    invoke-virtual {v3}, Lorg/videolan/vlc/DatabaseManager;->getMediaDirs()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_12
    :goto_f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    .line 316
    .restart local v12    # "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v22

    if-nez v22, :cond_12

    .line 317
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/videolan/vlc/DatabaseManager;->removeDir(Ljava/lang/String;)V

    goto :goto_f

    .line 331
    .end local v12    # "file":Ljava/io/File;
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/videolan/vlc/MediaLibrary;->access$602(Lorg/videolan/vlc/MediaLibrary;Landroid/content/Context;)Landroid/content/Context;

    .line 332
    .end local v7    # "dir":Ljava/io/File;
    .end local v8    # "dirPath":Ljava/lang/String;
    .end local v11    # "f":[Ljava/io/File;
    :goto_10
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->mContext:Landroid/content/Context;

    goto/16 :goto_b

    .line 309
    .restart local v12    # "file":Ljava/io/File;
    .restart local v13    # "fileURI":Ljava/lang/String;
    .restart local v16    # "i$":Ljava/util/Iterator;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$200(Lorg/videolan/vlc/MediaLibrary;)Z

    move-result v22

    if-nez v22, :cond_15

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v22

    const-string v23, "mounted"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 310
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_11
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_16

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "fileURI":Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 311
    .restart local v13    # "fileURI":Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 321
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/gui/MainActivity;->clearTextInfo(Landroid/content/Context;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/gui/MainActivity;->hideProgressBar(Landroid/content/Context;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->actionScanStop(Landroid/content/Context;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$400(Lorg/videolan/vlc/MediaLibrary;)Z

    move-result v22

    if-eqz v22, :cond_18

    .line 327
    const-string v22, "VLC/MediaLibrary"

    const-string v23, "Restarting scan"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/videolan/vlc/MediaLibrary;->access$402(Lorg/videolan/vlc/MediaLibrary;Z)Z

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$500(Lorg/videolan/vlc/MediaLibrary;)Landroid/os/Handler;

    move-result-object v22

    goto/16 :goto_a

    .line 313
    :cond_16
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/videolan/vlc/DatabaseManager;->removeMedias(Ljava/util/Set;)V

    .line 315
    invoke-virtual {v3}, Lorg/videolan/vlc/DatabaseManager;->getMediaDirs()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_17
    :goto_12
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_15

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "file":Ljava/io/File;
    check-cast v12, Ljava/io/File;

    .line 316
    .restart local v12    # "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v22

    if-nez v22, :cond_17

    .line 317
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/videolan/vlc/DatabaseManager;->removeDir(Ljava/lang/String;)V

    goto :goto_12

    .line 331
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/videolan/vlc/MediaLibrary;->access$602(Lorg/videolan/vlc/MediaLibrary;Landroid/content/Context;)Landroid/content/Context;

    goto/16 :goto_10

    .line 303
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "fileURI":Ljava/lang/String;
    .end local v15    # "i":I
    :cond_19
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$300(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_1a

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$300(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Handler;

    .line 305
    .restart local v14    # "h":Landroid/os/Handler;
    const/16 v22, 0x64

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 303
    add-int/lit8 v15, v15, 0x1

    goto :goto_13

    .line 309
    .end local v14    # "h":Landroid/os/Handler;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$200(Lorg/videolan/vlc/MediaLibrary;)Z

    move-result v22

    if-nez v22, :cond_1b

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v22

    const-string v23, "mounted"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 310
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_14
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 311
    .restart local v13    # "fileURI":Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 321
    .end local v13    # "fileURI":Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/gui/MainActivity;->clearTextInfo(Landroid/content/Context;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/gui/MainActivity;->hideProgressBar(Landroid/content/Context;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->actionScanStop(Landroid/content/Context;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$400(Lorg/videolan/vlc/MediaLibrary;)Z

    move-result v22

    if-eqz v22, :cond_1e

    .line 327
    const-string v22, "VLC/MediaLibrary"

    const-string v23, "Restarting scan"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/videolan/vlc/MediaLibrary;->access$402(Lorg/videolan/vlc/MediaLibrary;Z)Z

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$500(Lorg/videolan/vlc/MediaLibrary;)Landroid/os/Handler;

    move-result-object v22

    goto/16 :goto_a

    .line 313
    :cond_1c
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/videolan/vlc/DatabaseManager;->removeMedias(Ljava/util/Set;)V

    .line 315
    invoke-virtual {v3}, Lorg/videolan/vlc/DatabaseManager;->getMediaDirs()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1d
    :goto_15
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    .line 316
    .restart local v12    # "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v22

    if-nez v22, :cond_1d

    .line 317
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/videolan/vlc/DatabaseManager;->removeDir(Ljava/lang/String;)V

    goto :goto_15

    .line 331
    .end local v12    # "file":Ljava/io/File;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/videolan/vlc/MediaLibrary;->access$602(Lorg/videolan/vlc/MediaLibrary;Landroid/content/Context;)Landroid/content/Context;

    goto/16 :goto_10
.end method
