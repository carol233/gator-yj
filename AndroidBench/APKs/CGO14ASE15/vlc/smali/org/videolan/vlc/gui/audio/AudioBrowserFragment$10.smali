.class Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$10;
.super Ljava/lang/Object;
.source "AudioBrowserFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/videolan/vlc/Media;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$10;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 448
    check-cast p1, Lorg/videolan/vlc/Media;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/videolan/vlc/Media;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$10;->compare(Lorg/videolan/vlc/Media;Lorg/videolan/vlc/Media;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/videolan/vlc/Media;Lorg/videolan/vlc/Media;)I
    .locals 4
    .param p1, "m1"    # Lorg/videolan/vlc/Media;
    .param p2, "m2"    # Lorg/videolan/vlc/Media;

    .prologue
    .line 451
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-virtual {p1}, Lorg/videolan/vlc/Media;->getAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/videolan/vlc/Media;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 452
    .local v0, "res":I
    if-nez v0, :cond_0

    .line 453
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$10;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    invoke-static {v1}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$700(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 454
    :cond_0
    return v0
.end method
