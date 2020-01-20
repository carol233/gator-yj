.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "VideoPlayerActivity.java"


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
    .line 463
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$4;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 467
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 469
    const-string v2, "level"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 470
    .local v1, "batteryLevel":I
    const/16 v2, 0x32

    if-lt v1, v2, :cond_1

    .line 471
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$4;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$900(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Landroid/widget/TextView;

    move-result-object v2

    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 476
    :goto_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$4;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$900(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "%d%%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    .end local v1    # "batteryLevel":I
    :cond_0
    :goto_1
    return-void

    .line 472
    .restart local v1    # "batteryLevel":I
    :cond_1
    const/16 v2, 0x1e

    if-lt v1, v2, :cond_2

    .line 473
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$4;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$900(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 475
    :cond_2
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$4;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$900(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 478
    .end local v1    # "batteryLevel":I
    :cond_3
    const-string v2, "org.videolan.vlc.SleepIntent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 479
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$4;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-virtual {v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->finish()V

    goto :goto_1
.end method
