.class Lorg/sipdroid/codecs/ulaw;
.super Lorg/sipdroid/codecs/CodecBase;
.source "ulaw.java"

# interfaces
.implements Lorg/sipdroid/codecs/Codec;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/sipdroid/codecs/CodecBase;-><init>()V

    .line 25
    const-string v0, "PCMU"

    iput-object v0, p0, Lorg/sipdroid/codecs/ulaw;->CODEC_NAME:Ljava/lang/String;

    .line 26
    const-string v0, "PCMU"

    iput-object v0, p0, Lorg/sipdroid/codecs/ulaw;->CODEC_USER_NAME:Ljava/lang/String;

    .line 27
    const-string v0, "64kbit"

    iput-object v0, p0, Lorg/sipdroid/codecs/ulaw;->CODEC_DESCRIPTION:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lorg/sipdroid/codecs/ulaw;->CODEC_NUMBER:I

    .line 29
    const-string v0, "wlanor3g"

    iput-object v0, p0, Lorg/sipdroid/codecs/ulaw;->CODEC_DEFAULT_SETTING:Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Lorg/sipdroid/codecs/ulaw;->load()V

    .line 32
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public decode([B[SI)I
    .locals 0
    .param p1, "enc"    # [B
    .param p2, "lin"    # [S
    .param p3, "frames"    # I

    .prologue
    .line 39
    invoke-static {p1, p2, p3}, Lorg/sipdroid/codecs/G711;->ulaw2linear([B[SI)V

    .line 41
    return p3
.end method

.method public encode([SI[BI)I
    .locals 0
    .param p1, "lin"    # [S
    .param p2, "offset"    # I
    .param p3, "enc"    # [B
    .param p4, "frames"    # I

    .prologue
    .line 45
    invoke-static {p1, p2, p3, p4}, Lorg/sipdroid/codecs/G711;->linear2ulaw([SI[BI)V

    .line 47
    return p4
.end method

.method public init()V
    .locals 0

    .prologue
    .line 35
    invoke-static {}, Lorg/sipdroid/codecs/G711;->init()V

    .line 36
    return-void
.end method
