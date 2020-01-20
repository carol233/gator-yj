.class Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$9;
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
    .line 439
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$9;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 439
    check-cast p1, Lorg/videolan/vlc/Media;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/videolan/vlc/Media;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$9;->compare(Lorg/videolan/vlc/Media;Lorg/videolan/vlc/Media;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/videolan/vlc/Media;Lorg/videolan/vlc/Media;)I
    .locals 4
    .param p1, "m1"    # Lorg/videolan/vlc/Media;
    .param p2, "m2"    # Lorg/videolan/vlc/Media;

    .prologue
    .line 442
    invoke-virtual {p1}, Lorg/videolan/vlc/Media;->getLength()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/videolan/vlc/Media;->getLength()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, -0x1

    .line 444
    :goto_0
    return v0

    .line 443
    :cond_0
    invoke-virtual {p1}, Lorg/videolan/vlc/Media;->getLength()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/videolan/vlc/Media;->getLength()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 444
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
