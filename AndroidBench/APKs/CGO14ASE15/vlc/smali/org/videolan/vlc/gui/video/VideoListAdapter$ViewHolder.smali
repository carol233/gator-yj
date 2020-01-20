.class Lorg/videolan/vlc/gui/video/VideoListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "VideoListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/video/VideoListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field layout:Landroid/view/View;

.field listmode:Z

.field more:Landroid/widget/ImageView;

.field progress:Landroid/widget/ProgressBar;

.field subtitle:Landroid/widget/TextView;

.field thumbnail:Landroid/widget/ImageView;

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
