.class Lorg/sipdroid/codecs/Speex;
.super Lorg/sipdroid/codecs/CodecBase;
.source "Speex.java"

# interfaces
.implements Lorg/sipdroid/codecs/Codec;


# static fields
.field private static final DEFAULT_COMPRESSION:I = 0x6


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/sipdroid/codecs/CodecBase;-><init>()V

    .line 36
    const-string v0, "speex"

    iput-object v0, p0, Lorg/sipdroid/codecs/Speex;->CODEC_NAME:Ljava/lang/String;

    .line 37
    const-string v0, "speex"

    iput-object v0, p0, Lorg/sipdroid/codecs/Speex;->CODEC_USER_NAME:Ljava/lang/String;

    .line 38
    const-string v0, "11kbit"

    iput-object v0, p0, Lorg/sipdroid/codecs/Speex;->CODEC_DESCRIPTION:Ljava/lang/String;

    .line 39
    const/16 v0, 0x61

    iput v0, p0, Lorg/sipdroid/codecs/Speex;->CODEC_NUMBER:I

    .line 40
    const-string v0, "always"

    iput-object v0, p0, Lorg/sipdroid/codecs/Speex;->CODEC_DEFAULT_SETTING:Ljava/lang/String;

    .line 41
    invoke-super {p0}, Lorg/sipdroid/codecs/CodecBase;->update()V

    .line 42
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
    invoke-virtual {p0}, Lorg/sipdroid/codecs/Speex;->load()V

    .line 61
    invoke-virtual {p0}, Lorg/sipdroid/codecs/Speex;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/sipdroid/codecs/Speex;->open(I)I

    .line 63
    :cond_0
    return-void
.end method

.method load()V
    .locals 1

    .prologue
    .line 46
    :try_start_0
    const-string v0, "speex_jni"

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
