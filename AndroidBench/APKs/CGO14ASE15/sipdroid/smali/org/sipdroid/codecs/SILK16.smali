.class Lorg/sipdroid/codecs/SILK16;
.super Lorg/sipdroid/codecs/CodecBase;
.source "SILK16.java"

# interfaces
.implements Lorg/sipdroid/codecs/Codec;


# static fields
.field private static final DEFAULT_COMPLEXITY:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/sipdroid/codecs/CodecBase;-><init>()V

    .line 43
    const-string v0, "SILK"

    iput-object v0, p0, Lorg/sipdroid/codecs/SILK16;->CODEC_USER_NAME:Ljava/lang/String;

    .line 44
    const-string v0, "silk16"

    iput-object v0, p0, Lorg/sipdroid/codecs/SILK16;->CODEC_NAME:Ljava/lang/String;

    .line 45
    const-string v0, "8-30kbit"

    iput-object v0, p0, Lorg/sipdroid/codecs/SILK16;->CODEC_DESCRIPTION:Ljava/lang/String;

    .line 46
    const/16 v0, 0x77

    iput v0, p0, Lorg/sipdroid/codecs/SILK16;->CODEC_NUMBER:I

    .line 47
    const-string v0, "wlanor3g"

    iput-object v0, p0, Lorg/sipdroid/codecs/SILK16;->CODEC_DEFAULT_SETTING:Ljava/lang/String;

    .line 48
    const/16 v0, 0x3e80

    iput v0, p0, Lorg/sipdroid/codecs/SILK16;->CODEC_SAMPLE_RATE:I

    .line 49
    const/16 v0, 0x140

    iput v0, p0, Lorg/sipdroid/codecs/SILK16;->CODEC_FRAME_SIZE:I

    .line 50
    invoke-super {p0}, Lorg/sipdroid/codecs/CodecBase;->update()V

    .line 51
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
    .line 71
    invoke-virtual {p0}, Lorg/sipdroid/codecs/SILK16;->load()V

    .line 72
    invoke-virtual {p0}, Lorg/sipdroid/codecs/SILK16;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/sipdroid/codecs/SILK16;->open(I)I

    .line 74
    :cond_0
    return-void
.end method

.method load()V
    .locals 1

    .prologue
    .line 57
    :try_start_0
    const-string v0, "silk16_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 58
    invoke-super {p0}, Lorg/sipdroid/codecs/CodecBase;->load()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public native open(I)I
.end method
