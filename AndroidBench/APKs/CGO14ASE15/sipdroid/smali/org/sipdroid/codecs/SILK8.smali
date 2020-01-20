.class Lorg/sipdroid/codecs/SILK8;
.super Lorg/sipdroid/codecs/CodecBase;
.source "SILK8.java"

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

    iput-object v0, p0, Lorg/sipdroid/codecs/SILK8;->CODEC_USER_NAME:Ljava/lang/String;

    .line 44
    const-string v0, "silk8"

    iput-object v0, p0, Lorg/sipdroid/codecs/SILK8;->CODEC_NAME:Ljava/lang/String;

    .line 45
    const-string v0, "6-20kbit"

    iput-object v0, p0, Lorg/sipdroid/codecs/SILK8;->CODEC_DESCRIPTION:Ljava/lang/String;

    .line 46
    const/16 v0, 0x75

    iput v0, p0, Lorg/sipdroid/codecs/SILK8;->CODEC_NUMBER:I

    .line 47
    const-string v0, "always"

    iput-object v0, p0, Lorg/sipdroid/codecs/SILK8;->CODEC_DEFAULT_SETTING:Ljava/lang/String;

    .line 48
    invoke-super {p0}, Lorg/sipdroid/codecs/CodecBase;->update()V

    .line 49
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
    .line 69
    invoke-virtual {p0}, Lorg/sipdroid/codecs/SILK8;->load()V

    .line 70
    invoke-virtual {p0}, Lorg/sipdroid/codecs/SILK8;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/sipdroid/codecs/SILK8;->open(I)I

    .line 72
    :cond_0
    return-void
.end method

.method load()V
    .locals 1

    .prologue
    .line 55
    :try_start_0
    const-string v0, "silk8_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 56
    invoke-super {p0}, Lorg/sipdroid/codecs/CodecBase;->load()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public native open(I)I
.end method
