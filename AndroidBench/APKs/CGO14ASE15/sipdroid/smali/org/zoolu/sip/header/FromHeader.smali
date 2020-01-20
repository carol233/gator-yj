.class public Lorg/zoolu/sip/header/FromHeader;
.super Lorg/zoolu/sip/header/EndPointHeader;
.source "FromHeader.java"


# direct methods
.method public constructor <init>(Lorg/zoolu/sip/address/NameAddress;)V
    .locals 1
    .param p1, "nameaddr"    # Lorg/zoolu/sip/address/NameAddress;

    .prologue
    .line 40
    const-string v0, "From"

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sip/header/EndPointHeader;-><init>(Ljava/lang/String;Lorg/zoolu/sip/address/NameAddress;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;)V
    .locals 1
    .param p1, "nameaddr"    # Lorg/zoolu/sip/address/NameAddress;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 48
    const-string v0, "From"

    invoke-direct {p0, v0, p1, p2}, Lorg/zoolu/sip/header/EndPointHeader;-><init>(Ljava/lang/String;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/address/SipURL;)V
    .locals 1
    .param p1, "url"    # Lorg/zoolu/sip/address/SipURL;

    .prologue
    .line 44
    const-string v0, "From"

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sip/header/EndPointHeader;-><init>(Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/address/SipURL;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Lorg/zoolu/sip/address/SipURL;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 52
    const-string v0, "From"

    invoke-direct {p0, v0, p1, p2}, Lorg/zoolu/sip/header/EndPointHeader;-><init>(Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/EndPointHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 57
    return-void
.end method
