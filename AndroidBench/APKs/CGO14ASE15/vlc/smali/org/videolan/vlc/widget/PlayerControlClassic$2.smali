.class Lorg/videolan/vlc/widget/PlayerControlClassic$2;
.super Ljava/lang/Object;
.source "PlayerControlClassic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/widget/PlayerControlClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/widget/PlayerControlClassic;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/widget/PlayerControlClassic;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lorg/videolan/vlc/widget/PlayerControlClassic$2;->this$0:Lorg/videolan/vlc/widget/PlayerControlClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlClassic$2;->this$0:Lorg/videolan/vlc/widget/PlayerControlClassic;

    invoke-static {v0}, Lorg/videolan/vlc/widget/PlayerControlClassic;->access$000(Lorg/videolan/vlc/widget/PlayerControlClassic;)Lorg/videolan/vlc/interfaces/OnPlayerControlListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlClassic$2;->this$0:Lorg/videolan/vlc/widget/PlayerControlClassic;

    invoke-static {v0}, Lorg/videolan/vlc/widget/PlayerControlClassic;->access$000(Lorg/videolan/vlc/widget/PlayerControlClassic;)Lorg/videolan/vlc/interfaces/OnPlayerControlListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/vlc/interfaces/OnPlayerControlListener;->onPlayPause()V

    .line 66
    :cond_0
    return-void
.end method
