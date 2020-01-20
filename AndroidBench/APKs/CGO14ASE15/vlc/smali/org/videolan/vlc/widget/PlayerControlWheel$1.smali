.class Lorg/videolan/vlc/widget/PlayerControlWheel$1;
.super Ljava/lang/Object;
.source "PlayerControlWheel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/widget/PlayerControlWheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/widget/PlayerControlWheel;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/widget/PlayerControlWheel;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lorg/videolan/vlc/widget/PlayerControlWheel$1;->this$0:Lorg/videolan/vlc/widget/PlayerControlWheel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const-wide/16 v6, 0x0

    .line 81
    if-nez p3, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v1, p0, Lorg/videolan/vlc/widget/PlayerControlWheel$1;->this$0:Lorg/videolan/vlc/widget/PlayerControlWheel;

    invoke-static {v1}, Lorg/videolan/vlc/widget/PlayerControlWheel;->access$400(Lorg/videolan/vlc/widget/PlayerControlWheel;)I

    move-result v1

    sub-int v0, p2, v1

    .line 84
    .local v0, "delta":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_3

    .line 85
    int-to-float v1, v0

    int-to-float v2, v0

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    const/high16 v3, 0x40e00000    # 7.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 86
    iget-object v1, p0, Lorg/videolan/vlc/widget/PlayerControlWheel$1;->this$0:Lorg/videolan/vlc/widget/PlayerControlWheel;

    iget-object v2, p0, Lorg/videolan/vlc/widget/PlayerControlWheel$1;->this$0:Lorg/videolan/vlc/widget/PlayerControlWheel;

    invoke-static {v2}, Lorg/videolan/vlc/widget/PlayerControlWheel;->access$000(Lorg/videolan/vlc/widget/PlayerControlWheel;)J

    move-result-wide v2

    mul-int/lit16 v4, v0, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/videolan/vlc/widget/PlayerControlWheel;->access$202(Lorg/videolan/vlc/widget/PlayerControlWheel;J)J

    .line 90
    :goto_1
    iget-object v1, p0, Lorg/videolan/vlc/widget/PlayerControlWheel$1;->this$0:Lorg/videolan/vlc/widget/PlayerControlWheel;

    invoke-static {v1}, Lorg/videolan/vlc/widget/PlayerControlWheel;->access$200(Lorg/videolan/vlc/widget/PlayerControlWheel;)J

    move-result-wide v1

    cmp-long v1, v1, v6

    if-ltz v1, :cond_2

    iget-object v1, p0, Lorg/videolan/vlc/widget/PlayerControlWheel$1;->this$0:Lorg/videolan/vlc/widget/PlayerControlWheel;

    invoke-static {v1}, Lorg/videolan/vlc/widget/PlayerControlWheel;->access$100(Lorg/videolan/vlc/widget/PlayerControlWheel;)Lorg/videolan/vlc/interfaces/OnPlayerControlListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 91
    iget-object v1, p0, Lorg/videolan/vlc/widget/PlayerControlWheel$1;->this$0:Lorg/videolan/vlc/widget/PlayerControlWheel;

    invoke-static {v1}, Lorg/videolan/vlc/widget/PlayerControlWheel;->access$300(Lorg/videolan/vlc/widget/PlayerControlWheel;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 92
    iget-object v1, p0, Lorg/videolan/vlc/widget/PlayerControlWheel$1;->this$0:Lorg/videolan/vlc/widget/PlayerControlWheel;

    invoke-static {v1}, Lorg/videolan/vlc/widget/PlayerControlWheel;->access$100(Lorg/videolan/vlc/widget/PlayerControlWheel;)Lorg/videolan/vlc/interfaces/OnPlayerControlListener;

    move-result-object v2

    const-string v3, "%s%ds (%s)"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-ltz v0, :cond_4

    const-string v1, "+"

    :goto_2
    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    iget-object v5, p0, Lorg/videolan/vlc/widget/PlayerControlWheel$1;->this$0:Lorg/videolan/vlc/widget/PlayerControlWheel;

    invoke-static {v5}, Lorg/videolan/vlc/widget/PlayerControlWheel;->access$200(Lorg/videolan/vlc/widget/PlayerControlWheel;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/videolan/vlc/Util;->millisToString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/videolan/vlc/interfaces/OnPlayerControlListener;->onShowInfo(Ljava/lang/String;)V

    .line 96
    :cond_2
    :goto_3
    iget-object v1, p0, Lorg/videolan/vlc/widget/PlayerControlWheel$1;->this$0:Lorg/videolan/vlc/widget/PlayerControlWheel;

    invoke-static {v1}, Lorg/videolan/vlc/widget/PlayerControlWheel;->access$300(Lorg/videolan/vlc/widget/PlayerControlWheel;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lorg/videolan/vlc/widget/PlayerControlWheel$1;->this$0:Lorg/videolan/vlc/widget/PlayerControlWheel;

    invoke-static {v1}, Lorg/videolan/vlc/widget/PlayerControlWheel;->access$400(Lorg/videolan/vlc/widget/PlayerControlWheel;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 89
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 92
    :cond_4
    const-string v1, ""

    goto :goto_2

    .line 94
    :cond_5
    iget-object v1, p0, Lorg/videolan/vlc/widget/PlayerControlWheel$1;->this$0:Lorg/videolan/vlc/widget/PlayerControlWheel;

    invoke-static {v1}, Lorg/videolan/vlc/widget/PlayerControlWheel;->access$100(Lorg/videolan/vlc/widget/PlayerControlWheel;)Lorg/videolan/vlc/interfaces/OnPlayerControlListener;

    move-result-object v1

    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0054

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/videolan/vlc/interfaces/OnPlayerControlListener;->onShowInfo(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 62
    iget-object v2, p0, Lorg/videolan/vlc/widget/PlayerControlWheel$1;->this$0:Lorg/videolan/vlc/widget/PlayerControlWheel;

    iget-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel$1;->this$0:Lorg/videolan/vlc/widget/PlayerControlWheel;

    invoke-static {v0}, Lorg/videolan/vlc/widget/PlayerControlWheel;->access$100(Lorg/videolan/vlc/widget/PlayerControlWheel;)Lorg/videolan/vlc/interfaces/OnPlayerControlListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel$1;->this$0:Lorg/videolan/vlc/widget/PlayerControlWheel;

    invoke-static {v0}, Lorg/videolan/vlc/widget/PlayerControlWheel;->access$100(Lorg/videolan/vlc/widget/PlayerControlWheel;)Lorg/videolan/vlc/interfaces/OnPlayerControlListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/vlc/interfaces/OnPlayerControlListener;->onWheelStart()J

    move-result-wide v0

    :goto_0
    invoke-static {v2, v0, v1}, Lorg/videolan/vlc/widget/PlayerControlWheel;->access$002(Lorg/videolan/vlc/widget/PlayerControlWheel;J)J

    .line 63
    iget-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel$1;->this$0:Lorg/videolan/vlc/widget/PlayerControlWheel;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lorg/videolan/vlc/widget/PlayerControlWheel;->access$202(Lorg/videolan/vlc/widget/PlayerControlWheel;J)J

    .line 64
    return-void

    .line 62
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel$1;->this$0:Lorg/videolan/vlc/widget/PlayerControlWheel;

    invoke-static {v0}, Lorg/videolan/vlc/widget/PlayerControlWheel;->access$100(Lorg/videolan/vlc/widget/PlayerControlWheel;)Lorg/videolan/vlc/interfaces/OnPlayerControlListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel$1;->this$0:Lorg/videolan/vlc/widget/PlayerControlWheel;

    invoke-static {v0}, Lorg/videolan/vlc/widget/PlayerControlWheel;->access$200(Lorg/videolan/vlc/widget/PlayerControlWheel;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 71
    iget-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel$1;->this$0:Lorg/videolan/vlc/widget/PlayerControlWheel;

    invoke-static {v0}, Lorg/videolan/vlc/widget/PlayerControlWheel;->access$100(Lorg/videolan/vlc/widget/PlayerControlWheel;)Lorg/videolan/vlc/interfaces/OnPlayerControlListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/vlc/interfaces/OnPlayerControlListener;->onPlayPause()V

    .line 74
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel$1;->this$0:Lorg/videolan/vlc/widget/PlayerControlWheel;

    invoke-static {v0}, Lorg/videolan/vlc/widget/PlayerControlWheel;->access$100(Lorg/videolan/vlc/widget/PlayerControlWheel;)Lorg/videolan/vlc/interfaces/OnPlayerControlListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/videolan/vlc/interfaces/OnPlayerControlListener;->onShowInfo(Ljava/lang/String;)V

    .line 76
    :cond_1
    iget-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel$1;->this$0:Lorg/videolan/vlc/widget/PlayerControlWheel;

    invoke-static {v0}, Lorg/videolan/vlc/widget/PlayerControlWheel;->access$400(Lorg/videolan/vlc/widget/PlayerControlWheel;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 77
    return-void

    .line 72
    :cond_2
    iget-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel$1;->this$0:Lorg/videolan/vlc/widget/PlayerControlWheel;

    invoke-static {v0}, Lorg/videolan/vlc/widget/PlayerControlWheel;->access$300(Lorg/videolan/vlc/widget/PlayerControlWheel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel$1;->this$0:Lorg/videolan/vlc/widget/PlayerControlWheel;

    invoke-static {v0}, Lorg/videolan/vlc/widget/PlayerControlWheel;->access$100(Lorg/videolan/vlc/widget/PlayerControlWheel;)Lorg/videolan/vlc/interfaces/OnPlayerControlListener;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/widget/PlayerControlWheel$1;->this$0:Lorg/videolan/vlc/widget/PlayerControlWheel;

    invoke-static {v1}, Lorg/videolan/vlc/widget/PlayerControlWheel;->access$200(Lorg/videolan/vlc/widget/PlayerControlWheel;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/videolan/vlc/interfaces/OnPlayerControlListener;->onSeekTo(J)V

    goto :goto_0
.end method
