.class public Lorg/videolan/vlc/LibVLC;
.super Ljava/lang/Object;
.source "LibVLC.java"


# static fields
.field private static final AOUT_AUDIOTRACK:I = 0x1

.field private static final AOUT_AUDIOTRACK_JAVA:I = 0x0

.field private static final AOUT_OPENSLES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VLC/LibVLC"

.field private static sInstance:Lorg/videolan/vlc/LibVLC;


# instance fields
.field private mAout:Lorg/videolan/vlc/Aout;

.field private mDebugLogBuffer:Ljava/lang/StringBuffer;

.field private mInternalMediaPlayerInstance:J

.field private mIsBufferingLog:Z

.field private mIsInitialized:Z

.field private mLibVlcInstance:J

.field private mMediaListInstance:J

.field private mMediaListPlayerInstance:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 69
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-gt v3, v4, :cond_0

    .line 70
    const-string v3, "iomx-gingerbread"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .local v1, "t":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    const-string v3, "vlcjni"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    .line 89
    :goto_1
    return-void

    .line 71
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    :try_start_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-gt v3, v4, :cond_1

    .line 72
    const-string v3, "iomx-hc"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .restart local v1    # "t":Ljava/lang/Throwable;
    const-string v3, "VLC/LibVLC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load the iomx library: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    :try_start_3
    const-string v3, "iomx-ics"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 80
    .restart local v1    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 81
    .local v2, "ule":Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "VLC/LibVLC"

    .end local v1    # "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t load vlcjni library: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    .line 84
    .end local v2    # "ule":Ljava/lang/UnsatisfiedLinkError;
    .restart local v1    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 85
    .local v0, "se":Ljava/lang/SecurityException;
    const-string v3, "VLC/LibVLC"

    .end local v1    # "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encountered a security issue when loading vlcjni library: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide v0, p0, Lorg/videolan/vlc/LibVLC;->mLibVlcInstance:J

    .line 46
    iput-wide v0, p0, Lorg/videolan/vlc/LibVLC;->mMediaListPlayerInstance:J

    .line 47
    iput-wide v0, p0, Lorg/videolan/vlc/LibVLC;->mInternalMediaPlayerInstance:J

    .line 49
    iput-wide v0, p0, Lorg/videolan/vlc/LibVLC;->mMediaListInstance:J

    .line 53
    iput-boolean v2, p0, Lorg/videolan/vlc/LibVLC;->mIsBufferingLog:Z

    .line 61
    iput-boolean v2, p0, Lorg/videolan/vlc/LibVLC;->mIsInitialized:Z

    .line 127
    new-instance v0, Lorg/videolan/vlc/Aout;

    invoke-direct {v0}, Lorg/videolan/vlc/Aout;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/LibVLC;->mAout:Lorg/videolan/vlc/Aout;

    .line 128
    return-void
.end method

.method private native detachEventManager()V
.end method

.method public static getExistingInstance()Lorg/videolan/vlc/LibVLC;
    .locals 2

    .prologue
    .line 117
    const-class v1, Lorg/videolan/vlc/LibVLC;

    monitor-enter v1

    .line 118
    :try_start_0
    sget-object v0, Lorg/videolan/vlc/LibVLC;->sInstance:Lorg/videolan/vlc/LibVLC;

    monitor-exit v1

    return-object v0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lorg/videolan/vlc/LibVLC;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/videolan/vlc/LibVlcException;
        }
    .end annotation

    .prologue
    .line 99
    const-class v1, Lorg/videolan/vlc/LibVLC;

    monitor-enter v1

    .line 100
    :try_start_0
    sget-object v0, Lorg/videolan/vlc/LibVLC;->sInstance:Lorg/videolan/vlc/LibVLC;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lorg/videolan/vlc/LibVLC;

    invoke-direct {v0}, Lorg/videolan/vlc/LibVLC;-><init>()V

    sput-object v0, Lorg/videolan/vlc/LibVLC;->sInstance:Lorg/videolan/vlc/LibVLC;

    .line 103
    sget-object v0, Lorg/videolan/vlc/LibVLC;->sInstance:Lorg/videolan/vlc/LibVLC;

    invoke-direct {v0}, Lorg/videolan/vlc/LibVLC;->init()V

    .line 105
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    sget-object v0, Lorg/videolan/vlc/LibVLC;->sInstance:Lorg/videolan/vlc/LibVLC;

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private native getLengthFromLocation(JLjava/lang/String;)J
.end method

.method private native getThumbnail(JLjava/lang/String;II)[B
.end method

.method private native hasVideoTrack(JLjava/lang/String;)Z
.end method

.method private init()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/videolan/vlc/LibVlcException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 197
    const-string v2, "VLC/LibVLC"

    const-string v3, "Initializing LibVLC"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lorg/videolan/vlc/LibVLC;->mDebugLogBuffer:Ljava/lang/StringBuffer;

    .line 199
    iget-boolean v2, p0, Lorg/videolan/vlc/LibVLC;->mIsInitialized:Z

    if-nez v2, :cond_1

    .line 200
    invoke-static {}, Lorg/videolan/vlc/Util;->hasCompatibleCPU()Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    const-string v2, "VLC/LibVLC"

    invoke-static {}, Lorg/videolan/vlc/Util;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v2, Lorg/videolan/vlc/LibVlcException;

    invoke-direct {v2}, Lorg/videolan/vlc/LibVlcException;-><init>()V

    throw v2

    .line 204
    :cond_0
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 205
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 206
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v2, "enable_verbose_mode"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v2}, Lorg/videolan/vlc/LibVLC;->nativeInit(Z)V

    .line 207
    invoke-static {}, Lorg/videolan/vlc/EventManager;->getInstance()Lorg/videolan/vlc/EventManager;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/videolan/vlc/LibVLC;->setEventManager(Lorg/videolan/vlc/EventManager;)V

    .line 208
    iput-boolean v4, p0, Lorg/videolan/vlc/LibVLC;->mIsInitialized:Z

    .line 210
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeInit(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/videolan/vlc/LibVlcException;
        }
    .end annotation
.end method

.method public static native nativeIsPathDirectory(Ljava/lang/String;)Z
.end method

.method public static native nativeReadDirectory(Ljava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public static native nativeToURI(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native playIndex(JI)V
.end method

.method private native readMedia(JLjava/lang/String;Z)I
.end method

.method private native readMediaMeta(JLjava/lang/String;)[Ljava/lang/String;
.end method

.method private native readTracksInfo(JLjava/lang/String;)[Lorg/videolan/vlc/TrackInfo;
.end method

.method public static declared-synchronized restart()V
    .locals 5

    .prologue
    .line 150
    const-class v2, Lorg/videolan/vlc/LibVLC;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lorg/videolan/vlc/LibVLC;->sInstance:Lorg/videolan/vlc/LibVLC;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 152
    :try_start_1
    sget-object v1, Lorg/videolan/vlc/LibVLC;->sInstance:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v1}, Lorg/videolan/vlc/LibVLC;->destroy()V

    .line 153
    sget-object v1, Lorg/videolan/vlc/LibVLC;->sInstance:Lorg/videolan/vlc/LibVLC;

    invoke-direct {v1}, Lorg/videolan/vlc/LibVLC;->init()V
    :try_end_1
    .catch Lorg/videolan/vlc/LibVlcException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    .local v0, "lve":Lorg/videolan/vlc/LibVlcException;
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 154
    .end local v0    # "lve":Lorg/videolan/vlc/LibVlcException;
    :catch_0
    move-exception v0

    .line 155
    .restart local v0    # "lve":Lorg/videolan/vlc/LibVlcException;
    :try_start_2
    const-string v1, "VLC/LibVLC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to reinit libvlc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private native setEventManager(Lorg/videolan/vlc/EventManager;)V
.end method


# virtual methods
.method public native attachSurface(Landroid/view/Surface;Lorg/videolan/vlc/gui/video/VideoPlayerActivity;II)V
.end method

.method public native changeVerbosity(Z)V
.end method

.method public native changeset()Ljava/lang/String;
.end method

.method public clearBuffer()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lorg/videolan/vlc/LibVLC;->mDebugLogBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 349
    return-void
.end method

.method public closeAout()V
    .locals 2

    .prologue
    .line 254
    const-string v0, "VLC/LibVLC"

    const-string v1, "Closing the java audio output"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lorg/videolan/vlc/LibVLC;->mAout:Lorg/videolan/vlc/Aout;

    invoke-virtual {v0}, Lorg/videolan/vlc/Aout;->release()V

    .line 256
    return-void
.end method

.method public native compiler()Ljava/lang/String;
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 217
    const-string v0, "VLC/LibVLC"

    const-string v1, "Destroying LibVLC instance"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-direct {p0}, Lorg/videolan/vlc/LibVLC;->nativeDestroy()V

    .line 219
    invoke-direct {p0}, Lorg/videolan/vlc/LibVLC;->detachEventManager()V

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/vlc/LibVLC;->mIsInitialized:Z

    .line 221
    return-void
.end method

.method public native detachSurface()V
.end method

.method public finalize()V
    .locals 4

    .prologue
    .line 137
    iget-wide v0, p0, Lorg/videolan/vlc/LibVLC;->mLibVlcInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "VLC/LibVLC"

    const-string v1, "LibVLC is was destroyed yet before finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lorg/videolan/vlc/LibVLC;->destroy()V

    .line 141
    :cond_0
    return-void
.end method

.method public getAout()I
    .locals 6

    .prologue
    .line 172
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 173
    .local v3, "p":Landroid/content/SharedPreferences;
    invoke-static {}, Lorg/videolan/vlc/Util;->isGingerbreadOrLater()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x2

    .line 174
    .local v1, "defaultAout":I
    :goto_0
    move v0, v1

    .line 176
    .local v0, "aout":I
    :try_start_0
    const-string v4, "aout"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 181
    :goto_1
    return v0

    .line 173
    .end local v0    # "aout":I
    .end local v1    # "defaultAout":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 178
    .restart local v0    # "aout":I
    .restart local v1    # "defaultAout":I
    :catch_0
    move-exception v2

    .line 179
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    move v0, v1

    goto :goto_1
.end method

.method public native getAudioTrack()I
.end method

.method public native getAudioTrackDescription()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public native getAudioTracksCount()I
.end method

.method public getBufferContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lorg/videolan/vlc/LibVLC;->mDebugLogBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChroma()Ljava/lang/String;
    .locals 4

    .prologue
    .line 188
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 189
    .local v1, "p":Landroid/content/SharedPreferences;
    const-string v2, "chroma_format"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "chroma":Ljava/lang/String;
    const-string v2, "YV12"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/videolan/vlc/Util;->isGingerbreadOrLater()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, ""

    .end local v0    # "chroma":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public native getLength()J
.end method

.method public getLengthFromLocation(Ljava/lang/String;)J
    .locals 2
    .param p1, "mrl"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-wide v0, p0, Lorg/videolan/vlc/LibVLC;->mLibVlcInstance:J

    invoke-direct {p0, v0, v1, p1}, Lorg/videolan/vlc/LibVLC;->getLengthFromLocation(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public native getMediaListItems(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public native getPosition()F
.end method

.method public native getRate()F
.end method

.method public native getSpuTrack()I
.end method

.method public native getSpuTrackDescription()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public native getSpuTracksCount()I
.end method

.method public getSubtitlesEncoding()Ljava/lang/String;
    .locals 3

    .prologue
    .line 168
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 169
    .local v0, "p":Landroid/content/SharedPreferences;
    const-string v1, "subtitles_text_encoding"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getThumbnail(Ljava/lang/String;II)[B
    .locals 6
    .param p1, "mrl"    # Ljava/lang/String;
    .param p2, "i_width"    # I
    .param p3, "i_height"    # I

    .prologue
    .line 291
    iget-wide v1, p0, Lorg/videolan/vlc/LibVLC;->mLibVlcInstance:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/videolan/vlc/LibVLC;->getThumbnail(JLjava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public native getTime()J
.end method

.method public native getVideoTracksCount()I
.end method

.method public native getVolume()I
.end method

.method public native hasMediaPlayer()Z
.end method

.method public hasVideoTrack(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    iget-wide v0, p0, Lorg/videolan/vlc/LibVLC;->mLibVlcInstance:J

    invoke-direct {p0, v0, v1, p1}, Lorg/videolan/vlc/LibVLC;->hasVideoTrack(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public initAout(III)V
    .locals 2
    .param p1, "sampleRateInHz"    # I
    .param p2, "channels"    # I
    .param p3, "samples"    # I

    .prologue
    .line 228
    const-string v0, "VLC/LibVLC"

    const-string v1, "Opening the java audio output"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lorg/videolan/vlc/LibVLC;->mAout:Lorg/videolan/vlc/Aout;

    invoke-virtual {v0, p1, p2, p3}, Lorg/videolan/vlc/Aout;->init(III)V

    .line 230
    return-void
.end method

.method public isDebugBuffering()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lorg/videolan/vlc/LibVLC;->mIsBufferingLog:Z

    return v0
.end method

.method public native isPlaying()Z
.end method

.method public native isSeekable()Z
.end method

.method public native next()V
.end method

.method public native pause()V
.end method

.method public pauseAout()V
    .locals 2

    .prologue
    .line 245
    const-string v0, "VLC/LibVLC"

    const-string v1, "Pausing the java audio output"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lorg/videolan/vlc/LibVLC;->mAout:Lorg/videolan/vlc/Aout;

    invoke-virtual {v0}, Lorg/videolan/vlc/Aout;->pause()V

    .line 247
    return-void
.end method

.method public native play()V
.end method

.method public playAudio([BI)V
    .locals 1
    .param p1, "audioData"    # [B
    .param p2, "bufferSize"    # I

    .prologue
    .line 237
    iget-object v0, p0, Lorg/videolan/vlc/LibVLC;->mAout:Lorg/videolan/vlc/Aout;

    invoke-virtual {v0, p1, p2}, Lorg/videolan/vlc/Aout;->playBuffer([BI)V

    .line 238
    return-void
.end method

.method public playIndex(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 276
    iget-wide v0, p0, Lorg/videolan/vlc/LibVLC;->mLibVlcInstance:J

    invoke-direct {p0, v0, v1, p1}, Lorg/videolan/vlc/LibVLC;->playIndex(JI)V

    .line 277
    return-void
.end method

.method public native previous()V
.end method

.method public readMedia(Ljava/lang/String;Z)I
    .locals 3
    .param p1, "mrl"    # Ljava/lang/String;
    .param p2, "novideo"    # Z

    .prologue
    .line 266
    const-string v0, "VLC/LibVLC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-wide v0, p0, Lorg/videolan/vlc/LibVLC;->mLibVlcInstance:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/videolan/vlc/LibVLC;->readMedia(JLjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public readMedia(Ljava/lang/String;)V
    .locals 3
    .param p1, "mrl"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-wide v0, p0, Lorg/videolan/vlc/LibVLC;->mLibVlcInstance:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/videolan/vlc/LibVLC;->readMedia(JLjava/lang/String;Z)I

    .line 260
    return-void
.end method

.method public readMediaMeta(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "mrl"    # Ljava/lang/String;

    .prologue
    .line 280
    iget-wide v0, p0, Lorg/videolan/vlc/LibVLC;->mLibVlcInstance:J

    invoke-direct {p0, v0, v1, p1}, Lorg/videolan/vlc/LibVLC;->readMediaMeta(JLjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readTracksInfo(Ljava/lang/String;)[Lorg/videolan/vlc/TrackInfo;
    .locals 2
    .param p1, "mrl"    # Ljava/lang/String;

    .prologue
    .line 284
    iget-wide v0, p0, Lorg/videolan/vlc/LibVLC;->mLibVlcInstance:J

    invoke-direct {p0, v0, v1, p1}, Lorg/videolan/vlc/LibVLC;->readTracksInfo(JLjava/lang/String;)[Lorg/videolan/vlc/TrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public native readTracksInfoPosition(I)[Lorg/videolan/vlc/TrackInfo;
.end method

.method public native setAudioTrack(I)I
.end method

.method public native setPosition(F)V
.end method

.method public native setRate(F)V
.end method

.method public native setSpuTrack(I)I
.end method

.method public native setSurface(Landroid/view/Surface;)V
.end method

.method public native setTime(J)J
.end method

.method public native setVolume(I)I
.end method

.method public native startDebugBuffer()V
.end method

.method public native stop()V
.end method

.method public native stopDebugBuffer()V
.end method

.method public timeStretchingEnabled()Z
    .locals 3

    .prologue
    .line 184
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 185
    .local v0, "p":Landroid/content/SharedPreferences;
    const-string v1, "enable_time_stretching_audio"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public useIOMX()Z
    .locals 3

    .prologue
    .line 164
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 165
    .local v0, "p":Landroid/content/SharedPreferences;
    const-string v1, "enable_iomx"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public native version()Ljava/lang/String;
.end method
