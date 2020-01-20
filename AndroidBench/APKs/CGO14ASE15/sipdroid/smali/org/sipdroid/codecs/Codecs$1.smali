.class final Lorg/sipdroid/codecs/Codecs$1;
.super Ljava/util/Vector;
.source "Codecs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sipdroid/codecs/Codecs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Vector",
        "<",
        "Lorg/sipdroid/codecs/Codec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 51
    new-instance v0, Lorg/sipdroid/codecs/G722;

    invoke-direct {v0}, Lorg/sipdroid/codecs/G722;-><init>()V

    invoke-virtual {p0, v0}, Lorg/sipdroid/codecs/Codecs$1;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v0, Lorg/sipdroid/codecs/alaw;

    invoke-direct {v0}, Lorg/sipdroid/codecs/alaw;-><init>()V

    invoke-virtual {p0, v0}, Lorg/sipdroid/codecs/Codecs$1;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v0, Lorg/sipdroid/codecs/ulaw;

    invoke-direct {v0}, Lorg/sipdroid/codecs/ulaw;-><init>()V

    invoke-virtual {p0, v0}, Lorg/sipdroid/codecs/Codecs$1;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v0, Lorg/sipdroid/codecs/Speex;

    invoke-direct {v0}, Lorg/sipdroid/codecs/Speex;-><init>()V

    invoke-virtual {p0, v0}, Lorg/sipdroid/codecs/Codecs$1;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v0, Lorg/sipdroid/codecs/GSM;

    invoke-direct {v0}, Lorg/sipdroid/codecs/GSM;-><init>()V

    invoke-virtual {p0, v0}, Lorg/sipdroid/codecs/Codecs$1;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v0, Lorg/sipdroid/codecs/BV16;

    invoke-direct {v0}, Lorg/sipdroid/codecs/BV16;-><init>()V

    invoke-virtual {p0, v0}, Lorg/sipdroid/codecs/Codecs$1;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method
