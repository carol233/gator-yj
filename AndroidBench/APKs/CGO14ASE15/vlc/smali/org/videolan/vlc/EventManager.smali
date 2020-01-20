.class public Lorg/videolan/vlc/EventManager;
.super Ljava/lang/Object;
.source "EventManager.java"


# static fields
.field public static final MediaListItemAdded:I = 0x200

.field public static final MediaListItemDeleted:I = 0x202

.field public static final MediaPlayerEndReached:I = 0x109

.field public static final MediaPlayerPaused:I = 0x105

.field public static final MediaPlayerPlaying:I = 0x104

.field public static final MediaPlayerPositionChanged:I = 0x10c

.field public static final MediaPlayerStopped:I = 0x106

.field public static final MediaPlayerVout:I = 0x112

.field private static mInstance:Lorg/videolan/vlc/EventManager;


# instance fields
.field private mEventHandler:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/EventManager;->mEventHandler:Ljava/util/ArrayList;

    .line 96
    return-void
.end method

.method public static getInstance()Lorg/videolan/vlc/EventManager;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lorg/videolan/vlc/EventManager;->mInstance:Lorg/videolan/vlc/EventManager;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lorg/videolan/vlc/EventManager;

    invoke-direct {v0}, Lorg/videolan/vlc/EventManager;-><init>()V

    sput-object v0, Lorg/videolan/vlc/EventManager;->mInstance:Lorg/videolan/vlc/EventManager;

    .line 102
    :cond_0
    sget-object v0, Lorg/videolan/vlc/EventManager;->mInstance:Lorg/videolan/vlc/EventManager;

    return-object v0
.end method


# virtual methods
.method public addHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/videolan/vlc/EventManager;->mEventHandler:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/videolan/vlc/EventManager;->mEventHandler:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    return-void
.end method

.method public callback(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "b"    # Landroid/os/Bundle;

    .prologue
    .line 116
    const-string v2, "event"

    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/videolan/vlc/EventManager;->mEventHandler:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 118
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 119
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 120
    iget-object v2, p0, Lorg/videolan/vlc/EventManager;->mEventHandler:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public removeHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/videolan/vlc/EventManager;->mEventHandler:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method
