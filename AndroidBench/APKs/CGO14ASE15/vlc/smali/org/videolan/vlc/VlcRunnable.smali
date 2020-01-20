.class public abstract Lorg/videolan/vlc/VlcRunnable;
.super Ljava/lang/Object;
.source "VlcRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final user:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/vlc/VlcRunnable;->user:Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/videolan/vlc/VlcRunnable;->user:Ljava/lang/Object;

    .line 31
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/videolan/vlc/VlcRunnable;->user:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/VlcRunnable;->run(Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public abstract run(Ljava/lang/Object;)V
.end method
