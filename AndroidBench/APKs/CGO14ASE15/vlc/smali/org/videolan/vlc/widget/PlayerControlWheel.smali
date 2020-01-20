.class public Lorg/videolan/vlc/widget/PlayerControlWheel;
.super Landroid/widget/LinearLayout;
.source "PlayerControlWheel.java"

# interfaces
.implements Lorg/videolan/vlc/interfaces/IPlayerControl;


# static fields
.field private static final WHEEL_DEAD_ZONE:I = 0x7

.field private static final WHEEL_RANGE:I = 0x3c


# instance fields
.field private listener:Lorg/videolan/vlc/interfaces/OnPlayerControlListener;

.field private mMiddle:I

.field private mPosition:J

.field private mSeekTo:J

.field private mSeekable:Z

.field private final mWheel:Landroid/widget/SeekBar;

.field private final mWheelListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->listener:Lorg/videolan/vlc/interfaces/OnPlayerControlListener;

    .line 40
    iput-boolean v2, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mSeekable:Z

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mMiddle:I

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mPosition:J

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mSeekTo:J

    .line 59
    new-instance v0, Lorg/videolan/vlc/widget/PlayerControlWheel$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/widget/PlayerControlWheel$1;-><init>(Lorg/videolan/vlc/widget/PlayerControlWheel;)V

    iput-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mWheelListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030031

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    const v0, 0x7f06009b

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/widget/PlayerControlWheel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mWheel:Landroid/widget/SeekBar;

    .line 53
    iget-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mWheel:Landroid/widget/SeekBar;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 54
    const/16 v0, 0x43

    iput v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mMiddle:I

    .line 55
    iget-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mWheel:Landroid/widget/SeekBar;

    iget v1, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mMiddle:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 56
    iget-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mWheel:Landroid/widget/SeekBar;

    iget-object v1, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mWheelListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lorg/videolan/vlc/widget/PlayerControlWheel;)J
    .locals 2
    .param p0, "x0"    # Lorg/videolan/vlc/widget/PlayerControlWheel;

    .prologue
    .line 35
    iget-wide v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mPosition:J

    return-wide v0
.end method

.method static synthetic access$002(Lorg/videolan/vlc/widget/PlayerControlWheel;J)J
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/widget/PlayerControlWheel;
    .param p1, "x1"    # J

    .prologue
    .line 35
    iput-wide p1, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mPosition:J

    return-wide p1
.end method

.method static synthetic access$100(Lorg/videolan/vlc/widget/PlayerControlWheel;)Lorg/videolan/vlc/interfaces/OnPlayerControlListener;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/widget/PlayerControlWheel;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->listener:Lorg/videolan/vlc/interfaces/OnPlayerControlListener;

    return-object v0
.end method

.method static synthetic access$200(Lorg/videolan/vlc/widget/PlayerControlWheel;)J
    .locals 2
    .param p0, "x0"    # Lorg/videolan/vlc/widget/PlayerControlWheel;

    .prologue
    .line 35
    iget-wide v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mSeekTo:J

    return-wide v0
.end method

.method static synthetic access$202(Lorg/videolan/vlc/widget/PlayerControlWheel;J)J
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/widget/PlayerControlWheel;
    .param p1, "x1"    # J

    .prologue
    .line 35
    iput-wide p1, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mSeekTo:J

    return-wide p1
.end method

.method static synthetic access$300(Lorg/videolan/vlc/widget/PlayerControlWheel;)Z
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/widget/PlayerControlWheel;

    .prologue
    .line 35
    iget-boolean v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mSeekable:Z

    return v0
.end method

.method static synthetic access$400(Lorg/videolan/vlc/widget/PlayerControlWheel;)I
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/widget/PlayerControlWheel;

    .prologue
    .line 35
    iget v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mMiddle:I

    return v0
.end method


# virtual methods
.method public setOnPlayerControlListener(Lorg/videolan/vlc/interfaces/OnPlayerControlListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/videolan/vlc/interfaces/OnPlayerControlListener;

    .prologue
    .line 119
    iput-object p1, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->listener:Lorg/videolan/vlc/interfaces/OnPlayerControlListener;

    .line 120
    return-void
.end method

.method public setSeekable(Z)V
    .locals 0
    .param p1, "isSeekable"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mSeekable:Z

    .line 125
    return-void
.end method

.method public setState(Z)V
    .locals 5
    .param p1, "isPlaying"    # Z

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mWheel:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lorg/videolan/vlc/widget/PlayerControlWheel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 110
    :goto_0
    iget-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mWheel:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 113
    iget-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mWheel:Landroid/widget/SeekBar;

    iget-object v1, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mWheel:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getLeft()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mWheel:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getTop()I

    move-result v2

    iget-object v3, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mWheel:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getRight()I

    move-result v3

    iget-object v4, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mWheel:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/SeekBar;->layout(IIII)V

    .line 114
    iget-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mWheel:Landroid/widget/SeekBar;

    iget-object v1, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mWheel:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getLeft()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mWheel:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getTop()I

    move-result v2

    iget-object v3, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mWheel:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getRight()I

    move-result v3

    iget-object v4, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mWheel:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/SeekBar;->layout(IIII)V

    .line 115
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/widget/PlayerControlWheel;->mWheel:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lorg/videolan/vlc/widget/PlayerControlWheel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
