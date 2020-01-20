.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6$1;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6;

.field final synthetic val$arrList:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 975
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6$1;->this$1:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6;

    iput-object p2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6$1;->val$arrList:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "listPosition"    # I

    .prologue
    .line 978
    const/4 v2, -0x1

    .line 980
    .local v2, "trackID":I
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6$1;->this$1:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6;

    iget-object v3, v3, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v3}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$2400(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 981
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6$1;->val$arrList:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 982
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 986
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_1
    if-gez v2, :cond_2

    .line 994
    :goto_0
    return-void

    .line 988
    :cond_2
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6$1;->this$1:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6;

    iget-object v3, v3, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v3}, Lorg/videolan/vlc/DatabaseManager;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/DatabaseManager;

    move-result-object v3

    iget-object v4, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6$1;->this$1:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6;

    iget-object v4, v4, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v4}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$2500(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_AUDIOTRACK:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lorg/videolan/vlc/DatabaseManager;->updateMedia(Ljava/lang/String;Lorg/videolan/vlc/DatabaseManager$mediaColumn;Ljava/lang/Object;)V

    .line 992
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6$1;->this$1:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6;

    iget-object v3, v3, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v3}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$800(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/vlc/LibVLC;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/videolan/vlc/LibVLC;->setAudioTrack(I)I

    .line 993
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
