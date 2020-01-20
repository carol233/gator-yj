.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 960
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 963
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$2400(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    new-array v0, v6, [Ljava/lang/String;

    .line 964
    .local v0, "arrList":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 965
    .local v3, "i":I
    const/4 v5, 0x0

    .line 966
    .local v5, "listPosition":I
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$2400(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 967
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v0, v3

    .line 969
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v7}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$800(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/vlc/LibVLC;

    move-result-object v7

    invoke-virtual {v7}, Lorg/videolan/vlc/LibVLC;->getAudioTrack()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 970
    move v5, v3

    .line 971
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 973
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0b0056

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6$1;

    invoke-direct {v7, p0, v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6$1;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6;[Ljava/lang/String;)V

    invoke-virtual {v6, v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 997
    .local v1, "dialog":Landroid/app/AlertDialog;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 998
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 999
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1000
    return-void
.end method
