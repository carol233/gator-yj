.class public Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
.super Landroid/app/Activity;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/video/VideoPlayerActivity$VideoPlayerHandler;,
        Lorg/videolan/vlc/gui/video/VideoPlayerActivity$VideoPlayerEventHandler;
    }
.end annotation


# static fields
.field private static final FADE_OUT:I = 0x1

.field private static final FADE_OUT_INFO:I = 0x4

.field private static final OVERLAY_INFINITE:I = 0x36ee80

.field private static final OVERLAY_TIMEOUT:I = 0xfa0

.field private static final SHOW_PROGRESS:I = 0x2

.field private static final SURFACE_16_9:I = 0x4

.field private static final SURFACE_4_3:I = 0x5

.field private static final SURFACE_BEST_FIT:I = 0x0

.field private static final SURFACE_FILL:I = 0x3

.field private static final SURFACE_FIT_HORIZONTAL:I = 0x1

.field private static final SURFACE_FIT_VERTICAL:I = 0x2

.field private static final SURFACE_ORIGINAL:I = 0x6

.field private static final SURFACE_SIZE:I = 0x3

.field public static final TAG:Ljava/lang/String; = "VLC/VideoPlayerActivity"


# instance fields
.field private final eventHandler:Landroid/os/Handler;

.field private mAdvFuncDialog:Lorg/videolan/vlc/gui/AdvFuncDialog;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioMax:I

.field private mAudioTrack:Landroid/widget/ImageButton;

.field private final mAudioTrackListener:Landroid/view/View$OnClickListener;

.field private mAudioTracksList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBattery:Landroid/widget/TextView;

.field private mControls:Lorg/videolan/vlc/interfaces/IPlayerControl;

.field private mCurrentSize:I

.field private mDisplayRemainingTime:Z

.field private mDragging:Z

.field private mEnableBrightnessGesture:Z

.field private mEnableWheelbar:Z

.field private mEndReached:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInfo:Landroid/widget/TextView;

.field private mIsAudioOrBrightnessChanged:Z

.field private mIsFirstBrightnessGesture:Z

.field private mIsLocked:Z

.field private mLastAudioTrack:I

.field private mLastSpuTrack:I

.field private mLength:Landroid/widget/TextView;

.field private mLibVLC:Lorg/videolan/vlc/LibVLC;

.field private mLocation:Ljava/lang/String;

.field private mLock:Landroid/widget/ImageButton;

.field private final mLockListener:Landroid/view/View$OnClickListener;

.field private mOverlayHeader:Landroid/view/View;

.field private mOverlayInterface:Landroid/view/View;

.field private mOverlayLock:Landroid/view/View;

.field private mOverlayOption:Landroid/view/View;

.field private mOverlayProgress:Landroid/view/View;

.field private final mPlayerControlListener:Lorg/videolan/vlc/interfaces/OnPlayerControlListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRemainingTimeListener:Landroid/view/View$OnClickListener;

.field private mSarDen:I

.field private mSarNum:I

.field private mScreenOrientation:I

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekbar:Landroid/widget/SeekBar;

.field private mShowing:Z

.field private mSize:Landroid/widget/ImageButton;

.field private final mSizeListener:Landroid/view/View$OnClickListener;

.field private mSubtitle:Landroid/widget/ImageButton;

.field private mSubtitleTracksList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubtitlesListener:Landroid/view/View$OnClickListener;

.field private mSurface:Landroid/view/SurfaceView;

.field private mSurfaceAlign:I

.field private final mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSurfaceFrame:Landroid/widget/FrameLayout;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceYDisplayRange:I

.field private mSwitchingView:Z

.field private mSysTime:Landroid/widget/TextView;

.field private mTime:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTouchX:F

.field private mTouchY:F

.field private mUiVisibility:I

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mVol:F

.field private savedIndexPosition:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 92
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 110
    iput v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mCurrentSize:I

    .line 126
    iput v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mUiVisibility:I

    .line 137
    iput-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mDisplayRemainingTime:Z

    .line 143
    iput-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsLocked:Z

    .line 144
    iput v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLastAudioTrack:I

    .line 145
    const/4 v0, -0x2

    iput v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLastSpuTrack:I

    .line 154
    iput v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->savedIndexPosition:I

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsFirstBrightnessGesture:Z

    .line 462
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$4;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$4;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 592
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$VideoPlayerEventHandler;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$VideoPlayerEventHandler;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->eventHandler:Landroid/os/Handler;

    .line 636
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$VideoPlayerHandler;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$VideoPlayerHandler;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    .line 930
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$5;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$5;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 960
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioTrackListener:Landroid/view/View$OnClickListener;

    .line 1006
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$7;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$7;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitlesListener:Landroid/view/View$OnClickListener;

    .line 1053
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$8;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$8;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPlayerControlListener:Lorg/videolan/vlc/interfaces/OnPlayerControlListener;

    .line 1102
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$9;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$9;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLockListener:Landroid/view/View$OnClickListener;

    .line 1119
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$10;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$10;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSizeListener:Landroid/view/View$OnClickListener;

    .line 1156
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$11;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$11;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mRemainingTimeListener:Landroid/view/View$OnClickListener;

    .line 1167
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$12;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$12;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    return-void
.end method

.method static synthetic access$000(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mUiVisibility:I

    return v0
.end method

.method static synthetic access$002(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mUiVisibility:I

    return p1
.end method

.method static synthetic access$100(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$1000(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setESTracks()V

    return-void
.end method

.method static synthetic access$1100(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->endReached()V

    return-void
.end method

.method static synthetic access$1200(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->handleVout(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->updateOverlayPausePlay()V

    return-void
.end method

.method static synthetic access$1400(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->hideOverlay(Z)V

    return-void
.end method

.method static synthetic access$1500(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setOverlayProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->canShowProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->changeSurfaceSize()V

    return-void
.end method

.method static synthetic access$1800(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->fadeOutInfo()V

    return-void
.end method

.method static synthetic access$1902(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mDragging:Z

    return p1
.end method

.method static synthetic access$200(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$2000(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay(I)V

    return-void
.end method

.method static synthetic access$2100(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->hideInfo()V

    return-void
.end method

.method static synthetic access$2200(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioTracksList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitleTracksList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->pause()V

    return-void
.end method

.method static synthetic access$2800(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->play()V

    return-void
.end method

.method static synthetic access$2900(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsLocked:Z

    return v0
.end method

.method static synthetic access$2902(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsLocked:Z

    return p1
.end method

.method static synthetic access$300(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSarNum:I

    return v0
.end method

.method static synthetic access$3000(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->unlockScreen()V

    return-void
.end method

.method static synthetic access$3100(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->lockScreen()V

    return-void
.end method

.method static synthetic access$3200(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mCurrentSize:I

    return v0
.end method

.method static synthetic access$3202(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mCurrentSize:I

    return p1
.end method

.method static synthetic access$3208(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I
    .locals 2
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mCurrentSize:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mCurrentSize:I

    return v0
.end method

.method static synthetic access$3300(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;II)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showInfo(II)V

    return-void
.end method

.method static synthetic access$3400(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showInfo(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3500(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mDisplayRemainingTime:Z

    return v0
.end method

.method static synthetic access$3502(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mDisplayRemainingTime:Z

    return p1
.end method

.method static synthetic access$400(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSarDen:I

    return v0
.end method

.method static synthetic access$500(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mShowing:Z

    return v0
.end method

.method static synthetic access$600(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay()V

    return-void
.end method

.method static synthetic access$700(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setESTrackLists()V

    return-void
.end method

.method static synthetic access$800(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/vlc/LibVLC;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    return-object v0
.end method

.method static synthetic access$900(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mBattery:Landroid/widget/TextView;

    return-object v0
.end method

.method private canShowProgress()Z
    .locals 1

    .prologue
    .line 671
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mDragging:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/vlc/LibVLC;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private changeSurfaceSize()V
    .locals 20

    .prologue
    .line 691
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 692
    .local v11, "dw":I
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 695
    .local v10, "dh":I
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    const/4 v12, 0x1

    .line 696
    .local v12, "isPortrait":Z
    :goto_0
    if-le v11, v10, :cond_0

    if-nez v12, :cond_1

    :cond_0
    if-ge v11, v10, :cond_2

    if-nez v12, :cond_2

    .line 697
    :cond_1
    move v5, v11

    .line 698
    .local v5, "d":I
    move v11, v10

    .line 699
    move v10, v5

    .line 703
    .end local v5    # "d":I
    :cond_2
    mul-int v16, v11, v10

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoHeight:I

    move/from16 v17, v0

    mul-int v16, v16, v17

    if-nez v16, :cond_5

    .line 704
    :cond_3
    const-string v16, "VLC/VideoPlayerActivity"

    const-string v17, "Invalid surface size"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :goto_1
    return-void

    .line 695
    .end local v12    # "isPortrait":Z
    :cond_4
    const/4 v12, 0x0

    goto :goto_0

    .line 710
    .restart local v12    # "isPortrait":Z
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSarNum:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSarDen:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v8, v16, v18

    .line 711
    .local v8, "density":D
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v16, v8, v16

    if-nez v16, :cond_6

    .line 713
    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v14, v0

    .line 714
    .local v14, "vw":D
    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v3, v16, v18

    .line 722
    .local v3, "ar":D
    :goto_2
    int-to-double v0, v11

    move-wide/from16 v16, v0

    int-to-double v0, v10

    move-wide/from16 v18, v0

    div-double v6, v16, v18

    .line 724
    .local v6, "dar":D
    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mCurrentSize:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 760
    :goto_3
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceAlign:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceAlign:I

    move/from16 v17, v0

    xor-int/lit8 v17, v17, -0x1

    and-int v2, v16, v17

    .line 763
    .local v2, "alignedWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoHeight:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v0, v2, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurface:Landroid/view/SurfaceView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 767
    .local v13, "lp":Landroid/view/ViewGroup$LayoutParams;
    mul-int v16, v11, v2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoWidth:I

    move/from16 v17, v0

    div-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 768
    iput v10, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurface:Landroid/view/SurfaceView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceFrame:Landroid/widget/FrameLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 773
    iput v11, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 774
    iput v10, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceFrame:Landroid/widget/FrameLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurface:Landroid/view/SurfaceView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/SurfaceView;->invalidate()V

    goto/16 :goto_1

    .line 717
    .end local v2    # "alignedWidth":I
    .end local v3    # "ar":D
    .end local v6    # "dar":D
    .end local v13    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v14    # "vw":D
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v16, v8

    .line 718
    .restart local v14    # "vw":D
    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v3, v14, v16

    .restart local v3    # "ar":D
    goto/16 :goto_2

    .line 726
    .restart local v6    # "dar":D
    :pswitch_1
    cmpg-double v16, v6, v3

    if-gez v16, :cond_7

    .line 727
    int-to-double v0, v11

    move-wide/from16 v16, v0

    div-double v16, v16, v3

    move-wide/from16 v0, v16

    double-to-int v10, v0

    goto/16 :goto_3

    .line 729
    :cond_7
    int-to-double v0, v10

    move-wide/from16 v16, v0

    mul-double v16, v16, v3

    move-wide/from16 v0, v16

    double-to-int v11, v0

    .line 730
    goto/16 :goto_3

    .line 732
    :pswitch_2
    int-to-double v0, v11

    move-wide/from16 v16, v0

    div-double v16, v16, v3

    move-wide/from16 v0, v16

    double-to-int v10, v0

    .line 733
    goto/16 :goto_3

    .line 735
    :pswitch_3
    int-to-double v0, v10

    move-wide/from16 v16, v0

    mul-double v16, v16, v3

    move-wide/from16 v0, v16

    double-to-int v11, v0

    .line 736
    goto/16 :goto_3

    .line 740
    :pswitch_4
    const-wide v3, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 741
    cmpg-double v16, v6, v3

    if-gez v16, :cond_8

    .line 742
    int-to-double v0, v11

    move-wide/from16 v16, v0

    div-double v16, v16, v3

    move-wide/from16 v0, v16

    double-to-int v10, v0

    goto/16 :goto_3

    .line 744
    :cond_8
    int-to-double v0, v10

    move-wide/from16 v16, v0

    mul-double v16, v16, v3

    move-wide/from16 v0, v16

    double-to-int v11, v0

    .line 745
    goto/16 :goto_3

    .line 747
    :pswitch_5
    const-wide v3, 0x3ff5555555555555L    # 1.3333333333333333

    .line 748
    cmpg-double v16, v6, v3

    if-gez v16, :cond_9

    .line 749
    int-to-double v0, v11

    move-wide/from16 v16, v0

    div-double v16, v16, v3

    move-wide/from16 v0, v16

    double-to-int v10, v0

    goto/16 :goto_3

    .line 751
    :cond_9
    int-to-double v0, v10

    move-wide/from16 v16, v0

    mul-double v16, v16, v3

    move-wide/from16 v0, v16

    double-to-int v11, v0

    .line 752
    goto/16 :goto_3

    .line 754
    :pswitch_6
    move-object/from16 v0, p0

    iget v10, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoHeight:I

    .line 755
    double-to-int v11, v14

    goto/16 :goto_3

    .line 724
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private dimStatusBar(Z)V
    .locals 2
    .param p1, "dim"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1253
    invoke-static {}, Lorg/videolan/vlc/Util;->isHoneycombOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/videolan/vlc/Util;->hasNavBar()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1260
    :cond_0
    :goto_0
    return-void

    .line 1255
    :cond_1
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurface:Landroid/view/SurfaceView;

    if-eqz p1, :cond_3

    invoke-static {}, Lorg/videolan/vlc/Util;->hasCombBar()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private doBrightnessTouch(F)V
    .locals 5
    .param p1, "y_changed"    # F

    .prologue
    .line 912
    iget-boolean v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsFirstBrightnessGesture:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->initBrightnessTouch()V

    .line 913
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsAudioOrBrightnessChanged:Z

    .line 916
    neg-float v2, p1

    iget v3, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceYDisplayRange:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3d8f5c29    # 0.07f

    mul-float v0, v2, v3

    .line 919
    .local v0, "delta":F
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 920
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    add-float/2addr v2, v0

    const v3, 0x3c23d70a    # 0.01f

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 923
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 924
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b005d

    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v4, 0x41700000    # 15.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-direct {p0, v2, v3}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showInfo(Ljava/lang/String;I)V

    .line 925
    return-void
.end method

.method private doSeekTouch(FFZ)V
    .locals 13
    .param p1, "coef"    # F
    .param p2, "gesturesize"    # F
    .param p3, "seek"    # Z

    .prologue
    .line 855
    iget-boolean v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mEnableWheelbar:Z

    if-nez v5, :cond_0

    float-to-double v5, p1

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    cmpl-double v5, v5, v7

    if-gtz v5, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 882
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    iget-boolean v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mShowing:Z

    if-nez v5, :cond_2

    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay()V

    .line 861
    :cond_2
    iget-object v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v5}, Lorg/videolan/vlc/LibVLC;->getLength()J

    move-result-wide v1

    .line 862
    .local v1, "length":J
    iget-object v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v5}, Lorg/videolan/vlc/LibVLC;->getTime()J

    move-result-wide v3

    .line 865
    .local v3, "time":J
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x41224f8000000000L    # 600000.0

    const/high16 v9, 0x41000000    # 8.0f

    div-float v9, p2, v9

    float-to-double v9, v9

    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v7, v9

    const-wide v9, 0x40a7700000000000L    # 3000.0

    add-double/2addr v7, v9

    mul-double/2addr v5, v7

    double-to-int v0, v5

    .line 868
    .local v0, "jump":I
    if-lez v0, :cond_3

    int-to-long v5, v0

    add-long/2addr v5, v3

    cmp-long v5, v5, v1

    if-lez v5, :cond_3

    .line 869
    sub-long v5, v1, v3

    long-to-int v0, v5

    .line 870
    :cond_3
    if-gez v0, :cond_4

    int-to-long v5, v0

    add-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_4

    .line 871
    neg-long v5, v3

    long-to-int v0, v5

    .line 874
    :cond_4
    if-eqz p3, :cond_5

    .line 875
    iget-object v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPlayerControlListener:Lorg/videolan/vlc/interfaces/OnPlayerControlListener;

    int-to-long v6, v0

    add-long/2addr v6, v3

    invoke-interface {v5, v6, v7}, Lorg/videolan/vlc/interfaces/OnPlayerControlListener;->onSeekTo(J)V

    .line 878
    :cond_5
    const-string v6, "%s%s (%s)"

    const/4 v5, 0x3

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    if-ltz v0, :cond_6

    const-string v5, "+"

    :goto_1
    aput-object v5, v7, v8

    const/4 v5, 0x1

    int-to-long v8, v0

    invoke-static {v8, v9}, Lorg/videolan/vlc/Util;->millisToString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v5, 0x2

    int-to-long v8, v0

    add-long/2addr v8, v3

    invoke-static {v8, v9}, Lorg/videolan/vlc/Util;->millisToString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x3e8

    invoke-direct {p0, v5, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showInfo(Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    const-string v5, ""

    goto :goto_1
.end method

.method private doVolumeTouch(F)V
    .locals 5
    .param p1, "y_changed"    # F

    .prologue
    .line 885
    iget v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceYDisplayRange:I

    int-to-float v2, v2

    div-float v2, p1, v2

    iget v3, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioMax:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v0, v2

    .line 886
    .local v0, "delta":I
    iget v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVol:F

    int-to-float v3, v0

    add-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioMax:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v1, v2

    .line 887
    .local v1, "vol":I
    if-eqz v0, :cond_0

    .line 888
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 890
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsAudioOrBrightnessChanged:Z

    .line 891
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b005c

    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-direct {p0, v2, v3}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showInfo(Ljava/lang/String;I)V

    .line 893
    :cond_0
    return-void
.end method

.method private endReached()V
    .locals 1

    .prologue
    .line 676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mEndReached:Z

    .line 677
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->finish()V

    .line 678
    return-void
.end method

.method private fadeOutInfo()V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 584
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mInfo:Landroid/widget/TextView;

    const v1, 0x10a0001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 586
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mInfo:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 587
    return-void
.end method

.method private getScreenOrientation()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1448
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getScreenRotation()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v0, v2

    .line 1464
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v2

    .line 1452
    goto :goto_0

    .line 1455
    :pswitch_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    .line 1460
    :pswitch_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 1448
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getScreenRotation()I
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1433
    const-string v4, "window"

    invoke-virtual {p0, v4}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1434
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1435
    .local v0, "display":Landroid/view/Display;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x8

    if-lt v4, v6, :cond_0

    .line 1437
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "getRotation"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1438
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1443
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .line 1439
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move v4, v5

    .line 1440
    goto :goto_0

    .line 1443
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v4

    goto :goto_0
.end method

.method private handleVout(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 681
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mEndReached:Z

    if-nez v0, :cond_0

    .line 683
    const-string v0, "VLC/VideoPlayerActivity"

    const-string v1, "Video track lost, switching to audio"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSwitchingView:Z

    .line 685
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->finish()V

    .line 687
    :cond_0
    return-void
.end method

.method private hideInfo()V
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->hideInfo(I)V

    .line 580
    return-void
.end method

.method private hideInfo(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 572
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 573
    return-void
.end method

.method private hideOverlay(Z)V
    .locals 4
    .param p1, "fromUser"    # Z

    .prologue
    const v3, 0x10a0001

    const/4 v2, 0x4

    .line 1227
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mShowing:Z

    if-eqz v0, :cond_1

    .line 1228
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1229
    const-string v0, "VLC/VideoPlayerActivity"

    const-string v1, "remove View!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsLocked:Z

    if-nez v0, :cond_0

    .line 1231
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayLock:Landroid/view/View;

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1232
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayHeader:Landroid/view/View;

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1233
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayOption:Landroid/view/View;

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1234
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayProgress:Landroid/view/View;

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1235
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayInterface:Landroid/view/View;

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1237
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayLock:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1238
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1239
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayOption:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1240
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1241
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayInterface:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mShowing:Z

    .line 1243
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->dimStatusBar(Z)V

    .line 1245
    :cond_1
    return-void
.end method

.method private initBrightnessTouch()V
    .locals 5

    .prologue
    .line 896
    const v0, 0x3c23d70a    # 0.01f

    .line 899
    .local v0, "brightnesstemp":F
    :try_start_0
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float v0, v3, v4

    .line 905
    :goto_0
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 906
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 907
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 908
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsFirstBrightnessGesture:Z

    .line 909
    return-void

    .line 901
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v1

    .line 903
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private load()V
    .locals 20

    .prologue
    .line 1351
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    .line 1352
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1353
    .local v19, "title":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1354
    .local v10, "dontParse":Z
    const/4 v13, 0x0

    .line 1355
    .local v13, "fromStart":Z
    const/4 v14, 0x0

    .line 1357
    .local v14, "itemTitle":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1360
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1363
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "media"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1365
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_data"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1366
    .local v9, "cursor":Landroid/database/Cursor;
    const-string v2, "_data"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1367
    .local v8, "column_index":I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1368
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/videolan/vlc/Util;->PathToURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    .line 1385
    .end local v8    # "column_index":I
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurface:Landroid/view/SurfaceView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    .line 1388
    move-object/from16 v0, p0

    iget v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->savedIndexPosition:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_8

    .line 1389
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->savedIndexPosition:I

    invoke-virtual {v2, v3}, Lorg/videolan/vlc/LibVLC;->playIndex(I)V

    .line 1394
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    if-nez v10, :cond_a

    .line 1396
    invoke-static/range {p0 .. p0}, Lorg/videolan/vlc/DatabaseManager;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/DatabaseManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/videolan/vlc/DatabaseManager;->getMedia(Landroid/content/Context;Ljava/lang/String;)Lorg/videolan/vlc/Media;

    move-result-object v15

    .line 1397
    .local v15, "media":Lorg/videolan/vlc/Media;
    if-eqz v15, :cond_9

    .line 1399
    invoke-virtual {v15}, Lorg/videolan/vlc/Media;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    if-nez v13, :cond_2

    .line 1400
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v15}, Lorg/videolan/vlc/Media;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/videolan/vlc/LibVLC;->setTime(J)J

    .line 1402
    :cond_2
    invoke-virtual {v15}, Lorg/videolan/vlc/Media;->getAudioTrack()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLastAudioTrack:I

    .line 1403
    invoke-virtual {v15}, Lorg/videolan/vlc/Media;->getSpuTrack()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLastSpuTrack:I

    .line 1416
    :cond_3
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 1419
    :goto_3
    const-string v2, "file:"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1420
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1421
    const/16 v2, 0x2e

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 1422
    .local v11, "dotIndex":I
    const/4 v2, -0x1

    if-eq v11, v2, :cond_4

    .line 1423
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 1428
    .end local v11    # "dotIndex":I
    .end local v15    # "media":Lorg/videolan/vlc/Media;
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTitle:Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1429
    return-void

    .line 1371
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    goto/16 :goto_0

    .line 1375
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    goto/16 :goto_0

    .line 1377
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1379
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "itemLocation"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    .line 1380
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "itemTitle"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1381
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "dontParse"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1382
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "fromStart"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    goto/16 :goto_0

    .line 1390
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    if-nez v10, :cond_1

    .line 1391
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/videolan/vlc/LibVLC;->readMedia(Ljava/lang/String;Z)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->savedIndexPosition:I

    goto/16 :goto_1

    .line 1406
    .restart local v15    # "media":Lorg/videolan/vlc/Media;
    :cond_9
    const-string v2, "VlcSharedPreferences"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 1407
    .local v16, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "VideoResumeTime"

    const-wide/16 v3, -0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    .line 1408
    .local v17, "rTime":J
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 1409
    .local v12, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "VideoResumeTime"

    const-wide/16 v3, -0x1

    invoke-interface {v12, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1410
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1411
    const-wide/16 v2, 0x0

    cmp-long v2, v17, v2

    if-lez v2, :cond_3

    .line 1412
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Lorg/videolan/vlc/LibVLC;->setTime(J)J

    goto/16 :goto_2

    .line 1425
    .end local v12    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v15    # "media":Lorg/videolan/vlc/Media;
    .end local v16    # "preferences":Landroid/content/SharedPreferences;
    .end local v17    # "rTime":J
    :cond_a
    if-eqz v14, :cond_4

    .line 1426
    move-object/from16 v19, v14

    goto/16 :goto_4

    .line 1417
    .restart local v15    # "media":Lorg/videolan/vlc/Media;
    :catch_0
    move-exception v2

    goto/16 :goto_3
.end method

.method private lockScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 513
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mScreenOrientation:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 514
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getScreenOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setRequestedOrientation(I)V

    .line 515
    :cond_0
    const v0, 0x7f0b004c

    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showInfo(II)V

    .line 516
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLock:Landroid/widget/ImageButton;

    const v1, 0x7f020094

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 517
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 518
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 519
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLength:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 520
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->hideOverlay(Z)V

    .line 521
    return-void
.end method

.method private pause()V
    .locals 2

    .prologue
    .line 1342
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/vlc/LibVLC;->pause()V

    .line 1343
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurface:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    .line 1344
    return-void
.end method

.method private play()V
    .locals 2

    .prologue
    .line 1334
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/vlc/LibVLC;->play()V

    .line 1335
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurface:Landroid/view/SurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    .line 1336
    return-void
.end method

.method private setESTrackLists()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1305
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioTracksList:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1306
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/vlc/LibVLC;->getAudioTracksCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 1307
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/vlc/LibVLC;->getAudioTrackDescription()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioTracksList:Ljava/util/Map;

    .line 1308
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioTrack:Landroid/widget/ImageButton;

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioTrackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1309
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioTrack:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1316
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitleTracksList:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 1317
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/vlc/LibVLC;->getSpuTracksCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1318
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/vlc/LibVLC;->getSpuTrackDescription()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitleTracksList:Ljava/util/Map;

    .line 1319
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitle:Landroid/widget/ImageButton;

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitlesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1320
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitle:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1327
    :cond_1
    :goto_1
    return-void

    .line 1312
    :cond_2
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioTrack:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1313
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioTrack:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1323
    :cond_3
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitle:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1324
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitle:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private setESTracks()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1294
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLastAudioTrack:I

    if-ltz v0, :cond_0

    .line 1295
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    iget v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLastAudioTrack:I

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/LibVLC;->setAudioTrack(I)I

    .line 1296
    iput v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLastAudioTrack:I

    .line 1298
    :cond_0
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLastSpuTrack:I

    if-lt v0, v2, :cond_1

    .line 1299
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    iget v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLastSpuTrack:I

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/LibVLC;->setSpuTrack(I)I

    .line 1300
    const/4 v0, -0x2

    iput v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLastSpuTrack:I

    .line 1302
    :cond_1
    return-void
.end method

.method private setOverlayProgress()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1274
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    if-nez v3, :cond_0

    .line 1290
    :goto_0
    return v2

    .line 1277
    :cond_0
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v3}, Lorg/videolan/vlc/LibVLC;->getTime()J

    move-result-wide v3

    long-to-int v1, v3

    .line 1278
    .local v1, "time":I
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v3}, Lorg/videolan/vlc/LibVLC;->getLength()J

    move-result-wide v3

    long-to-int v0, v3

    .line 1281
    .local v0, "length":I
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mControls:Lorg/videolan/vlc/interfaces/IPlayerControl;

    if-lez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-interface {v3, v2}, Lorg/videolan/vlc/interfaces/IPlayerControl;->setSeekable(Z)V

    .line 1282
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1283
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1284
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSysTime:Landroid/widget/TextView;

    const-string v3, "kk:mm"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1285
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTime:Landroid/widget/TextView;

    int-to-long v3, v1

    invoke-static {v3, v4}, Lorg/videolan/vlc/Util;->millisToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1286
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLength:Landroid/widget/TextView;

    iget-boolean v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mDisplayRemainingTime:Z

    if-eqz v2, :cond_2

    if-lez v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int v4, v0, v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Lorg/videolan/vlc/Util;->millisToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v1

    .line 1290
    goto :goto_0

    .line 1286
    :cond_2
    int-to-long v4, v0

    invoke-static {v4, v5}, Lorg/videolan/vlc/Util;->millisToString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private showInfo(II)V
    .locals 4
    .param p1, "textid"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v3, 0x4

    .line 551
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mInfo:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 553
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 554
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 555
    return-void
.end method

.method private showInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 562
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mInfo:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 563
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 565
    return-void
.end method

.method private showInfo(Ljava/lang/String;I)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    const/4 v3, 0x4

    .line 544
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mInfo:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 547
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 548
    return-void
.end method

.method private showOverlay()V
    .locals 1

    .prologue
    .line 1195
    const/16 v0, 0xfa0

    invoke-direct {p0, v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay(I)V

    .line 1196
    return-void
.end method

.method private showOverlay(I)V
    .locals 5
    .param p1, "timeout"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1202
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1203
    iget-boolean v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mShowing:Z

    if-nez v1, :cond_1

    .line 1204
    iput-boolean v4, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mShowing:Z

    .line 1205
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayLock:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1206
    iget-boolean v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsLocked:Z

    if-nez v1, :cond_0

    .line 1207
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayHeader:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1208
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayOption:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1209
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayInterface:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1210
    invoke-direct {p0, v3}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->dimStatusBar(Z)V

    .line 1212
    :cond_0
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayProgress:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1214
    :cond_1
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1215
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_2

    .line 1216
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1217
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1219
    :cond_2
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->updateOverlayPausePlay()V

    .line 1220
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 433
    const/4 v0, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, p1, v0, v1, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 434
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "fromStart"    # Ljava/lang/Boolean;

    .prologue
    .line 437
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, p1, v0, v1, p2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 438
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "dontParse"    # Ljava/lang/Boolean;

    .prologue
    .line 441
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 442
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "dontParse"    # Ljava/lang/Boolean;
    .param p4, "fromStart"    # Ljava/lang/Boolean;

    .prologue
    .line 445
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 446
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "itemLocation"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const-string v2, "itemTitle"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const-string v2, "dontParse"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 449
    const-string v2, "fromStart"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 451
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    const/high16 v2, 0x18000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 459
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 460
    return-void

    .line 455
    :cond_0
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v0

    .line 456
    .local v0, "asc":Lorg/videolan/vlc/AudioServiceController;
    invoke-virtual {v0}, Lorg/videolan/vlc/AudioServiceController;->stop()V

    goto :goto_0
.end method

.method private unlockScreen()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 527
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mScreenOrientation:I

    if-ne v0, v1, :cond_0

    .line 528
    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setRequestedOrientation(I)V

    .line 529
    :cond_0
    const v0, 0x7f0b004d

    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showInfo(II)V

    .line 530
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLock:Landroid/widget/ImageButton;

    const v1, 0x7f020093

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 531
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 532
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 533
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLength:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 534
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mShowing:Z

    .line 535
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay()V

    .line 536
    return-void
.end method

.method private updateOverlayPausePlay()V
    .locals 2

    .prologue
    .line 1263
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    if-nez v0, :cond_0

    .line 1268
    :goto_0
    return-void

    .line 1267
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mControls:Lorg/videolan/vlc/interfaces/IPlayerControl;

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v1}, Lorg/videolan/vlc/LibVLC;->isPlaying()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/videolan/vlc/interfaces/IPlayerControl;->setState(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 492
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoWidth:I

    iget v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoHeight:I

    iget v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSarNum:I

    iget v3, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSarDen:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setSurfaceSize(IIII)V

    .line 493
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 494
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 185
    const v10, 0x7f03002f

    invoke-virtual {p0, v10}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setContentView(I)V

    .line 187
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 188
    .local v8, "pref":Landroid/content/SharedPreferences;
    invoke-static {}, Lorg/videolan/vlc/Util;->isICSOrLater()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 189
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    const v11, 0x1020002

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    new-instance v11, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$1;

    invoke-direct {v11, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$1;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 205
    :cond_0
    const v10, 0x7f060087

    invoke-virtual {p0, v10}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayHeader:Landroid/view/View;

    .line 206
    const v10, 0x7f060096

    invoke-virtual {p0, v10}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayLock:Landroid/view/View;

    .line 207
    const v10, 0x7f06008b

    invoke-virtual {p0, v10}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayOption:Landroid/view/View;

    .line 208
    const v10, 0x7f06008c

    invoke-virtual {p0, v10}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayProgress:Landroid/view/View;

    .line 209
    const v10, 0x7f060090

    invoke-virtual {p0, v10}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayInterface:Landroid/view/View;

    .line 212
    const v10, 0x7f060088

    invoke-virtual {p0, v10}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTitle:Landroid/widget/TextView;

    .line 213
    const v10, 0x7f06008a

    invoke-virtual {p0, v10}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSysTime:Landroid/widget/TextView;

    .line 214
    const v10, 0x7f060089

    invoke-virtual {p0, v10}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mBattery:Landroid/widget/TextView;

    .line 217
    const v10, 0x7f060094

    invoke-virtual {p0, v10}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTime:Landroid/widget/TextView;

    .line 218
    iget-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTime:Landroid/widget/TextView;

    iget-object v11, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mRemainingTimeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    const v10, 0x7f060095

    invoke-virtual {p0, v10}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLength:Landroid/widget/TextView;

    .line 220
    iget-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLength:Landroid/widget/TextView;

    iget-object v11, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mRemainingTimeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    const v10, 0x7f060086

    invoke-virtual {p0, v10}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mInfo:Landroid/widget/TextView;

    .line 225
    const-string v10, "enable_wheel_bar"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mEnableWheelbar:Z

    .line 226
    const-string v10, "enable_brightness_gesture"

    const/4 v11, 0x1

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mEnableBrightnessGesture:Z

    .line 227
    const-string v10, "screen_orientation_value"

    const-string v11, "4"

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mScreenOrientation:I

    .line 230
    iget-boolean v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mEnableWheelbar:Z

    if-eqz v10, :cond_1

    new-instance v10, Lorg/videolan/vlc/widget/PlayerControlWheel;

    invoke-direct {v10, p0}, Lorg/videolan/vlc/widget/PlayerControlWheel;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mControls:Lorg/videolan/vlc/interfaces/IPlayerControl;

    .line 233
    iget-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mControls:Lorg/videolan/vlc/interfaces/IPlayerControl;

    iget-object v11, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPlayerControlListener:Lorg/videolan/vlc/interfaces/OnPlayerControlListener;

    invoke-interface {v10, v11}, Lorg/videolan/vlc/interfaces/IPlayerControl;->setOnPlayerControlListener(Lorg/videolan/vlc/interfaces/OnPlayerControlListener;)V

    .line 234
    const v10, 0x7f060091

    invoke-virtual {p0, v10}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 235
    .local v6, "mControlContainer":Landroid/widget/FrameLayout;
    iget-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mControls:Lorg/videolan/vlc/interfaces/IPlayerControl;

    check-cast v10, Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 237
    const v10, 0x7f06008e

    invoke-virtual {p0, v10}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    iput-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioTrack:Landroid/widget/ImageButton;

    .line 238
    iget-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioTrack:Landroid/widget/ImageButton;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 239
    const v10, 0x7f06008f

    invoke-virtual {p0, v10}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    iput-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitle:Landroid/widget/ImageButton;

    .line 240
    iget-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitle:Landroid/widget/ImageButton;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 242
    iget-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    new-instance v11, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$2;

    invoke-direct {v11, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$2;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    const-wide/16 v12, 0x5dc

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 252
    const v10, 0x7f060097

    invoke-virtual {p0, v10}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    iput-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLock:Landroid/widget/ImageButton;

    .line 253
    iget-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLock:Landroid/widget/ImageButton;

    iget-object v11, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    const v10, 0x7f060093

    invoke-virtual {p0, v10}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    iput-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSize:Landroid/widget/ImageButton;

    .line 256
    iget-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSize:Landroid/widget/ImageButton;

    iget-object v11, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSizeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    const v10, 0x7f060085

    invoke-virtual {p0, v10}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/SurfaceView;

    iput-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurface:Landroid/view/SurfaceView;

    .line 259
    iget-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v10}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v10

    iput-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 260
    const v10, 0x7f060084

    invoke-virtual {p0, v10}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    iput-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceFrame:Landroid/widget/FrameLayout;

    .line 262
    const-string v10, "chroma_format"

    const-string v11, ""

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "chroma":Ljava/lang/String;
    invoke-static {}, Lorg/videolan/vlc/Util;->isGingerbreadOrLater()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "YV12"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 264
    iget-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const v11, 0x32315659

    invoke-interface {v10, v11}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 265
    const v10, 0x32315659

    invoke-static {v10}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v10

    div-int/lit8 v7, v10, 0x8

    .line 277
    .local v7, "pitch":I
    :goto_1
    const/16 v10, 0x10

    div-int/2addr v10, v7

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceAlign:I

    .line 278
    iget-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v11, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v10, v11}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 280
    const v10, 0x7f060092

    invoke-virtual {p0, v10}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/SeekBar;

    iput-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSeekbar:Landroid/widget/SeekBar;

    .line 281
    iget-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSeekbar:Landroid/widget/SeekBar;

    iget-object v11, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v10, v11}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 283
    const-string v10, "audio"

    invoke-virtual {p0, v10}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioManager;

    iput-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 284
    iget-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v10

    iput v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioMax:I

    .line 286
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSwitchingView:Z

    .line 287
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mEndReached:Z

    .line 291
    const-string v10, "VlcSharedPreferences"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 292
    .local v9, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 293
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v10, "VideoResumeTime"

    const-wide/16 v11, -0x1

    invoke-interface {v2, v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 294
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 296
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 297
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string v10, "org.videolan.vlc.SleepIntent"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    iget-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v10, v4}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 302
    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/LibVLC;->getInstance()Lorg/videolan/vlc/LibVLC;

    move-result-object v10

    iput-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/vlc/LibVLC;
    :try_end_0
    .catch Lorg/videolan/vlc/LibVlcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    invoke-static {}, Lorg/videolan/vlc/EventManager;->getInstance()Lorg/videolan/vlc/EventManager;

    move-result-object v3

    .line 309
    .local v3, "em":Lorg/videolan/vlc/EventManager;
    iget-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v10}, Lorg/videolan/vlc/EventManager;->addHandler(Landroid/os/Handler;)V

    .line 311
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setVolumeControlStream(I)V

    .line 314
    iget v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mScreenOrientation:I

    const/16 v11, 0x64

    if-eq v10, v11, :cond_4

    iget v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mScreenOrientation:I

    :goto_2
    invoke-virtual {p0, v10}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setRequestedOrientation(I)V

    .line 317
    .end local v3    # "em":Lorg/videolan/vlc/EventManager;
    :goto_3
    return-void

    .line 230
    .end local v0    # "chroma":Ljava/lang/String;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v6    # "mControlContainer":Landroid/widget/FrameLayout;
    .end local v7    # "pitch":I
    .end local v9    # "preferences":Landroid/content/SharedPreferences;
    :cond_1
    new-instance v10, Lorg/videolan/vlc/widget/PlayerControlClassic;

    invoke-direct {v10, p0}, Lorg/videolan/vlc/widget/PlayerControlClassic;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 266
    .restart local v0    # "chroma":Ljava/lang/String;
    .restart local v6    # "mControlContainer":Landroid/widget/FrameLayout;
    :cond_2
    const-string v10, "RV16"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 267
    iget-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v11, 0x4

    invoke-interface {v10, v11}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 268
    new-instance v5, Landroid/graphics/PixelFormat;

    invoke-direct {v5}, Landroid/graphics/PixelFormat;-><init>()V

    .line 269
    .local v5, "info":Landroid/graphics/PixelFormat;
    const/4 v10, 0x4

    invoke-static {v10, v5}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 270
    iget v7, v5, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    .line 271
    .restart local v7    # "pitch":I
    goto/16 :goto_1

    .line 272
    .end local v5    # "info":Landroid/graphics/PixelFormat;
    .end local v7    # "pitch":I
    :cond_3
    iget-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 273
    new-instance v5, Landroid/graphics/PixelFormat;

    invoke-direct {v5}, Landroid/graphics/PixelFormat;-><init>()V

    .line 274
    .restart local v5    # "info":Landroid/graphics/PixelFormat;
    const/4 v10, 0x2

    invoke-static {v10, v5}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 275
    iget v7, v5, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    .restart local v7    # "pitch":I
    goto/16 :goto_1

    .line 303
    .end local v5    # "info":Landroid/graphics/PixelFormat;
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    .restart local v9    # "preferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 304
    .local v1, "e":Lorg/videolan/vlc/LibVlcException;
    const-string v10, "VLC/VideoPlayerActivity"

    const-string v11, "LibVLC initialisation failed"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 314
    .end local v1    # "e":Lorg/videolan/vlc/LibVlcException;
    .restart local v3    # "em":Lorg/videolan/vlc/EventManager;
    :cond_4
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getScreenOrientation()I

    move-result v10

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 394
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 395
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 396
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSwitchingView:Z

    if-nez v1, :cond_0

    .line 397
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v1}, Lorg/videolan/vlc/LibVLC;->stop()V

    .line 400
    :cond_0
    invoke-static {}, Lorg/videolan/vlc/EventManager;->getInstance()Lorg/videolan/vlc/EventManager;

    move-result-object v0

    .line 401
    .local v0, "em":Lorg/videolan/vlc/EventManager;
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/EventManager;->removeHandler(Landroid/os/Handler;)V

    .line 403
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 404
    return-void
.end method

.method protected onPause()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x1388

    const/4 v8, 0x0

    .line 328
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 330
    iget-boolean v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSwitchingView:Z

    if-eqz v6, :cond_0

    .line 331
    const-string v6, "VLC/VideoPlayerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mLocation = \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v6

    iget-object v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/videolan/vlc/AudioServiceController;->showWithoutParse(Ljava/lang/String;)V

    .line 333
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v6

    invoke-virtual {v6, p0}, Lorg/videolan/vlc/AudioServiceController;->unbindAudioService(Landroid/content/Context;)V

    .line 334
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p0, v6}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->start(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 383
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v6}, Lorg/videolan/vlc/LibVLC;->getTime()J

    move-result-wide v4

    .line 339
    .local v4, "time":J
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v6}, Lorg/videolan/vlc/LibVLC;->getLength()J

    move-result-wide v1

    .line 341
    .local v1, "length":J
    sub-long v6, v1, v4

    cmp-long v6, v6, v9

    if-gez v6, :cond_2

    .line 342
    const-wide/16 v4, 0x0

    .line 353
    :goto_1
    iget v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->savedIndexPosition:I

    if-ltz v6, :cond_3

    .line 354
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v6}, Lorg/videolan/vlc/LibVLC;->stop()V

    .line 363
    :goto_2
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v6, v8}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    .line 366
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_1

    .line 367
    const-string v6, "VlcSharedPreferences"

    invoke-virtual {p0, v6, v8}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 368
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 369
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p0}, Lorg/videolan/vlc/DatabaseManager;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/DatabaseManager;

    move-result-object v6

    iget-object v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/videolan/vlc/DatabaseManager;->mediaItemExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 370
    const-string v6, "LastMedia"

    iget-object v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 371
    invoke-static {p0}, Lorg/videolan/vlc/DatabaseManager;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/DatabaseManager;

    move-result-object v6

    iget-object v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    sget-object v8, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_TIME:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lorg/videolan/vlc/DatabaseManager;->updateMedia(Ljava/lang/String;Lorg/videolan/vlc/DatabaseManager$mediaColumn;Ljava/lang/Object;)V

    .line 379
    :goto_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 382
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_1
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v6

    invoke-virtual {v6, p0}, Lorg/videolan/vlc/AudioServiceController;->unbindAudioService(Landroid/content/Context;)V

    goto :goto_0

    .line 344
    :cond_2
    sub-long/2addr v4, v9

    goto :goto_1

    .line 360
    :cond_3
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v6}, Lorg/videolan/vlc/LibVLC;->pause()V

    goto :goto_2

    .line 377
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_4
    const-string v6, "VideoResumeTime"

    invoke-interface {v0, v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_3
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 408
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 409
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/videolan/vlc/AudioServiceController;->bindAudioService(Landroid/content/Context;)V

    .line 411
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->load()V

    .line 419
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$3;

    invoke-direct {v1, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$3;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 429
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay()V

    .line 430
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 321
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 322
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay()V

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSwitchingView:Z

    .line 324
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 387
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 388
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAdvFuncDialog:Lorg/videolan/vlc/gui/AdvFuncDialog;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAdvFuncDialog:Lorg/videolan/vlc/gui/AdvFuncDialog;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/AdvFuncDialog;->destroyAdvFuncDialog()V

    .line 390
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 786
    iget-boolean v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsLocked:Z

    if-eqz v6, :cond_0

    .line 787
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay()V

    .line 850
    :goto_0
    return v5

    .line 791
    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 792
    .local v1, "screen":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 794
    iget v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceYDisplayRange:I

    if-nez v6, :cond_1

    .line 795
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceYDisplayRange:I

    .line 797
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iget v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTouchY:F

    sub-float v4, v6, v7

    .line 798
    .local v4, "y_changed":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTouchX:F

    sub-float v2, v6, v7

    .line 801
    .local v2, "x_changed":F
    div-float v6, v4, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 802
    .local v0, "coef":F
    iget v6, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v6, v2, v6

    const v7, 0x40228f5c    # 2.54f

    mul-float v3, v6, v7

    .line 804
    .local v3, "xgesturesize":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 850
    :goto_1
    iget-boolean v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsAudioOrBrightnessChanged:Z

    goto :goto_0

    .line 808
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTouchY:F

    .line 809
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVol:F

    .line 810
    iput-boolean v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsAudioOrBrightnessChanged:Z

    .line 812
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTouchX:F

    goto :goto_1

    .line 817
    :pswitch_1
    const/high16 v6, 0x40000000    # 2.0f

    cmpl-float v6, v0, v6

    if-lez v6, :cond_5

    .line 819
    iget-boolean v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mEnableBrightnessGesture:Z

    if-eqz v6, :cond_2

    iget v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTouchX:F

    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 820
    :cond_2
    invoke-direct {p0, v4}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->doVolumeTouch(F)V

    .line 823
    :cond_3
    iget-boolean v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mEnableBrightnessGesture:Z

    if-eqz v6, :cond_4

    iget v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTouchX:F

    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    .line 824
    invoke-direct {p0, v4}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->doBrightnessTouch(F)V

    .line 830
    :cond_4
    invoke-static {}, Lorg/videolan/vlc/Util;->hasNavBar()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 831
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay()V

    .line 834
    :cond_5
    invoke-direct {p0, v0, v3, v5}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->doSeekTouch(FFZ)V

    goto :goto_1

    .line 839
    :pswitch_2
    iget-boolean v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsAudioOrBrightnessChanged:Z

    if-nez v5, :cond_6

    .line 840
    iget-boolean v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mShowing:Z

    if-nez v5, :cond_7

    .line 841
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay()V

    .line 847
    :cond_6
    :goto_2
    invoke-direct {p0, v0, v3, v8}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->doSeekTouch(FFZ)V

    goto :goto_1

    .line 843
    :cond_7
    invoke-direct {p0, v8}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->hideOverlay(Z)V

    goto :goto_2

    .line 804
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 486
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay()V

    .line 487
    const/4 v0, 0x1

    return v0
.end method

.method public setSurfaceSize(IIII)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "sar_num"    # I
    .param p4, "sar_den"    # I

    .prologue
    .line 497
    mul-int v1, p1, p2

    if-nez v1, :cond_0

    .line 507
    :goto_0
    return-void

    .line 501
    :cond_0
    iput p2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoHeight:I

    .line 502
    iput p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoWidth:I

    .line 503
    iput p3, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSarNum:I

    .line 504
    iput p4, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSarDen:I

    .line 505
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 506
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public showAdvanceFunction(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1469
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAdvFuncDialog:Lorg/videolan/vlc/gui/AdvFuncDialog;

    if-nez v0, :cond_0

    .line 1470
    new-instance v0, Lorg/videolan/vlc/gui/AdvFuncDialog;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/AdvFuncDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAdvFuncDialog:Lorg/videolan/vlc/gui/AdvFuncDialog;

    .line 1471
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAdvFuncDialog:Lorg/videolan/vlc/gui/AdvFuncDialog;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/AdvFuncDialog;->show()V

    .line 1472
    return-void
.end method
