.class Lorg/videolan/vlc/gui/BrowserActivity$ScrollState;
.super Ljava/lang/Object;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollState"
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lorg/videolan/vlc/gui/BrowserActivity;

.field top:I


# direct methods
.method public constructor <init>(Lorg/videolan/vlc/gui/BrowserActivity;II)V
    .locals 0
    .param p2, "index"    # I
    .param p3, "top"    # I

    .prologue
    .line 66
    iput-object p1, p0, Lorg/videolan/vlc/gui/BrowserActivity$ScrollState;->this$0:Lorg/videolan/vlc/gui/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p2, p0, Lorg/videolan/vlc/gui/BrowserActivity$ScrollState;->index:I

    .line 68
    iput p3, p0, Lorg/videolan/vlc/gui/BrowserActivity$ScrollState;->top:I

    .line 69
    return-void
.end method
