.class Lorg/videolan/vlc/MediaLibrary$MediaItemFilter;
.super Ljava/lang/Object;
.source "MediaLibrary.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/MediaLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaItemFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/MediaLibrary;


# direct methods
.method private constructor <init>(Lorg/videolan/vlc/MediaLibrary;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lorg/videolan/vlc/MediaLibrary$MediaItemFilter;->this$0:Lorg/videolan/vlc/MediaLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/videolan/vlc/MediaLibrary;Lorg/videolan/vlc/MediaLibrary$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/videolan/vlc/MediaLibrary;
    .param p2, "x1"    # Lorg/videolan/vlc/MediaLibrary$1;

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lorg/videolan/vlc/MediaLibrary$MediaItemFilter;-><init>(Lorg/videolan/vlc/MediaLibrary;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 6
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "accepted":Z
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v4

    if-nez v4, :cond_0

    .line 362
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lorg/videolan/vlc/Media;->FOLDER_BLACKLIST:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 363
    const/4 v0, 0x1

    .line 374
    :cond_0
    :goto_0
    return v0

    .line 365
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, "fileName":Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 367
    .local v1, "dotIndex":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 368
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, "fileExt":Ljava/lang/String;
    sget-object v4, Lorg/videolan/vlc/Media;->AUDIO_EXTENSIONS:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lorg/videolan/vlc/Media;->VIDEO_EXTENSIONS:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
