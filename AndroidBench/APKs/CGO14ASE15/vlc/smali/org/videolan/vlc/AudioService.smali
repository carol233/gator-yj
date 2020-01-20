.class public Lorg/videolan/vlc/AudioService;
.super Landroid/app/Service;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/AudioService$AudioServiceHandler;,
        Lorg/videolan/vlc/AudioService$AudioServiceEventHandler;
    }
.end annotation


# static fields
.field public static final ACTION_REMOTE_BACKWARD:Ljava/lang/String; = "org.videolan.vlc.remote.Backward"

.field public static final ACTION_REMOTE_FORWARD:Ljava/lang/String; = "org.videolan.vlc.remote.Forward"

.field public static final ACTION_REMOTE_GENERIC:Ljava/lang/String; = "org.videolan.vlc.remote."

.field public static final ACTION_REMOTE_LAST_PLAYLIST:Ljava/lang/String; = "org.videolan.vlc.remote.LastPlaylist"

.field public static final ACTION_REMOTE_PAUSE:Ljava/lang/String; = "org.videolan.vlc.remote.Pause"

.field public static final ACTION_REMOTE_PLAY:Ljava/lang/String; = "org.videolan.vlc.remote.Play"

.field public static final ACTION_REMOTE_PLAYPAUSE:Ljava/lang/String; = "org.videolan.vlc.remote.PlayPause"

.field public static final ACTION_REMOTE_STOP:Ljava/lang/String; = "org.videolan.vlc.remote.Stop"

.field public static final ACTION_WIDGET_UPDATE:Ljava/lang/String; = "org.videolan.vlc.widget.UPDATE"

.field public static final ACTION_WIDGET_UPDATE_POSITION:Ljava/lang/String; = "org.videolan.vlc.widget.UPDATE_POSITION"

.field private static final SHOW_PROGRESS:I = 0x0

.field public static final START_FROM_NOTIFICATION:Ljava/lang/String; = "from_notification"

.field private static final TAG:Ljava/lang/String; = "VLC/AudioService"

.field public static final WIDGET_CLASS:Ljava/lang/String; = "org.videolan.vlc.widget.VLCAppWidgetProvider"

.field public static final WIDGET_PACKAGE:Ljava/lang/String; = "org.videolan.vlc"


# instance fields
.field private audioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/videolan/vlc/interfaces/IAudioServiceCallback;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentMedia:Lorg/videolan/vlc/Media;

.field private mDetectHeadset:Z

.field private final mEventHandler:Landroid/os/Handler;

.field private mEventManager:Lorg/videolan/vlc/EventManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mInterface:Lorg/videolan/vlc/interfaces/IAudioService$Stub;

.field private mLibVLC:Lorg/videolan/vlc/LibVLC;

.field private mLibVLCPlaylistActive:Z

.field private mMediaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/vlc/Media;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevious:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lorg/videolan/vlc/Media;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteControlClient:Landroid/media/RemoteControlClient;

.field private mRemoteControlClientReceiver:Lorg/videolan/vlc/RemoteControlClientReceiver;

.field private mRemoteControlClientReceiverComponent:Landroid/content/ComponentName;

.field private mRepeating:Lorg/videolan/vlc/RepeatType;

.field private mShuffling:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWidgetPositionTimestamp:J

.field private final serviceReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 94
    iput-boolean v1, p0, Lorg/videolan/vlc/AudioService;->mShuffling:Z

    .line 95
    sget-object v0, Lorg/videolan/vlc/RepeatType;->None:Lorg/videolan/vlc/RepeatType;

    iput-object v0, p0, Lorg/videolan/vlc/AudioService;->mRepeating:Lorg/videolan/vlc/RepeatType;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/vlc/AudioService;->mDetectHeadset:Z

    .line 104
    iput-object v2, p0, Lorg/videolan/vlc/AudioService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    .line 105
    iput-object v2, p0, Lorg/videolan/vlc/AudioService;->mRemoteControlClientReceiver:Lorg/videolan/vlc/RemoteControlClientReceiver;

    .line 113
    iput-boolean v1, p0, Lorg/videolan/vlc/AudioService;->mLibVLCPlaylistActive:Z

    .line 118
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/videolan/vlc/AudioService;->mWidgetPositionTimestamp:J

    .line 277
    new-instance v0, Lorg/videolan/vlc/AudioService$2;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/AudioService$2;-><init>(Lorg/videolan/vlc/AudioService;)V

    iput-object v0, p0, Lorg/videolan/vlc/AudioService;->serviceReceiver:Landroid/content/BroadcastReceiver;

    .line 354
    new-instance v0, Lorg/videolan/vlc/AudioService$AudioServiceEventHandler;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/AudioService$AudioServiceEventHandler;-><init>(Lorg/videolan/vlc/AudioService;)V

    iput-object v0, p0, Lorg/videolan/vlc/AudioService;->mEventHandler:Landroid/os/Handler;

    .line 463
    new-instance v0, Lorg/videolan/vlc/AudioService$AudioServiceHandler;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/AudioService$AudioServiceHandler;-><init>(Lorg/videolan/vlc/AudioService;)V

    iput-object v0, p0, Lorg/videolan/vlc/AudioService;->mHandler:Landroid/os/Handler;

    .line 645
    new-instance v0, Lorg/videolan/vlc/AudioService$3;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/AudioService$3;-><init>(Lorg/videolan/vlc/AudioService;)V

    iput-object v0, p0, Lorg/videolan/vlc/AudioService;->mInterface:Lorg/videolan/vlc/interfaces/IAudioService$Stub;

    return-void
.end method

.method static synthetic access$000(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/LibVLC;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    return-object v0
.end method

.method static synthetic access$100(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/Media;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/videolan/vlc/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/videolan/vlc/AudioService;->setRemoteControlClientPlaybackState(I)V

    return-void
.end method

.method static synthetic access$102(Lorg/videolan/vlc/AudioService;Lorg/videolan/vlc/Media;)Lorg/videolan/vlc/Media;
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;
    .param p1, "x1"    # Lorg/videolan/vlc/Media;

    .prologue
    .line 68
    iput-object p1, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/videolan/vlc/AudioService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/videolan/vlc/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->executeUpdate()V

    return-void
.end method

.method static synthetic access$1300(Lorg/videolan/vlc/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->hideNotification()V

    return-void
.end method

.method static synthetic access$1400(Lorg/videolan/vlc/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->handleVout()V

    return-void
.end method

.method static synthetic access$1500(Lorg/videolan/vlc/AudioService;Landroid/content/Context;F)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # F

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lorg/videolan/vlc/AudioService;->updateWidgetPosition(Landroid/content/Context;F)V

    return-void
.end method

.method static synthetic access$1600(Lorg/videolan/vlc/AudioService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mCallback:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/videolan/vlc/AudioService;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/videolan/vlc/AudioService;->executeUpdate(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1800(Lorg/videolan/vlc/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/videolan/vlc/AudioService;->mShuffling:Z

    return v0
.end method

.method static synthetic access$1900(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/RepeatType;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mRepeating:Lorg/videolan/vlc/RepeatType;

    return-object v0
.end method

.method static synthetic access$200(Lorg/videolan/vlc/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->pause()V

    return-void
.end method

.method static synthetic access$2000(Lorg/videolan/vlc/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mMediaList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/videolan/vlc/AudioService;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->getCover()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lorg/videolan/vlc/AudioService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/videolan/vlc/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/videolan/vlc/AudioService;->mLibVLCPlaylistActive:Z

    return v0
.end method

.method static synthetic access$2302(Lorg/videolan/vlc/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lorg/videolan/vlc/AudioService;->mLibVLCPlaylistActive:Z

    return p1
.end method

.method static synthetic access$2400(Lorg/videolan/vlc/AudioService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/EventManager;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mEventManager:Lorg/videolan/vlc/EventManager;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/videolan/vlc/AudioService;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mPrevious:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/videolan/vlc/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->showNotification()V

    return-void
.end method

.method static synthetic access$2800(Lorg/videolan/vlc/AudioService;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/videolan/vlc/AudioService;->updateWidget(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2900(Lorg/videolan/vlc/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->updateRemoteControlClientMetadata()V

    return-void
.end method

.method static synthetic access$300(Lorg/videolan/vlc/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->play()V

    return-void
.end method

.method static synthetic access$3000(Lorg/videolan/vlc/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->saveMediaList()V

    return-void
.end method

.method static synthetic access$3100(Lorg/videolan/vlc/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->saveCurrentMedia()V

    return-void
.end method

.method static synthetic access$3200(Lorg/videolan/vlc/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->shuffle()V

    return-void
.end method

.method static synthetic access$3300(Lorg/videolan/vlc/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/videolan/vlc/AudioService;->setRepeatType(I)V

    return-void
.end method

.method static synthetic access$400(Lorg/videolan/vlc/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->previous()V

    return-void
.end method

.method static synthetic access$500(Lorg/videolan/vlc/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->stop()V

    return-void
.end method

.method static synthetic access$600(Lorg/videolan/vlc/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->next()V

    return-void
.end method

.method static synthetic access$700(Lorg/videolan/vlc/AudioService;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->loadLastPlaylist()V

    return-void
.end method

.method static synthetic access$800(Lorg/videolan/vlc/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/videolan/vlc/AudioService;->mDetectHeadset:Z

    return v0
.end method

.method static synthetic access$802(Lorg/videolan/vlc/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lorg/videolan/vlc/AudioService;->mDetectHeadset:Z

    return p1
.end method

.method static synthetic access$900(Lorg/videolan/vlc/AudioService;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/videolan/vlc/AudioService;->changeAudioFocus(Z)V

    return-void
.end method

.method private changeAudioFocus(Z)V
    .locals 4
    .param p1, "gain"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 250
    invoke-static {}, Lorg/videolan/vlc/Util;->isFroyoOrLater()Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    :goto_0
    return-void

    .line 253
    :cond_0
    new-instance v1, Lorg/videolan/vlc/AudioService$1;

    invoke-direct {v1, p0}, Lorg/videolan/vlc/AudioService$1;-><init>(Lorg/videolan/vlc/AudioService;)V

    iput-object v1, p0, Lorg/videolan/vlc/AudioService;->audioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 269
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/AudioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 270
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz p1, :cond_1

    .line 271
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->audioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    goto :goto_0

    .line 273
    :cond_1
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->audioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0
.end method

.method private executeUpdate()V
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/videolan/vlc/AudioService;->executeUpdate(Ljava/lang/Boolean;)V

    .line 449
    return-void
.end method

.method private executeUpdate(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "updateWidget"    # Ljava/lang/Boolean;

    .prologue
    .line 452
    iget-object v3, p0, Lorg/videolan/vlc/AudioService;->mCallback:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/interfaces/IAudioServiceCallback;

    .line 454
    .local v0, "callback":Lorg/videolan/vlc/interfaces/IAudioServiceCallback;
    :try_start_0
    invoke-interface {v0}, Lorg/videolan/vlc/interfaces/IAudioServiceCallback;->update()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 455
    :catch_0
    move-exception v1

    .line 456
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 459
    .end local v0    # "callback":Lorg/videolan/vlc/interfaces/IAudioServiceCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 460
    invoke-direct {p0, p0}, Lorg/videolan/vlc/AudioService;->updateWidget(Landroid/content/Context;)V

    .line 461
    :cond_1
    return-void
.end method

.method private getCover()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    const/16 v1, 0x200

    invoke-static {p0, v0, v1}, Lorg/videolan/vlc/gui/audio/AudioUtil;->getCover(Landroid/content/Context;Lorg/videolan/vlc/Media;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private handleVout()V
    .locals 4

    .prologue
    .line 436
    const-string v0, "VLC/AudioService"

    const-string v1, "Obtained video track"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 438
    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->hideNotification()V

    .line 441
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    if-nez v0, :cond_0

    .line 445
    :goto_0
    return-void

    .line 444
    :cond_0
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    invoke-virtual {v1}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    invoke-virtual {v2}, Lorg/videolan/vlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private hideNotification()V
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/AudioService;->stopForeground(Z)V

    .line 518
    return-void
.end method

.method private declared-synchronized loadLastPlaylist()V
    .locals 11

    .prologue
    .line 971
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/Util;->hasExternalStorage()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_0

    .line 1011
    :goto_0
    monitor-exit p0

    return-void

    .line 977
    :cond_0
    const/4 v7, 0x0

    .line 979
    .local v7, "rowCount":I
    const/4 v6, 0x0

    .line 981
    .local v6, "position":I
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 985
    .local v5, "mediaPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lorg/videolan/vlc/gui/audio/AudioUtil;->CACHE_DIR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "CurrentMedia.txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 986
    .local v3, "input":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 987
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 988
    .local v1, "currentMedia":Ljava/lang/String;
    const-string v8, "1"

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, p0, Lorg/videolan/vlc/AudioService;->mShuffling:Z

    .line 989
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 990
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 993
    new-instance v3, Ljava/io/FileInputStream;

    .end local v3    # "input":Ljava/io/FileInputStream;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lorg/videolan/vlc/gui/audio/AudioUtil;->CACHE_DIR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "MediaList.txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 994
    .restart local v3    # "input":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    .end local v0    # "br":Ljava/io/BufferedReader;
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 995
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 996
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 997
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 998
    move v6, v7

    .line 999
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1001
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1002
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 1005
    iget-object v8, p0, Lorg/videolan/vlc/AudioService;->mInterface:Lorg/videolan/vlc/interfaces/IAudioService$Stub;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v5, v6, v9, v10}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->load(Ljava/util/List;IZZ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1006
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "currentMedia":Ljava/lang/String;
    .end local v3    # "input":Ljava/io/FileInputStream;
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1007
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 971
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "mediaPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "position":I
    .end local v7    # "rowCount":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1008
    .restart local v5    # "mediaPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "position":I
    .restart local v7    # "rowCount":I
    :catch_1
    move-exception v2

    .line 1009
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method private next()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 551
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mMediaList:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 552
    .local v0, "index":I
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mPrevious:Ljava/util/Stack;

    iget-object v2, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mRepeating:Lorg/videolan/vlc/RepeatType;

    sget-object v2, Lorg/videolan/vlc/RepeatType;->Once:Lorg/videolan/vlc/RepeatType;

    if-ne v1, v2, :cond_1

    .line 554
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/Media;

    iput-object v1, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    .line 569
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lorg/videolan/vlc/AudioService;->mLibVLCPlaylistActive:Z

    if-eqz v1, :cond_7

    .line 570
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mRepeating:Lorg/videolan/vlc/RepeatType;

    sget-object v2, Lorg/videolan/vlc/RepeatType;->None:Lorg/videolan/vlc/RepeatType;

    if-ne v1, v2, :cond_5

    .line 571
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v1}, Lorg/videolan/vlc/LibVLC;->next()V

    .line 579
    :goto_1
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 580
    invoke-virtual {p0}, Lorg/videolan/vlc/AudioService;->setUpRemoteControlClient()V

    .line 581
    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->showNotification()V

    .line 582
    invoke-direct {p0, p0}, Lorg/videolan/vlc/AudioService;->updateWidget(Landroid/content/Context;)V

    .line 583
    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->updateRemoteControlClientMetadata()V

    .line 584
    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->saveCurrentMedia()V

    .line 585
    :goto_2
    return-void

    .line 555
    :cond_1
    iget-boolean v1, p0, Lorg/videolan/vlc/AudioService;->mShuffling:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mPrevious:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    iget-object v2, p0, Lorg/videolan/vlc/AudioService;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 556
    :goto_3
    iget-object v2, p0, Lorg/videolan/vlc/AudioService;->mPrevious:Ljava/util/Stack;

    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mMediaList:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    iget-object v5, p0, Lorg/videolan/vlc/AudioService;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/Media;

    iput-object v1, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 559
    :cond_2
    iget-boolean v1, p0, Lorg/videolan/vlc/AudioService;->mShuffling:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 560
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mMediaList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/Media;

    iput-object v1, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    goto :goto_0

    .line 562
    :cond_3
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mRepeating:Lorg/videolan/vlc/RepeatType;

    sget-object v2, Lorg/videolan/vlc/RepeatType;->All:Lorg/videolan/vlc/RepeatType;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 563
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/Media;

    iput-object v1, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    goto/16 :goto_0

    .line 565
    :cond_4
    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->stop()V

    goto :goto_2

    .line 572
    :cond_5
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mRepeating:Lorg/videolan/vlc/RepeatType;

    sget-object v2, Lorg/videolan/vlc/RepeatType;->Once:Lorg/videolan/vlc/RepeatType;

    if-ne v1, v2, :cond_6

    .line 573
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v1, v0}, Lorg/videolan/vlc/LibVLC;->playIndex(I)V

    goto/16 :goto_1

    .line 575
    :cond_6
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    iget-object v2, p0, Lorg/videolan/vlc/AudioService;->mMediaList:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/videolan/vlc/LibVLC;->playIndex(I)V

    goto/16 :goto_1

    .line 577
    :cond_7
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    iget-object v2, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    invoke-virtual {v2}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/videolan/vlc/LibVLC;->readMedia(Ljava/lang/String;Z)I

    goto/16 :goto_1
.end method

.method private pause()V
    .locals 2

    .prologue
    .line 521
    invoke-virtual {p0}, Lorg/videolan/vlc/AudioService;->setUpRemoteControlClient()V

    .line 522
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 524
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/vlc/LibVLC;->pause()V

    .line 525
    return-void
.end method

.method private play()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {p0}, Lorg/videolan/vlc/AudioService;->setUpRemoteControlClient()V

    .line 530
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/vlc/LibVLC;->play()V

    .line 531
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 532
    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->showNotification()V

    .line 533
    invoke-direct {p0, p0}, Lorg/videolan/vlc/AudioService;->updateWidget(Landroid/content/Context;)V

    .line 535
    :cond_0
    return-void
.end method

.method private previous()V
    .locals 4

    .prologue
    .line 605
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mMediaList:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 606
    .local v0, "index":I
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mPrevious:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 607
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mPrevious:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/Media;

    iput-object v1, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    .line 612
    :goto_0
    iget-boolean v1, p0, Lorg/videolan/vlc/AudioService;->mLibVLCPlaylistActive:Z

    if-eqz v1, :cond_4

    .line 613
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mRepeating:Lorg/videolan/vlc/RepeatType;

    sget-object v2, Lorg/videolan/vlc/RepeatType;->None:Lorg/videolan/vlc/RepeatType;

    if-ne v1, v2, :cond_2

    .line 614
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v1}, Lorg/videolan/vlc/LibVLC;->previous()V

    .line 622
    :goto_1
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 623
    invoke-virtual {p0}, Lorg/videolan/vlc/AudioService;->setUpRemoteControlClient()V

    .line 624
    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->showNotification()V

    .line 625
    invoke-direct {p0, p0}, Lorg/videolan/vlc/AudioService;->updateWidget(Landroid/content/Context;)V

    .line 626
    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->updateRemoteControlClientMetadata()V

    .line 627
    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->saveCurrentMedia()V

    .line 628
    :cond_0
    return-void

    .line 608
    :cond_1
    if-lez v0, :cond_0

    .line 609
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mMediaList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/Media;

    iput-object v1, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    goto :goto_0

    .line 615
    :cond_2
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mRepeating:Lorg/videolan/vlc/RepeatType;

    sget-object v2, Lorg/videolan/vlc/RepeatType;->Once:Lorg/videolan/vlc/RepeatType;

    if-ne v1, v2, :cond_3

    .line 616
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v1, v0}, Lorg/videolan/vlc/LibVLC;->playIndex(I)V

    goto :goto_1

    .line 618
    :cond_3
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    iget-object v2, p0, Lorg/videolan/vlc/AudioService;->mMediaList:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/videolan/vlc/LibVLC;->playIndex(I)V

    goto :goto_1

    .line 620
    :cond_4
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    iget-object v2, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    invoke-virtual {v2}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/videolan/vlc/LibVLC;->readMedia(Ljava/lang/String;Z)I

    goto :goto_1
.end method

.method private declared-synchronized saveCurrentMedia()V
    .locals 5

    .prologue
    .line 1014
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/Util;->hasExternalStorage()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 1032
    :goto_0
    monitor-exit p0

    return-void

    .line 1021
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/videolan/vlc/gui/audio/AudioUtil;->CACHE_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "CurrentMedia.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1022
    .local v2, "output":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1023
    .local v0, "bw":Ljava/io/BufferedWriter;
    iget-object v3, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    invoke-virtual {v3}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1024
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 1025
    iget-boolean v3, p0, Lorg/videolan/vlc/AudioService;->mShuffling:Z

    if-eqz v3, :cond_2

    const-string v3, "1"

    :goto_2
    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1026
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 1027
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 1028
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1029
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "output":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 1030
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1014
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1023
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_3
    const-string v3, ""

    goto :goto_1

    .line 1025
    :cond_2
    const-string v3, "0"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private declared-synchronized saveMediaList()V
    .locals 7

    .prologue
    .line 1035
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/Util;->hasExternalStorage()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 1054
    :goto_0
    monitor-exit p0

    return-void

    .line 1042
    :cond_0
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/videolan/vlc/gui/audio/AudioUtil;->CACHE_DIR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MediaList.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1043
    .local v4, "output":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1044
    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lorg/videolan/vlc/AudioService;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 1045
    iget-object v5, p0, Lorg/videolan/vlc/AudioService;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/videolan/vlc/Media;

    .line 1046
    .local v3, "item":Lorg/videolan/vlc/Media;
    invoke-virtual {v3}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1047
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(I)V

    .line 1044
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1049
    .end local v3    # "item":Lorg/videolan/vlc/Media;
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 1050
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1051
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "i":I
    .end local v4    # "output":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 1052
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1035
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private setRemoteControlClientPlaybackState(I)V
    .locals 1
    .param p1, "p"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 217
    invoke-static {}, Lorg/videolan/vlc/Util;->isICSOrLater()Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, p1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    goto :goto_0
.end method

.method private setRepeatType(I)V
    .locals 1
    .param p1, "t"    # I

    .prologue
    .line 638
    invoke-static {}, Lorg/videolan/vlc/RepeatType;->values()[Lorg/videolan/vlc/RepeatType;

    move-result-object v0

    aget-object v0, v0, p1

    iput-object v0, p0, Lorg/videolan/vlc/AudioService;->mRepeating:Lorg/videolan/vlc/RepeatType;

    .line 639
    return-void
.end method

.method private showNotification()V
    .locals 6

    .prologue
    .line 490
    :try_start_0
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0200ae

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    const/16 v5, 0x40

    invoke-static {p0, v4, v5}, Lorg/videolan/vlc/gui/audio/AudioUtil;->getCover(Landroid/content/Context;Lorg/videolan/vlc/Media;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    invoke-virtual {v4}, Lorg/videolan/vlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    invoke-virtual {v5}, Lorg/videolan/vlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    invoke-virtual {v5}, Lorg/videolan/vlc/Media;->getArtist()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-static {}, Lorg/videolan/vlc/Util;->isJellyBeanOrLater()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    invoke-virtual {v3}, Lorg/videolan/vlc/Media;->getArtist()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    invoke-virtual {v4}, Lorg/videolan/vlc/Media;->getAlbum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 500
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 501
    .local v1, "notificationIntent":Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    const-string v3, "from_notification"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 504
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 506
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 507
    const/4 v3, 0x3

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/videolan/vlc/AudioService;->startForeground(ILandroid/app/Notification;)V

    .line 514
    .end local v0    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v1    # "notificationIntent":Landroid/content/Intent;
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_1
    return-void

    .line 490
    :cond_0
    iget-object v3, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    invoke-virtual {v3}, Lorg/videolan/vlc/Media;->getSubtitle()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 509
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private shuffle()V
    .locals 1

    .prologue
    .line 631
    iget-boolean v0, p0, Lorg/videolan/vlc/AudioService;->mShuffling:Z

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mPrevious:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 633
    :cond_0
    iget-boolean v0, p0, Lorg/videolan/vlc/AudioService;->mShuffling:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/videolan/vlc/AudioService;->mShuffling:Z

    .line 634
    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->saveCurrentMedia()V

    .line 635
    return-void

    .line 633
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 538
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/vlc/LibVLC;->stop()V

    .line 539
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mEventManager:Lorg/videolan/vlc/EventManager;

    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/EventManager;->removeHandler(Landroid/os/Handler;)V

    .line 540
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/videolan/vlc/AudioService;->setRemoteControlClientPlaybackState(I)V

    .line 541
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    .line 542
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 543
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mPrevious:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 544
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 545
    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->hideNotification()V

    .line 546
    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->executeUpdate()V

    .line 547
    invoke-direct {p0, v2}, Lorg/videolan/vlc/AudioService;->changeAudioFocus(Z)V

    .line 548
    return-void
.end method

.method private updateRemoteControlClientMetadata()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 589
    invoke-static {}, Lorg/videolan/vlc/Util;->isICSOrLater()Z

    move-result v1

    if-nez v1, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz v1, :cond_0

    .line 593
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v1, v2}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    .line 594
    .local v0, "editor":Landroid/media/RemoteControlClient$MetadataEditor;
    iget-object v1, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    invoke-virtual {v1}, Lorg/videolan/vlc/Media;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 595
    const/4 v1, 0x2

    iget-object v2, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    invoke-virtual {v2}, Lorg/videolan/vlc/Media;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 596
    const/4 v1, 0x6

    iget-object v2, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    invoke-virtual {v2}, Lorg/videolan/vlc/Media;->getGenre()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 597
    const/4 v1, 0x7

    iget-object v2, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    invoke-virtual {v2}, Lorg/videolan/vlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 598
    const/16 v1, 0x9

    iget-object v2, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    invoke-virtual {v2}, Lorg/videolan/vlc/Media;->getLength()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 599
    const/16 v1, 0x64

    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->getCover()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 600
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    goto :goto_0
.end method

.method private updateWidget(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 933
    const-string v2, "VLC/AudioService"

    const-string v3, "Updating widget"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 935
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "org.videolan.vlc"

    const-string v3, "org.videolan.vlc.widget.VLCAppWidgetProvider"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 936
    const-string v2, "org.videolan.vlc.widget.UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 938
    iget-object v2, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    if-eqz v2, :cond_0

    .line 939
    const-string v2, "title"

    iget-object v3, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    invoke-virtual {v3}, Lorg/videolan/vlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 940
    const-string v2, "artist"

    iget-object v3, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    invoke-virtual {v3}, Lorg/videolan/vlc/Media;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 946
    :goto_0
    const-string v2, "isplaying"

    iget-object v3, p0, Lorg/videolan/vlc/AudioService;->mLibVLC:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v3}, Lorg/videolan/vlc/LibVLC;->isPlaying()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 948
    iget-object v2, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    const/16 v3, 0x40

    invoke-static {p0, v2, v3}, Lorg/videolan/vlc/gui/audio/AudioUtil;->getCover(Landroid/content/Context;Lorg/videolan/vlc/Media;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 949
    .local v0, "cover":Landroid/graphics/Bitmap;
    :goto_1
    const-string v2, "cover"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 951
    invoke-virtual {p0, v1}, Lorg/videolan/vlc/AudioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 952
    return-void

    .line 943
    .end local v0    # "cover":Landroid/graphics/Bitmap;
    :cond_0
    const-string v2, "title"

    const-string v3, "VLC mini player"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 944
    const-string v2, "artist"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 948
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateWidgetPosition(Landroid/content/Context;F)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pos"    # F

    .prologue
    .line 957
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 958
    .local v1, "timestamp":J
    iget-object v3, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lorg/videolan/vlc/AudioService;->mWidgetPositionTimestamp:J

    sub-long v3, v1, v3

    iget-object v5, p0, Lorg/videolan/vlc/AudioService;->mCurrentMedia:Lorg/videolan/vlc/Media;

    invoke-virtual {v5}, Lorg/videolan/vlc/Media;->getLength()J

    move-result-wide v5

    const-wide/16 v7, 0x32

    div-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 962
    :cond_1
    iput-wide v1, p0, Lorg/videolan/vlc/AudioService;->mWidgetPositionTimestamp:J

    .line 963
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 964
    .local v0, "i":Landroid/content/Intent;
    const-string v3, "org.videolan.vlc"

    const-string v4, "org.videolan.vlc.widget.VLCAppWidgetProvider"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 965
    const-string v3, "org.videolan.vlc.widget.UPDATE_POSITION"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 966
    const-string v3, "position"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 967
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/AudioService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 245
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mInterface:Lorg/videolan/vlc/interfaces/IAudioService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 9

    .prologue
    const v8, 0x7fffffff

    .line 122
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 126
    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/LibVLC;->getInstance()Lorg/videolan/vlc/LibVLC;

    move-result-object v5

    iput-object v5, p0, Lorg/videolan/vlc/AudioService;->mLibVLC:Lorg/videolan/vlc/LibVLC;
    :try_end_0
    .catch Lorg/videolan/vlc/LibVlcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    new-instance v5, Lorg/videolan/vlc/VlcCrashHandler;

    invoke-direct {v5}, Lorg/videolan/vlc/VlcCrashHandler;-><init>()V

    invoke-static {v5}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 133
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lorg/videolan/vlc/AudioService;->mCallback:Ljava/util/HashMap;

    .line 134
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/videolan/vlc/AudioService;->mMediaList:Ljava/util/ArrayList;

    .line 135
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    iput-object v5, p0, Lorg/videolan/vlc/AudioService;->mPrevious:Ljava/util/Stack;

    .line 136
    invoke-static {}, Lorg/videolan/vlc/EventManager;->getInstance()Lorg/videolan/vlc/EventManager;

    move-result-object v5

    iput-object v5, p0, Lorg/videolan/vlc/AudioService;->mEventManager:Lorg/videolan/vlc/EventManager;

    .line 137
    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lorg/videolan/vlc/AudioService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lorg/videolan/vlc/RemoteControlClientReceiver;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/videolan/vlc/AudioService;->mRemoteControlClientReceiverComponent:Landroid/content/ComponentName;

    .line 142
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lorg/videolan/vlc/AudioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 143
    .local v2, "pm":Landroid/os/PowerManager;
    const/4 v5, 0x1

    const-string v6, "VLC/AudioService"

    invoke-virtual {v2, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lorg/videolan/vlc/AudioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 145
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v1, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 147
    const-string v5, "org.videolan.vlc.remote.Backward"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v5, "org.videolan.vlc.remote.PlayPause"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v5, "org.videolan.vlc.remote.Play"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v5, "org.videolan.vlc.remote.Pause"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v5, "org.videolan.vlc.remote.Stop"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v5, "org.videolan.vlc.remote.Forward"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v5, "org.videolan.vlc.remote.LastPlaylist"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v5, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v5, "org.videolan.vlc.SleepIntent"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    iget-object v5, p0, Lorg/videolan/vlc/AudioService;->serviceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lorg/videolan/vlc/AudioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 160
    .local v3, "pref":Landroid/content/SharedPreferences;
    const-string v5, "enable_steal_remote_control"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 162
    .local v4, "stealRemoteControl":Z
    invoke-static {}, Lorg/videolan/vlc/Util;->isFroyoOrLater()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v4, :cond_2

    .line 164
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    if-eqz v4, :cond_1

    .line 166
    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 167
    :cond_1
    const-string v5, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    new-instance v5, Lorg/videolan/vlc/RemoteControlClientReceiver;

    invoke-direct {v5}, Lorg/videolan/vlc/RemoteControlClientReceiver;-><init>()V

    iput-object v5, p0, Lorg/videolan/vlc/AudioService;->mRemoteControlClientReceiver:Lorg/videolan/vlc/RemoteControlClientReceiver;

    .line 169
    iget-object v5, p0, Lorg/videolan/vlc/AudioService;->mRemoteControlClientReceiver:Lorg/videolan/vlc/RemoteControlClientReceiver;

    invoke-virtual {p0, v5, v1}, Lorg/videolan/vlc/AudioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    :cond_2
    invoke-static {p0}, Lorg/videolan/vlc/gui/audio/AudioUtil;->prepareCacheFolder(Landroid/content/Context;)V

    .line 173
    return-void

    .line 127
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "pm":Landroid/os/PowerManager;
    .end local v3    # "pref":Landroid/content/SharedPreferences;
    .end local v4    # "stealRemoteControl":Z
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Lorg/videolan/vlc/LibVlcException;
    invoke-virtual {v0}, Lorg/videolan/vlc/LibVlcException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 233
    invoke-direct {p0}, Lorg/videolan/vlc/AudioService;->stop()V

    .line 234
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 236
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->serviceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/AudioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 237
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mRemoteControlClientReceiver:Lorg/videolan/vlc/RemoteControlClientReceiver;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lorg/videolan/vlc/AudioService;->mRemoteControlClientReceiver:Lorg/videolan/vlc/RemoteControlClientReceiver;

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/AudioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/vlc/AudioService;->mRemoteControlClientReceiver:Lorg/videolan/vlc/RemoteControlClientReceiver;

    .line 241
    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 226
    invoke-direct {p0, p0}, Lorg/videolan/vlc/AudioService;->updateWidget(Landroid/content/Context;)V

    .line 227
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public setUpRemoteControlClient()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 182
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 183
    .local v1, "context":Landroid/content/Context;
    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 185
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-static {}, Lorg/videolan/vlc/Util;->isICSOrLater()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 186
    iget-object v4, p0, Lorg/videolan/vlc/AudioService;->mRemoteControlClientReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 188
    iget-object v4, p0, Lorg/videolan/vlc/AudioService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    if-nez v4, :cond_0

    .line 189
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v2, "mediaButtonIntent":Landroid/content/Intent;
    iget-object v4, p0, Lorg/videolan/vlc/AudioService;->mRemoteControlClientReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 191
    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 194
    .local v3, "mediaPendingIntent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/media/RemoteControlClient;

    invoke-direct {v4, v3}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object v4, p0, Lorg/videolan/vlc/AudioService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    .line 195
    iget-object v4, p0, Lorg/videolan/vlc/AudioService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 198
    .end local v2    # "mediaButtonIntent":Landroid/content/Intent;
    .end local v3    # "mediaPendingIntent":Landroid/app/PendingIntent;
    :cond_0
    iget-object v4, p0, Lorg/videolan/vlc/AudioService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    const/16 v5, 0xb5

    invoke-virtual {v4, v5}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 207
    :cond_1
    :goto_0
    return-void

    .line 204
    :cond_2
    invoke-static {}, Lorg/videolan/vlc/Util;->isFroyoOrLater()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 205
    iget-object v4, p0, Lorg/videolan/vlc/AudioService;->mRemoteControlClientReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    goto :goto_0
.end method
