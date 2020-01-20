.class Lorg/videolan/vlc/gui/SpeedSelectorDialog$1;
.super Ljava/lang/Object;
.source "SpeedSelectorDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/SpeedSelectorDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/SpeedSelectorDialog;

.field final synthetic val$speedLabel:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/SpeedSelectorDialog;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lorg/videolan/vlc/gui/SpeedSelectorDialog$1;->this$0:Lorg/videolan/vlc/gui/SpeedSelectorDialog;

    iput-object p2, p0, Lorg/videolan/vlc/gui/SpeedSelectorDialog$1;->val$speedLabel:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 63
    const-wide/high16 v1, 0x4010000000000000L    # 4.0

    int-to-double v3, p2

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v0, v1

    .line 64
    .local v0, "rate":F
    iget-object v1, p0, Lorg/videolan/vlc/gui/SpeedSelectorDialog$1;->val$speedLabel:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.2fx"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-static {}, Lorg/videolan/vlc/LibVLC;->getExistingInstance()Lorg/videolan/vlc/LibVLC;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/videolan/vlc/LibVLC;->setRate(F)V

    .line 66
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 69
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 71
    return-void
.end method
