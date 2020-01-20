.class public Lorg/videolan/vlc/gui/SpeedSelectorDialog;
.super Landroid/app/Dialog;
.source "SpeedSelectorDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0b0062

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/videolan/vlc/gui/SpeedSelectorDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 42
    .local v0, "inflator":Landroid/view/LayoutInflater;
    const v7, 0x7f03003a

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 43
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/SpeedSelectorDialog;->setContentView(Landroid/view/View;)V

    .line 45
    const v7, 0x7f06009f

    invoke-virtual {p0, v7}, Lorg/videolan/vlc/gui/SpeedSelectorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 46
    .local v4, "seekbar":Landroid/widget/SeekBar;
    const v7, 0x7f0600a1

    invoke-virtual {p0, v7}, Lorg/videolan/vlc/gui/SpeedSelectorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 47
    .local v5, "speedLabel":Landroid/widget/TextView;
    const v7, 0x7f0600a2

    invoke-virtual {p0, v7}, Lorg/videolan/vlc/gui/SpeedSelectorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 50
    .local v3, "resetButton":Landroid/widget/Button;
    invoke-static {}, Lorg/videolan/vlc/LibVLC;->getExistingInstance()Lorg/videolan/vlc/LibVLC;

    move-result-object v1

    .line 51
    .local v1, "libVLC":Lorg/videolan/vlc/LibVLC;
    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v1}, Lorg/videolan/vlc/LibVLC;->getRate()F

    move-result v2

    .line 56
    .local v2, "rate":F
    :goto_0
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%.2fx"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4010000000000000L    # 4.0

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v9

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double/2addr v7, v9

    double-to-int v7, v7

    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 59
    new-instance v7, Lorg/videolan/vlc/gui/SpeedSelectorDialog$1;

    invoke-direct {v7, p0, v5}, Lorg/videolan/vlc/gui/SpeedSelectorDialog$1;-><init>(Lorg/videolan/vlc/gui/SpeedSelectorDialog;Landroid/widget/TextView;)V

    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 74
    new-instance v7, Lorg/videolan/vlc/gui/SpeedSelectorDialog$2;

    invoke-direct {v7, p0, v4}, Lorg/videolan/vlc/gui/SpeedSelectorDialog$2;-><init>(Lorg/videolan/vlc/gui/SpeedSelectorDialog;Landroid/widget/SeekBar;)V

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void

    .line 54
    .end local v2    # "rate":F
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .restart local v2    # "rate":F
    goto :goto_0
.end method
