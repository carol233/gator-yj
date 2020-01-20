.class public Lorg/videolan/vlc/gui/AdvFuncDialog;
.super Landroid/app/Dialog;
.source "AdvFuncDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/AdvFuncPopupWindow"

.field private static mAdvFuncView:Landroid/view/View;


# instance fields
.field private mSleep:Landroid/widget/ImageButton;

.field private final mSleepListener:Landroid/view/View$OnClickListener;

.field private mSpeed:Landroid/widget/ImageButton;

.field private mSpeedInfo:Landroid/widget/TextView;

.field private final mSpeedLabelListener:Landroid/view/View$OnClickListener;

.field private mSpeedSelectorDialog:Lorg/videolan/vlc/gui/SpeedSelectorDialog;

.field private mTimeSleepDialog:Lorg/videolan/vlc/gui/TimeSleepDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v1, Lorg/videolan/vlc/gui/AdvFuncDialog$1;

    invoke-direct {v1, p0}, Lorg/videolan/vlc/gui/AdvFuncDialog$1;-><init>(Lorg/videolan/vlc/gui/AdvFuncDialog;)V

    iput-object v1, p0, Lorg/videolan/vlc/gui/AdvFuncDialog;->mSleepListener:Landroid/view/View$OnClickListener;

    .line 86
    new-instance v1, Lorg/videolan/vlc/gui/AdvFuncDialog$2;

    invoke-direct {v1, p0}, Lorg/videolan/vlc/gui/AdvFuncDialog$2;-><init>(Lorg/videolan/vlc/gui/AdvFuncDialog;)V

    iput-object v1, p0, Lorg/videolan/vlc/gui/AdvFuncDialog;->mSpeedLabelListener:Landroid/view/View$OnClickListener;

    .line 55
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/AdvFuncDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 57
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/AdvFuncDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 58
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03001a

    const v1, 0x7f060040

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/AdvFuncDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sput-object v1, Lorg/videolan/vlc/gui/AdvFuncDialog;->mAdvFuncView:Landroid/view/View;

    .line 61
    sget-object v1, Lorg/videolan/vlc/gui/AdvFuncDialog;->mAdvFuncView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/AdvFuncDialog;->setContentView(Landroid/view/View;)V

    .line 62
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/AdvFuncDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0061

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/AdvFuncDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/AdvFuncDialog;->setCanceledOnTouchOutside(Z)V

    .line 66
    sget-object v1, Lorg/videolan/vlc/gui/AdvFuncDialog;->mAdvFuncView:Landroid/view/View;

    const v2, 0x7f060047

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lorg/videolan/vlc/gui/AdvFuncDialog;->mSleep:Landroid/widget/ImageButton;

    .line 67
    iget-object v1, p0, Lorg/videolan/vlc/gui/AdvFuncDialog;->mSleep:Landroid/widget/ImageButton;

    iget-object v2, p0, Lorg/videolan/vlc/gui/AdvFuncDialog;->mSleepListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    sget-object v1, Lorg/videolan/vlc/gui/AdvFuncDialog;->mAdvFuncView:Landroid/view/View;

    const v2, 0x7f060043

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lorg/videolan/vlc/gui/AdvFuncDialog;->mSpeed:Landroid/widget/ImageButton;

    .line 71
    iget-object v1, p0, Lorg/videolan/vlc/gui/AdvFuncDialog;->mSpeed:Landroid/widget/ImageButton;

    iget-object v2, p0, Lorg/videolan/vlc/gui/AdvFuncDialog;->mSpeedLabelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    sget-object v1, Lorg/videolan/vlc/gui/AdvFuncDialog;->mAdvFuncView:Landroid/view/View;

    const v2, 0x7f060042

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/videolan/vlc/gui/AdvFuncDialog;->mSpeedInfo:Landroid/widget/TextView;

    .line 73
    iget-object v1, p0, Lorg/videolan/vlc/gui/AdvFuncDialog;->mSpeedInfo:Landroid/widget/TextView;

    invoke-direct {p0}, Lorg/videolan/vlc/gui/AdvFuncDialog;->getSpeedInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method static synthetic access$002(Lorg/videolan/vlc/gui/AdvFuncDialog;Lorg/videolan/vlc/gui/TimeSleepDialog;)Lorg/videolan/vlc/gui/TimeSleepDialog;
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/AdvFuncDialog;
    .param p1, "x1"    # Lorg/videolan/vlc/gui/TimeSleepDialog;

    .prologue
    .line 39
    iput-object p1, p0, Lorg/videolan/vlc/gui/AdvFuncDialog;->mTimeSleepDialog:Lorg/videolan/vlc/gui/TimeSleepDialog;

    return-object p1
.end method

.method static synthetic access$100(Lorg/videolan/vlc/gui/AdvFuncDialog;)Lorg/videolan/vlc/gui/SpeedSelectorDialog;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/AdvFuncDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/videolan/vlc/gui/AdvFuncDialog;->mSpeedSelectorDialog:Lorg/videolan/vlc/gui/SpeedSelectorDialog;

    return-object v0
.end method

.method static synthetic access$102(Lorg/videolan/vlc/gui/AdvFuncDialog;Lorg/videolan/vlc/gui/SpeedSelectorDialog;)Lorg/videolan/vlc/gui/SpeedSelectorDialog;
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/AdvFuncDialog;
    .param p1, "x1"    # Lorg/videolan/vlc/gui/SpeedSelectorDialog;

    .prologue
    .line 39
    iput-object p1, p0, Lorg/videolan/vlc/gui/AdvFuncDialog;->mSpeedSelectorDialog:Lorg/videolan/vlc/gui/SpeedSelectorDialog;

    return-object p1
.end method

.method static synthetic access$200(Lorg/videolan/vlc/gui/AdvFuncDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/AdvFuncDialog;

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/videolan/vlc/gui/AdvFuncDialog;->getSpeedInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/videolan/vlc/gui/AdvFuncDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/AdvFuncDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/videolan/vlc/gui/AdvFuncDialog;->mSpeedInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method private getSpeedInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Lorg/videolan/vlc/LibVLC;->getExistingInstance()Lorg/videolan/vlc/LibVLC;

    move-result-object v0

    .line 105
    .local v0, "libVLC":Lorg/videolan/vlc/LibVLC;
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lorg/videolan/vlc/LibVLC;->getRate()F

    move-result v1

    invoke-static {v1}, Lorg/videolan/vlc/Util;->formatRateString(F)Ljava/lang/String;

    move-result-object v1

    .line 108
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method public destroyAdvFuncDialog()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/videolan/vlc/gui/AdvFuncDialog;->mTimeSleepDialog:Lorg/videolan/vlc/gui/TimeSleepDialog;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/videolan/vlc/gui/AdvFuncDialog;->mTimeSleepDialog:Lorg/videolan/vlc/gui/TimeSleepDialog;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/TimeSleepDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/videolan/vlc/gui/AdvFuncDialog;->mTimeSleepDialog:Lorg/videolan/vlc/gui/TimeSleepDialog;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/TimeSleepDialog;->dismiss()V

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/AdvFuncDialog;->mSpeedSelectorDialog:Lorg/videolan/vlc/gui/SpeedSelectorDialog;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lorg/videolan/vlc/gui/AdvFuncDialog;->mSpeedSelectorDialog:Lorg/videolan/vlc/gui/SpeedSelectorDialog;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/SpeedSelectorDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lorg/videolan/vlc/gui/AdvFuncDialog;->mSpeedSelectorDialog:Lorg/videolan/vlc/gui/SpeedSelectorDialog;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/SpeedSelectorDialog;->dismiss()V

    .line 126
    :cond_1
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/AdvFuncDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/AdvFuncDialog;->dismiss()V

    .line 128
    :cond_2
    return-void
.end method
