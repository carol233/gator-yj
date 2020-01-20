.class public Lorg/videolan/vlc/AudioServiceController;
.super Ljava/lang/Object;
.source "AudioServiceController.java"

# interfaces
.implements Lorg/videolan/vlc/interfaces/IAudioPlayerControl;


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/AudioServiceContoller"

.field private static mInstance:Lorg/videolan/vlc/AudioServiceController;

.field private static mIsBound:Z


# instance fields
.field private final mAudioPlayer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/vlc/interfaces/IAudioPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

.field private mAudioServiceConnection:Landroid/content/ServiceConnection;

.field private final mCallback:Lorg/videolan/vlc/interfaces/IAudioServiceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lorg/videolan/vlc/AudioServiceController;->mIsBound:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lorg/videolan/vlc/AudioServiceController$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/AudioServiceController$1;-><init>(Lorg/videolan/vlc/AudioServiceController;)V

    iput-object v0, p0, Lorg/videolan/vlc/AudioServiceController;->mCallback:Lorg/videolan/vlc/interfaces/IAudioServiceCallback;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioPlayer:Ljava/util/ArrayList;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lorg/videolan/vlc/AudioServiceController;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/AudioServiceController;

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/videolan/vlc/AudioServiceController;->updateAudioPlayer()V

    return-void
.end method

.method static synthetic access$100(Lorg/videolan/vlc/AudioServiceController;)Lorg/videolan/vlc/interfaces/IAudioService;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/AudioServiceController;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    return-object v0
.end method

.method static synthetic access$102(Lorg/videolan/vlc/AudioServiceController;Lorg/videolan/vlc/interfaces/IAudioService;)Lorg/videolan/vlc/interfaces/IAudioService;
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/AudioServiceController;
    .param p1, "x1"    # Lorg/videolan/vlc/interfaces/IAudioService;

    .prologue
    .line 44
    iput-object p1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lorg/videolan/vlc/AudioServiceController;->mIsBound:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 44
    sput-boolean p0, Lorg/videolan/vlc/AudioServiceController;->mIsBound:Z

    return p0
.end method

.method static synthetic access$300(Lorg/videolan/vlc/AudioServiceController;)Lorg/videolan/vlc/interfaces/IAudioServiceCallback;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/AudioServiceController;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/videolan/vlc/AudioServiceController;->mCallback:Lorg/videolan/vlc/interfaces/IAudioServiceCallback;

    return-object v0
.end method

.method public static getInstance()Lorg/videolan/vlc/AudioServiceController;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/videolan/vlc/AudioServiceController;->mInstance:Lorg/videolan/vlc/AudioServiceController;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lorg/videolan/vlc/AudioServiceController;

    invoke-direct {v0}, Lorg/videolan/vlc/AudioServiceController;-><init>()V

    sput-object v0, Lorg/videolan/vlc/AudioServiceController;->mInstance:Lorg/videolan/vlc/AudioServiceController;

    .line 67
    :cond_0
    sget-object v0, Lorg/videolan/vlc/AudioServiceController;->mInstance:Lorg/videolan/vlc/AudioServiceController;

    return-object v0
.end method

.method private remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "instance"    # Lorg/videolan/vlc/interfaces/IAudioService;
    .param p4, "functionName"    # Ljava/lang/String;
    .param p6, "parameters"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/videolan/vlc/interfaces/IAudioService;",
            "Ljava/lang/Class",
            "<TT;>;TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 186
    .local p2, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p5, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p1, :cond_1

    .line 208
    .end local p3    # "defaultValue":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    return-object p3

    .line 191
    .restart local p3    # "defaultValue":Ljava/lang/Object;, "TT;"
    :cond_1
    :try_start_0
    const-class v3, Lorg/videolan/vlc/interfaces/IAudioService;

    invoke-virtual {v3, p4, p5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 193
    .local v1, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v1, p1, p6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .local v2, "returnVal":Ljava/lang/Object;, "TT;"
    move-object p3, v2

    .line 194
    goto :goto_0

    .line 195
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "returnVal":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 198
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 201
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 204
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Landroid/os/RemoteException;

    if-eqz v3, :cond_0

    .line 206
    const-string v3, "VLC/AudioServiceContoller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remote procedure call failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateAudioPlayer()V
    .locals 3

    .prologue
    .line 169
    iget-object v2, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioPlayer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/interfaces/IAudioPlayer;

    .line 170
    .local v1, "player":Lorg/videolan/vlc/interfaces/IAudioPlayer;
    invoke-interface {v1}, Lorg/videolan/vlc/interfaces/IAudioPlayer;->update()V

    goto :goto_0

    .line 171
    .end local v1    # "player":Lorg/videolan/vlc/interfaces/IAudioPlayer;
    :cond_0
    return-void
.end method


# virtual methods
.method public addAudioPlayer(Lorg/videolan/vlc/interfaces/IAudioPlayer;)V
    .locals 1
    .param p1, "ap"    # Lorg/videolan/vlc/interfaces/IAudioPlayer;

    .prologue
    .line 152
    iget-object v0, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioPlayer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 1
    .param p1, "mediaPath"    # Ljava/lang/String;

    .prologue
    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/AudioServiceController;->append(Ljava/util/List;)V

    .line 232
    return-void
.end method

.method public append(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "mediaPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 235
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Void;

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Void;

    const-string v4, "append"

    new-array v5, v6, [Ljava/lang/Class;

    const-class v0, Ljava/util/List;

    aput-object v0, v5, v7

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    return-void
.end method

.method public bindAudioService(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 74
    if-nez p1, :cond_1

    .line 75
    const-string v4, "VLC/AudioServiceContoller"

    const-string v5, "bindAudioService() with null Context. Ooops"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 80
    sget-boolean v4, Lorg/videolan/vlc/AudioServiceController;->mIsBound:Z

    if-nez v4, :cond_2

    .line 81
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lorg/videolan/vlc/AudioService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v3, "service":Landroid/content/Intent;
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 84
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 85
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "enable_headset_detection"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 88
    .local v1, "enableHS":Z
    new-instance v4, Lorg/videolan/vlc/AudioServiceController$2;

    invoke-direct {v4, p0, v1}, Lorg/videolan/vlc/AudioServiceController$2;-><init>(Lorg/videolan/vlc/AudioServiceController;Z)V

    iput-object v4, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceConnection:Landroid/content/ServiceConnection;

    .line 114
    iget-object v4, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    sput-boolean v4, Lorg/videolan/vlc/AudioServiceController;->mIsBound:Z

    goto :goto_0

    .line 118
    .end local v1    # "enableHS":Z
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .end local v3    # "service":Landroid/content/Intent;
    :cond_2
    :try_start_0
    iget-object v4, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    if-eqz v4, :cond_0

    .line 119
    iget-object v4, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    iget-object v5, p0, Lorg/videolan/vlc/AudioServiceController;->mCallback:Lorg/videolan/vlc/interfaces/IAudioServiceCallback;

    invoke-interface {v4, v5}, Lorg/videolan/vlc/interfaces/IAudioService;->addAudioCallback(Lorg/videolan/vlc/interfaces/IAudioServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "VLC/AudioServiceContoller"

    const-string v5, "remote procedure call failed: addAudioCallback()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public detectHeadset(Z)V
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 366
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Void;

    const/4 v3, 0x0

    const-string v4, "detectHeadset"

    new-array v5, v6, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v7

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v7

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    return-void
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 264
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/String;

    move-object v3, v5

    check-cast v3, Ljava/lang/String;

    const-string v4, "getAlbum"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 269
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/String;

    move-object v3, v5

    check-cast v3, Ljava/lang/String;

    const-string v4, "getArtist"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCover()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 311
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Landroid/graphics/Bitmap;

    move-object v3, v5

    check-cast v3, Landroid/graphics/Bitmap;

    const-string v4, "getCover"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getItem()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 247
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/String;

    move-object v3, v5

    check-cast v3, Ljava/lang/String;

    const-string v4, "getItem"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 242
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v3, "def":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/util/List;

    const-string v4, "getItems"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getLength()I
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 301
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "getLength"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRate()F
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 373
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Float;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "getRate"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getRepeatType()Lorg/videolan/vlc/RepeatType;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 359
    invoke-static {}, Lorg/videolan/vlc/RepeatType;->values()[Lorg/videolan/vlc/RepeatType;

    move-result-object v7

    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v0, Lorg/videolan/vlc/RepeatType;->None:Lorg/videolan/vlc/RepeatType;

    invoke-virtual {v0}, Lorg/videolan/vlc/RepeatType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "getRepeatType"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v7, v0

    return-object v0
.end method

.method public getTime()I
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 306
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "getTime"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 274
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/String;

    move-object v3, v5

    check-cast v3, Ljava/lang/String;

    const-string v4, "getTitle"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasMedia()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 296
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "hasMedia"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 332
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "hasNext"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 337
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "hasPrevious"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 279
    invoke-virtual {p0}, Lorg/videolan/vlc/AudioServiceController;->hasMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isPlaying"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v7

    goto :goto_0
.end method

.method public isShuffling()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 354
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isShuffling"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;IZZ)V
    .locals 1
    .param p1, "mediaPath"    # Ljava/lang/String;
    .param p2, "position"    # I
    .param p3, "libvlcBacked"    # Z
    .param p4, "noVideo"    # Z

    .prologue
    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/videolan/vlc/AudioServiceController;->load(Ljava/util/List;IZZ)V

    .line 220
    return-void
.end method

.method public load(Ljava/util/List;I)V
    .locals 1
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "mediaPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 213
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/videolan/vlc/AudioServiceController;->load(Ljava/util/List;IZZ)V

    .line 214
    return-void
.end method

.method public load(Ljava/util/List;IZZ)V
    .locals 11
    .param p2, "position"    # I
    .param p3, "libvlcBacked"    # Z
    .param p4, "noVideo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IZZ)V"
        }
    .end annotation

    .prologue
    .local p1, "mediaPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 223
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Void;

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Void;

    const-string v4, "load"

    new-array v5, v6, [Ljava/lang/Class;

    const-class v0, Ljava/util/List;

    aput-object v0, v5, v7

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v8

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v9

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v10

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v9

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    return-void
.end method

.method public next()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 316
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Void;

    move-object v3, v5

    check-cast v3, Ljava/lang/Void;

    const-string v4, "next"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    return-void
.end method

.method public pause()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 284
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Void;

    move-object v3, v5

    check-cast v3, Ljava/lang/Void;

    const-string v4, "pause"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-direct {p0}, Lorg/videolan/vlc/AudioServiceController;->updateAudioPlayer()V

    .line 286
    return-void
.end method

.method public play()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 290
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Void;

    move-object v3, v5

    check-cast v3, Ljava/lang/Void;

    const-string v4, "play"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-direct {p0}, Lorg/videolan/vlc/AudioServiceController;->updateAudioPlayer()V

    .line 292
    return-void
.end method

.method public previous()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 321
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Void;

    move-object v3, v5

    check-cast v3, Ljava/lang/Void;

    const-string v4, "previous"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    return-void
.end method

.method public removeAudioPlayer(Lorg/videolan/vlc/interfaces/IAudioPlayer;)V
    .locals 1
    .param p1, "ap"    # Lorg/videolan/vlc/interfaces/IAudioPlayer;

    .prologue
    .line 160
    iget-object v0, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioPlayer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioPlayer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 163
    :cond_0
    return-void
.end method

.method public setRepeatType(Lorg/videolan/vlc/RepeatType;)V
    .locals 8
    .param p1, "t"    # Lorg/videolan/vlc/RepeatType;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 347
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Void;

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Void;

    const-string v4, "setRepeatType"

    new-array v5, v6, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v7

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/videolan/vlc/RepeatType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    return-void
.end method

.method public setTime(J)V
    .locals 8
    .param p1, "time"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 325
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Void;

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Void;

    const-string v4, "setTime"

    new-array v5, v6, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v7

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    return-void
.end method

.method public showWithoutParse(Ljava/lang/String;)V
    .locals 8
    .param p1, "u"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 256
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Void;

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Void;

    const-string v4, "showWithoutParse"

    new-array v5, v6, [Ljava/lang/Class;

    const-class v0, Ljava/lang/String;

    aput-object v0, v5, v7

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-direct {p0}, Lorg/videolan/vlc/AudioServiceController;->updateAudioPlayer()V

    .line 260
    return-void
.end method

.method public shuffle()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 342
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Void;

    move-object v3, v5

    check-cast v3, Ljava/lang/Void;

    const-string v4, "shuffle"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    return-void
.end method

.method public stop()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 251
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Void;

    move-object v3, v5

    check-cast v3, Ljava/lang/Void;

    const-string v4, "stop"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-direct {p0}, Lorg/videolan/vlc/AudioServiceController;->updateAudioPlayer()V

    .line 253
    return-void
.end method

.method public unbindAudioService(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 127
    if-nez p1, :cond_1

    .line 128
    const-string v1, "VLC/AudioServiceContoller"

    const-string v2, "unbindAudioService() with null Context. Ooops"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 133
    sget-boolean v1, Lorg/videolan/vlc/AudioServiceController;->mIsBound:Z

    if-eqz v1, :cond_0

    .line 134
    const/4 v1, 0x0

    sput-boolean v1, Lorg/videolan/vlc/AudioServiceController;->mIsBound:Z

    .line 136
    :try_start_0
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    if-eqz v1, :cond_2

    .line 137
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    iget-object v2, p0, Lorg/videolan/vlc/AudioServiceController;->mCallback:Lorg/videolan/vlc/interfaces/IAudioServiceCallback;

    invoke-interface {v1, v2}, Lorg/videolan/vlc/interfaces/IAudioService;->removeAudioCallback(Lorg/videolan/vlc/interfaces/IAudioServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 142
    iput-object v3, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    .line 143
    iput-object v3, p0, Lorg/videolan/vlc/AudioServiceController;->mAudioServiceConnection:Landroid/content/ServiceConnection;

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VLC/AudioServiceContoller"

    const-string v2, "remote procedure call failed: removeAudioCallback()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
