.class Lorg/sipdroid/codecs/BV16;
.super Lorg/sipdroid/codecs/CodecBase;
.source "BV16.java"

# interfaces
.implements Lorg/sipdroid/codecs/Codec;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/sipdroid/codecs/CodecBase;-><init>()V

    .line 29
    const-string v0, "BV16"

    iput-object v0, p0, Lorg/sipdroid/codecs/BV16;->CODEC_NAME:Ljava/lang/String;

    .line 30
    const-string v0, "BV16"

    iput-object v0, p0, Lorg/sipdroid/codecs/BV16;->CODEC_USER_NAME:Ljava/lang/String;

    .line 31
    const-string v0, "16kbit"

    iput-object v0, p0, Lorg/sipdroid/codecs/BV16;->CODEC_DESCRIPTION:Ljava/lang/String;

    .line 32
    const/16 v0, 0x6a

    iput v0, p0, Lorg/sipdroid/codecs/BV16;->CODEC_NUMBER:I

    .line 33
    const-string v0, "always"

    iput-object v0, p0, Lorg/sipdroid/codecs/BV16;->CODEC_DEFAULT_SETTING:Ljava/lang/String;

    .line 34
    invoke-super {p0}, Lorg/sipdroid/codecs/CodecBase;->update()V

    .line 35
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
    .line 54
    invoke-virtual {p0}, Lorg/sipdroid/codecs/BV16;->load()V

    .line 55
    invoke-virtual {p0}, Lorg/sipdroid/codecs/BV16;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lorg/sipdroid/codecs/BV16;->open()I

    .line 57
    :cond_0
    return-void
.end method

.method load()V
    .locals 1

    .prologue
    .line 40
    :try_start_0
    const-string v0, "bv16_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 41
    invoke-super {p0}, Lorg/sipdroid/codecs/CodecBase;->load()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public native open()I
.end method
