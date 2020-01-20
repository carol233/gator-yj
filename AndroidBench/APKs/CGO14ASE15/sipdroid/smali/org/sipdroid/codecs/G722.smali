.class Lorg/sipdroid/codecs/G722;
.super Lorg/sipdroid/codecs/CodecBase;
.source "G722.java"

# interfaces
.implements Lorg/sipdroid/codecs/Codec;


# static fields
.field private static final DEFAULT_BITRATE:I = 0xfa00


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/sipdroid/codecs/CodecBase;-><init>()V

    .line 33
    const-string v0, "G722 HD Voice"

    iput-object v0, p0, Lorg/sipdroid/codecs/G722;->CODEC_NAME:Ljava/lang/String;

    .line 34
    const-string v0, "G722"

    iput-object v0, p0, Lorg/sipdroid/codecs/G722;->CODEC_USER_NAME:Ljava/lang/String;

    .line 35
    const-string v0, "64kbit"

    iput-object v0, p0, Lorg/sipdroid/codecs/G722;->CODEC_DESCRIPTION:Ljava/lang/String;

    .line 36
    const/16 v0, 0x9

    iput v0, p0, Lorg/sipdroid/codecs/G722;->CODEC_NUMBER:I

    .line 37
    const-string v0, "wlanor3g"

    iput-object v0, p0, Lorg/sipdroid/codecs/G722;->CODEC_DEFAULT_SETTING:Ljava/lang/String;

    .line 38
    const/16 v0, 0x3e80

    iput v0, p0, Lorg/sipdroid/codecs/G722;->CODEC_SAMPLE_RATE:I

    .line 39
    const/16 v0, 0x140

    iput v0, p0, Lorg/sipdroid/codecs/G722;->CODEC_FRAME_SIZE:I

    .line 40
    invoke-super {p0}, Lorg/sipdroid/codecs/CodecBase;->update()V

    .line 41
    return-void
.end method


# virtual methods
.method public native close()V
.end method

.method public native decode([B[SI)I
.end method

.method public native encode([SI[BI)I
.end method

.method public init()V
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lorg/sipdroid/codecs/G722;->load()V

    .line 61
    invoke-virtual {p0}, Lorg/sipdroid/codecs/G722;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const v0, 0xfa00

    invoke-virtual {p0, v0}, Lorg/sipdroid/codecs/G722;->open(I)I

    .line 63
    :cond_0
    return-void
.end method

.method load()V
    .locals 1

    .prologue
    .line 46
    :try_start_0
    const-string v0, "g722_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 47
    invoke-super {p0}, Lorg/sipdroid/codecs/CodecBase;->load()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public native open(I)I
.end method
