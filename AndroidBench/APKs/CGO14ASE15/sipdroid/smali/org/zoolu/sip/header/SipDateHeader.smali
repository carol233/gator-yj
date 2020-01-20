.class public abstract Lorg/zoolu/sip/header/SipDateHeader;
.super Lorg/zoolu/sip/header/Header;
.source "SipDateHeader.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "hname"    # Ljava/lang/String;
    .param p2, "hvalue"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lorg/zoolu/sip/header/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .locals 1
    .param p1, "hname"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/util/Date;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/zoolu/sip/header/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {p2}, Lorg/zoolu/tools/DateFormat;->formatEEEddMMM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/header/SipDateHeader;->value:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/Header;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lorg/zoolu/sip/provider/SipParser;

    iget-object v1, p0, Lorg/zoolu/sip/header/SipDateHeader;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "par":Lorg/zoolu/sip/provider/SipParser;
    invoke-virtual {v0}, Lorg/zoolu/sip/provider/SipParser;->getDate()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method
