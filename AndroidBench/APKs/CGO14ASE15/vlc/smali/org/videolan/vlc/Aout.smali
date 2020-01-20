.class public Lorg/videolan/vlc/Aout;
.super Ljava/lang/Object;
.source "Aout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LibVLC/aout"


# instance fields
.field private mAudioTrack:Landroid/media/AudioTrack;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public init(III)V
    .locals 8
    .param p1, "sampleRateInHz"    # I
    .param p2, "channels"    # I
    .param p3, "samples"    # I

    .prologue
    const/16 v3, 0xc

    const/4 v4, 0x2

    .line 43
    const-string v0, "LibVLC/aout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int v2, p2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {p1, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v7

    .line 47
    .local v7, "minBufferSize":I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    mul-int v2, p2, p3

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v6, 0x1

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lorg/videolan/vlc/Aout;->mAudioTrack:Landroid/media/AudioTrack;

    .line 53
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/videolan/vlc/Aout;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 73
    return-void
.end method

.method public playBuffer([BI)V
    .locals 2
    .param p1, "audioData"    # [B
    .param p2, "bufferSize"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lorg/videolan/vlc/Aout;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/Aout;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 66
    const-string v0, "LibVLC/aout"

    const-string v1, "Could not write all the samples to the audio device"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_1
    iget-object v0, p0, Lorg/videolan/vlc/Aout;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/videolan/vlc/Aout;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lorg/videolan/vlc/Aout;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 59
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/vlc/Aout;->mAudioTrack:Landroid/media/AudioTrack;

    .line 60
    return-void
.end method
