.class Lorg/videolan/vlc/gui/video/VideoGridFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "VideoGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/video/VideoGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/video/VideoGridFragment;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/video/VideoGridFragment;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment$3;->this$0:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 419
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "action":Ljava/lang/String;
    const-string v1, "org.videolan.vlc.gui.ScanStart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment$3;->this$0:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    iget-object v1, v1, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mLayoutFlipperLoading:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 423
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment$3;->this$0:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    iget-object v1, v1, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mTextViewNomedia:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    const-string v1, "org.videolan.vlc.gui.ScanStop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment$3;->this$0:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    iget-object v1, v1, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mLayoutFlipperLoading:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 426
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment$3;->this$0:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    iget-object v1, v1, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mTextViewNomedia:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
