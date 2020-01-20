.class Lorg/videolan/vlc/gui/MainActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/MainActivity;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/MainActivity;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lorg/videolan/vlc/gui/MainActivity$4;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0x80

    const/4 v4, 0x0

    .line 578
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, "action":Ljava/lang/String;
    const-string v5, "org.videolan.vlc.gui.ShowProgressBar"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 581
    iget-object v4, p0, Lorg/videolan/vlc/gui/MainActivity$4;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/videolan/vlc/gui/MainActivity;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 582
    iget-object v4, p0, Lorg/videolan/vlc/gui/MainActivity$4;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-virtual {v4}, Lorg/videolan/vlc/gui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/Window;->addFlags(I)V

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    const-string v5, "org.videolan.vlc.gui.HideProgressBar"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 584
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity$4;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-virtual {v5, v4}, Lorg/videolan/vlc/gui/MainActivity;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 585
    iget-object v4, p0, Lorg/videolan/vlc/gui/MainActivity$4;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-virtual {v4}, Lorg/videolan/vlc/gui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 586
    :cond_2
    const-string v5, "org.videolan.vlc.gui.ShowTextInfo"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 587
    const-string v5, "info"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, "info":Ljava/lang/String;
    const-string v5, "max"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 589
    .local v2, "max":I
    const-string v5, "progress"

    const/16 v6, 0x64

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 590
    .local v3, "progress":I
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity$4;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-static {v5}, Lorg/videolan/vlc/gui/MainActivity;->access$600(Lorg/videolan/vlc/gui/MainActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity$4;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-static {v5}, Lorg/videolan/vlc/gui/MainActivity;->access$700(Lorg/videolan/vlc/gui/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 592
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity$4;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-static {v5}, Lorg/videolan/vlc/gui/MainActivity;->access$700(Lorg/videolan/vlc/gui/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 593
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity$4;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-static {v5}, Lorg/videolan/vlc/gui/MainActivity;->access$800(Lorg/videolan/vlc/gui/MainActivity;)Landroid/view/View;

    move-result-object v5

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/16 v4, 0x8

    goto :goto_1
.end method
