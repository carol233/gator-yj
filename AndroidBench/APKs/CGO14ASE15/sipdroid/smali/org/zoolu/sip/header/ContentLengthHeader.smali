.class public Lorg/zoolu/sip/header/ContentLengthHeader;
.super Lorg/zoolu/sip/header/Header;
.source "ContentLengthHeader.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "len"    # I

    .prologue
    .line 35
    const-string v0, "Content-Length"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sip/header/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/Header;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getContentLength()I
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lorg/zoolu/sip/provider/SipParser;

    iget-object v1, p0, Lorg/zoolu/sip/header/ContentLengthHeader;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/zoolu/sip/provider/SipParser;->getInt()I

    move-result v0

    return v0
.end method

.method public setContentLength(I)V
    .locals 1
    .param p1, "cLength"    # I

    .prologue
    .line 49
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/header/ContentLengthHeader;->value:Ljava/lang/String;

    .line 50
    return-void
.end method
