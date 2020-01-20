.class Lorg/videolan/vlc/gui/audio/AudioListFragment$2;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/audio/AudioListFragment;
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
.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/AudioListFragment;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/AudioListFragment;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioListFragment$2;->this$0:Lorg/videolan/vlc/gui/audio/AudioListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 217
    check-cast p1, Lorg/videolan/vlc/Media;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/videolan/vlc/Media;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/videolan/vlc/gui/audio/AudioListFragment$2;->compare(Lorg/videolan/vlc/Media;Lorg/videolan/vlc/Media;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/videolan/vlc/Media;Lorg/videolan/vlc/Media;)I
    .locals 3
    .param p1, "m1"    # Lorg/videolan/vlc/Media;
    .param p2, "m2"    # Lorg/videolan/vlc/Media;

    .prologue
    .line 219
    if-nez p1, :cond_0

    .line 220
    const/4 v0, -0x1

    .line 223
    :goto_0
    return v0

    .line 221
    :cond_0
    if-nez p2, :cond_1

    .line 222
    const/4 v0, 0x1

    goto :goto_0

    .line 223
    :cond_1
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-virtual {p1}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method
