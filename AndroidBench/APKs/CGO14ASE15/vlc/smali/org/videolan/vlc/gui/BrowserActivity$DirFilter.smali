.class Lorg/videolan/vlc/gui/BrowserActivity$DirFilter;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/BrowserActivity;


# direct methods
.method private constructor <init>(Lorg/videolan/vlc/gui/BrowserActivity;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lorg/videolan/vlc/gui/BrowserActivity$DirFilter;->this$0:Lorg/videolan/vlc/gui/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/videolan/vlc/gui/BrowserActivity;Lorg/videolan/vlc/gui/BrowserActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/videolan/vlc/gui/BrowserActivity;
    .param p2, "x1"    # Lorg/videolan/vlc/gui/BrowserActivity$1;

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lorg/videolan/vlc/gui/BrowserActivity$DirFilter;-><init>(Lorg/videolan/vlc/gui/BrowserActivity;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 275
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/videolan/vlc/Media;->FOLDER_BLACKLIST:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
